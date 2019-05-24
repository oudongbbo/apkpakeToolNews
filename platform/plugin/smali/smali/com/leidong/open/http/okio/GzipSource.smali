.class public final Lcom/leidong/open/http/okio/GzipSource;
.super Ljava/lang/Object;
.source "GzipSource.java"

# interfaces
.implements Lcom/leidong/open/http/okio/Source;


# static fields
.field private static final FCOMMENT:B = 0x4t

.field private static final FEXTRA:B = 0x2t

.field private static final FHCRC:B = 0x1t

.field private static final FNAME:B = 0x3t

.field private static final SECTION_BODY:B = 0x1t

.field private static final SECTION_DONE:B = 0x3t

.field private static final SECTION_HEADER:B = 0x0t

.field private static final SECTION_TRAILER:B = 0x2t


# instance fields
.field private final crc:Ljava/util/zip/CRC32;

.field private final inflater:Ljava/util/zip/Inflater;

.field private final inflaterSource:Lcom/leidong/open/http/okio/InflaterSource;

.field private section:I

.field private final source:Lcom/leidong/open/http/okio/BufferedSource;


# direct methods
.method public constructor <init>(Lcom/leidong/open/http/okio/Source;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/leidong/open/http/okio/GzipSource;->section:I

    .line 66
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/leidong/open/http/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    if-nez p1, :cond_0

    .line 69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_0
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lcom/leidong/open/http/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    .line 71
    invoke-static {p1}, Lcom/leidong/open/http/okio/Okio;->buffer(Lcom/leidong/open/http/okio/Source;)Lcom/leidong/open/http/okio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    .line 72
    new-instance p1, Lcom/leidong/open/http/okio/InflaterSource;

    iget-object v0, p0, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    iget-object v1, p0, Lcom/leidong/open/http/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-direct {p1, v0, v1}, Lcom/leidong/open/http/okio/InflaterSource;-><init>(Lcom/leidong/open/http/okio/BufferedSource;Ljava/util/zip/Inflater;)V

    iput-object p1, p0, Lcom/leidong/open/http/okio/GzipSource;->inflaterSource:Lcom/leidong/open/http/okio/InflaterSource;

    return-void
.end method

.method private checkEqual(Ljava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eq p3, p2, :cond_0

    .line 213
    new-instance v0, Ljava/io/IOException;

    const-string v1, "%s: actual 0x%08x != expected 0x%08x"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 214
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, p1

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    .line 213
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private consumeHeader()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 122
    iget-object v0, v6, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    const-wide/16 v1, 0xa

    invoke-interface {v0, v1, v2}, Lcom/leidong/open/http/okio/BufferedSource;->require(J)V

    .line 123
    iget-object v0, v6, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->buffer()Lcom/leidong/open/http/okio/Buffer;

    move-result-object v0

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/leidong/open/http/okio/Buffer;->getByte(J)B

    move-result v7

    shr-int/lit8 v0, v7, 0x1

    const/4 v8, 0x1

    and-int/2addr v0, v8

    const/4 v9, 0x0

    if-ne v0, v8, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_1

    .line 125
    iget-object v0, v6, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->buffer()Lcom/leidong/open/http/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/leidong/open/http/okio/GzipSource;->updateCrc(Lcom/leidong/open/http/okio/Buffer;JJ)V

    .line 127
    :cond_1
    iget-object v0, v6, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->readShort()S

    move-result v0

    const-string v1, "ID1ID2"

    const/16 v2, 0x1f8b

    .line 128
    invoke-direct {v6, v1, v2, v0}, Lcom/leidong/open/http/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 129
    iget-object v0, v6, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    const-wide/16 v1, 0x8

    invoke-interface {v0, v1, v2}, Lcom/leidong/open/http/okio/BufferedSource;->skip(J)V

    shr-int/lit8 v0, v7, 0x2

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_4

    .line 136
    iget-object v0, v6, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    const-wide/16 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/leidong/open/http/okio/BufferedSource;->require(J)V

    if-eqz v10, :cond_2

    .line 137
    iget-object v0, v6, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->buffer()Lcom/leidong/open/http/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/leidong/open/http/okio/GzipSource;->updateCrc(Lcom/leidong/open/http/okio/Buffer;JJ)V

    .line 138
    :cond_2
    iget-object v0, v6, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->buffer()Lcom/leidong/open/http/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Buffer;->readShortLe()S

    move-result v0

    .line 139
    iget-object v1, v6, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    int-to-long v11, v0

    invoke-interface {v1, v11, v12}, Lcom/leidong/open/http/okio/BufferedSource;->require(J)V

    if-eqz v10, :cond_3

    .line 140
    iget-object v0, v6, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->buffer()Lcom/leidong/open/http/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-object v0, v6

    move-wide v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/leidong/open/http/okio/GzipSource;->updateCrc(Lcom/leidong/open/http/okio/Buffer;JJ)V

    .line 141
    :cond_3
    iget-object v0, v6, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0, v11, v12}, Lcom/leidong/open/http/okio/BufferedSource;->skip(J)V

    :cond_4
    shr-int/lit8 v0, v7, 0x3

    and-int/2addr v0, v8

    const-wide/16 v11, -0x1

    const-wide/16 v13, 0x1

    if-ne v0, v8, :cond_7

    .line 149
    iget-object v0, v6, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0, v9}, Lcom/leidong/open/http/okio/BufferedSource;->indexOf(B)J

    move-result-wide v15

    cmp-long v0, v15, v11

    if-nez v0, :cond_5

    .line 150
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_5
    if-eqz v10, :cond_6

    .line 151
    iget-object v0, v6, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->buffer()Lcom/leidong/open/http/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v15, v13

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/leidong/open/http/okio/GzipSource;->updateCrc(Lcom/leidong/open/http/okio/Buffer;JJ)V

    .line 152
    :cond_6
    iget-object v0, v6, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    add-long v1, v15, v13

    invoke-interface {v0, v1, v2}, Lcom/leidong/open/http/okio/BufferedSource;->skip(J)V

    :cond_7
    shr-int/lit8 v0, v7, 0x4

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_a

    .line 160
    iget-object v0, v6, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0, v9}, Lcom/leidong/open/http/okio/BufferedSource;->indexOf(B)J

    move-result-wide v7

    cmp-long v0, v7, v11

    if-nez v0, :cond_8

    .line 161
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_8
    if-eqz v10, :cond_9

    .line 162
    iget-object v0, v6, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->buffer()Lcom/leidong/open/http/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v7, v13

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/leidong/open/http/okio/GzipSource;->updateCrc(Lcom/leidong/open/http/okio/Buffer;JJ)V

    .line 163
    :cond_9
    iget-object v0, v6, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    add-long v1, v7, v13

    invoke-interface {v0, v1, v2}, Lcom/leidong/open/http/okio/BufferedSource;->skip(J)V

    :cond_a
    if-eqz v10, :cond_b

    const-string v0, "FHCRC"

    .line 171
    iget-object v1, v6, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v1}, Lcom/leidong/open/http/okio/BufferedSource;->readShortLe()S

    move-result v1

    iget-object v2, v6, Lcom/leidong/open/http/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-direct {v6, v0, v1, v2}, Lcom/leidong/open/http/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 172
    iget-object v0, v6, Lcom/leidong/open/http/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    :cond_b
    return-void
