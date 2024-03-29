.class public final Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lcom/leidong/open/http/okhttp3/Interceptor;


# instance fields
.field final cache:Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;


# direct methods
.method public constructor <init>(Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;

    return-void
.end method

.method private cacheWritingResponse(Lcom/leidong/open/http/okhttp3/internal/cache/CacheRequest;Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p2

    .line 172
    :cond_0
    invoke-interface {p1}, Lcom/leidong/open/http/okhttp3/internal/cache/CacheRequest;->body()Lcom/leidong/open/http/okio/Sink;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p2

    .line 175
    :cond_1
    invoke-virtual {p2}, Lcom/leidong/open/http/okhttp3/Response;->body()Lcom/leidong/open/http/okhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/ResponseBody;->source()Lcom/leidong/open/http/okio/BufferedSource;

    move-result-object v1

    .line 176
    invoke-static {v0}, Lcom/leidong/open/http/okio/Okio;->buffer(Lcom/leidong/open/http/okio/Sink;)Lcom/leidong/open/http/okio/BufferedSink;

    move-result-object v0

    .line 178
    new-instance v2, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor$1;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor$1;-><init>(Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;Lcom/leidong/open/http/okio/BufferedSource;Lcom/leidong/open/http/okhttp3/internal/cache/CacheRequest;Lcom/leidong/open/http/okio/BufferedSink;)V

    .line 220
    invoke-virtual {p2}, Lcom/leidong/open/http/okhttp3/Response;->newBuilder()Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object p1

    new-instance v0, Lcom/leidong/open/http/okhttp3/internal/http/RealResponseBody;

    .line 221
    invoke-virtual {p2}, Lcom/leidong/open/http/okhttp3/Response;->headers()Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object p2

    invoke-static {v2}, Lcom/leidong/open/http/okio/Okio;->buffer(Lcom/leidong/open/http/okio/Source;)Lcom/leidong/open/http/okio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/leidong/open/http/okhttp3/internal/http/RealResponseBody;-><init>(Lcom/leidong/open/http/okhttp3/Headers;Lcom/leidong/open/http/okio/BufferedSource;)V

    invoke-virtual {p1, v0}, Lcom/leidong/open/http/okhttp3/Response$Builder;->body(Lcom/leidong/open/http/okhttp3/ResponseBody;)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object p1

    .line 222
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response$Builder;->build()Lcom/leidong/open/http/okhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method private static combine(Lcom/leidong/open/http/okhttp3/Headers;Lcom/leidong/open/http/okhttp3/Headers;)Lcom/leidong/open/http/okhttp3/Headers;
    .locals 7

    .line 227
    new-instance v0, Lcom/leidong/open/http/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lcom/leidong/open/http/okhttp3/Headers$Builder;-><init>()V

    .line 229
    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 230
    invoke-virtual {p0, v3}, Lcom/leidong/open/http/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    .line 231
    invoke-virtual {p0, v3}, Lcom/leidong/open/http/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    .line 232
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 235
    :cond_0
    invoke-static {v4}, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v4}, Lcom/leidong/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 236
    :cond_1
    sget-object v6, Lcom/leidong/open/http/okhttp3/internal/Internal;->instance:Lcom/leidong/open/http/okhttp3/internal/Internal;

    invoke-virtual {v6, v0, v4, v5}, Lcom/leidong/open/http/okhttp3/internal/Internal;->addLenient(Lcom/leidong/open/http/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 240
    :cond_3
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Headers;->size()I

    move-result p0

    :goto_2
    if-ge v2, p0, :cond_6

    .line 241
    invoke-virtual {p1, v2}, Lcom/leidong/open/http/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Content-Length"

    .line 242
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 245
    :cond_4
    invoke-static {v1}, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 246
    sget-object v3, Lcom/leidong/open/http/okhttp3/internal/Internal;->instance:Lcom/leidong/open/http/okhttp3/internal/Internal;

    invoke-virtual {p1, v2}, Lcom/leidong/open/http/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lcom/leidong/open/http/okhttp3/internal/Internal;->addLenient(Lcom/leidong/open/http/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 250
    :cond_6
    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/Headers$Builder;->build()Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object p0

    return-object p0
.end method

.method static isEndToEnd(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    .line 258
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    .line 259
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    .line 260
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    .line 261
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    .line 262
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    .line 263
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 264
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    .line 265
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private maybeCache(Lcom/leidong/open/http/okhttp3/Response;Lcom/leidong/open/http/okhttp3/Request;Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;)Lcom/leidong/open/http/okhttp3/internal/cache/CacheRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 148
    :cond_0
    invoke-static {p1, p2}, Lcom/leidong/open/http/okhttp3/internal/cache/CacheStrategy;->isCacheable(Lcom/leidong/open/http/okhttp3/Response;Lcom/leidong/open/http/okhttp3/Request;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 149
    invoke-virtual {p2}, Lcom/leidong/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/leidong/open/http/okhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 151
    :try_start_0
    invoke-interface {p3, p2}, Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;->remove(Lcom/leidong/open/http/okhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0

    .line 160
    :cond_2
    invoke-interface {p3, p1}, Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;->put(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/internal/cache/CacheRequest;

    move-result-object p1

    return-object p1
.end method

.method private static stripBody(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/Response;
    .locals 1

    if-eqz p0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/Response;->body()Lcom/leidong/open/http/okhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/Response;->newBuilder()Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okhttp3/Response$Builder;->body(Lcom/leidong/open/http/okhttp3/ResponseBody;)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/Response$Builder;->build()Lcom/leidong/open/http/okhttp3/Response;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public intercept(Lcom/leidong/open/http/okhttp3/Interceptor$Chain;)Lcom/leidong/open/http/okhttp3/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;

    .line 55
    invoke-interface {p1}, Lcom/leidong/open/http/okhttp3/Interceptor$Chain;->request()Lcom/leidong/open/http/okhttp3/Request;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;->get(Lcom/leidong/open/http/okhttp3/Request;)Lcom/leidong/open/http/okhttp3/Response;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 60
    new-instance v3, Lcom/leidong/open/http/okhttp3/internal/cache/CacheStrategy$Factory;

    invoke-interface {p1}, Lcom/leidong/open/http/okhttp3/Interceptor$Chain;->request()Lcom/leidong/open/http/okhttp3/Request;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, v0}, Lcom/leidong/open/http/okhttp3/internal/cache/CacheStrategy$Factory;-><init>(JLcom/leidong/open/http/okhttp3/Request;Lcom/leidong/open/http/okhttp3/Response;)V

    invoke-virtual {v3}, Lcom/leidong/open/http/okhttp3/internal/cache/CacheStrategy$Factory;->get()Lcom/leidong/open/http/okhttp3/internal/cache/CacheStrategy;

    move-result-object v1

    .line 61
    iget-object v2, v1, Lcom/leidong/open/http/okhttp3/internal/cache/CacheStrategy;->networkRequest:Lcom/leidong/open/http/okhttp3/Request;

    .line 62
    iget-object v3, v1, Lcom/leidong/open/http/okhttp3/internal/cache/CacheStrategy;->cacheResponse:Lcom/leidong/open/http/okhttp3/Response;

    .line 64
    iget-object v4, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;

    if-eqz v4, :cond_1

    .line 65
    iget-object v4, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;

    invoke-interface {v4, v1}, Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;->trackResponse(Lcom/leidong/open/http/okhttp3/internal/cache/CacheStrategy;)V

    :cond_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    .line 69
    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/Response;->body()Lcom/leidong/open/http/okhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lcom/leidong/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    .line 74
    new-instance v0, Lcom/leidong/open/http/okhttp3/Response$Builder;

    invoke-direct {v0}, Lcom/leidong/open/http/okhttp3/Response$Builder;-><init>()V

    .line 75
    invoke-interface {p1}, Lcom/leidong/open/http/okhttp3/Interceptor$Chain;->request()Lcom/leidong/open/http/okhttp3/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okhttp3/Response$Builder;->request(Lcom/leidong/open/http/okhttp3/Request;)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object p1

    sget-object v0, Lcom/leidong/open/http/okhttp3/Protocol;->HTTP_1_1:Lcom/leidong/open/http/okhttp3/Protocol;

    .line 76
    invoke-virtual {p1, v0}, Lcom/leidong/open/http/okhttp3/Response$Builder;->protocol(Lcom/leidong/open/http/okhttp3/Protocol;)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object p1

    const/16 v0, 0x1f8

    .line 77
    invoke-virtual {p1, v0}, Lcom/leidong/open/http/okhttp3/Response$Builder;->code(I)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object p1

    const-string v0, "Unsatisfiable Request (only-if-cached)"

    .line 78
    invoke-virtual {p1, v0}, Lcom/leidong/open/http/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object p1

    sget-object v0, Lcom/leidong/open/http/okhttp3/internal/Util;->EMPTY_RESPONSE:Lcom/leidong/open/http/okhttp3/ResponseBody;

    .line 79
    invoke-virtual {p1, v0}, Lcom/leidong/open/http/okhttp3/Response$Builder;->body(Lcom/leidong/open/http/okhttp3/ResponseBody;)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object p1

    const-wide/16 v0, -0x1

    .line 80
    invoke-virtual {p1, v0, v1}, Lcom/leidong/open/http/okhttp3/Response$Builder;->sentRequestAtMillis(J)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object p1

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/leidong/open/http/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response$Builder;->build()Lcom/leidong/open/http/okhttp3/Response;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez v2, :cond_4

    .line 87
    invoke-virtual {v3}, Lcom/leidong/open/http/okhttp3/Response;->newBuilder()Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object p1

    .line 88
    invoke-static {v3}, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/Response;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leidong/open/http/okhttp3/Response$Builder;->cacheResponse(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response$Builder;->build()Lcom/leidong/open/http/okhttp3/Response;

    move-result-object p1

    return-object p1

    .line 94
    :cond_4
    :try_start_0
    invoke-interface {p1, v2}, Lcom/leidong/open/http/okhttp3/Interceptor$Chain;->proceed(Lcom/leidong/open/http/okhttp3/Request;)Lcom/leidong/open/http/okhttp3/Response;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    .line 98
    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/Response;->body()Lcom/leidong/open/http/okhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_5
    if-eqz v3, :cond_7

    .line 104
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_6

    .line 105
    invoke-virtual {v3}, Lcom/leidong/open/http/okhttp3/Response;->newBuilder()Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v3}, Lcom/leidong/open/http/okhttp3/Response;->headers()Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object v1

    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response;->headers()Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;->combine(Lcom/leidong/open/http/okhttp3/Headers;Lcom/leidong/open/http/okhttp3/Headers;)Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leidong/open/http/okhttp3/Response$Builder;->headers(Lcom/leidong/open/http/okhttp3/Headers;)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/leidong/open/http/okhttp3/Response$Builder;->sentRequestAtMillis(J)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/leidong/open/http/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object v0

    .line 109
    invoke-static {v3}, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leidong/open/http/okhttp3/Response$Builder;->cacheResponse(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object v0

    .line 110
    invoke-static {p1}, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leidong/open/http/okhttp3/Response$Builder;->networkResponse(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/Response$Builder;->build()Lcom/leidong/open/http/okhttp3/Response;

    move-result-object v0

    .line 112
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response;->body()Lcom/leidong/open/http/okhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/ResponseBody;->close()V

    .line 116
    iget-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;

    invoke-interface {p1}, Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;->trackConditionalCacheHit()V

    .line 117
    iget-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;

    invoke-interface {p1, v3, v0}, Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;->update(Lcom/leidong/open/http/okhttp3/Response;Lcom/leidong/open/http/okhttp3/Response;)V

    return-object v0

    .line 120
    :cond_6
    invoke-virtual {v3}, Lcom/leidong/open/http/okhttp3/Response;->body()Lcom/leidong/open/http/okhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 124
    :cond_7
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response;->newBuilder()Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object v0

    .line 125
    invoke-static {v3}, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leidong/open/http/okhttp3/Response$Builder;->cacheResponse(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object v0

    .line 126
    invoke-static {p1}, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leidong/open/http/okhttp3/Response$Builder;->networkResponse(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/Response$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/Response$Builder;->build()Lcom/leidong/open/http/okhttp3/Response;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/leidong/open/http/okhttp3/internal/http/HttpHeaders;->hasBody(Lcom/leidong/open/http/okhttp3/Response;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 130
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response;->request()Lcom/leidong/open/http/okhttp3/Request;

    move-result-object p1

    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;

    invoke-direct {p0, v0, p1, v1}, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;->maybeCache(Lcom/leidong/open/http/okhttp3/Response;Lcom/leidong/open/http/okhttp3/Request;Lcom/leidong/open/http/okhttp3/internal/cache/InternalCache;)Lcom/leidong/open/http/okhttp3/internal/cache/CacheRequest;

    move-result-object p1

    .line 131
    invoke-direct {p0, p1, v0}, Lcom/leidong/open/http/okhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lcom/leidong/open/http/okhttp3/internal/cache/CacheRequest;Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/Response;

    move-result-object v0

    :cond_8
    return-object v0

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_9

    .line 98
    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/Response;->body()Lcom/leidong/open/http/okhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_9
    throw p1
.end method
