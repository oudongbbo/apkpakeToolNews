.class Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;
.super Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;
.source "Http1Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedLengthSource"
.end annotation


# instance fields
.field private bytesRemaining:J

.field final synthetic this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;


# direct methods
.method public constructor <init>(Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;J)V
    .locals 4
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$1;)V

    .line 374
    iput-wide p2, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    .line 375
    iget-wide v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 376
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->endOfInput(Z)V

    .line 378
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    iget-boolean v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 401
    :cond_0
    iget-wide v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/Util;->discard(Lcom/leidong/open/http/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->endOfInput(Z)V

    .line 405
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->closed:Z

    .line 406
    return-void
.end method

.method public read(Lcom/leidong/open/http/okio/Buffer;J)J
    .locals 8
    .param p1, "sink"    # Lcom/leidong/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_0
    iget-boolean v2, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->closed:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_1
    iget-wide v2, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    cmp-long v4, v2, v0

    const-wide/16 v2, -0x1

    if-nez v4, :cond_2

    return-wide v2

    .line 385
    :cond_2
    iget-object v4, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v4, v4, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->source:Lcom/leidong/open/http/okio/BufferedSource;

    iget-wide v5, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    invoke-static {v5, v6, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-interface {v4, p1, v5, v6}, Lcom/leidong/open/http/okio/BufferedSource;->read(Lcom/leidong/open/http/okio/Buffer;J)J

    move-result-wide v4

    .line 386
    .local v4, "read":J
    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    .line 387
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->endOfInput(Z)V

    .line 388
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_3
    iget-wide v2, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    sub-long v6, v2, v4

    iput-wide v6, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    .line 392
    iget-wide v2, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    cmp-long v6, v2, v0

    if-nez v6, :cond_4

    .line 393
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->endOfInput(Z)V

    .line 395
    :cond_4
    return-wide v4
.end method
