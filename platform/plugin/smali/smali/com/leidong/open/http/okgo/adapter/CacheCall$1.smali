.class Lcom/leidong/open/http/okgo/adapter/CacheCall$1;
.super Ljava/lang/Object;
.source "CacheCall.java"

# interfaces
.implements Lcom/leidong/open/http/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/open/http/okgo/adapter/CacheCall;->execute(Lcom/leidong/open/http/okgo/callback/AbsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

.field final synthetic val$cacheMode:Lcom/leidong/open/http/okgo/cache/CacheMode;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okgo/adapter/CacheCall;Lcom/leidong/open/http/okgo/cache/CacheMode;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    iput-object p2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$1;->val$cacheMode:Lcom/leidong/open/http/okgo/cache/CacheMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/leidong/open/http/okhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    .line 122
    instance-of v0, p2, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    invoke-static {v0}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$000(Lcom/leidong/open/http/okgo/adapter/CacheCall;)I

    move-result v0

    iget-object v1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    invoke-static {v1}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$100(Lcom/leidong/open/http/okgo/adapter/CacheCall;)Lcom/leidong/open/http/okgo/request/BaseRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/open/http/okgo/request/BaseRequest;->getRetryCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 124
    iget-object p2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    invoke-static {p2}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$008(Lcom/leidong/open/http/okgo/adapter/CacheCall;)I

    .line 125
    iget-object p2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    invoke-static {p2}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$100(Lcom/leidong/open/http/okgo/adapter/CacheCall;)Lcom/leidong/open/http/okgo/request/BaseRequest;

    move-result-object p2

    invoke-interface {p1}, Lcom/leidong/open/http/okhttp3/Call;->request()Lcom/leidong/open/http/okhttp3/Request;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/leidong/open/http/okgo/request/BaseRequest;->generateCall(Lcom/leidong/open/http/okhttp3/Request;)Lcom/leidong/open/http/okhttp3/Call;

    move-result-object p1

    .line 126
    invoke-interface {p1, p0}, Lcom/leidong/open/http/okhttp3/Call;->enqueue(Lcom/leidong/open/http/okhttp3/Callback;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    invoke-static {v0}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$200(Lcom/leidong/open/http/okgo/adapter/CacheCall;)Lcom/leidong/open/http/okgo/callback/AbsCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/leidong/open/http/okgo/callback/AbsCallback;->parseError(Lcom/leidong/open/http/okhttp3/Call;Ljava/lang/Exception;)V

    .line 130
    invoke-interface {p1}, Lcom/leidong/open/http/okhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$300(Lcom/leidong/open/http/okgo/adapter/CacheCall;ZLcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResponse(Lcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-virtual {p2}, Lcom/leidong/open/http/okhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_3

    .line 140
    iget-object v1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$1;->val$cacheMode:Lcom/leidong/open/http/okgo/cache/CacheMode;

    sget-object v2, Lcom/leidong/open/http/okgo/cache/CacheMode;->DEFAULT:Lcom/leidong/open/http/okgo/cache/CacheMode;

    if-ne v1, v2, :cond_3

    .line 141
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    invoke-static {v0}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$400(Lcom/leidong/open/http/okgo/adapter/CacheCall;)Lcom/leidong/open/http/okgo/cache/CacheEntity;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    const-string v2, "\u670d\u52a1\u5668\u54cd\u5e94\u7801304\uff0c\u4f46\u662f\u5ba2\u6237\u7aef\u6ca1\u6709\u7f13\u5b58\uff01"

    invoke-static {v2}, Lcom/leidong/open/http/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/leidong/open/http/okgo/exception/OkGoException;

    move-result-object v2

    invoke-static {v0, v1, p1, p2, v2}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$300(Lcom/leidong/open/http/okgo/adapter/CacheCall;ZLcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    goto :goto_1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    invoke-static {v0}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$400(Lcom/leidong/open/http/okgo/adapter/CacheCall;)Lcom/leidong/open/http/okgo/cache/CacheEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/open/http/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 145
    iget-object v2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    invoke-static {v2}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$400(Lcom/leidong/open/http/okgo/adapter/CacheCall;)Lcom/leidong/open/http/okgo/cache/CacheEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/leidong/open/http/okgo/cache/CacheEntity;->getResponseHeaders()Lcom/leidong/open/http/okgo/model/HttpHeaders;

    move-result-object v2

    if-eqz v0, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    .line 150
    :cond_1
    iget-object v2, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    invoke-static {v2, v1, v0, p1, p2}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$500(Lcom/leidong/open/http/okgo/adapter/CacheCall;ZLjava/lang/Object;Lcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;)V

    goto :goto_1

    .line 148
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    const-string v2, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v2}, Lcom/leidong/open/http/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/leidong/open/http/okgo/exception/OkGoException;

    move-result-object v2

    invoke-static {v0, v1, p1, p2, v2}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$300(Lcom/leidong/open/http/okgo/adapter/CacheCall;ZLcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    :goto_1
    return-void

    :cond_3
    const/16 v1, 0x194

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_4

    goto :goto_3

    .line 162
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    invoke-static {v0, p2}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$600(Lcom/leidong/open/http/okgo/adapter/CacheCall;Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okgo/model/Response;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/leidong/open/http/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    invoke-virtual {p2}, Lcom/leidong/open/http/okhttp3/Response;->headers()Lcom/leidong/open/http/okhttp3/Headers;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$700(Lcom/leidong/open/http/okgo/adapter/CacheCall;Lcom/leidong/open/http/okhttp3/Headers;Ljava/lang/Object;)V

    .line 167
    iget-object v1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    invoke-static {v1, v2, v0, p1, p2}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$500(Lcom/leidong/open/http/okgo/adapter/CacheCall;ZLjava/lang/Object;Lcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 170
    iget-object v1, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    invoke-static {v1, v2, p1, p2, v0}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$300(Lcom/leidong/open/http/okgo/adapter/CacheCall;ZLcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    :goto_2
    return-void

    .line 157
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/leidong/open/http/okgo/adapter/CacheCall$1;->this$0:Lcom/leidong/open/http/okgo/adapter/CacheCall;

    const-string v1, "\u670d\u52a1\u5668\u6570\u636e\u5f02\u5e38!"

    invoke-static {v1}, Lcom/leidong/open/http/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/leidong/open/http/okgo/exception/OkGoException;

    move-result-object v1

    invoke-static {v0, v2, p1, p2, v1}, Lcom/leidong/open/http/okgo/adapter/CacheCall;->access$300(Lcom/leidong/open/http/okgo/adapter/CacheCall;ZLcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    return-void
.end method
