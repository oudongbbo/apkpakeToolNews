.class public Lcom/leidong/open/http/okio/Timeout;
.super Ljava/lang/Object;
.source "Timeout.java"


# static fields
.field public static final NONE:Lcom/leidong/open/http/okio/Timeout;


# instance fields
.field private deadlineNanoTime:J

.field private hasDeadline:Z

.field private timeoutNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/leidong/open/http/okio/Timeout$1;

    invoke-direct {v0}, Lcom/leidong/open/http/okio/Timeout$1;-><init>()V

    sput-object v0, Lcom/leidong/open/http/okio/Timeout;->NONE:Lcom/leidong/open/http/okio/Timeout;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method public clearDeadline()Lcom/leidong/open/http/okio/Timeout;
    .locals 1

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leidong/open/http/okio/Timeout;->hasDeadline:Z

    .line 137
    return-object p0
.end method

.method public clearTimeout()Lcom/leidong/open/http/okio/Timeout;
    .locals 2

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/leidong/open/http/okio/Timeout;->timeoutNanos:J

    .line 131
    return-object p0
.end method

.method public final deadline(JLjava/util/concurrent/TimeUnit;)Lcom/leidong/open/http/okio/Timeout;
    .locals 6
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 123
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long v4, v0, v2

    invoke-virtual {p0, v4, v5}, Lcom/leidong/open/http/okio/Timeout;->deadlineNanoTime(J)Lcom/leidong/open/http/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public deadlineNanoTime()J
    .locals 2

    .line 106
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/Timeout;->hasDeadline:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No deadline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Timeout;->deadlineNanoTime:J

    return-wide v0
.end method

.method public deadlineNanoTime(J)Lcom/leidong/open/http/okio/Timeout;
    .locals 1
    .param p1, "deadlineNanoTime"    # J

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leidong/open/http/okio/Timeout;->hasDeadline:Z

    .line 117
    iput-wide p1, p0, Lcom/leidong/open/http/okio/Timeout;->deadlineNanoTime:J

    .line 118
    return-object p0
.end method

.method public hasDeadline()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/Timeout;->hasDeadline:Z

    return v0
.end method

.method public throwIfReached()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "thread interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    iget-boolean v0, p0, Lcom/leidong/open/http/okio/Timeout;->hasDeadline:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/leidong/open/http/okio/Timeout;->deadlineNanoTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-gtz v2, :cond_1

    .line 151
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "deadline reached"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_1
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lcom/leidong/open/http/okio/Timeout;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 83
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/leidong/open/http/okio/Timeout;->timeoutNanos:J

    .line 86
    return-object p0
.end method

.method public timeoutNanos()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Timeout;->timeoutNanos:J

    return-wide v0
.end method

.method public final waitUntilNotified(Ljava/lang/Object;)V
    .locals 16
    .param p1, "monitor"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 193
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/leidong/open/http/okio/Timeout;->hasDeadline()Z

    move-result v1

    .line 194
    .local v1, "hasDeadline":Z
    invoke-virtual/range {p0 .. p0}, Lcom/leidong/open/http/okio/Timeout;->timeoutNanos()J

    move-result-wide v2

    .line 196
    .local v2, "timeoutNanos":J
    const-wide/16 v4, 0x0

    if-nez v1, :cond_0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 197
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->wait()V

    .line 198
    return-void

    .line 203
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 204
    .local v6, "start":J
    if-eqz v1, :cond_1

    cmp-long v8, v2, v4

    if-eqz v8, :cond_1

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/leidong/open/http/okio/Timeout;->deadlineNanoTime()J

    move-result-wide v8

    const/4 v10, 0x0

    sub-long v10, v8, v6

    .line 206
    .local v10, "deadlineNanos":J
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 207
    .end local v10    # "deadlineNanos":J
    .local v8, "waitNanos":J
    goto :goto_0

    .line 207
    .end local v8    # "waitNanos":J
    :cond_1
    if-eqz v1, :cond_2

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/leidong/open/http/okio/Timeout;->deadlineNanoTime()J

    move-result-wide v8

    const/4 v10, 0x0

    sub-long v10, v8, v6

    .line 210
    .local v10, "waitNanos":J
    move-wide v8, v10

    goto :goto_0

    .line 210
    .end local v10    # "waitNanos":J
    :cond_2
    move-wide v8, v2

    .line 214
    .restart local v8    # "waitNanos":J
    :goto_0
    const-wide/16 v10, 0x0

    .line 215
    .local v10, "elapsedNanos":J
    cmp-long v12, v8, v4

    if-lez v12, :cond_3

    .line 216
    const-wide/32 v4, 0xf4240

    div-long v12, v8, v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 217
    .local v12, "waitMillis":J
    mul-long v4, v4, v12

    const/4 v14, 0x0

    sub-long v14, v8, v4

    long-to-int v4, v14

    move-object/from16 v5, p1

    :try_start_1
    invoke-virtual {v5, v12, v13, v4}, Ljava/lang/Object;->wait(JI)V

    .line 218
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    const/4 v4, 0x0

    sub-long v10, v14, v6

    .line 218
    .end local v12    # "waitMillis":J
    goto :goto_1

    .line 225
    .end local v1    # "hasDeadline":Z
    .end local v2    # "timeoutNanos":J
    .end local v6    # "start":J
    .end local v8    # "waitNanos":J
    .end local v10    # "elapsedNanos":J
    :catch_0
    move-exception v0

    goto :goto_2

    .line 222
    .restart local v1    # "hasDeadline":Z
    .restart local v2    # "timeoutNanos":J
    .restart local v6    # "start":J
    .restart local v8    # "waitNanos":J
    .restart local v10    # "elapsedNanos":J
    :cond_3
    move-object/from16 v5, p1

    :goto_1
    cmp-long v4, v10, v8

    if-ltz v4, :cond_4

    .line 223
    new-instance v4, Ljava/io/InterruptedIOException;

    const-string v12, "timeout"

    invoke-direct {v4, v12}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    .end local v1    # "hasDeadline":Z
    .end local v2    # "timeoutNanos":J
    .end local v6    # "start":J
    .end local v8    # "waitNanos":J
    .end local v10    # "elapsedNanos":J
    :cond_4
    nop

    .line 228
    return-void

    .line 225
    :catch_1
    move-exception v0

    move-object/from16 v5, p1

    :goto_2
    move-object v1, v0

    .line 226
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/io/InterruptedIOException;

    const-string v3, "interrupted"

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
