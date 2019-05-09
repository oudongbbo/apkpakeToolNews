.class public final Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;
.super Ljava/lang/Object;
.source "RealInterceptorChain.java"

# interfaces
.implements Lcom/leidong/open/http/okhttp3/Interceptor$Chain;


# instance fields
.field private calls:I

.field private final connection:Lcom/leidong/open/http/okhttp3/Connection;

.field private final httpCodec:Lcom/leidong/open/http/okhttp3/internal/http/HttpCodec;

.field private final index:I

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final request:Lcom/leidong/open/http/okhttp3/Request;

.field private final streamAllocation:Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;Lcom/leidong/open/http/okhttp3/internal/http/HttpCodec;Lcom/leidong/open/http/okhttp3/Connection;ILcom/leidong/open/http/okhttp3/Request;)V
    .locals 0
    .param p2, "streamAllocation"    # Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;
    .param p3, "httpCodec"    # Lcom/leidong/open/http/okhttp3/internal/http/HttpCodec;
    .param p4, "connection"    # Lcom/leidong/open/http/okhttp3/Connection;
    .param p5, "index"    # I
    .param p6, "request"    # Lcom/leidong/open/http/okhttp3/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okhttp3/Interceptor;",
            ">;",
            "Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;",
            "Lcom/leidong/open/http/okhttp3/internal/http/HttpCodec;",
            "Lcom/leidong/open/http/okhttp3/Connection;",
            "I",
            "Lcom/leidong/open/http/okhttp3/Request;",
            ")V"
        }
    .end annotation

    .line 45
    .local p1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lcom/leidong/open/http/okhttp3/Interceptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 47
    iput-object p4, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->connection:Lcom/leidong/open/http/okhttp3/Connection;

    .line 48
    iput-object p2, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;

    .line 49
    iput-object p3, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lcom/leidong/open/http/okhttp3/internal/http/HttpCodec;

    .line 50
    iput p5, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->index:I

    .line 51
    iput-object p6, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->request:Lcom/leidong/open/http/okhttp3/Request;

    .line 52
    return-void
.end method

.method private sameConnection(Lcom/leidong/open/http/okhttp3/HttpUrl;)Z
    .locals 2
    .param p1, "url"    # Lcom/leidong/open/http/okhttp3/HttpUrl;

    .line 113
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->connection:Lcom/leidong/open/http/okhttp3/Connection;

    invoke-interface {v1}, Lcom/leidong/open/http/okhttp3/Connection;->route()Lcom/leidong/open/http/okhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/Route;->address()Lcom/leidong/open/http/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/Address;->url()Lcom/leidong/open/http/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/HttpUrl;->port()I

    move-result v0

    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->connection:Lcom/leidong/open/http/okhttp3/Connection;

    invoke-interface {v1}, Lcom/leidong/open/http/okhttp3/Connection;->route()Lcom/leidong/open/http/okhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/Route;->address()Lcom/leidong/open/http/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/Address;->url()Lcom/leidong/open/http/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/HttpUrl;->port()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0
.end method


# virtual methods
.method public connection()Lcom/leidong/open/http/okhttp3/Connection;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->connection:Lcom/leidong/open/http/okhttp3/Connection;

    return-object v0
.end method

.method public httpStream()Lcom/leidong/open/http/okhttp3/internal/http/HttpCodec;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lcom/leidong/open/http/okhttp3/internal/http/HttpCodec;

    return-object v0
.end method

.method public proceed(Lcom/leidong/open/http/okhttp3/Request;)Lcom/leidong/open/http/okhttp3/Response;
    .locals 3
    .param p1, "request"    # Lcom/leidong/open/http/okhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lcom/leidong/open/http/okhttp3/internal/http/HttpCodec;

    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->connection:Lcom/leidong/open/http/okhttp3/Connection;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->proceed(Lcom/leidong/open/http/okhttp3/Request;Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;Lcom/leidong/open/http/okhttp3/internal/http/HttpCodec;Lcom/leidong/open/http/okhttp3/Connection;)Lcom/leidong/open/http/okhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public proceed(Lcom/leidong/open/http/okhttp3/Request;Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;Lcom/leidong/open/http/okhttp3/internal/http/HttpCodec;Lcom/leidong/open/http/okhttp3/Connection;)Lcom/leidong/open/http/okhttp3/Response;
    .locals 9
    .param p1, "request"    # Lcom/leidong/open/http/okhttp3/Request;
    .param p2, "streamAllocation"    # Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;
    .param p3, "httpCodec"    # Lcom/leidong/open/http/okhttp3/internal/http/HttpCodec;
    .param p4, "connection"    # Lcom/leidong/open/http/okhttp3/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget v0, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->index:I

    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 78
    :cond_0
    iget v0, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->calls:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->calls:I

    .line 81
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lcom/leidong/open/http/okhttp3/internal/http/HttpCodec;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Request;->url()Lcom/leidong/open/http/okhttp3/HttpUrl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->sameConnection(Lcom/leidong/open/http/okhttp3/HttpUrl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v4, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->index:I

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " must retain the same host and port"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->httpCodec:Lcom/leidong/open/http/okhttp3/internal/http/HttpCodec;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->calls:I

    if-le v0, v1, :cond_2

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v4, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->index:I

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " must call proceed() exactly once"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    new-instance v0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;

    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v2, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->index:I

    add-int/lit8 v7, v2, 0x1

    move-object v2, v0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;Lcom/leidong/open/http/okhttp3/internal/http/HttpCodec;Lcom/leidong/open/http/okhttp3/Connection;ILcom/leidong/open/http/okhttp3/Request;)V

    .line 95
    .local v0, "next":Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v3, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->index:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/leidong/open/http/okhttp3/Interceptor;

    .line 96
    .local v2, "interceptor":Lcom/leidong/open/http/okhttp3/Interceptor;
    invoke-interface {v2, v0}, Lcom/leidong/open/http/okhttp3/Interceptor;->intercept(Lcom/leidong/open/http/okhttp3/Interceptor$Chain;)Lcom/leidong/open/http/okhttp3/Response;

    move-result-object v3

    .line 99
    .local v3, "response":Lcom/leidong/open/http/okhttp3/Response;
    if-eqz p3, :cond_3

    iget v4, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->index:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget v4, v0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->calls:I

    if-eq v4, v1, :cond_3

    .line 100
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network interceptor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " must call proceed() exactly once"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_3
    if-nez v3, :cond_4

    .line 106
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interceptor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " returned null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_4
    return-object v3
.end method

.method public request()Lcom/leidong/open/http/okhttp3/Request;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->request:Lcom/leidong/open/http/okhttp3/Request;

    return-object v0
.end method

.method public streamAllocation()Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method
