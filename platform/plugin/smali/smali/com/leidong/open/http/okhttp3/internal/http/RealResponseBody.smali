.class public final Lcom/leidong/open/http/okhttp3/internal/http/RealResponseBody;
.super Lcom/leidong/open/http/okhttp3/ResponseBody;
.source "RealResponseBody.java"


# instance fields
.field private final headers:Lcom/leidong/open/http/okhttp3/Headers;

.field private final source:Lcom/leidong/open/http/okio/BufferedSource;


# direct methods
.method public constructor <init>(Lcom/leidong/open/http/okhttp3/Headers;Lcom/leidong/open/http/okio/BufferedSource;)V
    .locals 0
    .param p1, "headers"    # Lcom/leidong/open/http/okhttp3/Headers;
    .param p2, "source"    # Lcom/leidong/open/http/okio/BufferedSource;

    .line 30
    invoke-direct {p0}, Lcom/leidong/open/http/okhttp3/ResponseBody;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealResponseBody;->headers:Lcom/leidong/open/http/okhttp3/Headers;

    .line 32
    iput-object p2, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealResponseBody;->source:Lcom/leidong/open/http/okio/BufferedSource;

    .line 33
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealResponseBody;->headers:Lcom/leidong/open/http/okhttp3/Headers;

    invoke-static {v0}, Lcom/leidong/open/http/okhttp3/internal/http/HttpHeaders;->contentLength(Lcom/leidong/open/http/okhttp3/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/leidong/open/http/okhttp3/MediaType;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealResponseBody;->headers:Lcom/leidong/open/http/okhttp3/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/leidong/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/leidong/open/http/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/MediaType;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public source()Lcom/leidong/open/http/okio/BufferedSource;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealResponseBody;->source:Lcom/leidong/open/http/okio/BufferedSource;

    return-object v0
.end method