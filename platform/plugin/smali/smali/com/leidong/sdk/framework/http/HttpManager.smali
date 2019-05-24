.class public Lcom/leidong/sdk/framework/http/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# instance fields
.field public final ERROR_PARAMS_NULL:Ljava/lang/String;

.field public final ERROR_URL_NULL:Ljava/lang/String;

.field public final REQUEST_TYPE_GET:Ljava/lang/String;

.field public final REQUEST_TYPE_POST:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private isShowLog:Z

.field private loadingDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u8bf7\u6c42\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    .line 16
    iput-object v0, p0, Lcom/leidong/sdk/framework/http/HttpManager;->ERROR_PARAMS_NULL:Ljava/lang/String;

    const-string v0, "\u8bf7\u6c42\u5730\u5740\u4e0d\u80fd\u4e3a\u7a7a"

    .line 17
    iput-object v0, p0, Lcom/leidong/sdk/framework/http/HttpManager;->ERROR_URL_NULL:Ljava/lang/String;

    const-string v0, "GET"

    .line 19
    iput-object v0, p0, Lcom/leidong/sdk/framework/http/HttpManager;->REQUEST_TYPE_GET:Ljava/lang/String;

    const-string v0, "POST"

    .line 20
    iput-object v0, p0, Lcom/leidong/sdk/framework/http/HttpManager;->REQUEST_TYPE_POST:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/leidong/sdk/framework/http/HttpManager;->isShowLog:Z

    .line 30
    iput-object p1, p0, Lcom/leidong/sdk/framework/http/HttpManager;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/framework/http/HttpManager;)Lcom/leidong/sdk/framework/view/loading/LoadingDialog;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/leidong/sdk/framework/http/HttpManager;->loadingDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leidong/sdk/framework/http/HttpManager;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/leidong/sdk/framework/http/HttpManager;->sendHttpLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/leidong/sdk/framework/http/HttpManager;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/leidong/sdk/framework/http/HttpManager;->sendHttpLogWarn(Ljava/lang/String;)V

    return-void
.end method

.method private sendHttpLog(Ljava/lang/String;)V
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/leidong/sdk/framework/http/HttpManager;->isShowLog:Z

    if-eqz v0, :cond_0

    const-string v0, "leidong_http"

    .line 134
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private sendHttpLogWarn(Ljava/lang/String;)V
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/leidong/sdk/framework/http/HttpManager;->isShowLog:Z

    if-eqz v0, :cond_0

    const-string v0, "leidong_http"

    .line 140
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public get(Lcom/leidong/sdk/framework/http/HttpBean;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 1

    const-string v0, "GET"

    .line 38
    invoke-virtual {p0, v0, p1, p2}, Lcom/leidong/sdk/framework/http/HttpManager;->httpRequest(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpBean;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public httpRequest(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpBean;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p1, "\u8bf7\u6c42\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    .line 44
    invoke-interface {p3, v0, p1}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    return-void

    .line 48
    :cond_0
    invoke-virtual {p2}, Lcom/leidong/sdk/framework/http/HttpBean;->getReqUrl()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p2}, Lcom/leidong/sdk/framework/http/HttpBean;->getParams()Ljava/util/HashMap;

    move-result-object v2

    .line 50
    invoke-virtual {p2}, Lcom/leidong/sdk/framework/http/HttpBean;->isLoading()Z

    move-result v3

    .line 51
    invoke-virtual {p2}, Lcom/leidong/sdk/framework/http/HttpBean;->getLoadingText()Ljava/lang/String;

    move-result-object p2

    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 p1, 0x194

    const-string p2, "\u8bf7\u6c42\u5730\u5740\u4e0d\u80fd\u4e3a\u7a7a"

    .line 55
    invoke-interface {p3, p1, p2}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    const-string p1, "\u8bf7\u6c42\u5730\u5740\u4e0d\u80fd\u4e3a\u7a7a"

    .line 56
    invoke-direct {p0, p1}, Lcom/leidong/sdk/framework/http/HttpManager;->sendHttpLogWarn(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz v3, :cond_3

    .line 61
    iget-object v3, p0, Lcom/leidong/sdk/framework/http/HttpManager;->loadingDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    if-nez v3, :cond_2

    .line 62
    new-instance v3, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    iget-object v4, p0, Lcom/leidong/sdk/framework/http/HttpManager;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/leidong/sdk/framework/http/HttpManager;->loadingDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    .line 63
    iget-object v3, p0, Lcom/leidong/sdk/framework/http/HttpManager;->loadingDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v3, v0}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->setCancelable(Z)V

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/leidong/sdk/framework/http/HttpManager;->loadingDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/leidong/sdk/framework/http/HttpManager;->loadingDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/leidong/sdk/framework/http/HttpManager;->loadingDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->show()V

    .line 67
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/leidong/sdk/framework/http/HttpManager;->loadingDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0, p2}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->setLoadingMessage(Ljava/lang/CharSequence;)V

    .line 74
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ">>>>>>>>>>["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]{Request}: > \n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/leidong/sdk/framework/http/HttpManager;->sendHttpLog(Ljava/lang/String;)V

    const-string p2, "POST"

    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 78
    invoke-static {}, Lcom/leidong/open/main/OpenHttpUtils;->getInstance()Lcom/leidong/open/main/OpenHttpUtils;

    move-result-object p2

    new-instance v0, Lcom/leidong/sdk/framework/http/HttpManager$1;

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/leidong/sdk/framework/http/HttpManager$1;-><init>(Lcom/leidong/sdk/framework/http/HttpManager;Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    invoke-virtual {p2, v1, v2, v0}, Lcom/leidong/open/main/OpenHttpUtils;->post(Ljava/lang/String;Ljava/util/Map;Lcom/leidong/open/main/OpenHttpUtils$OpenCallBack;)V

    goto :goto_0

    .line 102
    :cond_4
    invoke-static {}, Lcom/leidong/open/main/OpenHttpUtils;->getInstance()Lcom/leidong/open/main/OpenHttpUtils;

    move-result-object p2

    new-instance v0, Lcom/leidong/sdk/framework/http/HttpManager$2;

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/leidong/sdk/framework/http/HttpManager$2;-><init>(Lcom/leidong/sdk/framework/http/HttpManager;Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    invoke-virtual {p2, v1, v2, v0}, Lcom/leidong/open/main/OpenHttpUtils;->get(Ljava/lang/String;Ljava/util/Map;Lcom/leidong/open/main/OpenHttpUtils$OpenCallBack;)V

    :goto_0
    return-void
.end method

.method public post(Lcom/leidong/sdk/framework/http/HttpBean;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 1

    const-string v0, "POST"

    .line 34
    invoke-virtual {p0, v0, p1, p2}, Lcom/leidong/sdk/framework/http/HttpManager;->httpRequest(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpBean;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public setIsShowLog(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/leidong/sdk/framework/http/HttpManager;->isShowLog:Z

    return-void
.end method
