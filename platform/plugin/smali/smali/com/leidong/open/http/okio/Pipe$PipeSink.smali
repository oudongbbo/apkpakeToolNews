.class final Lcom/leidong/open/http/okio/Pipe$PipeSink;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lcom/leidong/open/http/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeSink"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/open/http/okio/Pipe;

.field final timeout:Lcom/leidong/open/http/okio/Timeout;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okio/Pipe;)V
    .locals 1
    .param p1, "this$0"    # Lcom/leidong/open/http/okio/Pipe;

    .line 59
    iput-object p1, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->this$0:Lcom/leidong/open/http/okio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/leidong/open/http/okio/Timeout;

    invoke-direct {v0}, Lcom/leidong/open/http/okio/Timeout;-><init>()V

    iput-object v0, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->timeout:Lcom/leidong/open/http/okio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->this$0:Lcom/leidong/open/http/okio/Pipe;

    iget-object v0, v0, Lcom/leidong/open/http/okio/Pipe;->buffer:Lcom/leidong/open/http/okio/Buffer;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->this$0:Lcom/leidong/open/http/okio/Pipe;

    iget-boolean v1, v1, Lcom/leidong/open/http/okio/Pipe;->sinkClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 98
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/Pipe$PipeSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :try_start_2
    iget-object v2, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->this$0:Lcom/leidong/open/http/okio/Pipe;

    iput-boolean v1, v2, Lcom/leidong/open/http/okio/Pipe;->sinkClosed:Z

    .line 101
    iget-object v1, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->this$0:Lcom/leidong/open/http/okio/Pipe;

    iget-object v1, v1, Lcom/leidong/open/http/okio/Pipe;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 102
    nop

    .line 103
    monitor-exit v0

    .line 104
    return-void

    .line 100
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->this$0:Lcom/leidong/open/http/okio/Pipe;

    iput-boolean v1, v3, Lcom/leidong/open/http/okio/Pipe;->sinkClosed:Z

    .line 101
    iget-object v1, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->this$0:Lcom/leidong/open/http/okio/Pipe;

    iget-object v1, v1, Lcom/leidong/open/http/okio/Pipe;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    throw v2

    .line 103
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->this$0:Lcom/leidong/open/http/okio/Pipe;

    iget-object v0, v0, Lcom/leidong/open/http/okio/Pipe;->buffer:Lcom/leidong/open/http/okio/Buffer;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->this$0:Lcom/leidong/open/http/okio/Pipe;

    iget-boolean v1, v1, Lcom/leidong/open/http/okio/Pipe;->sinkClosed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->this$0:Lcom/leidong/open/http/okio/Pipe;

    iget-object v1, v1, Lcom/leidong/open/http/okio/Pipe;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v1}, Lcom/leidong/open/http/okio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 88
    iget-object v1, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->this$0:Lcom/leidong/open/http/okio/Pipe;

    iget-boolean v1, v1, Lcom/leidong/open/http/okio/Pipe;->sourceClosed:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->timeout:Lcom/leidong/open/http/okio/Timeout;

    iget-object v2, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->this$0:Lcom/leidong/open/http/okio/Pipe;

    iget-object v2, v2, Lcom/leidong/open/http/okio/Pipe;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v1, v2}, Lcom/leidong/open/http/okio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_2
    monitor-exit v0

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public timeout()Lcom/leidong/open/http/okio/Timeout;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->timeout:Lcom/leidong/open/http/okio/Timeout;

    return-object v0
.end method

.method public write(Lcom/leidong/open/http/okio/Buffer;J)V
    .locals 9
    .param p1, "source"    # Lcom/leidong/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->this$0:Lcom/leidong/open/http/okio/Pipe;

    iget-object v0, v0, Lcom/leidong/open/http/okio/Pipe;->buffer:Lcom/leidong/open/http/okio/Buffer;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->this$0:Lcom/leidong/open/http/okio/Pipe;

    iget-boolean v1, v1, Lcom/leidong/open/http/okio/Pipe;->sinkClosed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_0
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_3

    .line 67
    iget-object v3, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->this$0:Lcom/leidong/open/http/okio/Pipe;

    iget-boolean v3, v3, Lcom/leidong/open/http/okio/Pipe;->sourceClosed:Z

    if-eqz v3, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_1
    iget-object v3, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->this$0:Lcom/leidong/open/http/okio/Pipe;

    iget-wide v3, v3, Lcom/leidong/open/http/okio/Pipe;->maxBufferSize:J

    iget-object v5, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->this$0:Lcom/leidong/open/http/okio/Pipe;

    iget-object v5, v5, Lcom/leidong/open/http/okio/Pipe;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v5}, Lcom/leidong/open/http/okio/Buffer;->size()J

    move-result-wide v5

    const/4 v7, 0x0

    sub-long v7, v3, v5

    .line 70
    .local v7, "bufferSpaceAvailable":J
    cmp-long v3, v7, v1

    if-nez v3, :cond_2

    .line 71
    iget-object v1, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->timeout:Lcom/leidong/open/http/okio/Timeout;

    iget-object v2, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->this$0:Lcom/leidong/open/http/okio/Pipe;

    iget-object v2, v2, Lcom/leidong/open/http/okio/Pipe;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v1, v2}, Lcom/leidong/open/http/okio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    .line 72
    goto :goto_0

    .line 75
    :cond_2
    invoke-static {v7, v8, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 76
    .local v1, "bytesToWrite":J
    iget-object v3, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->this$0:Lcom/leidong/open/http/okio/Pipe;

    iget-object v3, v3, Lcom/leidong/open/http/okio/Pipe;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v3, p1, v1, v2}, Lcom/leidong/open/http/okio/Buffer;->write(Lcom/leidong/open/http/okio/Buffer;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    const/4 v3, 0x0

    sub-long v3, p2, v1

    .line 78
    .end local p2    # "byteCount":J
    .local v3, "byteCount":J
    :try_start_1
    iget-object p2, p0, Lcom/leidong/open/http/okio/Pipe$PipeSink;->this$0:Lcom/leidong/open/http/okio/Pipe;

    iget-object p2, p2, Lcom/leidong/open/http/okio/Pipe;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .end local v1    # "bytesToWrite":J
    .end local v7    # "bufferSpaceAvailable":J
    nop

    .line 66
    move-wide p2, v3

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v1

    move-wide p2, v3

    goto :goto_1

    .line 80
    .end local v3    # "byteCount":J
    .restart local p2    # "byteCount":J
    :cond_3
    :try_start_2
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_1
    move-exception v1

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
