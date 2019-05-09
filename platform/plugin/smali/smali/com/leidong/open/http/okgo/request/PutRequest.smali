.class public Lcom/leidong/open/http/okgo/request/PutRequest;
.super Lcom/leidong/open/http/okgo/request/BaseBodyRequest;
.source "PutRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/leidong/open/http/okgo/request/BaseBodyRequest<",
        "Lcom/leidong/open/http/okgo/request/PutRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Lcom/leidong/open/http/okgo/request/BaseBodyRequest;-><init>(Ljava/lang/String;)V

    .line 27
    const-string v0, "PUT"

    iput-object v0, p0, Lcom/leidong/open/http/okgo/request/PutRequest;->method:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public generateRequest(Lcom/leidong/open/http/okhttp3/RequestBody;)Lcom/leidong/open/http/okhttp3/Request;
    .locals 4
    .param p1, "requestBody"    # Lcom/leidong/open/http/okhttp3/RequestBody;

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/leidong/open/http/okgo/request/PutRequest;->headers:Lcom/leidong/open/http/okgo/model/HttpHeaders;

    const-string v1, "Content-Length"

    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/RequestBody;->contentLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/leidong/open/http/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/leidong/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 37
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v0, p0, Lcom/leidong/open/http/okgo/request/PutRequest;->headers:Lcom/leidong/open/http/okgo/model/HttpHeaders;

    invoke-static {v0}, Lcom/leidong/open/http/okgo/utils/HttpUtils;->appendHeaders(Lcom/leidong/open/http/okgo/model/HttpHeaders;)Lcom/leidong/open/http/okhttp3/Request$Builder;

    move-result-object v0

    .line 38
    .local v0, "requestBuilder":Lcom/leidong/open/http/okhttp3/Request$Builder;
    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okhttp3/Request$Builder;->put(Lcom/leidong/open/http/okhttp3/RequestBody;)Lcom/leidong/open/http/okhttp3/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/leidong/open/http/okgo/request/PutRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/leidong/open/http/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/leidong/open/http/okgo/request/PutRequest;->tag:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/leidong/open/http/okhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lcom/leidong/open/http/okhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/Request$Builder;->build()Lcom/leidong/open/http/okhttp3/Request;

    move-result-object v1

    return-object v1
.end method
