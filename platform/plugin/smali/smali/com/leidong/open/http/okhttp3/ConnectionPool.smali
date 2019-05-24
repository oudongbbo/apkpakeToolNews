.class public final Lcom/leidong/open/http/okhttp3/ConnectionPool;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final executor:Ljava/util/concurrent/Executor;


# instance fields
.field private final cleanupRunnable:Ljava/lang/Runnable;

.field cleanupRunning:Z

.field private final connections:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final keepAliveDurationNs:J

.field private final maxIdleConnections:I

.field final routeDatabase:Lcom/leidong/open/http/okhttp3/internal/connection/RouteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 53
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp ConnectionPool"

    const/4 v7, 0x1

    .line 55
    invoke-static {v0, v7}, Lcom/leidong/open/http/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/leidong/open/http/okhttp3/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 89
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x5

    const-wide/16 v2, 0x5

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/leidong/open/http/okhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/leidong/open/http/okhttp3/ConnectionPool$1;

    invoke-direct {v0, p0}, Lcom/leidong/open/http/okhttp3/ConnectionPool$1;-><init>(Lcom/leidong/open/http/okhttp3/ConnectionPool;)V

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    .line 79
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    .line 80
    new-instance v0, Lcom/leidong/open/http/okhttp3/internal/connection/RouteDatabase;

    invoke-direct {v0}, Lcom/leidong/open/http/okhttp3/internal/connection/RouteDatabase;-><init>()V

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->routeDatabase:Lcom/leidong/open/http/okhttp3/internal/connection/RouteDatabase;

    .line 93
    iput p1, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->maxIdleConnections:I

    .line 94
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->keepAliveDurationNs:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-gtz p1, :cond_0

    .line 98
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "keepAliveDuration <= 0: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method private pruneAndGetAllocationCount(Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;J)I
    .locals 6

    .line 257
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 258
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 259
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 261
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    :cond_1
    check-cast v3, Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;->route()Lcom/leidong/open/http/okhttp3/Route;

    move-result-object v5

    invoke-virtual {v5}, Lcom/leidong/open/http/okhttp3/Route;->address()Lcom/leidong/open/http/okhttp3/Address;

    move-result-object v5

    invoke-virtual {v5}, Lcom/leidong/open/http/okhttp3/Address;->url()Lcom/leidong/open/http/okhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-static {}, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;->get()Lcom/leidong/open/http/okhttp3/internal/platform/Platform;

    move-result-object v5

    iget-object v3, v3, Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;->callStackTrace:Ljava/lang/Object;

    invoke-virtual {v5, v4, v3}, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;->logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 274
    iput-boolean v3, p1, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    .line 277
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    iget-wide v2, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->keepAliveDurationNs:J

    sub-long v4, p2, v2

    iput-wide v4, p1, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    return v1

    .line 283
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method


# virtual methods
.method cleanup(J)J
    .locals 12

    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    move-object v5, v2

    const/4 v2, 0x0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;

    .line 211
    invoke-direct {p0, v7, p1, p2}, Lcom/leidong/open/http/okhttp3/ConnectionPool;->pruneAndGetAllocationCount(Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;J)I

    move-result v8

    if-lez v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 219
    iget-wide v8, v7, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    const/4 v10, 0x0

    sub-long v10, p1, v8

    cmp-long v8, v10, v3

    if-lez v8, :cond_0

    move-object v5, v7

    move-wide v3, v10

    goto :goto_0

    .line 226
    :cond_2
    iget-wide p1, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->keepAliveDurationNs:J

    cmp-long v0, v3, p1

    if-gez v0, :cond_6

    iget p1, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->maxIdleConnections:I

    if-le v2, p1, :cond_3

    goto :goto_1

    :cond_3
    if-lez v2, :cond_4

    .line 233
    iget-wide p1, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->keepAliveDurationNs:J

    const/4 v0, 0x0

    sub-long v0, p1, v3

    monitor-exit p0

    return-wide v0

    :cond_4
    if-lez v6, :cond_5

    .line 236
    iget-wide p1, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->keepAliveDurationNs:J

    monitor-exit p0

    return-wide p1

    .line 239
    :cond_5
    iput-boolean v1, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->cleanupRunning:Z

    const-wide/16 p1, -0x1

    .line 240
    monitor-exit p0

    return-wide p1

    .line 230
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {p1, v5}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 242
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-virtual {v5}, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Lcom/leidong/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    const-wide/16 p1, 0x0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 242
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method connectionBecameIdle(Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;)Z
    .locals 1

    .line 164
    iget-boolean v0, p1, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->maxIdleConnections:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 p1, 0x0

    return p1

    .line 165
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized connectionCount()I
    .locals 1

    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method deduplicate(Lcom/leidong/open/http/okhttp3/Address;Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;

    .line 140
    invoke-virtual {v1, p1}, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;->isEligible(Lcom/leidong/open/http/okhttp3/Address;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {p2}, Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 143
    invoke-virtual {p2, v1}, Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;->releaseAndAcquire(Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public evictAll()V
    .locals 4

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;

    .line 179
    iget-object v3, v2, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 180
    iput-boolean v3, v2, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    .line 181
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 185
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;

    .line 188
    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lcom/leidong/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 185
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method get(Lcom/leidong/open/http/okhttp3/Address;Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;)Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;

    .line 125
    invoke-virtual {v1, p1}, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;->isEligible(Lcom/leidong/open/http/okhttp3/Address;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {p2, v1}, Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;->acquire(Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;)V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized idleConnectionCount()I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;

    .line 106
    iget-object v2, v2, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 103
    monitor-exit p0

    throw v0
.end method

.method put(Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;)V
    .locals 2

    .line 151
    iget-boolean v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->cleanupRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->cleanupRunning:Z

    .line 153
    sget-object v0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method
