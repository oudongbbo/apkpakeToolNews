.class public abstract Lcom/leidong/open/http/okhttp3/internal/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# static fields
.field public static instance:Lcom/leidong/open/http/okhttp3/internal/Internal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeInstanceForTests()V
    .locals 1

    .line 47
    new-instance v0, Lcom/leidong/open/http/okhttp3/OkHttpClient;

    invoke-direct {v0}, Lcom/leidong/open/http/okhttp3/OkHttpClient;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addLenient(Lcom/leidong/open/http/okhttp3/Headers$Builder;Ljava/lang/String;)V
.end method

.method public abstract addLenient(Lcom/leidong/open/http/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract apply(Lcom/leidong/open/http/okhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract code(Lcom/leidong/open/http/okhttp3/Response$Builder;)I
.end method

.method public abstract connectionBecameIdle(Lcom/leidong/open/http/okhttp3/ConnectionPool;Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;)Z
.end method

.method public abstract deduplicate(Lcom/leidong/open/http/okhttp3/ConnectionPool;Lcom/leidong/open/http/okhttp3/Address;Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;
.end method

.method public abstract get(Lcom/leidong/open/http/okhttp3/ConnectionPool;Lcom/leidong/open/http/okhttp3/Address;Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;)Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;
.end method

.method public abstract getHttpUrlChecked(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract newWebSocketCall(Lcom/leidong/open/http/okhttp3/OkHttpClient;Lcom/leidong/open/http/okhttp3/Request;)Lcom/leidong/open/http/okhttp3/Call;
.end method

.method public abstract put(Lcom/leidong/open/http/okhttp3/ConnectionPool;Lcom/leidong/open/http/okhttp3/internal/connection/RealConnection;)V
.end method

.method public abstract routeDatabase(Lcom/leidong/open/http/okhttp3/ConnectionPool;)Lcom/leidong/open/http/okhttp3/internal/connection/RouteDatabase;
.end method

.method public abstract setCache(Lcom/leidong/open/http/okhttp3/OkHttpClient$Builder;Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;)V
.end method

.method public abstract streamAllocation(Lcom/leidong/open/http/okhttp3/Call;)Lcom/leidong/open/http/okhttp3/internal/connection/StreamAllocation;
.end method
