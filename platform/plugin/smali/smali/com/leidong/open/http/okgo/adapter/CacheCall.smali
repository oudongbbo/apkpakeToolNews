.class public Lcom/leidong/open/http/okgo/adapter/CacheCall;
.super Ljava/lang/Object;
.source "CacheCall.java"

# interfaces
.implements Lcom/leidong/open/http/okgo/adapter/Call;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/leidong/open/http/okgo/adapter/Call<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

.field private cacheEntity:Lcom/leidong/open/http/okgo/cache/CacheEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/leidong/open/http/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile canceled:Z

.field private currentRetryCount:I

.field private executed:Z

.field private mCallback:Lcom/leidong/open/http/okgo/callback/AbsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/leidong/open/http/okgo/callback/AbsCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private rawCall:Lcom/leidong/open/http/okhttp3/Call;


# direct methods
.method public constructor <init>(Lcom/leidong/open/http/okgo/request/BaseRequest;)V
    .locals 0
    .param p1, "baseRequest"    # Lcom/leidong/open/http/okgo/request/BaseRequest;

    .line 47
    .local p0, "this":Lcom/leidong/open/http/okgo/adapter/CacheCall;, "Lcom/leidong/open/http/okgo/adapter/CacheCall<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/leidong/open/http/okgo/adapter/CacheCall;)I
    .locals 1
    .param p0, "x0"    # Lcom/leidong/open/http/okgo/adapter/CacheCall;

    .line 36
    iget v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->currentRetryCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/leidong/open/http/okgo/adapter/CacheCall;)I
    .locals 2
    .param p0, "x0"    # Lcom/leidong/open/http/okgo/adapter/CacheCall;

    .line 36
    iget v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->currentRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->currentRetryCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/leidong/open/http/okgo/adapter/CacheCall;)Lcom/leidong/open/http/okgo/request/BaseRequest;
    .locals 1
    .param p0, "x0"    # Lcom/leidong/open/http/okgo/adapter/CacheCall;

    .line 36
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    return-object v0
.end method

.method static synthetic access$200(Lcom/leidong/open/http/okgo/adapter/CacheCall;)Lcom/leidong/open/http/okgo/callback/AbsCallback;
    .locals 1
    .param p0, "x0"    # Lcom/leidong/open/http/okgo/adapter/CacheCall;

    .line 36
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->mCallback:Lcom/leidong/open/http/okgo/callback/AbsCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/leidong/open/http/okgo/adapter/CacheCall;ZLcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/leidong/open/http/okgo/adapter/CacheCall;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/leidong/open/http/okhttp3/Call;
    .param p3, "x3"    # Lcom/leidong/open/http/okhttp3/Response;
    .param p4, "x4"    # Ljava/lang/Exception;

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->sendFailResultCallback(ZLcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$400(Lcom/leidong/open/http/okgo/adapter/CacheCall;)Lcom/leidong/open/http/okgo/cache/CacheEntity;
    .locals 1
    .param p0, "x0"    # Lcom/leidong/open/http/okgo/adapter/CacheCall;

    .line 36
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/leidong/open/http/okgo/cache/CacheEntity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/leidong/open/http/okgo/adapter/CacheCall;ZLjava/lang/Object;Lcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;)V
    .locals 0
    .param p0, "x0"    # Lcom/leidong/open/http/okgo/adapter/CacheCall;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Lcom/leidong/open/http/okhttp3/Call;
    .param p4, "x4"    # Lcom/leidong/open/http/okhttp3/Response;

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->sendSuccessResultCallback(ZLjava/lang/Object;Lcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;)V

    return-void
.end method

