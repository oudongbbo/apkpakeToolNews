.class public final Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lcom/leidong/open/http/okhttp3/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;,
        Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;,
        Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;,
        Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;,
        Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;,
        Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;
    }
.end annotation


# static fields
.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field final client:Lcom/leidong/open/http/okhttp3/OkHttpClient;

.field final sink:Lcom/leidong/open/http/okio/BufferedSink;

.field final source:Lcom/leidong/open/http/okio/BufferedSource;

.field state:I

.field final streamAllocation:Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lcom/leidong/open/http/okhttp3/OkHttpClient;Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;Lcom/leidong/open/http/okio/BufferedSource;Lcom/leidong/open/http/okio/BufferedSink;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    .line 90
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->client:Lcom/leidong/open/http/okhttp3/OkHttpClient;

    .line 91
    iput-object p2, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;

    .line 92
    iput-object p3, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->source:Lcom/leidong/open/http/okio/BufferedSource;

    .line 93
    iput-object p4, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->sink:Lcom/leidong/open/http/okio/BufferedSink;

    return-void
.end method

.method private getTransferStream(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okio/Source;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-static {p1}, Lcom/leidong/open/http/okhttp3/internal/http/HttpHeaders;->hasBody(Lcom/leidong/open/http/okhttp3/Response;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 139
    invoke-virtual {p0, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lcom/leidong/open/http/okio/Source;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    .line 142
    invoke-virtual {p1, v1}, Lcom/leidong/open/http/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response;->request()Lcom/leidong/open/http/okhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Request;->url()Lcom/leidong/open/http/okhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->newChunkedSource(Lcom/leidong/open/http/okhttp3/HttpUrl;)Lcom/leidong/open/http/okio/Source;

    move-result-object p1

    return-object p1

    .line 146
    :cond_1
    invoke-static {p1}, Lcom/leidong/open/http/okhttp3/internal/http/HttpHeaders;->contentLength(Lcom/leidong/open/http/okhttp3/Response;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    .line 148
    invoke-virtual {p0, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lcom/leidong/open/http/okio/Source;

    move-result-object p1

    return-object p1

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->newUnknownLengthSource()Lcom/leidong/open/http/okio/Source;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;->cancel()V

    :cond_0
    return-void
.end method

.method public createRequestBody(Lcom/leidong/open/http/okhttp3/Request;J)Lcom/leidong/open/http/okio/Sink;
    .locals 2

    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    .line 97
    invoke-virtual {p1, v1}, Lcom/leidong/open/http/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->newChunkedSink()Lcom/leidong/open/http/okio/Sink;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    .line 104
    invoke-virtual {p0, p2, p3}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->newFixedLengthSink(J)Lcom/leidong/open/http/okio/Sink;

    move-result-object p1

    return-object p1

    .line 107
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method detachTimeout(Lcom/leidong/open/http/okio/ForwardingTimeout;)V
    .locals 2

    .line 260
    invoke-virtual {p1}, Lcom/leidong/open/http/okio/ForwardingTimeout;->delegate()Lcom/leidong/open/http/okio/Timeout;

    move-result-object v0

    .line 261
    sget-object v1, Lcom/leidong/open/http/okio/Timeout;->NONE:Lcom/leidong/open/http/okio/Timeout;

    invoke-virtual {p1, v1}, Lcom/leidong/open/http/okio/ForwardingTimeout;->setDelegate(Lcom/leidong/open/http/okio/Timeout;)Lcom/leidong/open/http/okio/ForwardingTimeout;

    .line 262
    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Timeout;->clearDeadline()Lcom/leidong/open/http/okio/Timeout;

    .line 263
    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Timeout;->clearTimeout()Lcom/leidong/open/http/okio/Timeout;

    return-void
.end method

.method public finishRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->sink:Lcom/leidong/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSink;->flush()V

    return-void
.end method

.method public flushRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->sink:Lcom/leidong/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSink;->flush()V

    return-void
.end method

.method public isClosed()Z
    .locals 2

    .line 159
    iget v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newChunkedSink()Lcom/leidong/open/http/okio/Sink;
    .locals 3

    .line 223
    iget v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    .line 224
    iput v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    .line 225
    new-instance v0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;

    invoke-direct {v0, p0}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;-><init>(Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;)V

    return-object v0
.end method

.method public newChunkedSource(Lcom/leidong/open/http/okhttp3/HttpUrl;)Lcom/leidong/open/http/okio/Source;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    iget v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x5

    .line 242
    iput v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    .line 243
    new-instance v0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;-><init>(Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;Lcom/leidong/open/http/okhttp3/HttpUrl;)V

    return-object v0
.end method

.method public newFixedLengthSink(J)Lcom/leidong/open/http/okio/Sink;
    .locals 2

    .line 229
    iget v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x2

    .line 230
    iput v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    .line 231
    new-instance v0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;

    invoke-direct {v0, p0, p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;-><init>(Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;J)V

    return-object v0
.end method

.method public newFixedLengthSource(J)Lcom/leidong/open/http/okio/Source;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    iget v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x5

    .line 236
    iput v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    .line 237
    new-instance v0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;-><init>(Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;J)V

    return-object v0
.end method

.method public newUnknownLengthSource()Lcom/leidong/open/http/okio/Source;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    iget v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x5

    .line 249
    iput v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    .line 250
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    .line 251
    new-instance v0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;

    invoke-direct {v0, p0}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;-><init>(Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;)V

    return-object v0
.end method

.method public openResponseBody(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/ResponseBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->getTransferStream(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okio/Source;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/leidong/open/http/okhttp3/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response;->headers()Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object p1

    invoke-static {v0}, Lcom/leidong/open/http/okio/Okio;->buffer(Lcom/leidong/open/http/okio/Source;)Lcom/leidong/open/http/okio/BufferedSource;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/leidong/open/http/okhttp3/internal/http/RealResponseBody;-><init>(Lcom/leidong/open/http/okhttp3/Headers;Lcom/leidong/open/http/okio/BufferedSource;)V

    return-object v1
.end method

.method public readHeaders()Lcom/leidong/open/http/okhttp3/Headers;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    new-instance v0, Lcom/leidong/open/http/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lcom/leidong/open/http/okhttp3/Headers$Builder;-><init>()V

    .line 216
    :goto_0
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v1}, Lcom/leidong/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    sget-object v2, Lcom/leidong/open/http/okhttp3/internal/Internal;->instance:Lcom/leidong/open/http/okhttp3/internal/Internal;

    invoke-virtual {v2, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/Internal;->addLenient(Lcom/leidong/open/http/okhttp3/Headers$Builder;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/Headers$Builder;->build()Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public readResponseHeaders(Z)Lcom/leidong/open/http/okhttp3/Response$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 186
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/open/http/okhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/internal/http/StatusLine;

    move-result-object v0

    .line 192
    new-instance v1, Lcom/leidong/open/http/okhttp3/Response$Builder;

    invoke-direct {v1}, Lcom/leidong/open/http/okhttp3/Response$Builder;-><init>()V

    iget-object v2, v0, Lcom/leidong/open/http/okhttp3/internal/http/StatusLine;->protocol:Lcom/leidong/open/http/okhttp3/Protocol;

    .line 193
    invoke-virtual {v1, v2}, Lcom/leidong/open/http/okhttp3/Response$Builder;->protocol(Lcom/leidong/open/http/okhttp3/Protocol;)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object v1

    iget v2, v0, Lcom/leidong/open/http/okhttp3/internal/http/StatusLine;->code:I

    .line 194
    invoke-virtual {v1, v2}, Lcom/leidong/open/http/okhttp3/Response$Builder;->code(I)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/leidong/open/http/okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 195
    invoke-virtual {v1, v2}, Lcom/leidong/open/http/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object v1

    .line 196
    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->readHeaders()Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leidong/open/http/okhttp3/Response$Builder;->headers(Lcom/leidong/open/http/okhttp3/Headers;)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 198
    iget p1, v0, Lcom/leidong/open/http/okhttp3/internal/http/StatusLine;->code:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 p1, 0x4

    .line 202
    iput p1, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 206
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 208
    throw v0
.end method

.method public writeRequest(Lcom/leidong/open/http/okhttp3/Headers;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->sink:Lcom/leidong/open/http/okio/BufferedSink;

    invoke-interface {v0, p2}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    const/4 p2, 0x0

    .line 174
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Headers;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_1

    .line 175
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->sink:Lcom/leidong/open/http/okio/BufferedSink;

    invoke-virtual {p1, p2}, Lcom/leidong/open/http/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v1

    const-string v2, ": "

    .line 176
    invoke-interface {v1, v2}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v1

    .line 177
    invoke-virtual {p1, p2}, Lcom/leidong/open/http/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v1

    const-string v2, "\r\n"

    .line 178
    invoke-interface {v1, v2}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 180
    :cond_1
    iget-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->sink:Lcom/leidong/open/http/okio/BufferedSink;

    const-string p2, "\r\n"

    invoke-interface {p1, p2}, Lcom/leidong/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;

    const/4 p1, 0x1

    .line 181
    iput p1, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    return-void
.end method

.method public writeRequestHeaders(Lcom/leidong/open/http/okhttp3/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;

    .line 128
    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;->route()Lcom/leidong/open/http/okhttp3/Route;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 127
    invoke-static {p1, v0}, Lcom/leidong/open/http/okhttp3/internal/http/RequestLine;->get(Lcom/leidong/open/http/okhttp3/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Request;->headers()Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/leidong/open/http/okhttp3/internal/http1/Http1Codec;->writeRequest(Lcom/leidong/open/http/okhttp3/Headers;Ljava/lang/String;)V

    return-void
.end method
