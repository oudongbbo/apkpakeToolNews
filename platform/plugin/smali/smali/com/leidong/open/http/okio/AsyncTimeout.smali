.class public Lcom/leidong/open/http/okio/AsyncTimeout;
.super Lcom/leidong/open/http/okio/Timeout;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leidong/open/http/okio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field static head:Lcom/leidong/open/http/okio/AsyncTimeout;


# instance fields
.field private inQueue:Z

.field private next:Lcom/leidong/open/http/okio/AsyncTimeout;

.field private timeoutAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/leidong/open/http/okio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v1, Lcom/leidong/open/http/okio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/leidong/open/http/okio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/leidong/open/http/okio/Timeout;-><init>()V

    return-void
.end method

.method static awaitTimeout()Lcom/leidong/open/http/okio/AsyncTimeout;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 342
    sget-object v0, Lcom/leidong/open/http/okio/AsyncTimeout;->head:Lcom/leidong/open/http/okio/AsyncTimeout;

    iget-object v0, v0, Lcom/leidong/open/http/okio/AsyncTimeout;->next:Lcom/leidong/open/http/okio/AsyncTimeout;

    .line 345
    .local v0, "node":Lcom/leidong/open/http/okio/AsyncTimeout;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 346
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 347
    .local v2, "startNanos":J
    const-class v4, Lcom/leidong/open/http/okio/AsyncTimeout;

    sget-wide v5, Lcom/leidong/open/http/okio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 348
    sget-object v4, Lcom/leidong/open/http/okio/AsyncTimeout;->head:Lcom/leidong/open/http/okio/AsyncTimeout;

    iget-object v4, v4, Lcom/leidong/open/http/okio/AsyncTimeout;->next:Lcom/leidong/open/http/okio/AsyncTimeout;

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v6, v4, v2

    sget-wide v4, Lcom/leidong/open/http/okio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    cmp-long v8, v6, v4

    if-ltz v8, :cond_0

    sget-object v1, Lcom/leidong/open/http/okio/AsyncTimeout;->head:Lcom/leidong/open/http/okio/AsyncTimeout;

    nop

    :cond_0
    return-object v1

    .line 353
    .end local v2    # "startNanos":J
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/leidong/open/http/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v2

    .line 356
    .local v2, "waitNanos":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 359
    const-wide/32 v4, 0xf4240

    div-long v6, v2, v4

    .line 360
    .local v6, "waitMillis":J
    mul-long v4, v4, v6

    sub-long v8, v2, v4

    .line 361
    .end local v2    # "waitNanos":J
    .local v8, "waitNanos":J
    const-class v2, Lcom/leidong/open/http/okio/AsyncTimeout;

    long-to-int v3, v8

    invoke-virtual {v2, v6, v7, v3}, Ljava/lang/Object;->wait(JI)V

    .line 362
    return-object v1

    .line 366
    .end local v6    # "waitMillis":J
    .end local v8    # "waitNanos":J
    .restart local v2    # "waitNanos":J
    :cond_2
    sget-object v4, Lcom/leidong/open/http/okio/AsyncTimeout;->head:Lcom/leidong/open/http/okio/AsyncTimeout;

    iget-object v5, v0, Lcom/leidong/open/http/okio/AsyncTimeout;->next:Lcom/leidong/open/http/okio/AsyncTimeout;

    iput-object v5, v4, Lcom/leidong/open/http/okio/AsyncTimeout;->next:Lcom/leidong/open/http/okio/AsyncTimeout;

    .line 367
    iput-object v1, v0, Lcom/leidong/open/http/okio/AsyncTimeout;->next:Lcom/leidong/open/http/okio/AsyncTimeout;

    .line 368
    return-object v0
.end method

