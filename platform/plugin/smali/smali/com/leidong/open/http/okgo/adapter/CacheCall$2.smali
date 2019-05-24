.class Lcom/leidong/open/http/okgo/adapter/CacheCall$2;
.super Ljava/lang/Object;
.source "CacheCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/open/http/okgo/adapter/CacheCall;->sendFailResultCallback(ZLcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

.field final synthetic val$cacheMode:Lcom/leidong/open/http/okgo/cache/CacheMode;

.field final synthetic val$call:Lcom/leidong/open/http/okhttp3/Call;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$isFromCache:Z

.field final synthetic val$response:Lcom/leidong/open/http/okhttp3/Response;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okgo/adapter/CacheCall;ZLcom/leidong/open/http/okhttp3/Call;Ljava/lang/Exception;Lcom/leidong/open/http/okgo/cache/CacheMode;Lcom/leidong/open/http/okhttp3/Response;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    iput-boolean p2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;->val$isFromCache:Z

    iput-object p3, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;->val$call:Lcom/leidong/open/http/okhttp3/Call;

    iput-object p4, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;->val$e:Ljava/lang/Exception;

    iput-object p5, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;->val$cacheMode:Lcom/leidong/open/http/okgo/cache/CacheMode;

    iput-object p6, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;->val$response:Lcom/leidong/open/http/okhttp3/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 205
    iget-boolean v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;->val$isFromCache:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    invoke-static {v0}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$200(Lcom/leidong/open/http/okgo/adapter/CacheCall;)Lcom/leidong/open/http/okgo/callback/AbsCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;->val$call:Lcom/leidong/open/http/okhttp3/Call;

    iget-object v3, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v2, v3}, Lcom/leidong/open/http/okgo/callback/AbsCallback;->onCacheError(Lcom/leidong/open/http/okhttp3/Call;Ljava/lang/Exception;)V

    .line 207
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;->val$cacheMode:Lcom/leidong/open/http/okgo/cache/CacheMode;

    sget-object v2, Lcom/leidong/open/http/okgo/cache/CacheMode;->DEFAULT:Lcom/leidong/open/http/okgo/cache/CacheMode;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;->val$cacheMode:Lcom/leidong/open/http/okgo/cache/CacheMode;

    sget-object v2, Lcom/leidong/open/http/okgo/cache/CacheMode;->REQUEST_FAILED_READ_CACHE:Lcom/leidong/open/http/okgo/cache/CacheMode;

    if-ne v0, v2, :cond_2

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    invoke-static {v0}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$200(Lcom/leidong/open/http/okgo/adapter/CacheCall;)Lcom/leidong/open/http/okgo/callback/AbsCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/leidong/open/http/okgo/callback/AbsCallback;->onAfter(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    invoke-static {v0}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$200(Lcom/leidong/open/http/okgo/adapter/CacheCall;)Lcom/leidong/open/http/okgo/callback/AbsCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;->val$call:Lcom/leidong/open/http/okhttp3/Call;

    iget-object v3, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;->val$response:Lcom/leidong/open/http/okhttp3/Response;

    iget-object v4, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v2, v3, v4}, Lcom/leidong/open/http/okgo/callback/AbsCallback;->onError(Lcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    .line 212
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;->val$cacheMode:Lcom/leidong/open/http/okgo/cache/CacheMode;

    sget-object v2, Lcom/leidong/open/http/okgo/cache/CacheMode;->REQUEST_FAILED_READ_CACHE:Lcom/leidong/open/http/okgo/cache/CacheMode;

    if-eq v0, v2, :cond_2

    .line 213
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    invoke-static {v0}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$200(Lcom/leidong/open/http/okgo/adapter/CacheCall;)Lcom/leidong/open/http/okgo/callback/AbsCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/leidong/open/http/okgo/callback/AbsCallback;->onAfter(Ljava/lang/Object;Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-void
.end method