.method static synthetic access$600(Lcom/leidong/open/http/okgo/adapter/CacheCall;Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okgo/model/Response;
    .locals 1
    .param p0, "x0"    # Lcom/leidong/open/http/okgo/adapter/CacheCall;
    .param p1, "x1"    # Lcom/leidong/open/http/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->parseResponse(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okgo/model/Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/leidong/open/http/okgo/adapter/CacheCall;Lcom/leidong/open/http/okhttp3/Headers;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/leidong/open/http/okgo/adapter/CacheCall;
    .param p1, "x1"    # Lcom/leidong/open/http/okhttp3/Headers;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->handleCache(Lcom/leidong/open/http/okhttp3/Headers;Ljava/lang/Object;)V

    return-void
.end method

.method private handleCache(Lcom/leidong/open/http/okhttp3/Headers;Ljava/lang/Object;)V
    .locals 3
    .param p1, "headers"    # Lcom/leidong/open/http/okhttp3/Headers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/leidong/open/http/okhttp3/Headers;",
            "TT;)V"
        }
    .end annotation

    .line 184
    .local p0, "this":Lcom/leidong/open/http/okgo/adapter/CacheCall;, "Lcom/leidong/open/http/okgo/adapter/CacheCall<TT;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    invoke-virtual {v0}, Lcom/leidong/open/http/okgo/request/BaseRequest;->getCacheMode()Lcom/leidong/open/http/okgo/cache/CacheMode;

    move-result-object v0

    sget-object v1, Lcom/leidong/open/http/okgo/cache/CacheMode;->NO_CACHE:Lcom/leidong/open/http/okgo/cache/CacheMode;

    if-ne v0, v1, :cond_0

    return-void

    .line 185
    :cond_0
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    invoke-virtual {v0}, Lcom/leidong/open/http/okgo/request/BaseRequest;->getCacheMode()Lcom/leidong/open/http/okgo/cache/CacheMode;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    invoke-virtual {v1}, Lcom/leidong/open/http/okgo/request/BaseRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/leidong/open/http/okgo/utils/HeaderParser;->createCacheEntity(Lcom/leidong/open/http/okhttp3/Headers;Ljava/lang/Object;Lcom/leidong/open/http/okgo/cache/CacheMode;Ljava/lang/String;)Lcom/leidong/open/http/okgo/cache/CacheEntity;

    move-result-object v0

    .line 188
    .local v0, "cache":Lcom/leidong/open/http/okgo/cache/CacheEntity;, "Lcom/leidong/open/http/okgo/cache/CacheEntity<TT;>;"
    if-nez v0, :cond_2

    .line 190
    sget-object v1, Lcom/leidong/open/http/okgo/cache/CacheManager;->INSTANCE:Lcom/leidong/open/http/okgo/cache/CacheManager;

    iget-object v2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    invoke-virtual {v2}, Lcom/leidong/open/http/okgo/request/BaseRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leidong/open/http/okgo/cache/CacheManager;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 193
    :cond_2
    sget-object v1, Lcom/leidong/open/http/okgo/cache/CacheManager;->INSTANCE:Lcom/leidong/open/http/okgo/cache/CacheManager;

    iget-object v2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    invoke-virtual {v2}, Lcom/leidong/open/http/okgo/request/BaseRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/leidong/open/http/okgo/cache/CacheManager;->replace(Ljava/lang/String;Lcom/leidong/open/http/okgo/cache/CacheEntity;)Lcom/leidong/open/http/okgo/cache/CacheEntity;

    .line 195
    :goto_0
    return-void
.end method

