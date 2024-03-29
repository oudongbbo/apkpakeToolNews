.class public final Lcom/leidong/open/http/okio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Lcom/leidong/open/http/okio/BufferedSource;
.implements Lcom/leidong/open/http/okio/BufferedSink;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DIGITS:[B

.field static final REPLACEMENT_CHARACTER:I = 0xfffd


# instance fields
.field head:Lcom/leidong/open/http/okio/Segment;

.field size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 52
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/leidong/open/http/okio/Buffer;->DIGITS:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private digest(Ljava/lang/String;)Lcom/leidong/open/http/okio/ByteString;
    .locals 5

    .line 1569
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 1570
    iget-object v0, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    if-eqz v0, :cond_0

    .line 1571
    iget-object v0, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget-object v0, v0, Lcom/leidong/open/http/okio/Segment;->data:[B

    iget-object v1, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget v1, v1, Lcom/leidong/open/http/okio/Segment;->pos:I

    iget-object v2, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget v2, v2, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget-object v3, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget v3, v3, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 1572
    iget-object v0, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    :goto_0
    iget-object v0, v0, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    iget-object v1, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    if-eq v0, v1, :cond_0

    .line 1573
    iget-object v1, v0, Lcom/leidong/open/http/okio/Segment;->data:[B

    iget v2, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    iget v3, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v4, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 1576
    :cond_0
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lcom/leidong/open/http/okio/ByteString;->of([B)Lcom/leidong/open/http/okio/ByteString;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1578
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private hmac(Ljava/lang/String;Lcom/leidong/open/http/okio/ByteString;)Lcom/leidong/open/http/okio/ByteString;
    .locals 4

    .line 1599
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 1600
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lcom/leidong/open/http/okio/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-direct {v1, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 1601
    iget-object p1, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    if-eqz p1, :cond_0

    .line 1602
    iget-object p1, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget-object p1, p1, Lcom/leidong/open/http/okio/Segment;->data:[B

    iget-object p2, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget p2, p2, Lcom/leidong/open/http/okio/Segment;->pos:I

    iget-object v1, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget v1, v1, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget-object v2, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget v2, v2, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, p1, p2, v1}, Ljavax/crypto/Mac;->update([BII)V

    .line 1603
    iget-object p1, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    :goto_0
    iget-object p1, p1, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    iget-object p2, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    if-eq p1, p2, :cond_0

    .line 1604
    iget-object p2, p1, Lcom/leidong/open/http/okio/Segment;->data:[B

    iget v1, p1, Lcom/leidong/open/http/okio/Segment;->pos:I

    iget v2, p1, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v3, p1, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, p2, v1, v2}, Ljavax/crypto/Mac;->update([BII)V

    goto :goto_0

    .line 1607
    :cond_0
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    invoke-static {p1}, Lcom/leidong/open/http/okio/ByteString;->of([B)Lcom/leidong/open/http/okio/ByteString;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1611
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1609
    :catch_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private rangeEquals(Lcom/leidong/open/http/okio/Segment;ILcom/leidong/open/http/okio/ByteString;II)Z
    .locals 5

    .line 1504
    iget v0, p1, Lcom/leidong/open/http/okio/Segment;->limit:I

    .line 1505
    iget-object v1, p1, Lcom/leidong/open/http/okio/Segment;->data:[B

    :goto_0
    if-ge p4, p5, :cond_2

    if-ne p2, v0, :cond_0

    .line 1509
    iget-object p1, p1, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    .line 1510
    iget-object p2, p1, Lcom/leidong/open/http/okio/Segment;->data:[B

    .line 1511
    iget v0, p1, Lcom/leidong/open/http/okio/Segment;->pos:I

    .line 1512
    iget v1, p1, Lcom/leidong/open/http/okio/Segment;->limit:I

    move v4, v1

    move-object v1, p2

    move p2, v0

    move v0, v4

    .line 1515
    :cond_0
    aget-byte v2, v1, p2

    invoke-virtual {p3, p4}, Lcom/leidong/open/http/okio/ByteString;->getByte(I)B

    move-result v3

    if-eq v2, v3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private readFrom(Ljava/io/InputStream;JZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 243
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "in == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_2

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 245
    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okio/Buffer;->writableSegment(I)Lcom/leidong/open/http/okio/Segment;

    move-result-object v0

    .line 246
    iget v1, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 247
    iget-object v2, v0, Lcom/leidong/open/http/okio/Segment;->data:[B

    iget v3, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    if-eqz p4, :cond_3

    return-void

    .line 250
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 252
    :cond_4
    iget v2, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    .line 253
    iget-wide v2, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    int-to-long v0, v1

    add-long v4, v2, v0

    iput-wide v4, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    sub-long v2, p2, v0

    move-wide p2, v2

    goto :goto_0
.end method


# virtual methods
.method public buffer()Lcom/leidong/open/http/okio/Buffer;
    .locals 0

    return-object p0
.end method

.method public clear()V
    .locals 2

    .line 811
    :try_start_0
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lcom/leidong/open/http/okio/Buffer;->skip(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 813
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public clone()Lcom/leidong/open/http/okio/Buffer;
    .locals 6

    .line 1671
    new-instance v0, Lcom/leidong/open/http/okio/Buffer;

    invoke-direct {v0}, Lcom/leidong/open/http/okio/Buffer;-><init>()V

    .line 1672
    iget-wide v1, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-object v0

    .line 1674
    :cond_0
    new-instance v1, Lcom/leidong/open/http/okio/Segment;

    iget-object v2, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    invoke-direct {v1, v2}, Lcom/leidong/open/http/okio/Segment;-><init>(Lcom/leidong/open/http/okio/Segment;)V

    iput-object v1, v0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 1675
    iget-object v1, v0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget-object v2, v0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget-object v3, v0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iput-object v3, v2, Lcom/leidong/open/http/okio/Segment;->prev:Lcom/leidong/open/http/okio/Segment;

    iput-object v3, v1, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    .line 1676
    iget-object v1, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    :goto_0
    iget-object v1, v1, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    iget-object v2, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    if-eq v1, v2, :cond_1

    .line 1677
    iget-object v2, v0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget-object v2, v2, Lcom/leidong/open/http/okio/Segment;->prev:Lcom/leidong/open/http/okio/Segment;

    new-instance v3, Lcom/leidong/open/http/okio/Segment;

    invoke-direct {v3, v1}, Lcom/leidong/open/http/okio/Segment;-><init>(Lcom/leidong/open/http/okio/Segment;)V

    invoke-virtual {v2, v3}, Lcom/leidong/open/http/okio/Segment;->push(Lcom/leidong/open/http/okio/Segment;)Lcom/leidong/open/http/okio/Segment;

    goto :goto_0

    .line 1679
    :cond_1
    iget-wide v1, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    iput-wide v1, v0, Lcom/leidong/open/http/okio/Buffer;->size:J

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/Buffer;->clone()Lcom/leidong/open/http/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public completeSegmentByteCount()J
    .locals 6

    .line 264
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 268
    :cond_0
    iget-object v2, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget-object v2, v2, Lcom/leidong/open/http/okio/Segment;->prev:Lcom/leidong/open/http/okio/Segment;

    .line 269
    iget v3, v2, Lcom/leidong/open/http/okio/Segment;->limit:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1

    iget-boolean v3, v2, Lcom/leidong/open/http/okio/Segment;->owner:Z

    if-eqz v3, :cond_1

    .line 270
    iget v3, v2, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v2, v2, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long v4, v0, v2

    move-wide v0, v4

    :cond_1
    return-wide v0
.end method

.method public copyTo(Lcom/leidong/open/http/okio/Buffer;JJ)Lcom/leidong/open/http/okio/Buffer;
    .locals 8

    if-nez p1, :cond_0

    .line 171
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_0
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/leidong/open/http/okio/Util;->checkOffsetAndCount(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_1

    return-object p0

    .line 175
    :cond_1
    iget-wide v2, p1, Lcom/leidong/open/http/okio/Buffer;->size:J

    add-long v4, v2, p4

    iput-wide v4, p1, Lcom/leidong/open/http/okio/Buffer;->size:J

    .line 178
    iget-object v2, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 179
    :goto_0
    iget v3, v2, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v4, v2, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v5, p2, v3

    if-ltz v5, :cond_2

    .line 180
    iget v3, v2, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v4, v2, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long v5, p2, v3

    .line 179
    iget-object v2, v2, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    move-wide p2, v5

    goto :goto_0

    :cond_2
    :goto_1
    cmp-long v3, p4, v0

    if-lez v3, :cond_4

    .line 185
    new-instance v3, Lcom/leidong/open/http/okio/Segment;

    invoke-direct {v3, v2}, Lcom/leidong/open/http/okio/Segment;-><init>(Lcom/leidong/open/http/okio/Segment;)V

    .line 186
    iget v4, v3, Lcom/leidong/open/http/okio/Segment;->pos:I

    int-to-long v4, v4

    add-long v6, v4, p2

    long-to-int p2, v6

    iput p2, v3, Lcom/leidong/open/http/okio/Segment;->pos:I

    .line 187
    iget p2, v3, Lcom/leidong/open/http/okio/Segment;->pos:I

    long-to-int p3, p4

    add-int/2addr p2, p3

    iget p3, v3, Lcom/leidong/open/http/okio/Segment;->limit:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v3, Lcom/leidong/open/http/okio/Segment;->limit:I

    .line 188
    iget-object p2, p1, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    if-nez p2, :cond_3

    .line 189
    iput-object v3, v3, Lcom/leidong/open/http/okio/Segment;->prev:Lcom/leidong/open/http/okio/Segment;

    iput-object v3, v3, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    iput-object v3, p1, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    goto :goto_2

    .line 191
    :cond_3
    iget-object p2, p1, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget-object p2, p2, Lcom/leidong/open/http/okio/Segment;->prev:Lcom/leidong/open/http/okio/Segment;

    invoke-virtual {p2, v3}, Lcom/leidong/open/http/okio/Segment;->push(Lcom/leidong/open/http/okio/Segment;)Lcom/leidong/open/http/okio/Segment;

    .line 193
    :goto_2
    iget p2, v3, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget p3, v3, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long v3, p4, p2

    .line 184
    iget-object v2, v2, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    move-wide p2, v0

    move-wide p4, v3

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method public copyTo(Ljava/io/OutputStream;)Lcom/leidong/open/http/okio/Buffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-wide v4, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/leidong/open/http/okio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public copyTo(Ljava/io/OutputStream;JJ)Lcom/leidong/open/http/okio/Buffer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 147
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_0
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/leidong/open/http/okio/Util;->checkOffsetAndCount(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_1

    return-object p0

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 153
    :goto_0
    iget v3, v2, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v4, v2, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v5, p2, v3

    if-ltz v5, :cond_2

    .line 154
    iget v3, v2, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v4, v2, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long v5, p2, v3

    .line 153
    iget-object v2, v2, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    move-wide p2, v5

    goto :goto_0

    :cond_2
    :goto_1
    cmp-long v3, p4, v0

    if-lez v3, :cond_3

    .line 159
    iget v3, v2, Lcom/leidong/open/http/okio/Segment;->pos:I

    int-to-long v3, v3

    add-long v5, v3, p2

    long-to-int p2, v5

    .line 160
    iget p3, v2, Lcom/leidong/open/http/okio/Segment;->limit:I

    sub-int/2addr p3, p2

    int-to-long v3, p3

    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p3, v3

    .line 161
    iget-object v3, v2, Lcom/leidong/open/http/okio/Segment;->data:[B

    invoke-virtual {p1, v3, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long p2, p3

    sub-long v3, p4, p2

    .line 158
    iget-object v2, v2, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    move-wide p2, v0

    move-wide p4, v3

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public emit()Lcom/leidong/open/http/okio/BufferedSink;
    .locals 0

    return-object p0
.end method

.method public emitCompleteSegments()Lcom/leidong/open/http/okio/Buffer;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Lcom/leidong/open/http/okio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/Buffer;->emitCompleteSegments()Lcom/leidong/open/http/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 13

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1617
    :cond_0
    instance-of v1, p1, Lcom/leidong/open/http/okio/Buffer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1618
    :cond_1
    check-cast p1, Lcom/leidong/open/http/okio/Buffer;

    .line 1619
    iget-wide v3, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    iget-wide v5, p1, Lcom/leidong/open/http/okio/Buffer;->size:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    .line 1620
    :cond_2
    iget-wide v3, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    return v0

    .line 1622
    :cond_3
    iget-object v1, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 1623
    iget-object p1, p1, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 1624
    iget v3, v1, Lcom/leidong/open/http/okio/Segment;->pos:I

    .line 1625
    iget v4, p1, Lcom/leidong/open/http/okio/Segment;->pos:I

    .line 1627
    :goto_0
    iget-wide v7, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_8

    .line 1628
    iget v7, v1, Lcom/leidong/open/http/okio/Segment;->limit:I

    sub-int/2addr v7, v3

    iget v8, p1, Lcom/leidong/open/http/okio/Segment;->limit:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    move v9, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_1
    int-to-long v10, v3

    cmp-long v12, v10, v7

    if-gez v12, :cond_5

    .line 1631
    iget-object v10, v1, Lcom/leidong/open/http/okio/Segment;->data:[B

    add-int/lit8 v11, v4, 0x1

    aget-byte v4, v10, v4

    iget-object v10, p1, Lcom/leidong/open/http/okio/Segment;->data:[B

    add-int/lit8 v12, v9, 0x1

    aget-byte v9, v10, v9

    if-eq v4, v9, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v4, v11

    move v9, v12

    goto :goto_1

    .line 1634
    :cond_5
    iget v3, v1, Lcom/leidong/open/http/okio/Segment;->limit:I

    if-ne v4, v3, :cond_6

    .line 1635
    iget-object v1, v1, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    .line 1636
    iget v3, v1, Lcom/leidong/open/http/okio/Segment;->pos:I

    goto :goto_2

    :cond_6
    move v3, v4

    .line 1639
    :goto_2
    iget v4, p1, Lcom/leidong/open/http/okio/Segment;->limit:I

    if-ne v9, v4, :cond_7

    .line 1640
    iget-object p1, p1, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    .line 1641
    iget v4, p1, Lcom/leidong/open/http/okio/Segment;->pos:I

    goto :goto_3

    :cond_7
    move v4, v9

    :goto_3
    const/4 v9, 0x0

    add-long v9, v5, v7

    move-wide v5, v9

    goto :goto_0

    :cond_8
    return v0
.end method

.method public exhausted()Z
    .locals 5

    .line 102
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public getByte(J)B
    .locals 6

    .line 299
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/leidong/open/http/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 300
    iget-object v0, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 301
    :goto_0
    iget v1, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v2, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    .line 302
    iget-object v1, v0, Lcom/leidong/open/http/okio/Segment;->data:[B

    iget v0, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    long-to-int p1, p1

    add-int/2addr v0, p1

    aget-byte p1, v1, v0

    return p1

    :cond_0
    const/4 v3, 0x0

    sub-long v3, p1, v1

    .line 300
    iget-object v0, v0, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    move-wide p1, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .line 1649
    iget-object v0, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 1653
    :cond_1
    iget v2, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    iget v3, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    :goto_0
    if-ge v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 1654
    iget-object v4, v0, Lcom/leidong/open/http/okio/Segment;->data:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1656
    :cond_2
    iget-object v0, v0, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    .line 1657
    iget-object v2, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    if-ne v0, v2, :cond_1

    return v1
.end method

.method public hmacSha1(Lcom/leidong/open/http/okio/ByteString;)Lcom/leidong/open/http/okio/ByteString;
    .locals 1

    const-string v0, "HmacSHA1"

    .line 1584
    invoke-direct {p0, v0, p1}, Lcom/leidong/open/http/okio/Buffer;->hmac(Ljava/lang/String;Lcom/leidong/open/http/okio/ByteString;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public hmacSha256(Lcom/leidong/open/http/okio/ByteString;)Lcom/leidong/open/http/okio/ByteString;
    .locals 1

    const-string v0, "HmacSHA256"

    .line 1589
    invoke-direct {p0, v0, p1}, Lcom/leidong/open/http/okio/Buffer;->hmac(Ljava/lang/String;Lcom/leidong/open/http/okio/ByteString;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public hmacSha512(Lcom/leidong/open/http/okio/ByteString;)Lcom/leidong/open/http/okio/ByteString;
    .locals 1

    const-string v0, "HmacSHA512"

    .line 1594
    invoke-direct {p0, v0, p1}, Lcom/leidong/open/http/okio/Buffer;->hmac(Ljava/lang/String;Lcom/leidong/open/http/okio/ByteString;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(B)J
    .locals 6

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    .line 1275
    invoke-virtual/range {v0 .. v5}, Lcom/leidong/open/http/okio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .locals 6

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 1283
    invoke-virtual/range {v0 .. v5}, Lcom/leidong/open/http/okio/Buffer;->indexOf(BJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public indexOf(BJJ)J
    .locals 17

    move-object/from16 v0, p0

    const-wide/16 v5, 0x0

    cmp-long v7, p2, v5

    if-ltz v7, :cond_9

    cmp-long v7, p4, p2

    if-gez v7, :cond_0

    goto/16 :goto_5

    .line 1292
    :cond_0
    iget-wide v7, v0, Lcom/leidong/open/http/okio/Buffer;->size:J

    cmp-long v9, p4, v7

    if-lez v9, :cond_1

    iget-wide v3, v0, Lcom/leidong/open/http/okio/Buffer;->size:J

    goto :goto_0

    :cond_1
    move-wide/from16 v3, p4

    :goto_0
    cmp-long v7, p2, v3

    const-wide/16 v8, -0x1

    if-nez v7, :cond_2

    return-wide v8

    .line 1301
    :cond_2
    iget-object v7, v0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    if-nez v7, :cond_3

    return-wide v8

    .line 1305
    :cond_3
    iget-wide v10, v0, Lcom/leidong/open/http/okio/Buffer;->size:J

    sub-long v12, v10, p2

    cmp-long v10, v12, p2

    if-gez v10, :cond_5

    .line 1307
    iget-wide v5, v0, Lcom/leidong/open/http/okio/Buffer;->size:J

    :goto_1
    cmp-long v10, v5, p2

    if-lez v10, :cond_4

    .line 1309
    iget-object v7, v7, Lcom/leidong/open/http/okio/Segment;->prev:Lcom/leidong/open/http/okio/Segment;

    .line 1310
    iget v10, v7, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v11, v7, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v10, v11

    int-to-long v10, v10

    sub-long v12, v5, v10

    move-wide v5, v12

    goto :goto_1

    :cond_4
    move-wide/from16 v1, p2

    goto :goto_3

    .line 1315
    :cond_5
    :goto_2
    iget v10, v7, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v11, v7, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v10, v11

    int-to-long v10, v10

    add-long v12, v5, v10

    cmp-long v10, v12, p2

    if-gez v10, :cond_4

    .line 1316
    iget-object v7, v7, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    move-wide v5, v12

    goto :goto_2

    :goto_3
    cmp-long v10, v5, v3

    if-gez v10, :cond_8

    .line 1324
    iget-object v10, v7, Lcom/leidong/open/http/okio/Segment;->data:[B

    .line 1325
    iget v11, v7, Lcom/leidong/open/http/okio/Segment;->limit:I

    int-to-long v11, v11

    iget v13, v7, Lcom/leidong/open/http/okio/Segment;->pos:I

    int-to-long v13, v13

    add-long v15, v13, v3

    sub-long v13, v15, v5

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v11, v11

    .line 1326
    iget v12, v7, Lcom/leidong/open/http/okio/Segment;->pos:I

    int-to-long v12, v12

    add-long v14, v12, v1

    sub-long v1, v14, v5

    long-to-int v1, v1

    :goto_4
    if-ge v1, v11, :cond_7

    .line 1328
    aget-byte v2, v10, v1

    move/from16 v12, p1

    if-ne v2, v12, :cond_6

    .line 1329
    iget v2, v7, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long v3, v1, v5

    return-wide v3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    move/from16 v12, p1

    .line 1334
    iget v1, v7, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v2, v7, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long v10, v5, v1

    .line 1336
    iget-object v7, v7, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    move-wide v1, v10

    move-wide v5, v1

    goto :goto_3

    :cond_8
    return-wide v8

    .line 1288
    :cond_9
    :goto_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "size=%s fromIndex=%s toIndex=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v9, v0, Lcom/leidong/open/http/okio/Buffer;->size:J

    .line 1289
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v7, v2

    const/4 v1, 0x2

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public indexOf(Lcom/leidong/open/http/okio/ByteString;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1343
    invoke-virtual {p0, p1, v0, v1}, Lcom/leidong/open/http/okio/Buffer;->indexOf(Lcom/leidong/open/http/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lcom/leidong/open/http/okio/ByteString;J)J
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 1347
    invoke-virtual/range {p1 .. p1}, Lcom/leidong/open/http/okio/ByteString;->size()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gez v4, :cond_1

    .line 1348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1356
    :cond_1
    iget-object v4, v6, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    const-wide/16 v7, -0x1

    if-nez v4, :cond_2

    return-wide v7

    .line 1360
    :cond_2
    iget-wide v9, v6, Lcom/leidong/open/http/okio/Buffer;->size:J

    sub-long v11, v9, p2

    cmp-long v5, v11, p2

    if-gez v5, :cond_3

    .line 1362
    iget-wide v2, v6, Lcom/leidong/open/http/okio/Buffer;->size:J

    :goto_0
    cmp-long v5, v2, p2

    if-lez v5, :cond_4

    .line 1364
    iget-object v4, v4, Lcom/leidong/open/http/okio/Segment;->prev:Lcom/leidong/open/http/okio/Segment;

    .line 1365
    iget v5, v4, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v9, v4, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v5, v9

    int-to-long v9, v5

    sub-long v11, v2, v9

    move-wide v2, v11

    goto :goto_0

    .line 1370
    :cond_3
    :goto_1
    iget v5, v4, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v9, v4, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v5, v9

    int-to-long v9, v5

    add-long v11, v2, v9

    cmp-long v5, v11, p2

    if-gez v5, :cond_4

    .line 1371
    iget-object v4, v4, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    move-wide v2, v11

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    move-object/from16 v9, p1

    .line 1379
    invoke-virtual {v9, v5}, Lcom/leidong/open/http/okio/ByteString;->getByte(I)B

    move-result v10

    .line 1380
    invoke-virtual/range {p1 .. p1}, Lcom/leidong/open/http/okio/ByteString;->size()I

    move-result v11

    .line 1381
    iget-wide v12, v6, Lcom/leidong/open/http/okio/Buffer;->size:J

    int-to-long v14, v11

    sub-long v16, v12, v14

    const-wide/16 v12, 0x1

    add-long v14, v16, v12

    move-wide/from16 v0, p2

    move-wide v12, v2

    move-object v5, v4

    :goto_2
    cmp-long v2, v12, v14

    if-gez v2, :cond_8

    .line 1384
    iget-object v4, v5, Lcom/leidong/open/http/okio/Segment;->data:[B

    .line 1385
    iget v2, v5, Lcom/leidong/open/http/okio/Segment;->limit:I

    int-to-long v2, v2

    iget v7, v5, Lcom/leidong/open/http/okio/Segment;->pos:I

    int-to-long v7, v7

    add-long v16, v7, v14

    sub-long v7, v16, v12

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v7, v2

    .line 1386
    iget v2, v5, Lcom/leidong/open/http/okio/Segment;->pos:I

    int-to-long v2, v2

    add-long v16, v2, v0

    sub-long v0, v16, v12

    long-to-int v0, v0

    move v8, v0

    :goto_3
    if-ge v8, v7, :cond_7

    .line 1387
    aget-byte v0, v4, v8

    if-ne v0, v10, :cond_5

    add-int/lit8 v2, v8, 0x1

    const/16 v16, 0x1

    move-object v0, v6

    move-object v1, v5

    move-object v3, v9

    move-object/from16 v17, v4

    move/from16 v4, v16

    move-object v6, v5

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/leidong/open/http/okio/Buffer;->rangeEquals(Lcom/leidong/open/http/okio/Segment;ILcom/leidong/open/http/okio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1388
    iget v0, v6, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v8, v0

    int-to-long v0, v8

    add-long v2, v0, v12

    return-wide v2

    :cond_5
    move-object/from16 v17, v4

    move-object v6, v5

    :cond_6
    add-int/lit8 v8, v8, 0x1

    move-object v5, v6

    move-object/from16 v4, v17

    move-object/from16 v6, p0

    goto :goto_3

    :cond_7
    move-object v6, v5

    .line 1393
    iget v0, v6, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v1, v6, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long v2, v12, v0

    .line 1395
    iget-object v5, v6, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    move-wide v0, v2

    move-wide v12, v0

    move-object/from16 v6, p0

    const-wide/16 v7, -0x1

    goto :goto_2

    :cond_8
    move-wide v0, v7

    return-wide v0
.end method

.method public indexOfElement(Lcom/leidong/open/http/okio/ByteString;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1402
    invoke-virtual {p0, p1, v0, v1}, Lcom/leidong/open/http/okio/Buffer;->indexOfElement(Lcom/leidong/open/http/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lcom/leidong/open/http/okio/ByteString;J)J
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 1406
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fromIndex < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1414
    :cond_0
    iget-object v2, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    const-wide/16 v3, -0x1

    if-nez v2, :cond_1

    return-wide v3

    .line 1418
    :cond_1
    iget-wide v5, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    sub-long v7, v5, p2

    cmp-long v5, v7, p2

    if-gez v5, :cond_2

    .line 1420
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    :goto_0
    cmp-long v5, v0, p2

    if-lez v5, :cond_3

    .line 1422
    iget-object v2, v2, Lcom/leidong/open/http/okio/Segment;->prev:Lcom/leidong/open/http/okio/Segment;

    .line 1423
    iget v5, v2, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v6, v2, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long v7, v0, v5

    move-wide v0, v7

    goto :goto_0

    .line 1428
    :cond_2
    :goto_1
    iget v5, v2, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v6, v2, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long v7, v0, v5

    cmp-long v5, v7, p2

    if-gez v5, :cond_3

    .line 1429
    iget-object v2, v2, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    move-wide v0, v7

    goto :goto_1

    .line 1438
    :cond_3
    invoke-virtual {p1}, Lcom/leidong/open/http/okio/ByteString;->size()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne v5, v6, :cond_7

    .line 1440
    invoke-virtual {p1, v7}, Lcom/leidong/open/http/okio/ByteString;->getByte(I)B

    move-result v5

    const/4 v6, 0x1

    .line 1441
    invoke-virtual {p1, v6}, Lcom/leidong/open/http/okio/ByteString;->getByte(I)B

    move-result p1

    .line 1442
    :goto_2
    iget-wide v6, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    cmp-long v8, v0, v6

    if-gez v8, :cond_b

    .line 1443
    iget-object v6, v2, Lcom/leidong/open/http/okio/Segment;->data:[B

    .line 1444
    iget v7, v2, Lcom/leidong/open/http/okio/Segment;->pos:I

    int-to-long v7, v7

    add-long v9, v7, p2

    sub-long p2, v9, v0

    long-to-int p2, p2

    iget p3, v2, Lcom/leidong/open/http/okio/Segment;->limit:I

    :goto_3
    if-ge p2, p3, :cond_6

    .line 1445
    aget-byte v7, v6, p2

    if-eq v7, v5, :cond_5

    if-ne v7, p1, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 1447
    :cond_5
    :goto_4
    iget p1, v2, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long v2, p1, v0

    return-wide v2

    .line 1452
    :cond_6
    iget p2, v2, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget p3, v2, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long v6, v0, p2

    .line 1454
    iget-object v2, v2, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    move-wide p2, v6

    move-wide v0, p2

    goto :goto_2

    .line 1458
    :cond_7
    invoke-virtual {p1}, Lcom/leidong/open/http/okio/ByteString;->internalArray()[B

    move-result-object p1

    .line 1459
    :goto_5
    iget-wide v5, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    cmp-long v8, v0, v5

    if-gez v8, :cond_b

    .line 1460
    iget-object v5, v2, Lcom/leidong/open/http/okio/Segment;->data:[B

    .line 1461
    iget v6, v2, Lcom/leidong/open/http/okio/Segment;->pos:I

    int-to-long v8, v6

    add-long v10, v8, p2

    sub-long p2, v10, v0

    long-to-int p2, p2

    iget p3, v2, Lcom/leidong/open/http/okio/Segment;->limit:I

    :goto_6
    if-ge p2, p3, :cond_a

    .line 1462
    aget-byte v6, v5, p2

    .line 1463
    array-length v8, p1

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v8, :cond_9

    aget-byte v10, p1, v9

    if-ne v6, v10, :cond_8

    .line 1464
    iget p1, v2, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long v2, p1, v0

    return-wide v2

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 1469
    :cond_a
    iget p2, v2, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget p3, v2, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long v5, v0, p2

    .line 1471
    iget-object v2, v2, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    move-wide p2, v5

    move-wide v0, p2

    goto :goto_5

    :cond_b
    return-wide v3
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .line 114
    new-instance v0, Lcom/leidong/open/http/okio/Buffer$2;

    invoke-direct {v0, p0}, Lcom/leidong/open/http/okio/Buffer$2;-><init>(Lcom/leidong/open/http/okio/Buffer;)V

    return-object v0
.end method

.method public md5()Lcom/leidong/open/http/okio/ByteString;
    .locals 1

    const-string v0, "MD5"

    .line 1549
    invoke-direct {p0, v0}, Lcom/leidong/open/http/okio/Buffer;->digest(Ljava/lang/String;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .line 72
    new-instance v0, Lcom/leidong/open/http/okio/Buffer$1;

    invoke-direct {v0, p0}, Lcom/leidong/open/http/okio/Buffer$1;-><init>(Lcom/leidong/open/http/okio/Buffer;)V

    return-object v0
.end method

.method public rangeEquals(JLcom/leidong/open/http/okio/ByteString;)Z
    .locals 6

    .line 1479
    invoke-virtual {p3}, Lcom/leidong/open/http/okio/ByteString;->size()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/leidong/open/http/okio/Buffer;->rangeEquals(JLcom/leidong/open/http/okio/ByteString;II)Z

    move-result p1

    return p1
.end method

.method public rangeEquals(JLcom/leidong/open/http/okio/ByteString;II)Z
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v0, 0x0

    if-ltz v2, :cond_3

    if-ltz p4, :cond_3

    if-ltz p5, :cond_3

    .line 1483
    iget-wide v1, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    sub-long v3, v1, p1

    int-to-long v1, p5

    cmp-long v5, v3, v1

    if-ltz v5, :cond_3

    .line 1487
    invoke-virtual {p3}, Lcom/leidong/open/http/okio/ByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p5, :cond_2

    int-to-long v2, v1

    add-long v4, p1, v2

    .line 1491
    invoke-virtual {p0, v4, v5}, Lcom/leidong/open/http/okio/Buffer;->getByte(J)B

    move-result v2

    add-int v3, p4, v1

    invoke-virtual {p3, v3}, Lcom/leidong/open/http/okio/ByteString;->getByte(I)B

    move-result v3

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method public read([B)I
    .locals 2

    .line 774
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/leidong/open/http/okio/Buffer;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 7

    .line 787
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/leidong/open/http/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 789
    iget-object v0, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 791
    :cond_0
    iget v1, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v2, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 792
    iget-object v1, v0, Lcom/leidong/open/http/okio/Segment;->data:[B

    iget v2, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 794
    iget p1, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    add-int/2addr p1, p3

    iput p1, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    .line 795
    iget-wide p1, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    int-to-long v1, p3

    sub-long v3, p1, v1

    iput-wide v3, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    .line 797
    iget p1, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    iget p2, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    if-ne p1, p2, :cond_1

    .line 798
    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Segment;->pop()Lcom/leidong/open/http/okio/Segment;

    move-result-object p1

    iput-object p1, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 799
    invoke-static {v0}, Lcom/leidong/open/http/okio/SegmentPool;->recycle(Lcom/leidong/open/http/okio/Segment;)V

    :cond_1
    return p3
.end method

.method public read(Lcom/leidong/open/http/okio/Buffer;J)J
    .locals 5

    if-nez p1, :cond_0

    .line 1266
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    .line 1267
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

    .line 1268
    :cond_1
    iget-wide v2, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    const-wide/16 p1, -0x1

    return-wide p1

    .line 1269
    :cond_2
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    cmp-long v2, p2, v0

    if-lez v2, :cond_3

    iget-wide p2, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    .line 1270
    :cond_3
    invoke-virtual {p1, p0, p2, p3}, Lcom/leidong/open/http/okio/Buffer;->write(Lcom/leidong/open/http/okio/Buffer;J)V

    return-wide p2
.end method

.method public readAll(Lcom/leidong/open/http/okio/Sink;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 584
    invoke-interface {p1, p0, v0, v1}, Lcom/leidong/open/http/okio/Sink;->write(Lcom/leidong/open/http/okio/Buffer;J)V

    :cond_0
    return-wide v0
.end method

.method public readByte()B
    .locals 11

    .line 277
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 280
    iget v1, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    .line 281
    iget v2, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    .line 283
    iget-object v3, v0, Lcom/leidong/open/http/okio/Segment;->data:[B

    add-int/lit8 v4, v1, 0x1

    .line 284
    aget-byte v1, v3, v1

    .line 285
    iget-wide v5, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v7, 0x1

    sub-long v9, v5, v7

    iput-wide v9, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    if-ne v4, v2, :cond_1

    .line 288
    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Segment;->pop()Lcom/leidong/open/http/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 289
    invoke-static {v0}, Lcom/leidong/open/http/okio/SegmentPool;->recycle(Lcom/leidong/open/http/okio/Segment;)V

    goto :goto_0

    .line 291
    :cond_1
    iput v4, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    :goto_0
    return v1
.end method

.method public readByteArray()[B
    .locals 2

    .line 756
    :try_start_0
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lcom/leidong/open/http/okio/Buffer;->readByteArray(J)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 758
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readByteArray(J)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 763
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/leidong/open/http/okio/Util;->checkOffsetAndCount(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 765
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    long-to-int p1, p1

    .line 768
    new-array p1, p1, [B

    .line 769
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okio/Buffer;->readFully([B)V

    return-object p1
.end method

.method public readByteString()Lcom/leidong/open/http/okio/ByteString;
    .locals 2

    .line 529
    new-instance v0, Lcom/leidong/open/http/okio/ByteString;

    invoke-virtual {p0}, Lcom/leidong/open/http/okio/Buffer;->readByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leidong/open/http/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readByteString(J)Lcom/leidong/open/http/okio/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 533
    new-instance v0, Lcom/leidong/open/http/okio/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/leidong/open/http/okio/Buffer;->readByteArray(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/leidong/open/http/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readDecimalLong()J
    .locals 18

    move-object/from16 v0, p0

    .line 415
    iget-wide v1, v0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "size == 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-wide/16 v5, -0x7

    const/4 v7, 0x0

    move-wide v8, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 427
    :cond_1
    iget-object v10, v0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 429
    iget-object v11, v10, Lcom/leidong/open/http/okio/Segment;->data:[B

    .line 430
    iget v12, v10, Lcom/leidong/open/http/okio/Segment;->pos:I

    .line 431
    iget v13, v10, Lcom/leidong/open/http/okio/Segment;->limit:I

    :goto_0
    if-ge v12, v13, :cond_8

    .line 434
    aget-byte v15, v11, v12

    const/16 v14, 0x30

    if-lt v15, v14, :cond_5

    const/16 v1, 0x39

    if-gt v15, v1, :cond_5

    sub-int/2addr v14, v15

    const-wide v1, -0xcccccccccccccccL

    cmp-long v16, v3, v1

    if-ltz v16, :cond_3

    cmp-long v16, v3, v1

    if-nez v16, :cond_2

    int-to-long v1, v14

    cmp-long v16, v1, v8

    if-gez v16, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0xa

    mul-long v3, v3, v1

    int-to-long v1, v14

    add-long v14, v3, v1

    move-wide v3, v14

    goto :goto_2

    .line 440
    :cond_3
    :goto_1
    new-instance v1, Lcom/leidong/open/http/okio/Buffer;

    invoke-direct {v1}, Lcom/leidong/open/http/okio/Buffer;-><init>()V

    invoke-virtual {v1, v3, v4}, Lcom/leidong/open/http/okio/Buffer;->writeDecimalLong(J)Lcom/leidong/open/http/okio/Buffer;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    move-result-object v1

    if-nez v5, :cond_4

    .line 441
    invoke-virtual {v1}, Lcom/leidong/open/http/okio/Buffer;->readByte()B

    .line 442
    :cond_4
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number too large: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/leidong/open/http/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    const/16 v1, 0x2d

    if-ne v15, v1, :cond_6

    if-nez v7, :cond_6

    const-wide/16 v1, 0x1

    sub-long v14, v8, v1

    move-wide v8, v14

    const/4 v5, 0x1

    :goto_2
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    if-nez v7, :cond_7

    .line 451
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    const/4 v6, 0x1

    :cond_8
    if-ne v12, v13, :cond_9

    .line 461
    invoke-virtual {v10}, Lcom/leidong/open/http/okio/Segment;->pop()Lcom/leidong/open/http/okio/Segment;

    move-result-object v1

    iput-object v1, v0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 462
    invoke-static {v10}, Lcom/leidong/open/http/okio/SegmentPool;->recycle(Lcom/leidong/open/http/okio/Segment;)V

    goto :goto_3

    .line 464
    :cond_9
    iput v12, v10, Lcom/leidong/open/http/okio/Segment;->pos:I

    :goto_3
    if-nez v6, :cond_a

    .line 466
    iget-object v1, v0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    if-nez v1, :cond_1

    .line 468
    :cond_a
    iget-wide v1, v0, Lcom/leidong/open/http/okio/Buffer;->size:J

    int-to-long v6, v7

    sub-long v8, v1, v6

    iput-wide v8, v0, Lcom/leidong/open/http/okio/Buffer;->size:J

    if-eqz v5, :cond_b

    goto :goto_4

    :cond_b
    neg-long v3, v3

    :goto_4
    return-wide v3
.end method

.method public readFrom(Ljava/io/InputStream;)Lcom/leidong/open/http/okio/Buffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x1

    .line 231
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/leidong/open/http/okio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    return-object p0
.end method

.method public readFrom(Ljava/io/InputStream;J)Lcom/leidong/open/http/okio/Buffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 237
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
    const/4 v0, 0x0

    .line 238
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/leidong/open/http/okio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    return-object p0
.end method

.method public readFully(Lcom/leidong/open/http/okio/Buffer;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 574
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    cmp-long v2, v0, p2

    if-gez v2, :cond_0

    .line 575
    iget-wide p2, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    invoke-virtual {p1, p0, p2, p3}, Lcom/leidong/open/http/okio/Buffer;->write(Lcom/leidong/open/http/okio/Buffer;J)V

    .line 576
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 578
    :cond_0
    invoke-virtual {p1, p0, p2, p3}, Lcom/leidong/open/http/okio/Buffer;->write(Lcom/leidong/open/http/okio/Buffer;J)V

    return-void
.end method

.method public readFully([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 779
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 780
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/leidong/open/http/okio/Buffer;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 781
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 17

    move-object/from16 v0, p0

    .line 473
    iget-wide v1, v0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "size == 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    move-wide v5, v3

    const/4 v2, 0x0

    .line 480
    :cond_1
    iget-object v7, v0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 482
    iget-object v8, v7, Lcom/leidong/open/http/okio/Segment;->data:[B

    .line 483
    iget v9, v7, Lcom/leidong/open/http/okio/Segment;->pos:I

    .line 484
    iget v10, v7, Lcom/leidong/open/http/okio/Segment;->limit:I

    :goto_0
    if-ge v9, v10, :cond_7

    .line 489
    aget-byte v11, v8, v9

    const/16 v12, 0x30

    if-lt v11, v12, :cond_2

    const/16 v12, 0x39

    if-gt v11, v12, :cond_2

    add-int/lit8 v12, v11, -0x30

    goto :goto_1

    :cond_2
    const/16 v12, 0x61

    if-lt v11, v12, :cond_3

    const/16 v12, 0x66

    if-gt v11, v12, :cond_3

    add-int/lit8 v12, v11, -0x61

    add-int/lit8 v12, v12, 0xa

    goto :goto_1

    :cond_3
    const/16 v12, 0x41

    if-lt v11, v12, :cond_5

    const/16 v12, 0x46

    if-gt v11, v12, :cond_5

    add-int/lit8 v12, v11, -0x41

    add-int/lit8 v12, v12, 0xa

    :goto_1
    const-wide/high16 v13, -0x1000000000000000L    # -3.105036184601418E231

    and-long v15, v5, v13

    cmp-long v13, v15, v3

    if-eqz v13, :cond_4

    .line 508
    new-instance v1, Lcom/leidong/open/http/okio/Buffer;

    invoke-direct {v1}, Lcom/leidong/open/http/okio/Buffer;-><init>()V

    invoke-virtual {v1, v5, v6}, Lcom/leidong/open/http/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/leidong/open/http/okio/Buffer;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    move-result-object v1

    .line 509
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number too large: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/leidong/open/http/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v11, 0x4

    shl-long/2addr v5, v11

    int-to-long v11, v12

    or-long v13, v5, v11

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v1, v1, 0x1

    move-wide v5, v13

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    .line 498
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/4 v2, 0x1

    :cond_7
    if-ne v9, v10, :cond_8

    .line 517
    invoke-virtual {v7}, Lcom/leidong/open/http/okio/Segment;->pop()Lcom/leidong/open/http/okio/Segment;

    move-result-object v8

    iput-object v8, v0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 518
    invoke-static {v7}, Lcom/leidong/open/http/okio/SegmentPool;->recycle(Lcom/leidong/open/http/okio/Segment;)V

    goto :goto_2

    .line 520
    :cond_8
    iput v9, v7, Lcom/leidong/open/http/okio/Segment;->pos:I

    :goto_2
    if-nez v2, :cond_9

    .line 522
    iget-object v7, v0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    if-nez v7, :cond_1

    .line 524
    :cond_9
    iget-wide v2, v0, Lcom/leidong/open/http/okio/Buffer;->size:J

    int-to-long v7, v1

    sub-long v9, v2, v7

    iput-wide v9, v0, Lcom/leidong/open/http/okio/Buffer;->size:J

    return-wide v5
.end method

.method public readInt()I
    .locals 10

    .line 337
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 340
    iget v1, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    .line 341
    iget v4, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    sub-int v5, v4, v1

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 346
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 347
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 348
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 351
    :cond_1
    iget-object v5, v0, Lcom/leidong/open/http/okio/Segment;->data:[B

    add-int/lit8 v6, v1, 0x1

    .line 352
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 356
    iget-wide v5, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    sub-long v8, v5, v2

    iput-wide v8, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    if-ne v7, v4, :cond_2

    .line 359
    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Segment;->pop()Lcom/leidong/open/http/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 360
    invoke-static {v0}, Lcom/leidong/open/http/okio/SegmentPool;->recycle(Lcom/leidong/open/http/okio/Segment;)V

    goto :goto_0

    .line 362
    :cond_2
    iput v7, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    :goto_0
    return v1
.end method

.method public readIntLe()I
    .locals 1

    .line 407
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/Buffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/leidong/open/http/okio/Util;->reverseBytesInt(I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 18

    move-object/from16 v0, p0

    .line 369
    iget-wide v1, v0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v3, 0x8

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size < 8: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/leidong/open/http/okio/Buffer;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 371
    :cond_0
    iget-object v1, v0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 372
    iget v2, v1, Lcom/leidong/open/http/okio/Segment;->pos:I

    .line 373
    iget v5, v1, Lcom/leidong/open/http/okio/Segment;->limit:I

    sub-int v6, v5, v2

    const/16 v7, 0x20

    const/16 v8, 0x8

    if-ge v6, v8, :cond_1

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/leidong/open/http/okio/Buffer;->readInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v5, v1, v3

    shl-long v1, v5, v7

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/leidong/open/http/okio/Buffer;->readInt()I

    move-result v5

    int-to-long v5, v5

    and-long v7, v5, v3

    or-long v3, v1, v7

    return-wide v3

    .line 381
    :cond_1
    iget-object v6, v1, Lcom/leidong/open/http/okio/Segment;->data:[B

    add-int/lit8 v9, v2, 0x1

    .line 382
    aget-byte v2, v6, v2

    int-to-long v10, v2

    const-wide/16 v12, 0xff

    and-long v14, v10, v12

    const/16 v2, 0x38

    shl-long v10, v14, v2

    add-int/lit8 v2, v9, 0x1

    aget-byte v9, v6, v9

    int-to-long v14, v9

    and-long v16, v14, v12

    const/16 v9, 0x30

    shl-long v14, v16, v9

    or-long v16, v10, v14

    add-int/lit8 v9, v2, 0x1

    aget-byte v2, v6, v2

    int-to-long v10, v2

    and-long v14, v10, v12

    const/16 v2, 0x28

    shl-long v10, v14, v2

    or-long v14, v16, v10

    add-int/lit8 v2, v9, 0x1

    aget-byte v9, v6, v9

    int-to-long v9, v9

    and-long v16, v9, v12

    shl-long v9, v16, v7

    or-long v16, v14, v9

    add-int/lit8 v7, v2, 0x1

    aget-byte v2, v6, v2

    int-to-long v9, v2

    and-long v14, v9, v12

    const/16 v2, 0x18

    shl-long v9, v14, v2

    or-long v14, v16, v9

    add-int/lit8 v2, v7, 0x1

    aget-byte v7, v6, v7

    int-to-long v9, v7

    and-long v16, v9, v12

    const/16 v7, 0x10

    shl-long v9, v16, v7

    or-long v16, v14, v9

    add-int/lit8 v7, v2, 0x1

    aget-byte v2, v6, v2

    int-to-long v9, v2

    and-long v14, v9, v12

    shl-long v8, v14, v8

    or-long v10, v16, v8

    add-int/lit8 v2, v7, 0x1

    aget-byte v6, v6, v7

    int-to-long v6, v6

    and-long v8, v6, v12

    or-long v6, v10, v8

    .line 390
    iget-wide v8, v0, Lcom/leidong/open/http/okio/Buffer;->size:J

    sub-long v10, v8, v3

    iput-wide v10, v0, Lcom/leidong/open/http/okio/Buffer;->size:J

    if-ne v2, v5, :cond_2

    .line 393
    invoke-virtual {v1}, Lcom/leidong/open/http/okio/Segment;->pop()Lcom/leidong/open/http/okio/Segment;

    move-result-object v2

    iput-object v2, v0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 394
    invoke-static {v1}, Lcom/leidong/open/http/okio/SegmentPool;->recycle(Lcom/leidong/open/http/okio/Segment;)V

    goto :goto_0

    .line 396
    :cond_2
    iput v2, v1, Lcom/leidong/open/http/okio/Segment;->pos:I

    :goto_0
    return-wide v6
.end method

.method public readLongLe()J
    .locals 2

    .line 411
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/Buffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/leidong/open/http/okio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 10

    .line 308
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 311
    iget v1, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    .line 312
    iget v4, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 317
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 321
    :cond_1
    iget-object v5, v0, Lcom/leidong/open/http/okio/Segment;->data:[B

    add-int/lit8 v6, v1, 0x1

    .line 322
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 324
    iget-wide v5, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    sub-long v8, v5, v2

    iput-wide v8, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    if-ne v7, v4, :cond_2

    .line 327
    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Segment;->pop()Lcom/leidong/open/http/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 328
    invoke-static {v0}, Lcom/leidong/open/http/okio/SegmentPool;->recycle(Lcom/leidong/open/http/okio/Segment;)V

    goto :goto_0

    .line 330
    :cond_2
    iput v7, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    :goto_0
    int-to-short v0, v1

    return v0
.end method

.method public readShortLe()S
    .locals 1

    .line 403
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/Buffer;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/leidong/open/http/okio/Util;->reverseBytesShort(S)S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 610
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/leidong/open/http/okio/Util;->checkOffsetAndCount(JJJ)V

    if-nez p3, :cond_0

    .line 611
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 613
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    const-string p1, ""

    return-object p1

    .line 617
    :cond_2
    iget-object v0, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 618
    iget v1, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    int-to-long v1, v1

    add-long v3, v1, p1

    iget v1, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    int-to-long v1, v1

    cmp-long v5, v3, v1

    if-lez v5, :cond_3

    .line 620
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/leidong/open/http/okio/Buffer;->readByteArray(J)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 623
    :cond_3
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/leidong/open/http/okio/Segment;->data:[B

    iget v3, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    long-to-int v4, p1

    invoke-direct {v1, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 624
    iget p3, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    int-to-long v2, p3

    add-long v4, v2, p1

    long-to-int p3, v4

    iput p3, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    .line 625
    iget-wide v2, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    sub-long v4, v2, p1

    iput-wide v4, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    .line 627
    iget p1, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    iget p2, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    if-ne p1, p2, :cond_4

    .line 628
    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Segment;->pop()Lcom/leidong/open/http/okio/Segment;

    move-result-object p1

    iput-object p1, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 629
    invoke-static {v0}, Lcom/leidong/open/http/okio/SegmentPool;->recycle(Lcom/leidong/open/http/okio/Segment;)V

    :cond_4
    return-object v1
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 603
    :try_start_0
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/leidong/open/http/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 605
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public readUtf8()Ljava/lang/String;
    .locals 3

    .line 591
    :try_start_0
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    sget-object v2, Lcom/leidong/open/http/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lcom/leidong/open/http/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 593
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 598
    sget-object v0, Lcom/leidong/open/http/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lcom/leidong/open/http/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readUtf8CodePoint()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 680
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 682
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/leidong/open/http/okio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/16 v3, 0x80

    const v4, 0xfffd

    if-nez v1, :cond_1

    and-int/lit8 v1, v0, 0x7f

    const/4 v5, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    and-int/lit16 v1, v0, 0xe0

    const/16 v5, 0xc0

    if-ne v1, v5, :cond_2

    and-int/lit8 v1, v0, 0x1f

    const/4 v5, 0x2

    const/16 v6, 0x80

    goto :goto_0

    :cond_2
    and-int/lit16 v1, v0, 0xf0

    const/16 v5, 0xe0

    if-ne v1, v5, :cond_3

    and-int/lit8 v1, v0, 0xf

    const/4 v5, 0x3

    const/16 v6, 0x800

    goto :goto_0

    :cond_3
    and-int/lit16 v1, v0, 0xf8

    const/16 v5, 0xf0

    if-ne v1, v5, :cond_a

    and-int/lit8 v1, v0, 0x7

    const/4 v5, 0x4

    const/high16 v6, 0x10000

    .line 717
    :goto_0
    iget-wide v7, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    int-to-long v9, v5

    cmp-long v11, v7, v9

    if-gez v11, :cond_4

    .line 718
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (to read code point prefixed 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    if-ge v2, v5, :cond_6

    int-to-long v7, v2

    .line 726
    invoke-virtual {p0, v7, v8}, Lcom/leidong/open/http/okio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v11, v0, 0xc0

    if-ne v11, v3, :cond_5

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 732
    :cond_5
    invoke-virtual {p0, v7, v8}, Lcom/leidong/open/http/okio/Buffer;->skip(J)V

    return v4

    .line 737
    :cond_6
    invoke-virtual {p0, v9, v10}, Lcom/leidong/open/http/okio/Buffer;->skip(J)V

    const v0, 0x10ffff

    if-le v1, v0, :cond_7

    return v4

    :cond_7
    const v0, 0xd800

    if-lt v1, v0, :cond_8

    const v0, 0xdfff

    if-gt v1, v0, :cond_8

    return v4

    :cond_8
    if-ge v1, v6, :cond_9

    return v4

    :cond_9
    return v1

    :cond_a
    const-wide/16 v0, 0x1

    .line 713
    invoke-virtual {p0, v0, v1}, Lcom/leidong/open/http/okio/Buffer;->skip(J)V

    return v4
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 636
    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okio/Buffer;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 639
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lcom/leidong/open/http/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 642
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/leidong/open/http/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method readUtf8Line(J)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const-wide/16 v0, 0x1

    if-lez v2, :cond_0

    sub-long v2, p1, v0

    .line 665
    invoke-virtual {p0, v2, v3}, Lcom/leidong/open/http/okio/Buffer;->getByte(J)B

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    .line 667
    invoke-virtual {p0, v2, v3}, Lcom/leidong/open/http/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    .line 668
    invoke-virtual {p0, v0, v1}, Lcom/leidong/open/http/okio/Buffer;->skip(J)V

    return-object p1

    .line 673
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/leidong/open/http/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    .line 674
    invoke-virtual {p0, v0, v1}, Lcom/leidong/open/http/okio/Buffer;->skip(J)V

    return-object p1
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 646
    invoke-virtual {p0, v0, v1}, Lcom/leidong/open/http/okio/Buffer;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 650
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    add-long v0, p1, v3

    :goto_0
    const/16 v6, 0xa

    const-wide/16 v7, 0x0

    move-object v5, p0

    move-wide v9, v0

    .line 652
    invoke-virtual/range {v5 .. v10}, Lcom/leidong/open/http/okio/Buffer;->indexOf(BJJ)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-eqz v2, :cond_2

    .line 653
    invoke-virtual {p0, v5, v6}, Lcom/leidong/open/http/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 654
    :cond_2
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/Buffer;->size()J

    move-result-wide v5

    cmp-long v2, v0, v5

    if-gez v2, :cond_3

    sub-long v5, v0, v3

    .line 655
    invoke-virtual {p0, v5, v6}, Lcom/leidong/open/http/okio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/leidong/open/http/okio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 656
    invoke-virtual {p0, v0, v1}, Lcom/leidong/open/http/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 658
    :cond_3
    new-instance v6, Lcom/leidong/open/http/okio/Buffer;

    invoke-direct {v6}, Lcom/leidong/open/http/okio/Buffer;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x20

    .line 659
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/Buffer;->size()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/leidong/open/http/okio/Buffer;->copyTo(Lcom/leidong/open/http/okio/Buffer;JJ)Lcom/leidong/open/http/okio/Buffer;

    .line 660
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leidong/open/http/okio/Buffer;->size()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {v6}, Lcom/leidong/open/http/okio/Buffer;->readByteString()Lcom/leidong/open/http/okio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/open/http/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public request(J)Z
    .locals 3

    .line 110
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public require(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 106
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_0
    return-void
.end method

.method segmentSizes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1538
    iget-object v0, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1539
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1540
    iget-object v1, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget v1, v1, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget-object v2, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget v2, v2, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1541
    iget-object v1, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    :goto_0
    iget-object v1, v1, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    iget-object v2, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    if-eq v1, v2, :cond_1

    .line 1542
    iget v2, v1, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v3, v1, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public select(Lcom/leidong/open/http/okio/Options;)I
    .locals 10

    .line 537
    iget-object v6, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    if-nez v6, :cond_0

    .line 538
    sget-object v0, Lcom/leidong/open/http/okio/ByteString;->EMPTY:Lcom/leidong/open/http/okio/ByteString;

    invoke-virtual {p1, v0}, Lcom/leidong/open/http/okio/Options;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 540
    :cond_0
    iget-object p1, p1, Lcom/leidong/open/http/okio/Options;->byteStrings:[Lcom/leidong/open/http/okio/ByteString;

    const/4 v0, 0x0

    .line 541
    array-length v7, p1

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_2

    .line 542
    aget-object v9, p1, v8

    .line 543
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    invoke-virtual {v9}, Lcom/leidong/open/http/okio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget v2, v6, Lcom/leidong/open/http/okio/Segment;->pos:I

    const/4 v4, 0x0

    invoke-virtual {v9}, Lcom/leidong/open/http/okio/ByteString;->size()I

    move-result v5

    move-object v0, p0

    move-object v1, v6

    move-object v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/leidong/open/http/okio/Buffer;->rangeEquals(Lcom/leidong/open/http/okio/Segment;ILcom/leidong/open/http/okio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    :try_start_0
    invoke-virtual {v9}, Lcom/leidong/open/http/okio/ByteString;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/leidong/open/http/okio/Buffer;->skip(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    :catch_0
    move-exception p1

    .line 548
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method selectPrefix(Lcom/leidong/open/http/okio/Options;)I
    .locals 9

    .line 561
    iget-object v6, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 562
    iget-object p1, p1, Lcom/leidong/open/http/okio/Options;->byteStrings:[Lcom/leidong/open/http/okio/ByteString;

    .line 563
    array-length v7, p1

    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_2

    .line 564
    aget-object v3, p1, v8

    .line 565
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    invoke-virtual {v3}, Lcom/leidong/open/http/okio/ByteString;->size()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v5, v0

    if-eqz v5, :cond_1

    .line 566
    iget v2, v6, Lcom/leidong/open/http/okio/Segment;->pos:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/leidong/open/http/okio/Buffer;->rangeEquals(Lcom/leidong/open/http/okio/Segment;ILcom/leidong/open/http/okio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v8

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public sha1()Lcom/leidong/open/http/okio/ByteString;
    .locals 1

    const-string v0, "SHA-1"

    .line 1554
    invoke-direct {p0, v0}, Lcom/leidong/open/http/okio/Buffer;->digest(Ljava/lang/String;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha256()Lcom/leidong/open/http/okio/ByteString;
    .locals 1

    const-string v0, "SHA-256"

    .line 1559
    invoke-direct {p0, v0}, Lcom/leidong/open/http/okio/Buffer;->digest(Ljava/lang/String;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha512()Lcom/leidong/open/http/okio/ByteString;
    .locals 1

    const-string v0, "SHA-512"

    .line 1564
    invoke-direct {p0, v0}, Lcom/leidong/open/http/okio/Buffer;->digest(Ljava/lang/String;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    return-wide v0
.end method

.method public skip(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 820
    iget-object v0, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    if-nez v0, :cond_0

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget v0, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget-object v1, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget v1, v1, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 823
    iget-wide v1, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    int-to-long v3, v0

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    sub-long v1, p1, v3

    .line 825
    iget-object p1, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget p2, p1, Lcom/leidong/open/http/okio/Segment;->pos:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/leidong/open/http/okio/Segment;->pos:I

    .line 827
    iget-object p1, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget p1, p1, Lcom/leidong/open/http/okio/Segment;->pos:I

    iget-object p2, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget p2, p2, Lcom/leidong/open/http/okio/Segment;->limit:I

    if-ne p1, p2, :cond_1

    .line 828
    iget-object p1, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 829
    invoke-virtual {p1}, Lcom/leidong/open/http/okio/Segment;->pop()Lcom/leidong/open/http/okio/Segment;

    move-result-object p2

    iput-object p2, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 830
    invoke-static {p1}, Lcom/leidong/open/http/okio/SegmentPool;->recycle(Lcom/leidong/open/http/okio/Segment;)V

    :cond_1
    move-wide p1, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public snapshot()Lcom/leidong/open/http/okio/ByteString;
    .locals 5

    .line 1685
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1686
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1688
    :cond_0
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okio/Buffer;->snapshot(I)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public snapshot(I)Lcom/leidong/open/http/okio/ByteString;
    .locals 1

    if-nez p1, :cond_0

    .line 1695
    sget-object p1, Lcom/leidong/open/http/okio/ByteString;->EMPTY:Lcom/leidong/open/http/okio/ByteString;

    return-object p1

    .line 1696
    :cond_0
    new-instance v0, Lcom/leidong/open/http/okio/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Lcom/leidong/open/http/okio/SegmentedByteString;-><init>(Lcom/leidong/open/http/okio/Buffer;I)V

    return-object v0
.end method

.method public timeout()Lcom/leidong/open/http/okio/Timeout;
    .locals 1

    .line 1533
    sget-object v0, Lcom/leidong/open/http/okio/Timeout;->NONE:Lcom/leidong/open/http/okio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1666
    invoke-virtual {p0}, Lcom/leidong/open/http/okio/Buffer;->snapshot()Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/open/http/okio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writableSegment(I)Lcom/leidong/open/http/okio/Segment;
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    const/16 v0, 0x2000

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1162
    :cond_0
    iget-object v1, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    if-nez v1, :cond_1

    .line 1163
    invoke-static {}, Lcom/leidong/open/http/okio/SegmentPool;->take()Lcom/leidong/open/http/okio/Segment;

    move-result-object p1

    iput-object p1, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 1164
    iget-object p1, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget-object v0, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget-object v1, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iput-object v1, v0, Lcom/leidong/open/http/okio/Segment;->prev:Lcom/leidong/open/http/okio/Segment;

    iput-object v1, p1, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    return-object v1

    .line 1167
    :cond_1
    iget-object v1, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget-object v1, v1, Lcom/leidong/open/http/okio/Segment;->prev:Lcom/leidong/open/http/okio/Segment;

    .line 1168
    iget v2, v1, Lcom/leidong/open/http/okio/Segment;->limit:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_2

    iget-boolean p1, v1, Lcom/leidong/open/http/okio/Segment;->owner:Z

    if-nez p1, :cond_3

    .line 1169
    :cond_2
    invoke-static {}, Lcom/leidong/open/http/okio/SegmentPool;->take()Lcom/leidong/open/http/okio/Segment;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/leidong/open/http/okio/Segment;->push(Lcom/leidong/open/http/okio/Segment;)Lcom/leidong/open/http/okio/Segment;

    move-result-object v1

    :cond_3
    return-object v1

    .line 1160
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public write(Lcom/leidong/open/http/okio/ByteString;)Lcom/leidong/open/http/okio/Buffer;
    .locals 1

    if-nez p1, :cond_0

    .line 836
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 837
    :cond_0
    invoke-virtual {p1, p0}, Lcom/leidong/open/http/okio/ByteString;->write(Lcom/leidong/open/http/okio/Buffer;)V

    return-object p0
.end method

.method public write([B)Lcom/leidong/open/http/okio/Buffer;
    .locals 2

    if-nez p1, :cond_0

    .line 979
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    .line 980
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/leidong/open/http/okio/Buffer;->write([BII)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public write([BII)Lcom/leidong/open/http/okio/Buffer;
    .locals 9

    if-nez p1, :cond_0

    .line 984
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 985
    :cond_0
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lcom/leidong/open/http/okio/Util;->checkOffsetAndCount(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_1

    const/4 v0, 0x1

    .line 989
    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okio/Buffer;->writableSegment(I)Lcom/leidong/open/http/okio/Segment;

    move-result-object v0

    sub-int v1, p3, p2

    .line 991
    iget v2, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 992
    iget-object v2, v0, Lcom/leidong/open/http/okio/Segment;->data:[B

    iget v3, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    .line 995
    iget v2, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    goto :goto_0

    .line 998
    :cond_1
    iget-wide p1, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    add-long v0, p1, v7

    iput-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic write(Lcom/leidong/open/http/okio/ByteString;)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okio/Buffer;->write(Lcom/leidong/open/http/okio/ByteString;)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/leidong/open/http/okio/Source;J)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 1013
    invoke-interface {p1, p0, p2, p3}, Lcom/leidong/open/http/okio/Source;->read(Lcom/leidong/open/http/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1014
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_0
    const/4 v2, 0x0

    sub-long v2, p2, v0

    move-wide p2, v2

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public bridge synthetic write([B)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okio/Buffer;->write([B)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write([BII)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/leidong/open/http/okio/Buffer;->write([BII)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/leidong/open/http/okio/Buffer;J)V
    .locals 7

    if-nez p1, :cond_0

    .line 1225
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-ne p1, p0, :cond_1

    .line 1226
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1227
    :cond_1
    iget-wide v0, p1, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/leidong/open/http/okio/Util;->checkOffsetAndCount(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_7

    .line 1231
    iget-object v0, p1, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget v0, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget-object v1, p1, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget v1, v1, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v2, p2, v0

    if-gez v2, :cond_5

    .line 1232
    iget-object v0, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget-object v0, v0, Lcom/leidong/open/http/okio/Segment;->prev:Lcom/leidong/open/http/okio/Segment;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 1233
    iget-boolean v1, v0, Lcom/leidong/open/http/okio/Segment;->owner:Z

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    int-to-long v1, v1

    add-long v3, p2, v1

    iget-boolean v1, v0, Lcom/leidong/open/http/okio/Segment;->shared:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    iget v1, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    :goto_2
    int-to-long v1, v1

    sub-long v5, v3, v1

    const-wide/16 v1, 0x2000

    cmp-long v3, v5, v1

    if-gtz v3, :cond_4

    .line 1236
    iget-object v1, p1, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lcom/leidong/open/http/okio/Segment;->writeTo(Lcom/leidong/open/http/okio/Segment;I)V

    .line 1237
    iget-wide v0, p1, Lcom/leidong/open/http/okio/Buffer;->size:J

    sub-long v2, v0, p2

    iput-wide v2, p1, Lcom/leidong/open/http/okio/Buffer;->size:J

    .line 1238
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    add-long v2, v0, p2

    iput-wide v2, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    return-void

    .line 1243
    :cond_4
    iget-object v0, p1, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/leidong/open/http/okio/Segment;->split(I)Lcom/leidong/open/http/okio/Segment;

    move-result-object v0

    iput-object v0, p1, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 1248
    :cond_5
    iget-object v0, p1, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 1249
    iget v1, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v2, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 1250
    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Segment;->pop()Lcom/leidong/open/http/okio/Segment;

    move-result-object v3

    iput-object v3, p1, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 1251
    iget-object v3, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    if-nez v3, :cond_6

    .line 1252
    iput-object v0, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 1253
    iget-object v0, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget-object v3, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget-object v4, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iput-object v4, v3, Lcom/leidong/open/http/okio/Segment;->prev:Lcom/leidong/open/http/okio/Segment;

    iput-object v4, v0, Lcom/leidong/open/http/okio/Segment;->next:Lcom/leidong/open/http/okio/Segment;

    goto :goto_3

    .line 1255
    :cond_6
    iget-object v3, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    iget-object v3, v3, Lcom/leidong/open/http/okio/Segment;->prev:Lcom/leidong/open/http/okio/Segment;

    .line 1256
    invoke-virtual {v3, v0}, Lcom/leidong/open/http/okio/Segment;->push(Lcom/leidong/open/http/okio/Segment;)Lcom/leidong/open/http/okio/Segment;

    move-result-object v0

    .line 1257
    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Segment;->compact()V

    .line 1259
    :goto_3
    iget-wide v3, p1, Lcom/leidong/open/http/okio/Buffer;->size:J

    sub-long v5, v3, v1

    iput-wide v5, p1, Lcom/leidong/open/http/okio/Buffer;->size:J

    .line 1260
    iget-wide v3, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    add-long v5, v3, v1

    iput-wide v5, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    sub-long v3, p2, v1

    move-wide p2, v3

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public writeAll(Lcom/leidong/open/http/okio/Source;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1003
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x2000

    .line 1005
    invoke-interface {p1, p0, v2, v3}, Lcom/leidong/open/http/okio/Source;->read(Lcom/leidong/open/http/okio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    add-long v4, v0, v2

    move-wide v0, v4

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public writeByte(I)Lcom/leidong/open/http/okio/Buffer;
    .locals 6

    const/4 v0, 0x1

    .line 1021
    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okio/Buffer;->writableSegment(I)Lcom/leidong/open/http/okio/Segment;

    move-result-object v0

    .line 1022
    iget-object v1, v0, Lcom/leidong/open/http/okio/Segment;->data:[B

    iget v2, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 1023
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeDecimalLong(J)Lcom/leidong/open/http/okio/Buffer;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 1083
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v2, 0x0

    cmp-long v3, p1, v0

    const/4 v4, 0x1

    if-gez v3, :cond_2

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-string p1, "-9223372036854775808"

    .line 1090
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v2, 0x1

    :cond_2
    const-wide/32 v5, 0x5f5e100

    cmp-long v3, p1, v5

    const-wide/16 v5, 0xa

    if-gez v3, :cond_a

    const-wide/16 v7, 0x2710

    cmp-long v3, p1, v7

    if-gez v3, :cond_6

    const-wide/16 v7, 0x64

    cmp-long v3, p1, v7

    if-gez v3, :cond_4

    cmp-long v3, p1, v5

    if-gez v3, :cond_3

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_4
    const-wide/16 v3, 0x3e8

    cmp-long v7, p1, v3

    if-gez v7, :cond_5

    const/4 v4, 0x3

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x4

    goto/16 :goto_0

    :cond_6
    const-wide/32 v3, 0xf4240

    cmp-long v7, p1, v3

    if-gez v7, :cond_8

    const-wide/32 v3, 0x186a0

    cmp-long v7, p1, v3

    if-gez v7, :cond_7

    const/4 v4, 0x5

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x6

    goto/16 :goto_0

    :cond_8
    const-wide/32 v3, 0x989680

    cmp-long v7, p1, v3

    if-gez v7, :cond_9

    const/4 v4, 0x7

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0x8

    goto/16 :goto_0

    :cond_a
    const-wide v3, 0xe8d4a51000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_e

    const-wide v3, 0x2540be400L

    cmp-long v7, p1, v3

    if-gez v7, :cond_c

    const-wide/32 v3, 0x3b9aca00

    cmp-long v7, p1, v3

    if-gez v7, :cond_b

    const/16 v4, 0x9

    goto :goto_0

    :cond_b
    const/16 v4, 0xa

    goto :goto_0

    :cond_c
    const-wide v3, 0x174876e800L

    cmp-long v7, p1, v3

    if-gez v7, :cond_d

    const/16 v4, 0xb

    goto :goto_0

    :cond_d
    const/16 v4, 0xc

    goto :goto_0

    :cond_e
    const-wide v3, 0x38d7ea4c68000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_11

    const-wide v3, 0x9184e72a000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_f

    const/16 v4, 0xd

    goto :goto_0

    :cond_f
    const-wide v3, 0x5af3107a4000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_10

    const/16 v4, 0xe

    goto :goto_0

    :cond_10
    const/16 v4, 0xf

    goto :goto_0

    :cond_11
    const-wide v3, 0x16345785d8a0000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_13

    const-wide v3, 0x2386f26fc10000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_12

    const/16 v4, 0x10

    goto :goto_0

    :cond_12
    const/16 v4, 0x11

    goto :goto_0

    :cond_13
    const-wide v3, 0xde0b6b3a7640000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_14

    const/16 v4, 0x12

    goto :goto_0

    :cond_14
    const/16 v4, 0x13

    :goto_0
    if-eqz v2, :cond_15

    add-int/lit8 v4, v4, 0x1

    .line 1119
    :cond_15
    invoke-virtual {p0, v4}, Lcom/leidong/open/http/okio/Buffer;->writableSegment(I)Lcom/leidong/open/http/okio/Segment;

    move-result-object v3

    .line 1120
    iget-object v7, v3, Lcom/leidong/open/http/okio/Segment;->data:[B

    .line 1121
    iget v8, v3, Lcom/leidong/open/http/okio/Segment;->limit:I

    add-int/2addr v8, v4

    :goto_1
    cmp-long v9, p1, v0

    if-eqz v9, :cond_16

    .line 1123
    rem-long v9, p1, v5

    long-to-int v9, v9

    add-int/lit8 v8, v8, -0x1

    .line 1124
    sget-object v10, Lcom/leidong/open/http/okio/Buffer;->DIGITS:[B

    aget-byte v9, v10, v9

    aput-byte v9, v7, v8

    .line 1125
    div-long/2addr p1, v5

    goto :goto_1

    :cond_16
    if-eqz v2, :cond_17

    add-int/lit8 v8, v8, -0x1

    const/16 p1, 0x2d

    .line 1128
    aput-byte p1, v7, v8

    .line 1131
    :cond_17
    iget p1, v3, Lcom/leidong/open/http/okio/Segment;->limit:I

    add-int/2addr p1, v4

    iput p1, v3, Lcom/leidong/open/http/okio/Segment;->limit:I

    .line 1132
    iget-wide p1, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    int-to-long v0, v4

    add-long v2, p1, v0

    iput-wide v2, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeDecimalLong(J)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/leidong/open/http/okio/Buffer;->writeDecimalLong(J)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeHexadecimalUnsignedLong(J)Lcom/leidong/open/http/okio/Buffer;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 1139
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1

    .line 1142
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1144
    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okio/Buffer;->writableSegment(I)Lcom/leidong/open/http/okio/Segment;

    move-result-object v2

    .line 1145
    iget-object v3, v2, Lcom/leidong/open/http/okio/Segment;->data:[B

    .line 1146
    iget v4, v2, Lcom/leidong/open/http/okio/Segment;->limit:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    iget v5, v2, Lcom/leidong/open/http/okio/Segment;->limit:I

    :goto_0
    if-lt v4, v5, :cond_1

    .line 1147
    sget-object v6, Lcom/leidong/open/http/okio/Buffer;->DIGITS:[B

    const-wide/16 v7, 0xf

    and-long v9, p1, v7

    long-to-int v7, v9

    aget-byte v6, v6, v7

    aput-byte v6, v3, v4

    ushr-long/2addr p1, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1150
    :cond_1
    iget p1, v2, Lcom/leidong/open/http/okio/Segment;->limit:I

    add-int/2addr p1, v0

    iput p1, v2, Lcom/leidong/open/http/okio/Segment;->limit:I

    .line 1151
    iget-wide p1, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    int-to-long v0, v0

    add-long v2, p1, v0

    iput-wide v2, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/leidong/open/http/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeInt(I)Lcom/leidong/open/http/okio/Buffer;
    .locals 6

    const/4 v0, 0x4

    .line 1043
    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okio/Buffer;->writableSegment(I)Lcom/leidong/open/http/okio/Segment;

    move-result-object v0

    .line 1044
    iget-object v1, v0, Lcom/leidong/open/http/okio/Segment;->data:[B

    .line 1045
    iget v2, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1046
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1047
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1048
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1049
    aput-byte p1, v1, v3

    .line 1050
    iput v2, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    .line 1051
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x4

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeInt(I)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeIntLe(I)Lcom/leidong/open/http/okio/Buffer;
    .locals 0

    .line 1056
    invoke-static {p1}, Lcom/leidong/open/http/okio/Util;->reverseBytesInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeInt(I)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeIntLe(I)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeIntLe(I)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeLong(J)Lcom/leidong/open/http/okio/Buffer;
    .locals 11

    const/16 v0, 0x8

    .line 1060
    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okio/Buffer;->writableSegment(I)Lcom/leidong/open/http/okio/Segment;

    move-result-object v1

    .line 1061
    iget-object v2, v1, Lcom/leidong/open/http/okio/Segment;->data:[B

    .line 1062
    iget v3, v1, Lcom/leidong/open/http/okio/Segment;->limit:I

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x38

    ushr-long v5, p1, v5

    const-wide/16 v7, 0xff

    and-long v9, v5, v7

    long-to-int v5, v9

    int-to-byte v5, v5

    .line 1063
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x30

    ushr-long v5, p1, v5

    and-long v9, v5, v7

    long-to-int v5, v9

    int-to-byte v5, v5

    .line 1064
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x28

    ushr-long v5, p1, v5

    and-long v9, v5, v7

    long-to-int v5, v9

    int-to-byte v5, v5

    .line 1065
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x20

    ushr-long v5, p1, v5

    and-long v9, v5, v7

    long-to-int v5, v9

    int-to-byte v5, v5

    .line 1066
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x18

    ushr-long v5, p1, v5

    and-long v9, v5, v7

    long-to-int v5, v9

    int-to-byte v5, v5

    .line 1067
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x10

    ushr-long v5, p1, v5

    and-long v9, v5, v7

    long-to-int v5, v9

    int-to-byte v5, v5

    .line 1068
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    ushr-long v5, p1, v0

    and-long v9, v5, v7

    long-to-int v0, v9

    int-to-byte v0, v0

    .line 1069
    aput-byte v0, v2, v3

    add-int/lit8 v0, v4, 0x1

    and-long v5, p1, v7

    long-to-int p1, v5

    int-to-byte p1, p1

    .line 1070
    aput-byte p1, v2, v4

    .line 1071
    iput v0, v1, Lcom/leidong/open/http/okio/Segment;->limit:I

    .line 1072
    iget-wide p1, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v0, 0x8

    add-long v2, p1, v0

    iput-wide v2, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeLong(J)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/leidong/open/http/okio/Buffer;->writeLong(J)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeLongLe(J)Lcom/leidong/open/http/okio/Buffer;
    .locals 0

    .line 1077
    invoke-static {p1, p2}, Lcom/leidong/open/http/okio/Util;->reverseBytesLong(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/leidong/open/http/okio/Buffer;->writeLong(J)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeLongLe(J)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/leidong/open/http/okio/Buffer;->writeLongLe(J)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeShort(I)Lcom/leidong/open/http/okio/Buffer;
    .locals 6

    const/4 v0, 0x2

    .line 1028
    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okio/Buffer;->writableSegment(I)Lcom/leidong/open/http/okio/Segment;

    move-result-object v0

    .line 1029
    iget-object v1, v0, Lcom/leidong/open/http/okio/Segment;->data:[B

    .line 1030
    iget v2, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1031
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1032
    aput-byte p1, v1, v3

    .line 1033
    iput v2, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    .line 1034
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x2

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeShort(I)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeShortLe(I)Lcom/leidong/open/http/okio/Buffer;
    .locals 0

    int-to-short p1, p1

    .line 1039
    invoke-static {p1}, Lcom/leidong/open/http/okio/Util;->reverseBytesShort(S)S

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeShort(I)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeShortLe(I)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeShortLe(I)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/leidong/open/http/okio/Buffer;
    .locals 1

    if-nez p1, :cond_0

    .line 963
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-gez p2, :cond_1

    .line 964
    new-instance p1, Ljava/lang/IllegalAccessError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "beginIndex < 0: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ge p3, p2, :cond_2

    .line 966
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 968
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_3

    .line 969
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    if-nez p4, :cond_4

    .line 972
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 973
    :cond_4
    sget-object v0, Lcom/leidong/open/http/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, p2, p3}, Lcom/leidong/open/http/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1

    .line 974
    :cond_5
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 p2, 0x0

    .line 975
    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/leidong/open/http/okio/Buffer;->write([BII)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/leidong/open/http/okio/Buffer;
    .locals 2

    .line 958
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/leidong/open/http/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/leidong/open/http/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/leidong/open/http/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Ljava/io/OutputStream;)Lcom/leidong/open/http/okio/Buffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/leidong/open/http/okio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Ljava/io/OutputStream;J)Lcom/leidong/open/http/okio/Buffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 207
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_0
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/leidong/open/http/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 210
    iget-object v0, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_2

    .line 212
    iget v1, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    iget v2, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 213
    iget-object v2, v0, Lcom/leidong/open/http/okio/Segment;->data:[B

    iget v3, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 215
    iget v2, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    .line 216
    iget-wide v2, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    int-to-long v4, v1

    sub-long v6, v2, v4

    iput-wide v6, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    sub-long v1, p2, v4

    .line 219
    iget p2, v0, Lcom/leidong/open/http/okio/Segment;->pos:I

    iget p3, v0, Lcom/leidong/open/http/okio/Segment;->limit:I

    if-ne p2, p3, :cond_1

    .line 221
    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Segment;->pop()Lcom/leidong/open/http/okio/Segment;

    move-result-object p2

    iput-object p2, p0, Lcom/leidong/open/http/okio/Buffer;->head:Lcom/leidong/open/http/okio/Segment;

    .line 222
    invoke-static {v0}, Lcom/leidong/open/http/okio/SegmentPool;->recycle(Lcom/leidong/open/http/okio/Segment;)V

    move-object v0, p2

    :cond_1
    move-wide p2, v1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/Buffer;
    .locals 2

    .line 842
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/leidong/open/http/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeUtf8(Ljava/lang/String;II)Lcom/leidong/open/http/okio/Buffer;
    .locals 7

    if-nez p1, :cond_0

    .line 846
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-gez p2, :cond_1

    .line 847
    new-instance p1, Ljava/lang/IllegalAccessError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "beginIndex < 0: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ge p3, p2, :cond_2

    .line 849
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex < beginIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 851
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_3

    .line 852
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex > string.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    if-ge p2, p3, :cond_d

    .line 858
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_6

    const/4 v2, 0x1

    .line 861
    invoke-virtual {p0, v2}, Lcom/leidong/open/http/okio/Buffer;->writableSegment(I)Lcom/leidong/open/http/okio/Segment;

    move-result-object v2

    .line 862
    iget-object v3, v2, Lcom/leidong/open/http/okio/Segment;->data:[B

    .line 863
    iget v4, v2, Lcom/leidong/open/http/okio/Segment;->limit:I

    sub-int/2addr v4, p2

    rsub-int v5, v4, 0x2000

    .line 864
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    .line 867
    aput-byte v0, v3, p2

    :goto_1
    if-ge v6, v5, :cond_5

    .line 872
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v6, 0x1

    add-int/2addr v6, v4

    int-to-byte p2, p2

    .line 874
    aput-byte p2, v3, v6

    move v6, v0

    goto :goto_1

    :cond_5
    :goto_2
    add-int/2addr v4, v6

    .line 877
    iget p2, v2, Lcom/leidong/open/http/okio/Segment;->limit:I

    sub-int/2addr v4, p2

    .line 878
    iget p2, v2, Lcom/leidong/open/http/okio/Segment;->limit:I

    add-int/2addr p2, v4

    iput p2, v2, Lcom/leidong/open/http/okio/Segment;->limit:I

    .line 879
    iget-wide v0, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    int-to-long v2, v4

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/leidong/open/http/okio/Buffer;->size:J

    move p2, v6

    goto :goto_0

    :cond_6
    const/16 v2, 0x800

    if-ge v0, v2, :cond_7

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    .line 883
    invoke-virtual {p0, v2}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 884
    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_7
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_c

    const v2, 0xdfff

    if-le v0, v2, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v4, p2, 0x1

    if-ge v4, p3, :cond_9

    .line 897
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    :goto_3
    const v6, 0xdbff

    if-gt v0, v6, :cond_b

    const v6, 0xdc00

    if-lt v5, v6, :cond_b

    if-le v5, v2, :cond_a

    goto :goto_4

    :cond_a
    const/high16 v2, 0x10000

    const v4, -0xd801

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0xa

    const v4, -0xdc01

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    add-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    .line 910
    invoke-virtual {p0, v2}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    shr-int/lit8 v2, v0, 0xc

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 911
    invoke-virtual {p0, v2}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 912
    invoke-virtual {p0, v2}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    .line 913
    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_0

    .line 899
    :cond_b
    :goto_4
    invoke-virtual {p0, v3}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    move p2, v4

    goto/16 :goto_0

    :cond_c
    :goto_5
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    .line 889
    invoke-virtual {p0, v2}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 890
    invoke-virtual {p0, v2}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 891
    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_d
    return-object p0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/leidong/open/http/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeUtf8CodePoint(I)Lcom/leidong/open/http/okio/Buffer;
    .locals 3

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 924
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    goto :goto_0

    :cond_0
    const/16 v1, 0x800

    if-ge p1, v1, :cond_1

    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    .line 928
    invoke-virtual {p0, v1}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    .line 929
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    goto :goto_0

    :cond_1
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_3

    const v1, 0xd800

    if-lt p1, v1, :cond_2

    const v1, 0xdfff

    if-gt p1, v1, :cond_2

    .line 933
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    .line 938
    invoke-virtual {p0, v1}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    .line 939
    invoke-virtual {p0, v1}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    .line 940
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    goto :goto_0

    :cond_3
    const v1, 0x10ffff

    if-gt p1, v1, :cond_4

    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    .line 944
    invoke-virtual {p0, v1}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    .line 945
    invoke-virtual {p0, v1}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    .line 946
    invoke-virtual {p0, v1}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    .line 947
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeByte(I)Lcom/leidong/open/http/okio/Buffer;

    :goto_0
    return-object p0

    .line 950
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Lcom/leidong/open/http/okio/BufferedSink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okio/Buffer;->writeUtf8CodePoint(I)Lcom/leidong/open/http/okio/Buffer;

    move-result-object p1

    return-object p1
.end method
