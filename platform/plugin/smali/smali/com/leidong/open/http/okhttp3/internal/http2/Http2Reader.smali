.class final Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;
.super Ljava/lang/Object;
.source "Http2Reader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;,
        Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;
    }
.end annotation


# static fields
.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final client:Z

.field private final continuation:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;

.field final hpackReader:Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;

.field private final source:Lcom/leidong/open/http/okio/BufferedSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/leidong/open/http/okio/BufferedSource;Z)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    .line 73
    iput-boolean p2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->client:Z

    .line 74
    new-instance p1, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;

    iget-object p2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-direct {p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;-><init>(Lcom/leidong/open/http/okio/BufferedSource;)V

    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->continuation:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;

    .line 75
    new-instance p1, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;

    iget-object p2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->continuation:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;

    const/16 v0, 0x1000

    invoke-direct {p1, v0, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;-><init>(ILcom/leidong/open/http/okio/Source;)V

    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->hpackReader:Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;

    return-void
.end method

.method static lengthWithoutPadding(IBS)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    if-le p2, p0, :cond_1

    const-string p1, "PROTOCOL_ERROR padding %s > remaining length %s"

    const/4 v0, 0x2

    .line 409
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, p2

    invoke-static {p1, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_1
    sub-int/2addr p0, p2

    int-to-short p0, p0

    return p0
.end method

.method private readData(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_0

    const-string p1, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    .line 203
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_0
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    const-string p1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    .line 209
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_3
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_4

    .line 212
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 213
    :cond_4
    invoke-static {p2, p3, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result p2

    .line 215
    iget-object p3, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {p1, v1, p4, p3, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;->data(ZILcom/leidong/open/http/okio/BufferedSource;I)V

    .line 216
    iget-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    int-to-long p2, v0

    invoke-interface {p1, p2, p3}, Lcom/leidong/open/http/okio/BufferedSource;->skip(J)V

    return-void
.end method

.method private readGoAway(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    const-string p1, "TYPE_GOAWAY length < 8: %s"

    .line 318
    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    invoke-static {p1, p3}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_0
    if-eqz p4, :cond_1

    const-string p1, "TYPE_GOAWAY streamId != 0"

    .line 319
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 320
    :cond_1
    iget-object p4, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {p4}, Lcom/leidong/open/http/okio/BufferedSource;->readInt()I

    move-result p4

    .line 321
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v2}, Lcom/leidong/open/http/okio/BufferedSource;->readInt()I

    move-result v2

    sub-int/2addr p2, v0

    .line 323
    invoke-static {v2}, Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;->fromHttp2(I)Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "TYPE_GOAWAY unexpected error code: %d"

    .line 325
    new-array p2, p3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 327
    :cond_2
    sget-object p3, Lcom/leidong/open/http/okio/ByteString;->EMPTY:Lcom/leidong/open/http/okio/ByteString;

    if-lez p2, :cond_3

    .line 329
    iget-object p3, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    int-to-long v1, p2

    invoke-interface {p3, v1, v2}, Lcom/leidong/open/http/okio/BufferedSource;->readByteString(J)Lcom/leidong/open/http/okio/ByteString;

    move-result-object p3

    .line 331
    :cond_3
    invoke-interface {p1, p4, v0, p3}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;->goAway(ILcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;Lcom/leidong/open/http/okio/ByteString;)V

    return-void
.end method

.method private readHeaderBlock(ISBI)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->continuation:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;

    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->continuation:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;

    iput p1, v1, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    iput p1, v0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->length:I

    .line 191
    iget-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->continuation:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;

    iput-short p2, p1, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->padding:S

    .line 192
    iget-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->continuation:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;

    iput-byte p3, p1, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:B

    .line 193
    iget-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->continuation:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;

    iput p4, p1, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    .line 197
    iget-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->hpackReader:Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;

    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->readHeaders()V

    .line 198
    iget-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->hpackReader:Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;

    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->getAndResetHeaderList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private readHeaders(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_0

    const-string p1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    .line 170
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_0
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_2

    .line 174
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_2
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_3

    .line 177
    invoke-direct {p0, p1, p4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readPriority(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;I)V

    add-int/lit8 p2, p2, -0x5

    .line 181
    :cond_3
    invoke-static {p2, p3, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result p2

    .line 183
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object p2

    const/4 p3, -0x1

    .line 185
    invoke-interface {p1, v1, p4, p3, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;->headers(ZIILjava/util/List;)V

    return-void
.end method

.method static readMedium(Lcom/leidong/open/http/okio/BufferedSource;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    invoke-interface {p0}, Lcom/leidong/open/http/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 401
    invoke-interface {p0}, Lcom/leidong/open/http/okio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 402
    invoke-interface {p0}, Lcom/leidong/open/http/okio/BufferedSource;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private readPing(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    const-string p1, "TYPE_PING length != 8: %s"

    .line 308
    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    invoke-static {p1, p3}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_0
    if-eqz p4, :cond_1

    const-string p1, "TYPE_PING streamId != 0"

    .line 309
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 310
    :cond_1
    iget-object p2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {p2}, Lcom/leidong/open/http/okio/BufferedSource;->readInt()I

    move-result p2

    .line 311
    iget-object p4, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {p4}, Lcom/leidong/open/http/okio/BufferedSource;->readInt()I

    move-result p4

    and-int/2addr p3, v1

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    .line 313
    :cond_2
    invoke-interface {p1, v0, p2, p4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;->ping(ZII)V

    return-void
.end method

.method private readPriority(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->readInt()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    .line 230
    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v3}, Lcom/leidong/open/http/okio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    .line 231
    invoke-interface {p1, p2, v0, v3, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;->priority(IIIZ)V

    return-void
.end method

.method private readPriority(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const-string p1, "TYPE_PRIORITY length: %d != 5"

    const/4 p4, 0x1

    .line 221
    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, p3

    invoke-static {p1, p4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_0
    if-nez p4, :cond_1

    const-string p1, "TYPE_PRIORITY streamId == 0"

    .line 222
    new-array p2, p3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 223
    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readPriority(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;I)V

    return-void
.end method

.method private readPushPromise(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_0

    const-string p1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    .line 296
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_0
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_1

    .line 298
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v1}, Lcom/leidong/open/http/okio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    .line 301
    invoke-static {p2, p3, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result p2

    .line 302
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object p2

    .line 303
    invoke-interface {p1, p4, v1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;->pushPromise(IILjava/util/List;)V

    return-void
.end method

.method private readRstStream(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    const-string p1, "TYPE_RST_STREAM length: %d != 4"

    .line 236
    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    invoke-static {p1, p3}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_0
    if-nez p4, :cond_1

    const-string p1, "TYPE_RST_STREAM streamId == 0"

    .line 237
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 238
    :cond_1
    iget-object p2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {p2}, Lcom/leidong/open/http/okio/BufferedSource;->readInt()I

    move-result p2

    .line 239
    invoke-static {p2}, Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;->fromHttp2(I)Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    .line 241
    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    invoke-static {p1, p3}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 243
    :cond_2
    invoke-interface {p1, p4, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;->rstStream(ILcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method private readSettings(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const-string p1, "TYPE_SETTINGS streamId != 0"

    .line 248
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_0
    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    const-string p1, "FRAME_SIZE_ERROR ack frame should be empty!"

    .line 250
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 251
    :cond_1
    invoke-interface {p1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;->ackSettings()V

    return-void

    .line 255
    :cond_2
    rem-int/lit8 p3, p2, 0x6

    if-eqz p3, :cond_3

    const-string p1, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array p3, p4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    invoke-static {p1, p3}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 256
    :cond_3
    new-instance p3, Lcom/leidong/open/http/okhttp3/internal/http2/Settings;

    invoke-direct {p3}, Lcom/leidong/open/http/okhttp3/internal/http2/Settings;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_6

    .line 258
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v2}, Lcom/leidong/open/http/okio/BufferedSource;->readShort()S

    move-result v2

    .line 259
    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v3}, Lcom/leidong/open/http/okio/BufferedSource;->readInt()I

    move-result v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v4, 0x4000

    if-lt v3, v4, :cond_4

    const v4, 0xffffff

    if-le v3, v4, :cond_5

    :cond_4
    const-string p1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    .line 280
    new-array p2, p4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_1
    const/4 v2, 0x7

    if-gez v3, :cond_5

    const-string p1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    .line 275
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_2
    const/4 v2, 0x4

    goto :goto_1

    :pswitch_3
    if-eqz v3, :cond_5

    if-eq v3, p4, :cond_5

    const-string p1, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    .line 266
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 288
    :cond_5
    :goto_1
    :pswitch_4
    invoke-virtual {p3, v2, v3}, Lcom/leidong/open/http/okhttp3/internal/http2/Settings;->set(II)Lcom/leidong/open/http/okhttp3/internal/http2/Settings;

    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 290
    :cond_6
    invoke-interface {p1, v0, p3}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;->settings(ZLcom/leidong/open/http/okhttp3/internal/http2/Settings;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private readWindowUpdate(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    const-string p1, "TYPE_WINDOW_UPDATE length !=4: %s"

    .line 336
    new-array p4, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, p3

    invoke-static {p1, p4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 337
    :cond_0
    iget-object p2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {p2}, Lcom/leidong/open/http/okio/BufferedSource;->readInt()I

    move-result p2

    int-to-long v1, p2

    const-wide/32 v3, 0x7fffffff

    and-long v5, v1, v3

    const-wide/16 v1, 0x0

    cmp-long p2, v5, v1

    if-nez p2, :cond_1

    const-string p1, "windowSizeIncrement was 0"

    .line 338
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p2, p3

    invoke-static {p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 339
    :cond_1
    invoke-interface {p1, p4, v5, v6}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;->windowUpdate(IJ)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->close()V

    return-void
.end method

.method public nextFrame(ZLcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Lcom/leidong/open/http/okio/BufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-static {v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readMedium(Lcom/leidong/open/http/okio/BufferedSource;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_3

    const/16 v3, 0x4000

    if-le v1, v3, :cond_0

    goto/16 :goto_1

    .line 116
    :cond_0
    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v3}, Lcom/leidong/open/http/okio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    if-eq v3, p1, :cond_1

    const-string p1, "Expected a SETTINGS frame but was %s"

    .line 118
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {p1}, Lcom/leidong/open/http/okio/BufferedSource;->readByte()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 121
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->readInt()I

    move-result v0

    const v4, 0x7fffffff

    and-int/2addr v0, v4

    .line 122
    sget-object v4, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    invoke-static {v2, v0, v1, v3, p1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->frameLog(ZIIBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    packed-switch v3, :pswitch_data_0

    .line 163
    iget-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    int-to-long v0, v1

    invoke-interface {p1, v0, v1}, Lcom/leidong/open/http/okio/BufferedSource;->skip(J)V

    goto :goto_0

    .line 158
    :pswitch_0
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readWindowUpdate(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_0

    .line 154
    :pswitch_1
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readGoAway(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_0

    .line 150
    :pswitch_2
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readPing(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_0

    .line 146
    :pswitch_3
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readPushPromise(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_0

    .line 142
    :pswitch_4
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readSettings(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_0

    .line 138
    :pswitch_5
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readRstStream(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_0

    .line 134
    :pswitch_6
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readPriority(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_0

    .line 130
    :pswitch_7
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readHeaders(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_0

    .line 126
    :pswitch_8
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readData(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    :goto_0
    return v2

    :cond_3
    :goto_1
    const-string p1, "FRAME_SIZE_ERROR: %s"

    .line 114
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readConnectionPreface(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-boolean v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->client:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0, v2, p1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->nextFrame(ZLcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Required SETTINGS preface not received"

    .line 82
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    sget-object v0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lcom/leidong/open/http/okio/ByteString;

    invoke-virtual {v0}, Lcom/leidong/open/http/okio/ByteString;->size()I

    move-result v0

    int-to-long v3, v0

    invoke-interface {p1, v3, v4}, Lcom/leidong/open/http/okio/BufferedSource;->readByteString(J)Lcom/leidong/open/http/okio/ByteString;

    move-result-object p1

    .line 87
    sget-object v0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    const-string v3, "<< CONNECTION %s"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/leidong/open/http/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/leidong/open/http/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 88
    :cond_1
    sget-object v0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lcom/leidong/open/http/okio/ByteString;

    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Expected a connection header but was %s"

    .line 89
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/leidong/open/http/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    return-void
.end method
