.class Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;
.super Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;
.source "Http1Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChunkedSource"
.end annotation


# static fields
.field private static final NO_CHUNK_YET:J = -0x1L


# instance fields
.field private bytesRemainingInChunk:J

.field private hasMoreChunks:Z

.field final synthetic this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

.field private final url:Lcom/leidong/open/http/okhttp3/HttpUrl;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;Lcom/leidong/open/http/okhttp3/HttpUrl;)V
    .locals 2

    .line 416
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$1;)V

    const-wide/16 v0, -0x1

    .line 413
    iput-wide v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    const/4 p1, 0x1

    .line 414
    iput-boolean p1, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    .line 417
    iput-object p2, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->url:Lcom/leidong/open/http/okhttp3/HttpUrl;

    return-void
.end method

.method private readChunkSize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    iget-wide v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 442
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    .line 445
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->readHexadecimalUnsignedLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    .line 446
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 447
    iget-wide v1, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    goto :goto_0

    .line 454
    :cond_1
    iget-wide v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 455
    iput-boolean v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    .line 456
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->client:Lcom/leidong/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/OkHttpClient;->cookieJar()Lcom/leidong/open/http/okhttp3/CookieJar;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->url:Lcom/leidong/open/http/okhttp3/HttpUrl;

    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    invoke-virtual {v2}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->readHeaders()Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/open/http/okhttp3/internal/http/HttpHeaders;->receiveHeaders(Lcom/leidong/open/http/okhttp3/CookieJar;Lcom/leidong/open/http/okhttp3/HttpUrl;Lcom/leidong/open/http/okhttp3/Headers;)V

    const/4 v0, 0x1

    .line 457
    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->endOfInput(Z)V

    :cond_2
    return-void

    .line 448
    :cond_3
    :goto_0
    :try_start_1
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected chunk size and optional extensions but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 452
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    iget-boolean v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 463
    :cond_0
    iget-boolean v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/Util;->discard(Lcom/leidong/open/http/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 464
    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->endOfInput(Z)V

    :cond_1
    const/4 v0, 0x1

    .line 466
    iput-boolean v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->closed:Z

    return-void
.end method

.method public read(Lcom/leidong/open/http/okio/Buffer;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 421
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 422
    :cond_0
    iget-boolean v2, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->closed:Z

    if-eqz v2, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 423
    :cond_1
    iget-boolean v2, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    const-wide/16 v3, -0x1

    if-nez v2, :cond_2

    return-wide v3

    .line 425
    :cond_2
    iget-wide v5, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    cmp-long v2, v5, v0

    if-eqz v2, :cond_3

    iget-wide v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_4

    .line 426
    :cond_3
    invoke-direct {p0}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->readChunkSize()V

    .line 427
    iget-boolean v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    if-nez v0, :cond_4

    return-wide v3

    .line 430
    :cond_4
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->source:Lcom/leidong/open/http/okio/BufferedSource;

    iget-wide v1, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v0, p1, p2, p3}, Lcom/leidong/open/http/okio/BufferedSource;->read(Lcom/leidong/open/http/okio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-nez p3, :cond_5

    const/4 p1, 0x0

    .line 432
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->endOfInput(Z)V

    .line 433
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 435
    :cond_5
    iget-wide v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    sub-long v2, v0, p1

    iput-wide v2, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    return-wide p1
.end method