.end method

.method private consumeTrailer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "CRC"

    .line 181
    iget-object v1, p0, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v1}, Lcom/leidong/open/http/okio/BufferedSource;->readIntLe()I

    move-result v1

    iget-object v2, p0, Lcom/leidong/open/http/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/leidong/open/http/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    const-string v0, "ISIZE"

    .line 182
    iget-object v1, p0, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v1}, Lcom/leidong/open/http/okio/BufferedSource;->readIntLe()I

    move-result v1

    iget-object v2, p0, Lcom/leidong/open/http/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/leidong/open/http/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    return-void
.end method

.method private updateCrc(Lcom/leidong/open/http/okio/Buffer;JJ)V
    .locals 6

    .line 196
    iget-object p1, p1, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 197
    :goto_0
    iget v0, p1, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v1, p1, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 198
    iget v0, p1, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v1, p1, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long v2, p2, v0

    .line 197
    iget-object p1, p1, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    move-wide p2, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_1
    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    .line 203
    iget v2, p1, Lcom/leidong/open/http/okio/Segment;->pos:I

    int-to-long v2, v2

    add-long v4, v2, p2

    long-to-int p2, v4

    .line 204
    iget p3, p1, Lcom/leidong/open/http/okio/Segment;->limit:I

    sub-int/2addr p3, p2

    int-to-long v2, p3

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    .line 205
    iget-object v2, p0, Lcom/leidong/open/http/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    iget-object v3, p1, Lcom/leidong/open/http/okio/Segment;->data:[B

    invoke-virtual {v2, v3, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p2, p3

    sub-long v2, p4, p2

    .line 202
    iget-object p1, p1, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    move-wide p2, v0

    move-wide p4, v2

    goto :goto_1

    :cond_1
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

    .line 190
    iget-object v0, p0, Lcom/leidong/open/http/okio/GzipSource;->inflaterSource:Lcom/leidong/open/http/okio/InflaterSource;

    invoke-virtual {v0}, Lcom/leidong/open/http/okio/InflaterSource;->close()V

    return-void
.end method

.method public read(Lcom/leidong/open/http/okio/Buffer;J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 76
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

    :cond_0
    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    return-wide v0

    .line 80
    :cond_1
    iget v0, p0, Lcom/leidong/open/http/okio/GzipSource;->section:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 81
    invoke-direct {p0}, Lcom/leidong/open/http/okio/GzipSource;->consumeHeader()V

    .line 82
    iput v1, p0, Lcom/leidong/open/http/okio/GzipSource;->section:I

    .line 86
    :cond_2
    iget v0, p0, Lcom/leidong/open/http/okio/GzipSource;->section:I

    const/4 v2, 0x2

    const-wide/16 v3, -0x1

    if-ne v0, v1, :cond_4

    .line 87
    iget-wide v7, p1, Lcom/leidong/open/http/okio/Buffer;->size:J

    .line 88
    iget-object v0, p0, Lcom/leidong/open/http/okio/GzipSource;->inflaterSource:Lcom/leidong/open/http/okio/InflaterSource;

    invoke-virtual {v0, p1, p2, p3}, Lcom/leidong/open/http/okio/InflaterSource;->read(Lcom/leidong/open/http/okio/Buffer;J)J

    move-result-wide p2

    cmp-long v0, p2, v3

    if-eqz v0, :cond_3

    move-object v5, p0

    move-object v6, p1

    move-wide v9, p2

    .line 90
    invoke-direct/range {v5 .. v10}, Lcom/leidong/open/http/okio/GzipSource;->updateCrc(Lcom/leidong/open/http/okio/Buffer;JJ)V

    return-wide p2

    .line 93
    :cond_3
    iput v2, p0, Lcom/leidong/open/http/okio/GzipSource;->section:I

    .line 99
    :cond_4
    iget p1, p0, Lcom/leidong/open/http/okio/GzipSource;->section:I

    if-ne p1, v2, :cond_5

    .line 100
    invoke-direct {p0}, Lcom/leidong/open/http/okio/GzipSource;->consumeTrailer()V

    const/4 p1, 0x3

    .line 101
    iput p1, p0, Lcom/leidong/open/http/okio/GzipSource;->section:I

    .line 107
    iget-object p1, p0, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {p1}, Lcom/leidong/open/http/okio/BufferedSource;->exhausted()Z

    move-result p1

    if-nez p1, :cond_5

    .line 108
    new-instance p1, Ljava/io/IOException;

    const-string p2, "gzip finished without exhausting source"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-wide v3
.end method

.method public timeout()Lcom/leidong/open/http/okio/Timeout;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/leidong/open/http/okio/GzipSource;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->timeout()Lcom/leidong/open/http/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