.method private parseResponse(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okgo/model/Response;
    .locals 2
    .param p1, "rawResponse"    # Lcom/leidong/open/http/okhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/leidong/open/http/okhttp3/Response;",
            ")",
            "Lcom/leidong/open/http/okgo/model/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 271
    .local p0, "this":Lcom/leidong/open/http/okgo/adapter/CacheCall;, "Lcom/leidong/open/http/okgo/adapter/CacheCall<TT;>;"
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    invoke-virtual {v0}, Lcom/leidong/open/http/okgo/request/BaseRequest;->getConverter()Lcom/leidong/open/http/okgo/convert/Converter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/leidong/open/http/okgo/convert/Converter;->convertSuccess(Lcom/leidong/open/http/okhttp3/Response;)Ljava/lang/Object;

    move-result-object v0

    .line 272
    .local v0, "body":Ljava/lang/Object;, "TT;"
    invoke-static {v0, p1}, Lcom/leidong/open/http/okgo/model/Response;->success(Ljava/lang/Object;Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okgo/model/Response;

    move-result-object v1

    return-object v1
.end method

.method private sendFailResultCallback(ZLcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;Ljava/lang/Exception;)V
    .locals 10
    .param p1, "isFromCache"    # Z
    .param p2, "call"    # Lcom/leidong/open/http/okhttp3/Call;
    .param p3, "response"    # Lcom/leidong/open/http/okhttp3/Response;
    .param p4, "e"    # Ljava/lang/Exception;

    .line 200
    .local p0, "this":Lcom/leidong/open/http/okgo/adapter/CacheCall;, "Lcom/leidong/open/http/okgo/adapter/CacheCall<TT;>;"
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    invoke-virtual {v0}, Lcom/leidong/open/http/okgo/request/BaseRequest;->getCacheMode()Lcom/leidong/open/http/okgo/cache/CacheMode;

    move-result-object v0

    .line 202
    .local v0, "cacheMode":Lcom/leidong/open/http/okgo/cache/CacheMode;
    invoke-static {}, Lcom/leidong/open/http/okgo/OkGo;->getInstance()Lcom/leidong/open/http/okgo/OkGo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/open/http/okgo/OkGo;->getDelivery()Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, v0

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;-><init>(Lcom/leidong/open/http/okgo/adapter/CacheCall;ZLcom/leidong/open/http/okhttp3/Call;Ljava/lang/Exception;Lcom/leidong/open/http/okgo/cache/CacheMode;Lcom/leidong/open/http/okhttp3/Response;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    if-nez p1, :cond_3

    sget-object v1, Lcom/leidong/open/http/okgo/cache/CacheMode;->REQUEST_FAILED_READ_CACHE:Lcom/leidong/open/http/okgo/cache/CacheMode;

    if-ne v0, v1, :cond_3

    .line 221
    iget-object v1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/leidong/open/http/okgo/cache/CacheEntity;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/leidong/open/http/okgo/cache/CacheEntity;

    invoke-virtual {v1}, Lcom/leidong/open/http/okgo/cache/CacheEntity;->isExpire()Z

    move-result v1

    if-nez v1, :cond_2

    .line 222
    iget-object v1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/leidong/open/http/okgo/cache/CacheEntity;

    invoke-virtual {v1}, Lcom/leidong/open/http/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 223
    .local v1, "data":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/leidong/open/http/okgo/cache/CacheEntity;

    invoke-virtual {v3}, Lcom/leidong/open/http/okgo/cache/CacheEntity;->getResponseHeaders()Lcom/leidong/open/http/okgo/model/HttpHeaders;

    move-result-object v3

    .line 224
    .local v3, "headers":Lcom/leidong/open/http/okgo/model/HttpHeaders;
    if-eqz v1, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    invoke-direct {p0, v2, v1, p2, p3}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->sendSuccessResultCallback(ZLjava/lang/Object;Lcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;)V

    .line 228
    .end local v1    # "data":Ljava/lang/Object;, "TT;"
    .end local v3    # "headers":Lcom/leidong/open/http/okgo/model/HttpHeaders;
    goto :goto_1

    .line 226
    .restart local v1    # "data":Ljava/lang/Object;, "TT;"
    .restart local v3    # "headers":Lcom/leidong/open/http/okgo/model/HttpHeaders;
    :cond_1
    :goto_0
    const-string v4, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v4}, Lcom/leidong/open/http/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/leidong/open/http/okgo/exception/OkGoException;

    move-result-object v4

    invoke-direct {p0, v2, p2, p3, v4}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->sendFailResultCallback(ZLcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    .line 230
    .end local v1    # "data":Ljava/lang/Object;, "TT;"
    .end local v3    # "headers":Lcom/leidong/open/http/okgo/model/HttpHeaders;
    :goto_1
    goto :goto_2

    .line 231
    :cond_2
    const-string v1, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v1}, Lcom/leidong/open/http/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/leidong/open/http/okgo/exception/OkGoException;

    move-result-object v1

    invoke-direct {p0, v2, p2, p3, v1}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->sendFailResultCallback(ZLcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    .line 234
    :cond_3
    :goto_2
    return-void
.end method

.method private sendSuccessResultCallback(ZLjava/lang/Object;Lcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;)V
    .locals 10
    .param p1, "isFromCache"    # Z
    .param p3, "call"    # Lcom/leidong/open/http/okhttp3/Call;
    .param p4, "response"    # Lcom/leidong/open/http/okhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;",
            "Lcom/leidong/open/http/okhttp3/Call;",
            "Lcom/leidong/open/http/okhttp3/Response;",
            ")V"
        }
    .end annotation

    .line 238
    .local p0, "this":Lcom/leidong/open/http/okgo/adapter/CacheCall;, "Lcom/leidong/open/http/okgo/adapter/CacheCall<TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    invoke-virtual {v0}, Lcom/leidong/open/http/okgo/request/BaseRequest;->getCacheMode()Lcom/leidong/open/http/okgo/cache/CacheMode;

    move-result-object v0

    .line 240
    .local v0, "cacheMode":Lcom/leidong/open/http/okgo/cache/CacheMode;
    invoke-static {}, Lcom/leidong/open/http/okgo/OkGo;->getInstance()Lcom/leidong/open/http/okgo/OkGo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/open/http/okgo/OkGo;->getDelivery()Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;-><init>(Lcom/leidong/open/http/okgo/adapter/CacheCall;ZLjava/lang/Object;Lcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okgo/cache/CacheMode;Lcom/leidong/open/http/okhttp3/Response;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 282
    .local p0, "this":Lcom/leidong/open/http/okgo/adapter/CacheCall;, "Lcom/leidong/open/http/okgo/adapter/CacheCall<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->canceled:Z

    .line 283
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->rawCall:Lcom/leidong/open/http/okhttp3/Call;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->rawCall:Lcom/leidong/open/http/okhttp3/Call;

    invoke-interface {v0}, Lcom/leidong/open/http/okhttp3/Call;->cancel()V

    .line 286
    :cond_0
    return-void
.end method

.method public clone()Lcom/leidong/open/http/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/leidong/open/http/okgo/adapter/Call<",
            "TT;>;"
        }
    .end annotation

    .line 295
    .local p0, "this":Lcom/leidong/open/http/okgo/adapter/CacheCall;, "Lcom/leidong/open/http/okgo/adapter/CacheCall<TT;>;"
    new-instance v0, Lcom/leidong/open/http/okgo/adapter/CacheCall;

    iget-object v1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    invoke-direct {v0, v1}, Lcom/leidong/open/http/okgo/adapter/CacheCall;-><init>(Lcom/leidong/open/http/okgo/request/BaseRequest;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/leidong/open/http/okgo/adapter/CacheCall;, "Lcom/leidong/open/http/okgo/adapter/CacheCall<TT;>;"
    invoke-virtual {p0}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->clone()Lcom/leidong/open/http/okgo/adapter/Call;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lcom/leidong/open/http/okgo/model/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/leidong/open/http/okgo/model/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 258
    .local p0, "this":Lcom/leidong/open/http/okgo/adapter/CacheCall;, "Lcom/leidong/open/http/okgo/adapter/CacheCall<TT;>;"
    monitor-enter p0

    .line 259
    :try_start_0
    iget-boolean v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->executed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->executed:Z

    .line 261
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    invoke-virtual {v0}, Lcom/leidong/open/http/okgo/request/BaseRequest;->getCall()Lcom/leidong/open/http/okhttp3/Call;

    move-result-object v0

    .line 263
    .local v0, "call":Lcom/leidong/open/http/okhttp3/Call;
    iget-boolean v1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->canceled:Z

    if-eqz v1, :cond_1

    .line 264
    invoke-interface {v0}, Lcom/leidong/open/http/okhttp3/Call;->cancel()V

    .line 266
    :cond_1
    invoke-interface {v0}, Lcom/leidong/open/http/okhttp3/Call;->execute()Lcom/leidong/open/http/okhttp3/Response;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->parseResponse(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okgo/model/Response;

    move-result-object v1

    return-object v1

    .line 261
    .end local v0    # "call":Lcom/leidong/open/http/okhttp3/Call;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public execute(Lcom/leidong/open/http/okgo/callback/AbsCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/leidong/open/http/okgo/callback/AbsCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/leidong/open/http/okgo/adapter/CacheCall;, "Lcom/leidong/open/http/okgo/adapter/CacheCall<TT;>;"
    .local p1, "callback":Lcom/leidong/open/http/okgo/callback/AbsCallback;, "Lcom/leidong/open/http/okgo/callback/AbsCallback<TT;>;"
    monitor-enter p0

    .line 55
    :try_start_0
    iget-boolean v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->executed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->executed:Z

    .line 57
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iput-object p1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->mCallback:Lcom/leidong/open/http/okgo/callback/AbsCallback;

    .line 59
    iget-object v1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->mCallback:Lcom/leidong/open/http/okgo/callback/AbsCallback;

    if-nez v1, :cond_1

    new-instance v1, Lcom/leidong/open/http/okgo/callback/AbsCallbackWrapper;

    invoke-direct {v1}, Lcom/leidong/open/http/okgo/callback/AbsCallbackWrapper;-><init>()V

    iput-object v1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->mCallback:Lcom/leidong/open/http/okgo/callback/AbsCallback;

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->mCallback:Lcom/leidong/open/http/okgo/callback/AbsCallback;

    iget-object v2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    invoke-virtual {v1, v2}, Lcom/leidong/open/http/okgo/callback/AbsCallback;->onBefore(Lcom/leidong/open/http/okgo/request/BaseRequest;)V

    .line 64
    iget-object v1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    invoke-virtual {v1}, Lcom/leidong/open/http/okgo/request/BaseRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 65
    iget-object v1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    iget-object v2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    invoke-virtual {v2}, Lcom/leidong/open/http/okgo/request/BaseRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    invoke-virtual {v3}, Lcom/leidong/open/http/okgo/request/BaseRequest;->getParams()Lcom/leidong/open/http/okgo/model/HttpParams;

    move-result-object v3

    iget-object v3, v3, Lcom/leidong/open/http/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-static {v2, v3}, Lcom/leidong/open/http/okgo/utils/HttpUtils;->createUrlFromParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leidong/open/http/okgo/request/BaseRequest;->setCacheKey(Ljava/lang/String;)V

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    invoke-virtual {v1}, Lcom/leidong/open/http/okgo/request/BaseRequest;->getCacheMode()Lcom/leidong/open/http/okgo/cache/CacheMode;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    sget-object v2, Lcom/leidong/open/http/okgo/cache/CacheMode;->NO_CACHE:Lcom/leidong/open/http/okgo/cache/CacheMode;

    invoke-virtual {v1, v2}, Lcom/leidong/open/http/okgo/request/BaseRequest;->setCacheMode(Lcom/leidong/open/http/okgo/cache/CacheMode;)V

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    invoke-virtual {v1}, Lcom/leidong/open/http/okgo/request/BaseRequest;->getCacheMode()Lcom/leidong/open/http/okgo/cache/CacheMode;

    move-result-object v1

    .line 70
    .local v1, "cacheMode":Lcom/leidong/open/http/okgo/cache/CacheMode;
    sget-object v2, Lcom/leidong/open/http/okgo/cache/CacheMode;->NO_CACHE:Lcom/leidong/open/http/okgo/cache/CacheMode;

    if-eq v1, v2, :cond_5

    .line 72
    sget-object v2, Lcom/leidong/open/http/okgo/cache/CacheManager;->INSTANCE:Lcom/leidong/open/http/okgo/cache/CacheManager;

    iget-object v3, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    invoke-virtual {v3}, Lcom/leidong/open/http/okgo/request/BaseRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/leidong/open/http/okgo/cache/CacheManager;->get(Ljava/lang/String;)Lcom/leidong/open/http/okgo/cache/CacheEntity;

    move-result-object v2

    iput-object v2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/leidong/open/http/okgo/cache/CacheEntity;

    .line 74
    iget-object v2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/leidong/open/http/okgo/cache/CacheEntity;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/leidong/open/http/okgo/cache/CacheEntity;

    iget-object v3, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    invoke-virtual {v3}, Lcom/leidong/open/http/okgo/request/BaseRequest;->getCacheTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/leidong/open/http/okgo/cache/CacheEntity;->checkExpire(Lcom/leidong/open/http/okgo/cache/CacheMode;JJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 75
    iget-object v2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/leidong/open/http/okgo/cache/CacheEntity;

    invoke-virtual {v2, v0}, Lcom/leidong/open/http/okgo/cache/CacheEntity;->setExpire(Z)V

    .line 77
    :cond_4
    iget-object v2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    iget-object v3, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/leidong/open/http/okgo/cache/CacheEntity;

    invoke-static {v2, v3, v1}, Lcom/leidong/open/http/okgo/utils/HeaderParser;->addCacheHeaders(Lcom/leidong/open/http/okgo/request/BaseRequest;Lcom/leidong/open/http/okgo/cache/CacheEntity;Lcom/leidong/open/http/okgo/cache/CacheMode;)V

    .line 80
    :cond_5
    iget-object v2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    invoke-virtual {v2}, Lcom/leidong/open/http/okgo/request/BaseRequest;->generateRequestBody()Lcom/leidong/open/http/okhttp3/RequestBody;

    move-result-object v2

    .line 81
    .local v2, "requestBody":Lcom/leidong/open/http/okhttp3/RequestBody;
    iget-object v3, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    iget-object v4, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    invoke-virtual {v4, v2}, Lcom/leidong/open/http/okgo/request/BaseRequest;->wrapRequestBody(Lcom/leidong/open/http/okhttp3/RequestBody;)Lcom/leidong/open/http/okhttp3/RequestBody;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/leidong/open/http/okgo/request/BaseRequest;->generateRequest(Lcom/leidong/open/http/okhttp3/RequestBody;)Lcom/leidong/open/http/okhttp3/Request;

    move-result-object v3

    .line 82
    .local v3, "request":Lcom/leidong/open/http/okhttp3/Request;
    iget-object v4, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    invoke-virtual {v4, v3}, Lcom/leidong/open/http/okgo/request/BaseRequest;->generateCall(Lcom/leidong/open/http/okhttp3/Request;)Lcom/leidong/open/http/okhttp3/Call;

    move-result-object v4

    iput-object v4, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->rawCall:Lcom/leidong/open/http/okhttp3/Call;

    .line 84
    sget-object v4, Lcom/leidong/open/http/okgo/cache/CacheMode;->IF_NONE_CACHE_REQUEST:Lcom/leidong/open/http/okgo/cache/CacheMode;

    const/4 v5, 0x0

    if-ne v1, v4, :cond_9

    .line 86
    iget-object v4, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/leidong/open/http/okgo/cache/CacheEntity;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/leidong/open/http/okgo/cache/CacheEntity;

    invoke-virtual {v4}, Lcom/leidong/open/http/okgo/cache/CacheEntity;->isExpire()Z

    move-result v4

    if-nez v4, :cond_8

    .line 87
    iget-object v4, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/leidong/open/http/okgo/cache/CacheEntity;

    invoke-virtual {v4}, Lcom/leidong/open/http/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v4

    .line 88
    .local v4, "data":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/leidong/open/http/okgo/cache/CacheEntity;

    invoke-virtual {v6}, Lcom/leidong/open/http/okgo/cache/CacheEntity;->getResponseHeaders()Lcom/leidong/open/http/okgo/model/HttpHeaders;

    move-result-object v6

    .line 89
    .local v6, "headers":Lcom/leidong/open/http/okgo/model/HttpHeaders;
    if-eqz v4, :cond_7

    if-nez v6, :cond_6

    goto :goto_0

    .line 93
    :cond_6
    iget-object v7, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->rawCall:Lcom/leidong/open/http/okhttp3/Call;

    invoke-direct {p0, v0, v4, v7, v5}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->sendSuccessResultCallback(ZLjava/lang/Object;Lcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;)V

    .line 94
    return-void

    .line 91
    :cond_7
    :goto_0
    iget-object v7, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->rawCall:Lcom/leidong/open/http/okhttp3/Call;

    const-string v8, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v8}, Lcom/leidong/open/http/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/leidong/open/http/okgo/exception/OkGoException;

    move-result-object v8

    invoke-direct {p0, v0, v7, v5, v8}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->sendFailResultCallback(ZLcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    .line 96
    .end local v4    # "data":Ljava/lang/Object;, "TT;"
    .end local v6    # "headers":Lcom/leidong/open/http/okgo/model/HttpHeaders;
    goto :goto_3

    .line 97
    :cond_8
    iget-object v4, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->rawCall:Lcom/leidong/open/http/okhttp3/Call;

    const-string v6, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v6}, Lcom/leidong/open/http/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/leidong/open/http/okgo/exception/OkGoException;

    move-result-object v6

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->sendFailResultCallback(ZLcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    goto :goto_3

    .line 99
    :cond_9
    sget-object v4, Lcom/leidong/open/http/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/leidong/open/http/okgo/cache/CacheMode;

    if-ne v1, v4, :cond_d

    .line 101
    iget-object v4, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/leidong/open/http/okgo/cache/CacheEntity;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/leidong/open/http/okgo/cache/CacheEntity;

    invoke-virtual {v4}, Lcom/leidong/open/http/okgo/cache/CacheEntity;->isExpire()Z

    move-result v4

    if-nez v4, :cond_c

    .line 102
    iget-object v4, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/leidong/open/http/okgo/cache/CacheEntity;

    invoke-virtual {v4}, Lcom/leidong/open/http/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v4

    .line 103
    .restart local v4    # "data":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/leidong/open/http/okgo/cache/CacheEntity;

    invoke-virtual {v6}, Lcom/leidong/open/http/okgo/cache/CacheEntity;->getResponseHeaders()Lcom/leidong/open/http/okgo/model/HttpHeaders;

    move-result-object v6

    .line 104
    .restart local v6    # "headers":Lcom/leidong/open/http/okgo/model/HttpHeaders;
    if-eqz v4, :cond_b

    if-nez v6, :cond_a

    goto :goto_1

    .line 108
    :cond_a
    iget-object v7, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->rawCall:Lcom/leidong/open/http/okhttp3/Call;

    invoke-direct {p0, v0, v4, v7, v5}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->sendSuccessResultCallback(ZLjava/lang/Object;Lcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;)V

    .line 108
    .end local v4    # "data":Ljava/lang/Object;, "TT;"
    .end local v6    # "headers":Lcom/leidong/open/http/okgo/model/HttpHeaders;
    goto :goto_2

    .line 106
    .restart local v4    # "data":Ljava/lang/Object;, "TT;"
    .restart local v6    # "headers":Lcom/leidong/open/http/okgo/model/HttpHeaders;
    :cond_b
    :goto_1
    iget-object v7, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->rawCall:Lcom/leidong/open/http/okhttp3/Call;

    const-string v8, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v8}, Lcom/leidong/open/http/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/leidong/open/http/okgo/exception/OkGoException;

    move-result-object v8

    invoke-direct {p0, v0, v7, v5, v8}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->sendFailResultCallback(ZLcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    .line 110
    .end local v4    # "data":Ljava/lang/Object;, "TT;"
    .end local v6    # "headers":Lcom/leidong/open/http/okgo/model/HttpHeaders;
    :goto_2
    goto :goto_3

    .line 111
    :cond_c
    iget-object v4, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->rawCall:Lcom/leidong/open/http/okhttp3/Call;

    const-string v6, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v6}, Lcom/leidong/open/http/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/leidong/open/http/okgo/exception/OkGoException;

    move-result-object v6

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->sendFailResultCallback(ZLcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    .line 115
    :cond_d
    :goto_3
    iget-boolean v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->canceled:Z

    if-eqz v0, :cond_e

    .line 116
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->rawCall:Lcom/leidong/open/http/okhttp3/Call;

    invoke-interface {v0}, Lcom/leidong/open/http/okhttp3/Call;->cancel()V

    .line 118
    :cond_e
    const/4 v0, 0x0

    iput v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->currentRetryCount:I

    .line 119
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->rawCall:Lcom/leidong/open/http/okhttp3/Call;

    new-instance v4, Lcom/leidong/open/http/okgo/adapter/CacheCall$1;

    invoke-direct {v4, p0, v1}, Lcom/leidong/open/http/okgo/adapter/CacheCall$1;-><init>(Lcom/leidong/open/http/okgo/adapter/CacheCall;Lcom/leidong/open/http/okgo/cache/CacheMode;)V

    invoke-interface {v0, v4}, Lcom/leidong/open/http/okhttp3/Call;->enqueue(Lcom/leidong/open/http/okhttp3/Callback;)V

    .line 174
    return-void

    .line 57
    .end local v1    # "cacheMode":Lcom/leidong/open/http/okgo/cache/CacheMode;
    .end local v2    # "requestBody":Lcom/leidong/open/http/okhttp3/RequestBody;
    .end local v3    # "request":Lcom/leidong/open/http/okhttp3/Request;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBaseRequest()Lcom/leidong/open/http/okgo/request/BaseRequest;
    .locals 1

    .line 300
    .local p0, "this":Lcom/leidong/open/http/okgo/adapter/CacheCall;, "Lcom/leidong/open/http/okgo/adapter/CacheCall<TT;>;"
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/leidong/open/http/okgo/request/BaseRequest;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 290
    .local p0, "this":Lcom/leidong/open/http/okgo/adapter/CacheCall;, "Lcom/leidong/open/http/okgo/adapter/CacheCall<TT;>;"
    iget-boolean v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->canceled:Z

    return v0
.end method

.method public isExecuted()Z
    .locals 1

    .line 277
    .local p0, "this":Lcom/leidong/open/http/okgo/adapter/CacheCall;, "Lcom/leidong/open/http/okgo/adapter/CacheCall<TT;>;"
    iget-boolean v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall;->executed:Z

    return v0
.end method
