.class Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;
.super Lcom/leidong/open/http/okhttp3/internal/NamedRunnable;
.source "Http2Connection.java"

# interfaces
.implements Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReaderRunnable"
.end annotation


# instance fields
.field final reader:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;

.field final synthetic this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;)V
    .locals 4
    .param p1, "this$0"    # Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;
    .param p2, "reader"    # Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;

    .line 557
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    .line 558
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    iput-object p2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;

    .line 560
    return-void
.end method

.method private applyAndAckSettings(Lcom/leidong/open/http/okhttp3/internal/http2/Settings;)V
    .locals 6
    .param p1, "peerSettings"    # Lcom/leidong/open/http/okhttp3/internal/http2/Settings;

    .line 694
    sget-object v0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;-><init>(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lcom/leidong/open/http/okhttp3/internal/http2/Settings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 702
    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    .line 706
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lcom/leidong/open/http/okio/ByteString;Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "origin"    # Ljava/lang/String;
    .param p3, "protocol"    # Lcom/leidong/open/http/okio/ByteString;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "maxAge"    # J

    .line 769
    return-void
.end method

.method public data(ZILcom/leidong/open/http/okio/BufferedSource;I)V
    .locals 3
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lcom/leidong/open/http/okio/BufferedSource;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2, p3, p4, p1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->pushDataLater(ILcom/leidong/open/http/okio/BufferedSource;IZ)V

    .line 587
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->getStream(I)Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;

    move-result-object v0

    .line 590
    .local v0, "dataStream":Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;
    if-nez v0, :cond_1

    .line 591
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    sget-object v2, Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, p2, v2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;)V

    .line 592
    int-to-long v1, p4

    invoke-interface {p3, v1, v2}, Lcom/leidong/open/http/okio/BufferedSource;->skip(J)V

    .line 593
    return-void

    .line 595
    :cond_1
    invoke-virtual {v0, p3, p4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;->receiveData(Lcom/leidong/open/http/okio/BufferedSource;I)V

    .line 596
    if-eqz p1, :cond_2

    .line 597
    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;->receiveFin()V

    .line 599
    :cond_2
    return-void
.end method

.method protected execute()V
    .locals 4

    .line 563
    sget-object v0, Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;

    .line 564
    .local v0, "connectionErrorCode":Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;
    sget-object v1, Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;

    .line 566
    .local v1, "streamErrorCode":Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;
    :try_start_0
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;

    invoke-virtual {v2, p0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readConnectionPreface(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;)V

    .line 567
    :goto_0
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->nextFrame(ZLcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 569
    :cond_0
    sget-object v2, Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;->NO_ERROR:Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;

    move-object v0, v2

    .line 570
    sget-object v2, Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;->CANCEL:Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 576
    :try_start_1
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v2, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->close(Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 577
    :catch_0
    move-exception v2

    goto :goto_2

    .line 575
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 571
    :catch_1
    move-exception v2

    .line 572
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v3, Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;

    move-object v0, v3

    .line 573
    sget-object v3, Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v3

    .line 576
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_3
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v2, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->close(Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 578
    :goto_1
    goto :goto_2

    .line 577
    :catch_2
    move-exception v2

    .line 579
    :goto_2
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;

    invoke-static {v2}, Lcom/leidong/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 580
    nop

    .line 581
    return-void

    .line 575
    :goto_3
    nop

    .line 576
    :try_start_4
    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->close(Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 578
    goto :goto_4

    .line 577
    :catch_3
    move-exception v3

    .line 579
    :goto_4
    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;

    invoke-static {v3}, Lcom/leidong/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method public goAway(ILcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;Lcom/leidong/open/http/okio/ByteString;)V
    .locals 6
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;
    .param p3, "debugData"    # Lcom/leidong/open/http/okio/ByteString;

    .line 721
    invoke-virtual {p3}, Lcom/leidong/open/http/okio/ByteString;->size()I

    .line 726
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    monitor-enter v0

    .line 727
    :try_start_0
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;

    .line 728
    .local v1, "streamsCopy":[Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    .line 729
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    .line 733
    .local v3, "http2Stream":Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;
    invoke-virtual {v3}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;->getId()I

    move-result v4

    if-le v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 734
    sget-object v4, Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v3, v4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;->receiveRstStream(Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;)V

    .line 735
    iget-object v4, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->removeStream(I)Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;

    .line 732
    .end local v3    # "http2Stream":Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 738
    :cond_1
    return-void

    .line 729
    .end local v1    # "streamsCopy":[Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public headers(ZIILjava/util/List;)V
    .locals 11
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "associatedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 603
    .local p4, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/leidong/open/http/okhttp3/internal/http2/Header;>;"
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2, p4, p1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->pushHeadersLater(ILjava/util/List;Z)V

    .line 605
    return-void

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    monitor-enter v0

    .line 610
    :try_start_0
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    iget-boolean v1, v1, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    .line 612
    :cond_1
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->getStream(I)Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;

    move-result-object v1

    .line 614
    .local v1, "stream":Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;
    if-nez v1, :cond_4

    .line 616
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    iget v2, v2, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    if-gt p2, v2, :cond_2

    monitor-exit v0

    return-void

    .line 619
    :cond_2
    rem-int/lit8 v2, p2, 0x2

    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    iget v3, v3, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    const/4 v4, 0x2

    rem-int/2addr v3, v4

    if-ne v2, v3, :cond_3

    monitor-exit v0

    return-void

    .line 622
    :cond_3
    new-instance v2, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v7, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    const/4 v8, 0x0

    move-object v5, v2

    move v6, p2

    move v9, p1

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;-><init>(ILcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;ZZLjava/util/List;)V

    .line 624
    .local v2, "newStream":Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;
    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    iput p2, v3, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    .line 625
    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v3, v3, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    sget-object v3, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;

    const-string v6, "OkHttp %s stream %d"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v8, v8, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-direct {v5, p0, v6, v4, v2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;-><init>(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 639
    monitor-exit v0

    return-void

    .line 641
    .end local v2    # "newStream":Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    invoke-virtual {v1, p4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;->receiveHeaders(Ljava/util/List;)V

    .line 645
    if-eqz p1, :cond_5

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;->receiveFin()V

    .line 646
    :cond_5
    return-void

    .line 641
    .end local v1    # "stream":Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public ping(ZII)V
    .locals 3
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .line 709
    if-eqz p1, :cond_1

    .line 710
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->removePing(I)Lcom/leidong/open/http/okhttp3/internal/http2/Ping;

    move-result-object v0

    .line 711
    .local v0, "ping":Lcom/leidong/open/http/okhttp3/internal/http2/Ping;
    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Ping;->receive()V

    .line 714
    .end local v0    # "ping":Lcom/leidong/open/http/okhttp3/internal/http2/Ping;
    :cond_0
    goto :goto_0

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->writePingLater(ZIILcom/leidong/open/http/okhttp3/internal/http2/Ping;)V

    .line 718
    :goto_0
    return-void
.end method

.method public priority(IIIZ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "streamDependency"    # I
    .param p3, "weight"    # I
    .param p4, "exclusive"    # Z

    .line 759
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 763
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/leidong/open/http/okhttp3/internal/http2/Header;>;"
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2, p3}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->pushRequestLater(ILjava/util/List;)V

    .line 764
    return-void
.end method

.method public rstStream(ILcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;

    .line 649
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->pushResetLater(ILcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;)V

    .line 651
    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->removeStream(I)Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;

    move-result-object v0

    .line 654
    .local v0, "rstStream":Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;
    if-eqz v0, :cond_1

    .line 655
    invoke-virtual {v0, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;->receiveRstStream(Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;)V

    .line 657
    :cond_1
    return-void
.end method

.method public settings(ZLcom/leidong/open/http/okhttp3/internal/http2/Settings;)V
    .locals 12
    .param p1, "clearPrevious"    # Z
    .param p2, "newSettings"    # Lcom/leidong/open/http/okhttp3/internal/http2/Settings;

    .line 660
    const-wide/16 v0, 0x0

    .line 661
    .local v0, "delta":J
    const/4 v2, 0x0

    .line 662
    .local v2, "streamsToNotify":[Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;
    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    monitor-enter v3

    .line 663
    :try_start_0
    iget-object v4, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->peerSettings:Lcom/leidong/open/http/okhttp3/internal/http2/Settings;

    invoke-virtual {v4}, Lcom/leidong/open/http/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v4

    .line 664
    .local v4, "priorWriteWindowSize":I
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v5, v5, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->peerSettings:Lcom/leidong/open/http/okhttp3/internal/http2/Settings;

    invoke-virtual {v5}, Lcom/leidong/open/http/okhttp3/internal/http2/Settings;->clear()V

    .line 665
    :cond_0
    iget-object v5, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v5, v5, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->peerSettings:Lcom/leidong/open/http/okhttp3/internal/http2/Settings;

    invoke-virtual {v5, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Settings;->merge(Lcom/leidong/open/http/okhttp3/internal/http2/Settings;)V

    .line 666
    invoke-direct {p0, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->applyAndAckSettings(Lcom/leidong/open/http/okhttp3/internal/http2/Settings;)V

    .line 667
    iget-object v5, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v5, v5, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->peerSettings:Lcom/leidong/open/http/okhttp3/internal/http2/Settings;

    invoke-virtual {v5}, Lcom/leidong/open/http/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v5

    .line 668
    .local v5, "peerInitialWindowSize":I
    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v5, v6, :cond_2

    if-eq v5, v4, :cond_2

    .line 669
    sub-int v6, v5, v4

    int-to-long v0, v6

    .line 670
    iget-object v6, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    iget-boolean v6, v6, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z

    if-nez v6, :cond_1

    .line 671
    iget-object v6, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v6, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->addBytesToWriteWindow(J)V

    .line 672
    iget-object v6, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    iput-boolean v7, v6, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z

    .line 674
    :cond_1
    iget-object v6, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v6, v6, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 675
    iget-object v6, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v6, v6, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    iget-object v8, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v8, v8, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    new-array v8, v8, [Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;

    invoke-interface {v6, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;

    move-object v2, v6

    .line 678
    :cond_2
    sget-object v6, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;

    const-string v9, "OkHttp %s settings"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v10, v10, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v7, v11

    invoke-direct {v8, p0, v9, v7}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;-><init>(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v6, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 683
    .end local v4    # "priorWriteWindowSize":I
    .end local v5    # "peerInitialWindowSize":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 684
    if-eqz v2, :cond_3

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_3

    .line 685
    array-length v3, v2

    :goto_0
    if-ge v11, v3, :cond_3

    aget-object v4, v2, v11

    .line 686
    .local v4, "stream":Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;
    monitor-enter v4

    .line 687
    :try_start_1
    invoke-virtual {v4, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 688
    monitor-exit v4

    .line 685
    .end local v4    # "stream":Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 688
    .restart local v4    # "stream":Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 691
    .end local v4    # "stream":Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;
    :cond_3
    return-void

    .line 683
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method public windowUpdate(IJ)V
    .locals 6
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J

    .line 741
    if-nez p1, :cond_0

    .line 742
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    monitor-enter v0

    .line 743
    :try_start_0
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    iget-wide v2, v1, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    const/4 v4, 0x0

    add-long v4, v2, p2

    iput-wide v4, v1, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 744
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 745
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Connection;->getStream(I)Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;

    move-result-object v0

    .line 748
    .local v0, "stream":Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;
    if-eqz v0, :cond_1

    .line 749
    monitor-enter v0

    .line 750
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 751
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 754
    .end local v0    # "stream":Lcom/leidong/open/http/okhttp3/internal/http2/Http2Stream;
    :cond_1
    :goto_0
    return-void
.end method