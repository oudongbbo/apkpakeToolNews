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
    .locals 3
    .param p1, "source"    # Lcom/leidong/open/http/okio/BufferedSource;
    .param p2, "client"    # Z

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    .line 73
    iput-boolean p2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->client:Z

    .line 74
    new-instance v0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;

    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-direct {v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;-><init>(Lcom/leidong/open/http/okio/BufferedSource;)V

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->continuation:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;

    .line 75
    new-instance v0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;

    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->continuation:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;

    const/16 v2, 0x1000

    invoke-direct {v0, v2, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;-><init>(ILcom/leidong/open/http/okio/Source;)V

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->hpackReader:Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;

    .line 76
    return-void
.end method

.method static lengthWithoutPadding(IBS)I
    .locals 4
    .param p0, "length"    # I
    .param p1, "flags"    # B
    .param p2, "padding"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    .line 408
    :cond_0
    if-le p2, p0, :cond_1

    .line 409
    const-string v0, "PROTOCOL_ERROR padding %s > remaining length %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 411
    :cond_1
    sub-int v0, p0, p2

    int-to-short v0, v0

    return v0
.end method

.method private readData(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 6
    .param p1, "handler"    # Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    const/4 v0, 0x0

    if-nez p4, :cond_0

    const-string v1, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 206
    :cond_0
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 207
    .local v1, "inFinished":Z
    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 208
    .local v2, "gzipped":Z
    :goto_1
    if-eqz v2, :cond_3

    .line 209
    const-string v3, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 212
    :cond_3
    and-int/lit8 v3, p3, 0x8

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    nop

    .line 213
    .local v0, "padding":S
    :cond_4
    invoke-static {p2, p3, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result p2

    .line 215
    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {p1, v1, p4, v3, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;->data(ZILcom/leidong/open/http/okio/BufferedSource;I)V

    .line 216
    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    int-to-long v4, v0

    invoke-interface {v3, v4, v5}, Lcom/leidong/open/http/okio/BufferedSource;->skip(J)V

    .line 217
    return-void
.end method

.method private readGoAway(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 8
    .param p1, "handler"    # Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ge p2, v1, :cond_0

    const-string v1, "TYPE_GOAWAY length < 8: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 319
    :cond_0
    if-eqz p4, :cond_1

    const-string v0, "TYPE_GOAWAY streamId != 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v1}, Lcom/leidong/open/http/okio/BufferedSource;->readInt()I

    move-result v1

    .line 321
    .local v1, "lastStreamId":I
    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v3}, Lcom/leidong/open/http/okio/BufferedSource;->readInt()I

    move-result v3

    .line 322
    .local v3, "errorCodeInt":I
    add-int/lit8 v4, p2, -0x8

    .line 323
    .local v4, "opaqueDataLength":I
    invoke-static {v3}, Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;->fromHttp2(I)Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;

    move-result-object v5

    .line 324
    .local v5, "errorCode":Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;
    if-nez v5, :cond_2

    .line 325
    const-string v6, "TYPE_GOAWAY unexpected error code: %d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v2

    invoke-static {v6, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 327
    :cond_2
    sget-object v0, Lcom/leidong/open/http/okio/ByteString;->EMPTY:Lcom/leidong/open/http/okio/ByteString;

    .line 328
    .local v0, "debugData":Lcom/leidong/open/http/okio/ByteString;
    if-lez v4, :cond_3

    .line 329
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    int-to-long v6, v4

    invoke-interface {v2, v6, v7}, Lcom/leidong/open/http/okio/BufferedSource;->readByteString(J)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    .line 331
    :cond_3
    invoke-interface {p1, v1, v5, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;->goAway(ILcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;Lcom/leidong/open/http/okio/ByteString;)V

    .line 332
    return-void
.end method

.method private readHeaderBlock(ISBI)Ljava/util/List;
    .locals 2
    .param p1, "length"    # I
    .param p2, "padding"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
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
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->continuation:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;

    iput-short p2, v0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->padding:S

    .line 192
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->continuation:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;

    iput-byte p3, v0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:B

    .line 193
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->continuation:Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;

    iput p4, v0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    .line 197
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->hpackReader:Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;

    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->readHeaders()V

    .line 198
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->hpackReader:Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;

    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->getAndResetHeaderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readHeaders(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 4
    .param p1, "handler"    # Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    const/4 v0, 0x0

    if-nez p4, :cond_0

    const-string v1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 172
    :cond_0
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 174
    .local v1, "endStream":Z
    :goto_0
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    nop

    .line 176
    .local v0, "padding":S
    :cond_2
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_3

    .line 177
    invoke-direct {p0, p1, p4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readPriority(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;I)V

    .line 178
    add-int/lit8 p2, p2, -0x5

    .line 181
    :cond_3
    invoke-static {p2, p3, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result p2

    .line 183
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v2

    .line 185
    .local v2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/leidong/open/http/okhttp3/internal/http2/Header;>;"
    const/4 v3, -0x1

    invoke-interface {p1, v1, p4, v3, v2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;->headers(ZIILjava/util/List;)V

    .line 186
    return-void
.end method

.method static readMedium(Lcom/leidong/open/http/okio/BufferedSource;)I
    .locals 2
    .param p0, "source"    # Lcom/leidong/open/http/okio/BufferedSource;
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

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 400
    return v0
.end method

.method private readPing(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 5
    .param p1, "handler"    # Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    const-string v2, "TYPE_PING length != 8: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 309
    :cond_0
    if-eqz p4, :cond_1

    const-string v1, "TYPE_PING streamId != 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 310
    :cond_1
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v2}, Lcom/leidong/open/http/okio/BufferedSource;->readInt()I

    move-result v2

    .line 311
    .local v2, "payload1":I
    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v3}, Lcom/leidong/open/http/okio/BufferedSource;->readInt()I

    move-result v3

    .line 312
    .local v3, "payload2":I
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    nop

    .line 313
    .local v0, "ack":Z
    :cond_2
    invoke-interface {p1, v0, v2, v3}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;->ping(ZII)V

    .line 314
    return-void
.end method

.method private readPriority(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;I)V
    .locals 5
    .param p1, "handler"    # Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->readInt()I

    move-result v0

    .line 228
    .local v0, "w1":I
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 229
    .local v1, "exclusive":Z
    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v3, v0

    .line 230
    .local v3, "streamDependency":I
    iget-object v4, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v4}, Lcom/leidong/open/http/okio/BufferedSource;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v2

    .line 231
    .local v4, "weight":I
    invoke-interface {p1, p2, v3, v4, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;->priority(IIIZ)V

    .line 232
    return-void
.end method

.method private readPriority(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 4
    .param p1, "handler"    # Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    const/4 v0, 0x0

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    const-string v1, "TYPE_PRIORITY length: %d != 5"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 222
    :cond_0
    if-nez p4, :cond_1

    const-string v1, "TYPE_PRIORITY streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 223
    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readPriority(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;I)V

    .line 224
    return-void
.end method

.method private readPushPromise(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 3
    .param p1, "handler"    # Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 296
    const-string v1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 298
    :cond_0
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    nop

    .line 299
    .local v0, "padding":S
    :cond_1
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v1}, Lcom/leidong/open/http/okio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 300
    .local v1, "promisedStreamId":I
    add-int/lit8 p2, p2, -0x4

    .line 301
    invoke-static {p2, p3, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result p2

    .line 302
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v2

    .line 303
    .local v2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/leidong/open/http/okhttp3/internal/http2/Header;>;"
    invoke-interface {p1, p4, v1, v2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;->pushPromise(IILjava/util/List;)V

    .line 304
    return-void
.end method

.method private readRstStream(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 6
    .param p1, "handler"    # Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    const-string v2, "TYPE_RST_STREAM length: %d != 4"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 237
    :cond_0
    if-nez p4, :cond_1

    const-string v0, "TYPE_RST_STREAM streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 238
    :cond_1
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v2}, Lcom/leidong/open/http/okio/BufferedSource;->readInt()I

    move-result v2

    .line 239
    .local v2, "errorCodeInt":I
    invoke-static {v2}, Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;->fromHttp2(I)Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;

    move-result-object v3

    .line 240
    .local v3, "errorCode":Lcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;
    if-nez v3, :cond_2

    .line 241
    const-string v4, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-static {v4, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 243
    :cond_2
    invoke-interface {p1, p4, v3}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;->rstStream(ILcom/leidong/open/http/okhttp3/internal/http2/ErrorCode;)V

    .line 244
    return-void
.end method

.method private readSettings(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 8
    .param p1, "handler"    # Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const-string v1, "TYPE_SETTINGS streamId != 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 249
    :cond_0
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_2

    .line 250
    if-eqz p2, :cond_1

    const-string v1, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 251
    :cond_1
    invoke-interface {p1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;->ackSettings()V

    .line 252
    return-void

    .line 255
    :cond_2
    rem-int/lit8 v1, p2, 0x6

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const-string v1, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 256
    :cond_3
    new-instance v1, Lcom/leidong/open/http/okhttp3/internal/http2/Settings;

    invoke-direct {v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Settings;-><init>()V

    .line 257
    .local v1, "settings":Lcom/leidong/open/http/okhttp3/internal/http2/Settings;
    const/4 v3, 0x0

    .line 257
    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_6

    .line 258
    iget-object v4, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v4}, Lcom/leidong/open/http/okio/BufferedSource;->readShort()S

    move-result v4

    .line 259
    .local v4, "id":S
    iget-object v5, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v5}, Lcom/leidong/open/http/okio/BufferedSource;->readInt()I

    move-result v5

    .line 261
    .local v5, "value":I
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 284
    :pswitch_0
    goto :goto_1

    .line 279
    :pswitch_1
    const/16 v6, 0x4000

    if-lt v5, v6, :cond_4

    const v6, 0xffffff

    if-le v5, v6, :cond_5

    .line 280
    :cond_4
    const-string v6, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v0

    invoke-static {v6, v2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 273
    :pswitch_2
    const/4 v4, 0x7

    .line 274
    if-gez v5, :cond_5

    .line 275
    const-string v2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 270
    :pswitch_3
    const/4 v4, 0x4

    .line 271
    goto :goto_1

    .line 265
    :pswitch_4
    if-eqz v5, :cond_5

    if-eq v5, v2, :cond_5

    .line 266
    const-string v2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 263
    :pswitch_5
    nop

    .line 288
    :cond_5
    :goto_1
    invoke-virtual {v1, v4, v5}, Lcom/leidong/open/http/okhttp3/internal/http2/Settings;->set(II)Lcom/leidong/open/http/okhttp3/internal/http2/Settings;

    .line 257
    .end local v4    # "id":S
    .end local v5    # "value":I
    add-int/lit8 v3, v3, 0x6

    goto :goto_0

    .line 290
    .end local v3    # "i":I
    :cond_6
    invoke-interface {p1, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;->settings(ZLcom/leidong/open/http/okhttp3/internal/http2/Settings;)V

    .line 291
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readWindowUpdate(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .locals 8
    .param p1, "handler"    # Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    const-string v2, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v2}, Lcom/leidong/open/http/okio/BufferedSource;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x7fffffff

    and-long v6, v2, v4

    .line 338
    .local v6, "increment":J
    const-wide/16 v2, 0x0

    cmp-long v4, v6, v2

    if-nez v4, :cond_1

    const-string v2, "windowSizeIncrement was 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 339
    :cond_1
    invoke-interface {p1, p4, v6, v7}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;->windowUpdate(IJ)V

    .line 340
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

    .line 344
    return-void
.end method

.method public nextFrame(ZLcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;)Z
    .locals 8
    .param p1, "requireSettings"    # Z
    .param p2, "handler"    # Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Lcom/leidong/open/http/okio/BufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    nop

    .line 112
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-static {v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readMedium(Lcom/leidong/open/http/okio/BufferedSource;)I

    move-result v1

    .line 113
    .local v1, "length":I
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

    .line 117
    .local v3, "type":B
    if-eqz p1, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    .line 118
    const-string v4, "Expected a SETTINGS frame but was %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v2, v0

    invoke-static {v4, v2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 121
    .local v0, "flags":B
    iget-object v4, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v4}, Lcom/leidong/open/http/okio/BufferedSource;->readInt()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    .line 122
    .local v4, "streamId":I
    sget-object v5, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    invoke-static {v2, v4, v1, v3, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->frameLog(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 124
    :cond_2
    packed-switch v3, :pswitch_data_0

    .line 163
    iget-object v5, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    int-to-long v6, v1

    invoke-interface {v5, v6, v7}, Lcom/leidong/open/http/okio/BufferedSource;->skip(J)V

    goto :goto_0

    .line 158
    :pswitch_0
    invoke-direct {p0, p2, v1, v0, v4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readWindowUpdate(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    .line 159
    goto :goto_0

    .line 154
    :pswitch_1
    invoke-direct {p0, p2, v1, v0, v4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readGoAway(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    .line 155
    goto :goto_0

    .line 150
    :pswitch_2
    invoke-direct {p0, p2, v1, v0, v4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readPing(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    .line 151
    goto :goto_0

    .line 146
    :pswitch_3
    invoke-direct {p0, p2, v1, v0, v4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readPushPromise(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    .line 147
    goto :goto_0

    .line 142
    :pswitch_4
    invoke-direct {p0, p2, v1, v0, v4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readSettings(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    .line 143
    goto :goto_0

    .line 138
    :pswitch_5
    invoke-direct {p0, p2, v1, v0, v4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readRstStream(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    .line 139
    goto :goto_0

    .line 134
    :pswitch_6
    invoke-direct {p0, p2, v1, v0, v4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readPriority(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    .line 135
    goto :goto_0

    .line 130
    :pswitch_7
    invoke-direct {p0, p2, v1, v0, v4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readHeaders(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    .line 131
    goto :goto_0

    .line 126
    :pswitch_8
    invoke-direct {p0, p2, v1, v0, v4}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->readData(Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    .line 127
    nop

    .line 165
    :goto_0
    return v2

    .line 114
    .end local v0    # "flags":B
    .end local v3    # "type":B
    .end local v4    # "streamId":I
    :cond_3
    :goto_1
    const-string v3, "FRAME_SIZE_ERROR: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {v3, v2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 97
    .end local v1    # "length":I
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/io/IOException;
    return v0

    nop

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
    .locals 7
    .param p1, "handler"    # Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader$Handler;
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

    move-result v0

    if-nez v0, :cond_2

    .line 82
    const-string v0, "Required SETTINGS preface not received"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    sget-object v3, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lcom/leidong/open/http/okio/ByteString;

    invoke-virtual {v3}, Lcom/leidong/open/http/okio/ByteString;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lcom/leidong/open/http/okio/BufferedSource;->readByteString(J)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    .line 87
    .local v0, "connectionPreface":Lcom/leidong/open/http/okio/ByteString;
    sget-object v3, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/leidong/open/http/okhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    const-string v4, "<< CONNECTION %s"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/leidong/open/http/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Lcom/leidong/open/http/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 88
    :cond_1
    sget-object v3, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lcom/leidong/open/http/okio/ByteString;

    invoke-virtual {v3, v0}, Lcom/leidong/open/http/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 89
    const-string v3, "Expected a connection header but was %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/leidong/open/http/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Lcom/leidong/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 92
    .end local v0    # "connectionPreface":Lcom/leidong/open/http/okio/ByteString;
    :cond_2
    return-void
.end method
