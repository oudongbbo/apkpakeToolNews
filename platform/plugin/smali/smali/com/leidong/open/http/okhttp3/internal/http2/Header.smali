.class public final Lcom/leidong/open/http/okhttp3/internal/http2/Header;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final PSEUDO_PREFIX:Lcom/leidong/open/http/okio/ByteString;

.field public static final RESPONSE_STATUS:Lcom/leidong/open/http/okio/ByteString;

.field public static final TARGET_AUTHORITY:Lcom/leidong/open/http/okio/ByteString;

.field public static final TARGET_METHOD:Lcom/leidong/open/http/okio/ByteString;

.field public static final TARGET_PATH:Lcom/leidong/open/http/okio/ByteString;

.field public static final TARGET_SCHEME:Lcom/leidong/open/http/okio/ByteString;


# instance fields
.field final hpackSize:I

.field public final name:Lcom/leidong/open/http/okio/ByteString;

.field public final value:Lcom/leidong/open/http/okio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":"

    .line 25
    invoke-static {v0}, Lcom/leidong/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->PSEUDO_PREFIX:Lcom/leidong/open/http/okio/ByteString;

    const-string v0, ":status"

    .line 26
    invoke-static {v0}, Lcom/leidong/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->RESPONSE_STATUS:Lcom/leidong/open/http/okio/ByteString;

    const-string v0, ":method"

    .line 27
    invoke-static {v0}, Lcom/leidong/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->TARGET_METHOD:Lcom/leidong/open/http/okio/ByteString;

    const-string v0, ":path"

    .line 28
    invoke-static {v0}, Lcom/leidong/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->TARGET_PATH:Lcom/leidong/open/http/okio/ByteString;

    const-string v0, ":scheme"

    .line 29
    invoke-static {v0}, Lcom/leidong/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->TARGET_SCHEME:Lcom/leidong/open/http/okio/ByteString;

    const-string v0, ":authority"

    .line 30
    invoke-static {v0}, Lcom/leidong/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lcom/leidong/open/http/okio/ByteString;

    return-void
.end method

.method public constructor <init>(Lcom/leidong/open/http/okio/ByteString;Lcom/leidong/open/http/okio/ByteString;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->name:Lcom/leidong/open/http/okio/ByteString;

    .line 49
    iput-object p2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->value:Lcom/leidong/open/http/okio/ByteString;

    .line 50
    invoke-virtual {p1}, Lcom/leidong/open/http/okio/ByteString;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lcom/leidong/open/http/okio/ByteString;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->hpackSize:I

    return-void
.end method

.method public constructor <init>(Lcom/leidong/open/http/okio/ByteString;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-static {p2}, Lcom/leidong/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Header;-><init>(Lcom/leidong/open/http/okio/ByteString;Lcom/leidong/open/http/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-static {p1}, Lcom/leidong/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object p1

    invoke-static {p2}, Lcom/leidong/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Header;-><init>(Lcom/leidong/open/http/okio/ByteString;Lcom/leidong/open/http/okio/ByteString;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 54
    instance-of v0, p1, Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 55
    check-cast p1, Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    .line 56
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->name:Lcom/leidong/open/http/okio/ByteString;

    iget-object v2, p1, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->name:Lcom/leidong/open/http/okio/ByteString;

    invoke-virtual {v0, v2}, Lcom/leidong/open/http/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->value:Lcom/leidong/open/http/okio/ByteString;

    iget-object p1, p1, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->value:Lcom/leidong/open/http/okio/ByteString;

    .line 57
    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->name:Lcom/leidong/open/http/okio/ByteString;

    invoke-virtual {v0}, Lcom/leidong/open/http/okio/ByteString;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 65
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->value:Lcom/leidong/open/http/okio/ByteString;

    invoke-virtual {v0}, Lcom/leidong/open/http/okio/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s: %s"

    const/4 v1, 0x2

    .line 70
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->name:Lcom/leidong/open/http/okio/ByteString;

    invoke-virtual {v2}, Lcom/leidong/open/http/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->value:Lcom/leidong/open/http/okio/ByteString;

    invoke-virtual {v2}, Lcom/leidong/open/http/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/leidong/open/http/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