.method private static declared-synchronized cancelScheduledTimeout(Lcom/leidong/open/http/okio/AsyncTimeout;)Z
    .locals 3
    .param p0, "node"    # Lcom/leidong/open/http/okio/AsyncTimeout;

    const-class v0, Lcom/leidong/open/http/okio/AsyncTimeout;

    monitor-enter v0

    .line 127
    :try_start_0
    sget-object v1, Lcom/leidong/open/http/okio/AsyncTimeout;->head:Lcom/leidong/open/http/okio/AsyncTimeout;

    .line 127
    .local v1, "prev":Lcom/leidong/open/http/okio/AsyncTimeout;
    :goto_0
    if-eqz v1, :cond_1

    .line 128
    iget-object v2, v1, Lcom/leidong/open/http/okio/AsyncTimeout;->next:Lcom/leidong/open/http/okio/AsyncTimeout;

    if-ne v2, p0, :cond_0

    .line 129
    iget-object v2, p0, Lcom/leidong/open/http/okio/AsyncTimeout;->next:Lcom/leidong/open/http/okio/AsyncTimeout;

    iput-object v2, v1, Lcom/leidong/open/http/okio/AsyncTimeout;->next:Lcom/leidong/open/http/okio/AsyncTimeout;

    .line 130
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/leidong/open/http/okio/AsyncTimeout;->next:Lcom/leidong/open/http/okio/AsyncTimeout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 127
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/leidong/open/http/okio/AsyncTimeout;->next:Lcom/leidong/open/http/okio/AsyncTimeout;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 136
    .end local v1    # "prev":Lcom/leidong/open/http/okio/AsyncTimeout;
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 126
    .end local p0    # "node":Lcom/leidong/open/http/okio/AsyncTimeout;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private remainingNanos(J)J
    .locals 4
    .param p1, "now"    # J

    .line 144
    iget-wide v0, p0, Lcom/leidong/open/http/okio/AsyncTimeout;->timeoutAt:J

    sub-long v2, v0, p1

    return-wide v2
.end method

.method private static declared-synchronized scheduleTimeout(Lcom/leidong/open/http/okio/AsyncTimeout;JZ)V
    .locals 9
    .param p0, "node"    # Lcom/leidong/open/http/okio/AsyncTimeout;
    .param p1, "timeoutNanos"    # J
    .param p3, "hasDeadline"    # Z

    const-class v0, Lcom/leidong/open/http/okio/AsyncTimeout;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/leidong/open/http/okio/AsyncTimeout;->head:Lcom/leidong/open/http/okio/AsyncTimeout;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/leidong/open/http/okio/AsyncTimeout;

    invoke-direct {v1}, Lcom/leidong/open/http/okio/AsyncTimeout;-><init>()V

    sput-object v1, Lcom/leidong/open/http/okio/AsyncTimeout;->head:Lcom/leidong/open/http/okio/AsyncTimeout;

    .line 87
    new-instance v1, Lcom/leidong/open/http/okio/AsyncTimeout$Watchdog;

    invoke-direct {v1}, Lcom/leidong/open/http/okio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v1}, Lcom/leidong/open/http/okio/AsyncTimeout$Watchdog;->start()V

    .line 90
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 91
    .local v1, "now":J
    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_1

    if-eqz p3, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long v5, v3, v1

    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const/4 v5, 0x0

    add-long v5, v1, v3

    iput-wide v5, p0, Lcom/leidong/open/http/okio/AsyncTimeout;->timeoutAt:J

    goto :goto_0

    .line 95
    :cond_1
    cmp-long v5, p1, v3

    if-eqz v5, :cond_2

    .line 96
    add-long v3, v1, p1

    iput-wide v3, p0, Lcom/leidong/open/http/okio/AsyncTimeout;->timeoutAt:J

    goto :goto_0

    .line 97
    :cond_2
    if-eqz p3, :cond_6

    .line 98
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/leidong/open/http/okio/AsyncTimeout;->timeoutAt:J

    .line 104
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/leidong/open/http/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    .line 105
    .local v3, "remainingNanos":J
    sget-object v5, Lcom/leidong/open/http/okio/AsyncTimeout;->head:Lcom/leidong/open/http/okio/AsyncTimeout;

    .line 106
    .local v5, "prev":Lcom/leidong/open/http/okio/AsyncTimeout;
    :goto_1
    iget-object v6, v5, Lcom/leidong/open/http/okio/AsyncTimeout;->next:Lcom/leidong/open/http/okio/AsyncTimeout;

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/leidong/open/http/okio/AsyncTimeout;->next:Lcom/leidong/open/http/okio/AsyncTimeout;

    invoke-direct {v6, v1, v2}, Lcom/leidong/open/http/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v6

    cmp-long v8, v3, v6

    if-gez v8, :cond_3

    goto :goto_2

    .line 105
    :cond_3
    iget-object v6, v5, Lcom/leidong/open/http/okio/AsyncTimeout;->next:Lcom/leidong/open/http/okio/AsyncTimeout;

    move-object v5, v6

    goto :goto_1

    .line 107
    :cond_4
    :goto_2
    iget-object v6, v5, Lcom/leidong/open/http/okio/AsyncTimeout;->next:Lcom/leidong/open/http/okio/AsyncTimeout;

    iput-object v6, p0, Lcom/leidong/open/http/okio/AsyncTimeout;->next:Lcom/leidong/open/http/okio/AsyncTimeout;

    .line 108
    iput-object p0, v5, Lcom/leidong/open/http/okio/AsyncTimeout;->next:Lcom/leidong/open/http/okio/AsyncTimeout;

    .line 109
    sget-object v6, Lcom/leidong/open/http/okio/AsyncTimeout;->head:Lcom/leidong/open/http/okio/AsyncTimeout;

    if-ne v5, v6, :cond_5

    .line 110
    const-class v6, Lcom/leidong/open/http/okio/AsyncTimeout;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .end local v5    # "prev":Lcom/leidong/open/http/okio/AsyncTimeout;
    :cond_5
    monitor-exit v0

    return-void

    .line 100
    .end local v3    # "remainingNanos":J
    :cond_6
    :try_start_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .end local v1    # "now":J
    .end local p0    # "node":Lcom/leidong/open/http/okio/AsyncTimeout;
    .end local p1    # "timeoutNanos":J
    .end local p3    # "hasDeadline":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final enter()V
    .locals 6

    .line 72
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/AsyncTimeout;->inQueue:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/AsyncTimeout;->timeoutNanos()J

    move-result-wide v0

    .line 74
    .local v0, "timeoutNanos":J
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/AsyncTimeout;->hasDeadline()Z

    move-result v2

    .line 75
    .local v2, "hasDeadline":Z
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_1

    if-nez v2, :cond_1

    .line 76
    return-void

    .line 78
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/leidong/open/http/okio/AsyncTimeout;->inQueue:Z

    .line 79
    invoke-static {p0, v0, v1, v2}, Lcom/leidong/open/http/okio/AsyncTimeout;->scheduleTimeout(Lcom/leidong/open/http/okio/AsyncTimeout;JZ)V

    .line 80
    return-void
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1
    .param p1, "cause"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 284
    :cond_0
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method final exit(Z)V
    .locals 2
    .param p1, "throwOnTimeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/AsyncTimeout;->exit()Z

    move-result v0

    .line 274
    .local v0, "timedOut":Z
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/leidong/open/http/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 275
    :cond_0
    return-void
