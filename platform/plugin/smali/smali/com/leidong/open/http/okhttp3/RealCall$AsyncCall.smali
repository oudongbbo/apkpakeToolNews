.class final Lcom/leidong/open/http/okhttp3/RealCall$AsyncCall;
.super Lcom/leidong/open/http/okhttp3/internal/NamedRunnable;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okhttp3/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AsyncCall"
.end annotation


# instance fields
.field private final responseCallback:Lcom/leidong/open/http/okhttp3/Callback;

.field final synthetic this$0:Lcom/leidong/open/http/okhttp3/RealCall;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okhttp3/RealCall;Lcom/leidong/open/http/okhttp3/Callback;)V
    .locals 4
    .param p1, "this$0"    # Lcom/leidong/open/http/okhttp3/RealCall;
    .param p2, "responseCallback"    # Lcom/leidong/open/http/okhttp3/Callback;

    .line 110
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/RealCall$AsyncCall;->this$0:Lcom/leidong/open/http/okhttp3/RealCall;

    .line 111
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iput-object p2, p0, Lcom/leidong/open/http/okhttp3/RealCall$AsyncCall;->responseCallback:Lcom/leidong/open/http/okhttp3/Callback;

    .line 113
    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 6

    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, "signalledCallback":Z
    :try_start_0
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/RealCall$AsyncCall;->this$0:Lcom/leidong/open/http/okhttp3/RealCall;

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/RealCall;->getResponseWithInterceptorChain()Lcom/leidong/open/http/okhttp3/Response;

    move-result-object v1

    .line 131
    .local v1, "response":Lcom/leidong/open/http/okhttp3/Response;
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/RealCall$AsyncCall;->this$0:Lcom/leidong/open/http/okhttp3/RealCall;

    iget-object v2, v2, Lcom/leidong/open/http/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lcom/leidong/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v2}, Lcom/leidong/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    const/4 v0, 0x1

    .line 133
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/RealCall$AsyncCall;->responseCallback:Lcom/leidong/open/http/okhttp3/Callback;

    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/RealCall$AsyncCall;->this$0:Lcom/leidong/open/http/okhttp3/RealCall;

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Canceled"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/leidong/open/http/okhttp3/Callback;->onFailure(Lcom/leidong/open/http/okhttp3/Call;Ljava/io/IOException;)V

    goto :goto_0

    .line 135
    :cond_0
    const/4 v0, 0x1

    .line 136
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/RealCall$AsyncCall;->responseCallback:Lcom/leidong/open/http/okhttp3/Callback;

    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/RealCall$AsyncCall;->this$0:Lcom/leidong/open/http/okhttp3/RealCall;

    invoke-interface {v2, v3, v1}, Lcom/leidong/open/http/okhttp3/Callback;->onResponse(Lcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .end local v1    # "response":Lcom/leidong/open/http/okhttp3/Response;
    goto :goto_0

    .line 146
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/io/IOException;
    if-eqz v0, :cond_1

    .line 141
    :try_start_1
    invoke-static {}, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;->get()Lcom/leidong/open/http/okhttp3/internal/platform/Platform;

    move-result-object v2

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback failure for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/leidong/open/http/okhttp3/RealCall$AsyncCall;->this$0:Lcom/leidong/open/http/okhttp3/RealCall;

    invoke-virtual {v5}, Lcom/leidong/open/http/okhttp3/RealCall;->toLoggableString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/leidong/open/http/okhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/RealCall$AsyncCall;->responseCallback:Lcom/leidong/open/http/okhttp3/Callback;

    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/RealCall$AsyncCall;->this$0:Lcom/leidong/open/http/okhttp3/RealCall;

    invoke-interface {v2, v3, v1}, Lcom/leidong/open/http/okhttp3/Callback;->onFailure(Lcom/leidong/open/http/okhttp3/Call;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/RealCall$AsyncCall;->this$0:Lcom/leidong/open/http/okhttp3/RealCall;

    iget-object v1, v1, Lcom/leidong/open/http/okhttp3/RealCall;->client:Lcom/leidong/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/OkHttpClient;->dispatcher()Lcom/leidong/open/http/okhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/leidong/open/http/okhttp3/Dispatcher;->finished(Lcom/leidong/open/http/okhttp3/RealCall$AsyncCall;)V

    .line 147
    nop

    .line 148
    return-void

    .line 146
    :goto_1
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/RealCall$AsyncCall;->this$0:Lcom/leidong/open/http/okhttp3/RealCall;

    iget-object v2, v2, Lcom/leidong/open/http/okhttp3/RealCall;->client:Lcom/leidong/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/leidong/open/http/okhttp3/OkHttpClient;->dispatcher()Lcom/leidong/open/http/okhttp3/Dispatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/leidong/open/http/okhttp3/Dispatcher;->finished(Lcom/leidong/open/http/okhttp3/RealCall$AsyncCall;)V

    throw v1
.end method

.method get()Lcom/leidong/open/http/okhttp3/RealCall;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/RealCall$AsyncCall;->this$0:Lcom/leidong/open/http/okhttp3/RealCall;

    return-object v0
.end method

.method host()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/RealCall$AsyncCall;->this$0:Lcom/leidong/open/http/okhttp3/RealCall;

    iget-object v0, v0, Lcom/leidong/open/http/okhttp3/RealCall;->originalRequest:Lcom/leidong/open/http/okhttp3/Request;

    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/Request;->url()Lcom/leidong/open/http/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method request()Lcom/leidong/open/http/okhttp3/Request;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/RealCall$AsyncCall;->this$0:Lcom/leidong/open/http/okhttp3/RealCall;

    iget-object v0, v0, Lcom/leidong/open/http/okhttp3/RealCall;->originalRequest:Lcom/leidong/open/http/okhttp3/Request;

    return-object v0
.end method
