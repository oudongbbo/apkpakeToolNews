.class final Lcom/leidong/open/http/okio/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/leidong/open/http/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static arrayRangeEquals([BI[BII)Z
    .locals 4
    .param p0, "a"    # [B
    .param p1, "aOffset"    # I
    .param p2, "b"    # [B
    .param p3, "bOffset"    # I
    .param p4, "byteCount"    # I

    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 77
    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_1

    .line 78
    add-int v2, v1, p1

    aget-byte v2, p0, v2

    add-int v3, v1, p3

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_0

    return v0

    .line 77
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static checkOffsetAndCount(JJJ)V
    .locals 5
    .param p0, "size"    # J
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J

    .line 30
    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    cmp-long v0, p2, p0

    if-gtz v0, :cond_1

    sub-long v0, p0, p2

    cmp-long v2, v0, p4

    if-gez v2, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    return-void

    .line 31
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "size=%s offset=%s byteCount=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 32
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static reverseBytesInt(I)I
    .locals 2
    .param p0, "i"    # I

    .line 44
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p0, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static reverseBytesLong(J)J
    .locals 10
    .param p0, "v"    # J

    .line 51
    const-wide/high16 v0, -0x100000000000000L

    and-long v2, p0, v0

    const/16 v0, 0x38

    ushr-long v1, v2, v0

    const-wide/high16 v3, 0xff000000000000L

    and-long v5, p0, v3

    const/16 v3, 0x28

    ushr-long v4, v5, v3

    or-long v6, v1, v4

    const-wide v1, 0xff0000000000L

    and-long v4, p0, v1

    const/16 v1, 0x18

    ushr-long/2addr v4, v1

    or-long v8, v6, v4

    const-wide v4, 0xff00000000L

    and-long v6, p0, v4

    const/16 v2, 0x8

    ushr-long v4, v6, v2

    or-long v6, v8, v4

    const-wide v4, 0xff000000L

    and-long v8, p0, v4

    shl-long v4, v8, v2

    or-long v8, v6, v4

    const-wide/32 v4, 0xff0000

    and-long v6, p0, v4

    shl-long v1, v6, v1

    or-long v4, v8, v1

    const-wide/32 v1, 0xff00

    and-long v6, p0, v1

    shl-long v1, v6, v3

    or-long v6, v4, v1

    const-wide/16 v1, 0xff

    and-long v3, p0, v1

    shl-long v0, v3, v0

    or-long v2, v6, v0

    return-wide v2
.end method

.method public static reverseBytesShort(S)S
    .locals 3
    .param p0, "s"    # S

    .line 37
    const v0, 0xffff

    and-int/2addr v0, p0

    .line 38
    .local v0, "i":I
    const v1, 0xff00

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v2, v0, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 40
    .local v1, "reversed":I
    int-to-short v2, v1

    return v2
.end method

.method public static sneakyRethrow(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 67
    invoke-static {p0}, Lcom/leidong/open/http/okio/Util;->sneakyThrow2(Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method private static sneakyThrow2(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 72
    throw p0
.end method