.end method

.method public final exit()Z
    .locals 2

    .line 119
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/AsyncTimeout;->inQueue:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 120
    :cond_0
    iput-boolean v1, p0, Lcom/leidong/open/http/okio/AsyncTimeout;->inQueue:Z

    .line 121
    invoke-static {p0}, Lcom/leidong/open/http/okio/AsyncTimeout;->cancelScheduledTimeout(Lcom/leidong/open/http/okio/AsyncTimeout;)Z

    move-result v0

    return v0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1, "cause"    # Ljava/io/IOException;

    .line 293
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "e":Ljava/io/InterruptedIOException;
    if-eqz p1, :cond_0

    .line 295
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 297
    :cond_0
    return-object v0
.end method

.method public final sink(Lcom/leidong/open/http/okio/Sink;)Lcom/leidong/open/http/okio/Sink;
    .locals 1
    .param p1, "sink"    # Lcom/leidong/open/http/okio/Sink;

    .line 159
    new-instance v0, Lcom/leidong/open/http/okio/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Lcom/leidong/open/http/okio/AsyncTimeout$1;-><init>(Lcom/leidong/open/http/okio/AsyncTimeout;Lcom/leidong/open/http/okio/Sink;)V

    return-object v0
.end method

.method public final source(Lcom/leidong/open/http/okio/Source;)Lcom/leidong/open/http/okio/Source;
    .locals 1
    .param p1, "source"    # Lcom/leidong/open/http/okio/Source;

    .line 231
    new-instance v0, Lcom/leidong/open/http/okio/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Lcom/leidong/open/http/okio/AsyncTimeout$2;-><init>(Lcom/leidong/open/http/okio/AsyncTimeout;Lcom/leidong/open/http/okio/Source;)V

    return-object v0
.end method

.method protected timedOut()V
    .locals 0

    .line 152
    return-void
.end method
