.class public Lcom/leidong/sdk/s/app/LeiSdkCore;
.super Ljava/lang/Object;
.source "LeiSdkCore.java"

# interfaces
.implements Lcom/leidong/sdk/s/core/interfaces/SdkInterface;


# static fields
.field public static instance:Lcom/leidong/sdk/s/app/LeiSdkCore;

.field public static isLoginSuccess:Z

.field private static lock:[B


# instance fields
.field private mContext:Landroid/content/Context;

.field private requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

.field private responseManager:Lcom/leidong/sdk/s/core/http/ResponseManager;

.field private sdkManager:Lcom/leidong/sdk/s/core/SdkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/leidong/sdk/s/app/LeiSdkCore;->isLoginSuccess:Z

    .line 48
    new-array v0, v0, [B

    sput-object v0, Lcom/leidong/sdk/s/app/LeiSdkCore;->lock:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/s/app/LeiSdkCore;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/leidong/sdk/s/app/LeiSdkCore;

    .line 30
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/leidong/sdk/s/app/LeiSdkCore;Landroid/os/Bundle;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/leidong/sdk/s/app/LeiSdkCore;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/s/app/LeiSdkCore;->handleUserAuthLogin(Landroid/os/Bundle;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/leidong/sdk/s/app/LeiSdkCore;)Lcom/leidong/sdk/s/core/SdkManager;
    .locals 1
    .param p0, "x0"    # Lcom/leidong/sdk/s/app/LeiSdkCore;

    .line 30
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->sdkManager:Lcom/leidong/sdk/s/core/SdkManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/leidong/sdk/s/app/LeiSdkCore;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/leidong/sdk/s/app/LeiSdkCore;
    .param p1, "x1"    # Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    .line 30
    invoke-direct {p0, p1}, Lcom/leidong/sdk/s/app/LeiSdkCore;->handleNoAdultPayNotice(Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/leidong/sdk/s/app/LeiSdkCore;)Lcom/leidong/sdk/s/core/http/ResponseManager;
    .locals 1
    .param p0, "x0"    # Lcom/leidong/sdk/s/app/LeiSdkCore;

    .line 30
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->responseManager:Lcom/leidong/sdk/s/core/http/ResponseManager;

    return-object v0
.end method

.method public static getInstance()Lcom/leidong/sdk/s/app/LeiSdkCore;
    .locals 2

    .line 52
    sget-object v0, Lcom/leidong/sdk/s/app/LeiSdkCore;->instance:Lcom/leidong/sdk/s/app/LeiSdkCore;

    if-nez v0, :cond_1

    .line 53
    sget-object v0, Lcom/leidong/sdk/s/app/LeiSdkCore;->lock:[B

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/leidong/sdk/s/app/LeiSdkCore;->instance:Lcom/leidong/sdk/s/app/LeiSdkCore;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/leidong/sdk/s/app/LeiSdkCore;

    invoke-direct {v1}, Lcom/leidong/sdk/s/app/LeiSdkCore;-><init>()V

    sput-object v1, Lcom/leidong/sdk/s/app/LeiSdkCore;->instance:Lcom/leidong/sdk/s/app/LeiSdkCore;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lcom/leidong/sdk/s/app/LeiSdkCore;->instance:Lcom/leidong/sdk/s/app/LeiSdkCore;

    return-object v0
.end method

.method private handleNoAdultPayNotice(Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    .line 493
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserIsPayNotice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 495
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "uid":Ljava/lang/String;
    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserAdult(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    invoke-interface {p1}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    goto :goto_0

    .line 503
    :cond_0
    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserAge(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 504
    .local v1, "age":I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 506
    iget-object v2, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    new-instance v3, Lcom/leidong/sdk/s/app/LeiSdkCore$10;

    invoke-direct {v3, p0, p1}, Lcom/leidong/sdk/s/app/LeiSdkCore$10;-><init>(Lcom/leidong/sdk/s/app/LeiSdkCore;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    invoke-virtual {v2, v3}, Lcom/leidong/sdk/s/core/http/RequsetManager;->requestUserNoAdultPayMount(Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    goto :goto_0

    .line 552
    :cond_1
    if-ge v1, v2, :cond_3

    .line 555
    iget-object v2, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserGuard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 557
    invoke-interface {p1}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    goto :goto_0

    .line 560
    :cond_2
    iget-object v2, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Lcom/leidong/sdk/s/app/LeiSdkCore$11;

    invoke-direct {v4, p0, p1}, Lcom/leidong/sdk/s/app/LeiSdkCore$11;-><init>(Lcom/leidong/sdk/s/app/LeiSdkCore;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/leidong/sdk/s/app/LeiSdkCore;->openUserHasGuard(Landroid/content/Context;ZLcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    .line 574
    .end local v0    # "uid":Ljava/lang/String;
    .end local v1    # "age":I
    :cond_3
    :goto_0
    goto :goto_1

    .line 576
    :cond_4
    invoke-interface {p1}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    .line 578
    :goto_1
    return-void
.end method

.method private handleUserAuthLogin(Landroid/os/Bundle;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "callback"    # Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    .line 348
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "uid":Ljava/lang/String;
    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserIsLoginAuth(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserAuth(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    new-instance v2, Lcom/leidong/sdk/s/app/LeiSdkCore$8;

    invoke-direct {v2, p0, v0, p2}, Lcom/leidong/sdk/s/app/LeiSdkCore$8;-><init>(Lcom/leidong/sdk/s/app/LeiSdkCore;Ljava/lang/String;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/s/core/http/RequsetManager;->requestUserAuth(Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    goto :goto_0

    .line 414
    :cond_0
    invoke-interface {p2}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    .line 416
    :goto_0
    invoke-interface {p2}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    .line 417
    return-void
.end method

.method private handleUserAuthPay(Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    .line 421
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "uid":Ljava/lang/String;
    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserIsPayAuth(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserAuth(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    new-instance v2, Lcom/leidong/sdk/s/app/LeiSdkCore$9;

    invoke-direct {v2, p0, v0, p1}, Lcom/leidong/sdk/s/app/LeiSdkCore$9;-><init>(Lcom/leidong/sdk/s/app/LeiSdkCore;Ljava/lang/String;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/s/core/http/RequsetManager;->requestUserAuth(Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    goto :goto_0

    .line 486
    :cond_0
    invoke-interface {p1}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    .line 488
    :goto_0
    return-void
.end method


# virtual methods
.method public hideFloat(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 334
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hideFloat"

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/utils/LogUtil;->sysout(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/leidong/sdk/s/app/LeiSdkCore$7;

    invoke-direct {v1, p0, p1}, Lcom/leidong/sdk/s/app/LeiSdkCore$7;-><init>(Lcom/leidong/sdk/s/app/LeiSdkCore;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "resultCallback"    # Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    .line 63
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/leidong/sdk/s/core/SdkManager;

    invoke-direct {v0, p1}, Lcom/leidong/sdk/s/core/SdkManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->sdkManager:Lcom/leidong/sdk/s/core/SdkManager;

    .line 65
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->sdkManager:Lcom/leidong/sdk/s/core/SdkManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/leidong/sdk/s/core/SdkManager;->init(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    .line 67
    new-instance v0, Lcom/leidong/sdk/s/core/http/RequsetManager;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/leidong/sdk/s/core/http/RequsetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    .line 68
    new-instance v0, Lcom/leidong/sdk/s/core/http/ResponseManager;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/leidong/sdk/s/core/http/ResponseManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->responseManager:Lcom/leidong/sdk/s/core/http/ResponseManager;

    .line 69
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->sdkManager:Lcom/leidong/sdk/s/core/SdkManager;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/core/SdkManager;->onPause()V

    .line 314
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->sdkManager:Lcom/leidong/sdk/s/core/SdkManager;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/core/SdkManager;->onResume()V

    .line 310
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->sdkManager:Lcom/leidong/sdk/s/core/SdkManager;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/core/SdkManager;->onStop()V

    .line 318
    return-void
.end method

.method public openUserHasGuard(Landroid/content/Context;ZLcom/leidong/sdk/framework/interfaces/ResultCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isCancel"    # Z
    .param p3, "callback"    # Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    .line 583
    sget-object v0, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_USER_NAMEAUTH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    const-string v0, "leidong_tips_url_not_exit"

    invoke-static {v0, p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 585
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 587
    :cond_0
    sget-object v0, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_USER_NAMEAUTH:Ljava/lang/String;

    const/4 v1, 0x1

    new-instance v2, Lcom/leidong/sdk/s/app/LeiSdkCore$12;

    invoke-direct {v2, p0, p1, p3}, Lcom/leidong/sdk/s/app/LeiSdkCore$12;-><init>(Lcom/leidong/sdk/s/app/LeiSdkCore;Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    invoke-static {p1, v0, p2, v1, v2}, Lcom/leidong/sdk/s/core/utils/SdkUtil;->openWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    .line 615
    :goto_0
    return-void
.end method

.method public openUserNameAuth(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isCancel"    # Z

    .line 653
    new-instance v0, Lcom/leidong/sdk/s/app/LeiSdkCore$14;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/s/app/LeiSdkCore$14;-><init>(Lcom/leidong/sdk/s/app/LeiSdkCore;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->openUserNameAuth(Landroid/content/Context;ZLcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    .line 663
    return-void
.end method

.method public openUserNameAuth(Landroid/content/Context;ZLcom/leidong/sdk/framework/interfaces/ResultCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isCancel"    # Z
    .param p3, "callback"    # Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    .line 620
    sget-object v0, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_USER_NAMEAUTH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    const-string v0, "leidong_tips_url_not_exit"

    invoke-static {v0, p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 624
    :cond_0
    sget-object v0, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_USER_NAMEAUTH:Ljava/lang/String;

    const/4 v1, 0x1

    new-instance v2, Lcom/leidong/sdk/s/app/LeiSdkCore$13;

    invoke-direct {v2, p0, p1, p3}, Lcom/leidong/sdk/s/app/LeiSdkCore$13;-><init>(Lcom/leidong/sdk/s/app/LeiSdkCore;Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    invoke-static {p1, v0, p2, v1, v2}, Lcom/leidong/sdk/s/core/utils/SdkUtil;->openWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    .line 649
    :goto_0
    return-void
.end method

.method public setUserLogoutCallback(Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    .line 73
    new-instance v0, Lcom/leidong/sdk/s/app/LeiSdkCore$1;

    invoke-direct {v0, p0, p1}, Lcom/leidong/sdk/s/app/LeiSdkCore$1;-><init>(Lcom/leidong/sdk/s/app/LeiSdkCore;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    .line 92
    .local v0, "sdkUserLogoutCallback":Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;
    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->sdkManager:Lcom/leidong/sdk/s/core/SdkManager;

    invoke-virtual {v1, v0}, Lcom/leidong/sdk/s/core/SdkManager;->setUserLogoutCallback(Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    .line 93
    return-void
.end method

.method public setUserSwitchCallback(Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    .line 96
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->sdkManager:Lcom/leidong/sdk/s/core/SdkManager;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/s/core/SdkManager;->setUserSwitchCallback(Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    .line 97
    return-void
.end method

.method public showFloat(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 322
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showFloat"

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/utils/LogUtil;->sysout(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/leidong/sdk/s/app/LeiSdkCore$6;

    invoke-direct {v1, p0, p1}, Lcom/leidong/sdk/s/app/LeiSdkCore$6;-><init>(Lcom/leidong/sdk/s/app/LeiSdkCore;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    return-void
.end method

.method public submitRoleInfo(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->sdkManager:Lcom/leidong/sdk/s/core/SdkManager;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/s/core/SdkManager;->submitRoleInfo(Ljava/util/HashMap;)V

    .line 101
    return-void
.end method

.method public updateRoleInfos(Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;)V
    .locals 2
    .param p1, "info"    # Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;

    .line 295
    if-eqz p1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->getRoleId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setRoleId(Landroid/content/Context;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->getRoleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setRoleName(Landroid/content/Context;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->getRoleLevel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setRoleLevel(Landroid/content/Context;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setRoleServerId(Landroid/content/Context;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setRoleServerName(Landroid/content/Context;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->getVip()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setRoleVip(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->getPartyName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setRolePartyName(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->getBalance()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setRoleBalance(Landroid/content/Context;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setRoleExtra(Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    :cond_0
    return-void
.end method

.method public userExit(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    .line 262
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/LeiSdkCore;->hideFloat(Landroid/content/Context;)V

    .line 263
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->sdkManager:Lcom/leidong/sdk/s/core/SdkManager;

    new-instance v1, Lcom/leidong/sdk/s/app/LeiSdkCore$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/leidong/sdk/s/app/LeiSdkCore$5;-><init>(Lcom/leidong/sdk/s/app/LeiSdkCore;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/s/core/SdkManager;->userExit(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    .line 285
    return-void
.end method

.method public userLogin(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    .line 105
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/LeiSdkCore;->hideFloat(Landroid/content/Context;)V

    .line 106
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->sdkManager:Lcom/leidong/sdk/s/core/SdkManager;

    new-instance v1, Lcom/leidong/sdk/s/app/LeiSdkCore$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/leidong/sdk/s/app/LeiSdkCore$2;-><init>(Lcom/leidong/sdk/s/app/LeiSdkCore;Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/s/core/SdkManager;->userLogin(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    .line 134
    return-void
.end method

.method public userLogout()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->sdkManager:Lcom/leidong/sdk/s/core/SdkManager;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/core/SdkManager;->userLogout()V

    .line 141
    return-void
.end method

.method public userPay(Landroid/content/Context;Lcom/leidong/sdk/framework/pay/PayInfoBean;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "payinfos"    # Lcom/leidong/sdk/framework/pay/PayInfoBean;
    .param p3, "payCallback"    # Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    .line 183
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/LeiSdkCore;->hideFloat(Landroid/content/Context;)V

    .line 186
    new-instance v0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/leidong/sdk/s/app/LeiSdkCore$4;-><init>(Lcom/leidong/sdk/s/app/LeiSdkCore;Landroid/content/Context;Lcom/leidong/sdk/framework/pay/PayInfoBean;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->handleUserAuthPay(Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    .line 258
    return-void
.end method

.method public userSwitch(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    .line 149
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/LeiSdkCore;->hideFloat(Landroid/content/Context;)V

    .line 150
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->sdkManager:Lcom/leidong/sdk/s/core/SdkManager;

    new-instance v1, Lcom/leidong/sdk/s/app/LeiSdkCore$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/leidong/sdk/s/app/LeiSdkCore$3;-><init>(Lcom/leidong/sdk/s/app/LeiSdkCore;Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/s/core/SdkManager;->userSwitch(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    .line 178
    return-void
.end method

.method public vistorBind()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->sdkManager:Lcom/leidong/sdk/s/core/SdkManager;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/s/core/SdkManager;->vistorBind(Landroid/content/Context;)V

    .line 145
    return-void
.end method
