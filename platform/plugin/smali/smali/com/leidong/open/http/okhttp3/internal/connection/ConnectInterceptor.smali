.class public final Lcom/leidong/open/http/okhttp3/internal/connection/ConnectInterceptor;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Lcom/leidong/open/http/okhttp3/Interceptor;


# instance fields
.field public final client:Lcom/leidong/open/http/okhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lcom/leidong/open/http/okhttp3/OkHttpClient;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/connection/ConnectInterceptor;->client:Lcom/leidong/open/http/okhttp3/OkHttpClient;

    return-void
.end method


# virtual methods
.method public intercept(Lcom/leidong/open/http/okhttp3/Interceptor$Chain;)Lcom/leidong/open/http/okhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    check-cast p1, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;

    .line 38
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->request()Lcom/leidong/open/http/okhttp3/Request;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->streamAllocation()Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;

    move-result-object v1

    .line 42
    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 43
    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/connection/ConnectInterceptor;->client:Lcom/leidong/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v1, v3, v2}, Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;->newStream(Lcom/leidong/open/http/okhttp3/OkHttpClient;Z)Lcom/leidong/open/http/okhttp3/internal/http/HttpCodec;

    move-result-object v2

    .line 44
    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object v3

    .line 46
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/leidong/open/http/okhttp3/internal/http/RealInterceptorChain;->proceed(Lcom/leidong/open/http/okhttp3/Request;Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;Lcom/leidong/open/http/okhttp3/internal/http/HttpCodec;Lcom/leidong/open/http/okhttp3/Connection;)Lcom/leidong/open/http/okhttp3/Response;

    move-result-object p1

    return-object p1
.end method
