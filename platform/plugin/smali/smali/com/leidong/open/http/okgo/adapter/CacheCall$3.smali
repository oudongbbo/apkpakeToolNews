.class Lcom/leidong/open/http/okgo/adapter/CacheCall$3;
.super Ljava/lang/Object;
.source "CacheCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/open/http/okgo/adapter/CacheCall;->sendSuccessResultCallback(ZLjava/lang/Object;Lcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

.field final synthetic val$cacheMode:Lcom/leidong/open/http/okgo/cache/CacheMode;

.field final synthetic val$call:Lcom/leidong/open/http/okhttp3/Call;

.field final synthetic val$isFromCache:Z

.field final synthetic val$response:Lcom/leidong/open/http/okhttp3/Response;

.field final synthetic val$t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okgo/adapter/CacheCall;ZLjava/lang/Object;Lcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okgo/cache/CacheMode;Lcom/leidong/open/http/okhttp3/Response;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    iput-boolean p2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;->val$isFromCache:Z

    iput-object p3, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;->val$t:Ljava/lang/Object;

    iput-object p4, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;->val$call:Lcom/leidong/open/http/okhttp3/Call;

    iput-object p5, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;->val$cacheMode:Lcom/leidong/open/http/okgo/cache/CacheMode;

    iput-object p6, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;->val$response:Lcom/leidong/open/http/okhttp3/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 243
    iget-boolean v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;->val$isFromCache:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    invoke-static {v0}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$200(Lcom/leidong/open/http/okgo/adapter/CacheCall;)Lcom/leidong/open/http/okgo/callback/AbsCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;->val$t:Ljava/lang/Object;

    iget-object v3, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;->val$call:Lcom/leidong/open/http/okhttp3/Call;

    invoke-virtual {v0, v2, v3}, Lcom/leidong/open/http/okgo/callback/AbsCallback;->onCacheSuccess(Ljava/lang/Object;Lcom/leidong/open/http/okhttp3/Call;)V

    .line 245
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;->val$cacheMode:Lcom/leidong/open/http/okgo/cache/CacheMode;

    sget-object v2, Lcom/leidong/open/http/okgo/cache/CacheMode;->DEFAULT:Lcom/leidong/open/http/okgo/cache/CacheMode;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;->val$cacheMode:Lcom/leidong/open/http/okgo/cache/CacheMode;

    sget-object v2, Lcom/leidong/open/http/okgo/cache/CacheMode;->REQUEST_FAILED_READ_CACHE:Lcom/leidong/open/http/okgo/cache/CacheMode;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;->val$cacheMode:Lcom/leidong/open/http/okgo/cache/CacheMode;

    sget-object v2, Lcom/leidong/open/http/okgo/cache/CacheMode;->IF_NONE_CACHE_REQUEST:Lcom/leidong/open/http/okgo/cache/CacheMode;

    if-ne v0, v2, :cond_2

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    invoke-static {v0}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$200(Lcom/leidong/open/http/okgo/adapter/CacheCall;)Lcom/leidong/open/http/okgo/callback/AbsCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;->val$t:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/leidong/open/http/okgo/callback/AbsCallback;->onAfter(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    invoke-static {v0}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$200(Lcom/leidong/open/http/okgo/adapter/CacheCall;)Lcom/leidong/open/http/okgo/callback/AbsCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;->val$t:Ljava/lang/Object;

    iget-object v3, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;->val$call:Lcom/leidong/open/http/okhttp3/Call;

    iget-object v4, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;->val$response:Lcom/leidong/open/http/okhttp3/Response;

    invoke-virtual {v0, v2, v3, v4}, Lcom/leidong/open/http/okgo/callback/AbsCallback;->onSuccess(Ljava/lang/Object;Lcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;)V

    .line 250
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    invoke-static {v0}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$200(Lcom/leidong/open/http/okgo/adapter/CacheCall;)Lcom/leidong/open/http/okgo/callback/AbsCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$3;->val$t:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/leidong/open/http/okgo/callback/AbsCallback;->onAfter(Ljava/lang/Object;Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-void
.end method
