.class Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;
.super Ljava/lang/Object;
.source "Relay.java"

# interfaces
.implements Lcom/leidong/open/http/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RelaySource"
.end annotation


# instance fields
.field private fileOperator:Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;

.field private sourcePos:J

.field final synthetic this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

.field private final timeout:Lcom/leidong/open/http/okio/Timeout;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;)V
    .locals 1

    .line 225
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance p1, Lcom/leidong/open/http/okio/Timeout;

    invoke-direct {p1}, Lcom/leidong/open/http/okio/Timeout;-><init>()V

    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->timeout:Lcom/leidong/open/http/okio/Timeout;

    .line 229
    new-instance p1, Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;

    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;

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

    .line 345
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 346
    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;

    .line 349
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    monitor-enter v1

    .line 350
    :try_start_0
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iget v3, v2, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->sourceCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->sourceCount:I

    .line 351
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iget v2, v2, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->sourceCount:I

    if-nez v2, :cond_1

    .line 352
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iget-object v2, v2, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 353
    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iput-object v0, v3, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    move-object v0, v2

    .line 355
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 358
    invoke-static {v0}, Lcom/leidong/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 355
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public read(Lcom/leidong/open/http/okio/Buffer;J)J
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    .line 253
    iget-object v4, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;

    if-nez v4, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_0
    iget-object v4, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    monitor-enter v4

    .line 261
    :goto_0
    :try_start_0
    iget-wide v5, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    iget-object v7, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iget-wide v7, v7, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->upstreamPos:J

    cmp-long v9, v5, v7

    const/4 v5, 0x2

    const-wide/16 v10, -0x1

    if-nez v9, :cond_3

    .line 263
    iget-object v6, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iget-boolean v6, v6, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->complete:Z

    if-eqz v6, :cond_1

    monitor-exit v4

    return-wide v10

    .line 266
    :cond_1
    iget-object v6, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iget-object v6, v6, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    if-eqz v6, :cond_2

    .line 267
    iget-object v5, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->timeout:Lcom/leidong/open/http/okio/Timeout;

    iget-object v6, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    invoke-virtual {v5, v6}, Lcom/leidong/open/http/okio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_0

    .line 272
    :cond_2
    iget-object v6, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    iput-object v9, v6, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    const/4 v6, 0x1

    .line 274
    monitor-exit v4

    goto :goto_1

    .line 277
    :cond_3
    iget-object v6, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iget-object v6, v6, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v6}, Lcom/leidong/open/http/okio/Buffer;->size()J

    move-result-wide v12

    const/4 v6, 0x0

    sub-long v14, v7, v12

    .line 280
    iget-wide v12, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    cmp-long v6, v12, v14

    if-gez v6, :cond_7

    .line 282
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v6, 0x2

    :goto_1
    const-wide/16 v12, 0x20

    if-ne v6, v5, :cond_4

    .line 294
    iget-wide v4, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long v9, v7, v4

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 295
    iget-object v2, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;

    iget-wide v3, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long v5, v3, v12

    move-wide v3, v5

    move-object/from16 v5, p1

    move-wide v6, v8

    invoke-virtual/range {v2 .. v7}, Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;->read(JLcom/leidong/open/http/okio/Buffer;J)V

    .line 296
    iget-wide v2, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long v4, v2, v8

    iput-wide v4, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    return-wide v8

    :cond_4
    const/4 v4, 0x0

    .line 303
    :try_start_1
    iget-object v5, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iget-object v5, v5, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->upstream:Lcom/leidong/open/http/okio/Source;

    iget-object v6, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iget-object v6, v6, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->upstreamBuffer:Lcom/leidong/open/http/okio/Buffer;

    iget-object v9, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iget-wide v14, v9, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->bufferMaxSize:J

    invoke-interface {v5, v6, v14, v15}, Lcom/leidong/open/http/okio/Source;->read(Lcom/leidong/open/http/okio/Buffer;J)J

    move-result-wide v5

    cmp-long v9, v5, v10

    if-nez v9, :cond_5

    .line 307
    iget-object v2, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    invoke-virtual {v2, v7, v8}, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->commit(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 333
    iget-object v2, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    monitor-enter v2

    .line 334
    :try_start_2
    iget-object v3, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iput-object v4, v3, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 335
    iget-object v3, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 336
    monitor-exit v2

    return-wide v10

    :catchall_0
    move-exception v0

    move-object v3, v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 312
    :cond_5
    :try_start_3
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 313
    iget-object v9, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iget-object v14, v9, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->upstreamBuffer:Lcom/leidong/open/http/okio/Buffer;

    const-wide/16 v16, 0x0

    move-object/from16 v15, p1

    move-wide/from16 v18, v2

    invoke-virtual/range {v14 .. v19}, Lcom/leidong/open/http/okio/Buffer;->copyTo(Lcom/leidong/open/http/okio/Buffer;JJ)Lcom/leidong/open/http/okio/Buffer;

    .line 314
    iget-wide v9, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    const/4 v11, 0x0

    add-long v14, v9, v2

    iput-wide v14, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 317
    iget-object v9, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;

    const/4 v10, 0x0

    add-long v17, v7, v12

    iget-object v7, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iget-object v7, v7, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->upstreamBuffer:Lcom/leidong/open/http/okio/Buffer;

    .line 318
    invoke-virtual {v7}, Lcom/leidong/open/http/okio/Buffer;->clone()Lcom/leidong/open/http/okio/Buffer;

    move-result-object v19

    move-object/from16 v16, v9

    move-wide/from16 v20, v5

    .line 317
    invoke-virtual/range {v16 .. v21}, Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;->write(JLcom/leidong/open/http/okio/Buffer;J)V

    .line 320
    iget-object v7, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 322
    :try_start_4
    iget-object v8, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iget-object v8, v8, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->buffer:Lcom/leidong/open/http/okio/Buffer;

    iget-object v9, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iget-object v9, v9, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->upstreamBuffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v8, v9, v5, v6}, Lcom/leidong/open/http/okio/Buffer;->write(Lcom/leidong/open/http/okio/Buffer;J)V

    .line 323
    iget-object v8, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iget-object v8, v8, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v8}, Lcom/leidong/open/http/okio/Buffer;->size()J

    move-result-wide v8

    iget-object v10, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iget-wide v10, v10, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->bufferMaxSize:J

    cmp-long v12, v8, v10

    if-lez v12, :cond_6

    .line 324
    iget-object v8, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iget-object v8, v8, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->buffer:Lcom/leidong/open/http/okio/Buffer;

    iget-object v9, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iget-object v9, v9, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->buffer:Lcom/leidong/open/http/okio/Buffer;

    invoke-virtual {v9}, Lcom/leidong/open/http/okio/Buffer;->size()J

    move-result-wide v9

    iget-object v11, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iget-wide v11, v11, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->bufferMaxSize:J

    const/4 v13, 0x0

    sub-long v13, v9, v11

    invoke-virtual {v8, v13, v14}, Lcom/leidong/open/http/okio/Buffer;->skip(J)V

    .line 328
    :cond_6
    iget-object v8, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iget-wide v9, v8, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->upstreamPos:J

    const/4 v11, 0x0

    add-long v11, v9, v5

    iput-wide v11, v8, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->upstreamPos:J

    .line 329
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 333
    iget-object v5, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    monitor-enter v5

    .line 334
    :try_start_5
    iget-object v6, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iput-object v4, v6, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 335
    iget-object v4, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 336
    monitor-exit v5

    return-wide v2

    :catchall_1
    move-exception v0

    move-object v2, v0

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 329
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 333
    iget-object v3, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    monitor-enter v3

    .line 334
    :try_start_8
    iget-object v5, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iput-object v4, v5, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 335
    iget-object v4, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 336
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v2

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v2

    .line 286
    :cond_7
    :try_start_a
    iget-wide v5, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    const/4 v9, 0x0

    sub-long v9, v7, v5

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 287
    iget-object v5, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    iget-object v5, v5, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->buffer:Lcom/leidong/open/http/okio/Buffer;

    iget-wide v6, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    const/4 v8, 0x0

    sub-long v18, v6, v14

    move-object/from16 v16, v5

    move-object/from16 v17, p1

    move-wide/from16 v20, v2

    invoke-virtual/range {v16 .. v21}, Lcom/leidong/open/http/okio/Buffer;->copyTo(Lcom/leidong/open/http/okio/Buffer;JJ)Lcom/leidong/open/http/okio/Buffer;

    .line 288
    iget-wide v5, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    const/4 v7, 0x0

    add-long v7, v5, v2

    iput-wide v7, v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 289
    monitor-exit v4

    return-wide v2

    :catchall_5
    move-exception v0

    move-object v2, v0

    .line 290
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v2
.end method

.method public timeout()Lcom/leidong/open/http/okio/Timeout;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;->timeout:Lcom/leidong/open/http/okio/Timeout;

    return-object v0
.end method
