.class public Lcom/leidong/sdk/m/controller/MsdkManager;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Lcom/leidong/sdk/m/interfaces/MsdkInterface;


# static fields
.field protected static lock:[B


# instance fields
.field private final INIT_REQUSET_RETRY_MAX:I

.field private clickTime:J

.field initHandler:Landroid/os/Handler;

.field private initLoading:Lcom/leidong/sdk/m/views/SplashDialog;

.field private init_retry_time:I

.field private isLoginSuccess:Z

.field private mAppConfig:Lcom/leidong/sdk/m/model/bean/MAppBean;

.field private mConfig:Lcom/leidong/sdk/m/model/bean/MsdkBean;

.field private mContext:Landroid/content/Context;

.field private platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

.field private platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

.field private repManager:Lcom/leidong/sdk/m/http/MRepManager;

.field private requestManager:Lcom/leidong/sdk/m/http/MReqManager;

.field private sdkCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    new-array v0, v0, [B

    sput-object v0, Lcom/leidong/sdk/m/controller/MsdkManager;->lock:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->isLoginSuccess:Z

    const/4 v0, 0x2

    .line 68
    iput v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->INIT_REQUSET_RETRY_MAX:I

    const/4 v0, 0x1

    .line 69
    iput v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->init_retry_time:I

    .line 690
    new-instance v0, Lcom/leidong/sdk/m/controller/MsdkManager$15;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/m/controller/MsdkManager$15;-><init>(Lcom/leidong/sdk/m/controller/MsdkManager;)V

    iput-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->initHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/m/controller/MsdkManager;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/leidong/sdk/m/controller/MsdkManager;->hideInitSplash()V

    return-void
.end method

.method static synthetic access$100(Lcom/leidong/sdk/m/controller/MsdkManager;)Lcom/leidong/sdk/m/controller/PlatformLogCore;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/leidong/sdk/m/controller/MsdkManager;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->initCallBackFail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/leidong/sdk/m/controller/MsdkManager;)Lcom/leidong/sdk/m/http/MRepManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->repManager:Lcom/leidong/sdk/m/http/MRepManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/leidong/sdk/m/controller/MsdkManager;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/leidong/sdk/m/controller/MsdkManager;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->initAction(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/leidong/sdk/m/controller/MsdkManager;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/leidong/sdk/m/controller/MsdkManager;->initPaltform()V

    return-void
.end method

.method static synthetic access$200(Lcom/leidong/sdk/m/controller/MsdkManager;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leidong/sdk/m/controller/MsdkManager;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->isLoginSuccess:Z

    return p0
.end method

.method static synthetic access$302(Lcom/leidong/sdk/m/controller/MsdkManager;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->isLoginSuccess:Z

    return p1
.end method

.method static synthetic access$400(Lcom/leidong/sdk/m/controller/MsdkManager;Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->reportPlatformLoginLog(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/leidong/sdk/m/controller/MsdkManager;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/leidong/sdk/m/controller/MsdkManager;)Lcom/leidong/sdk/m/http/MReqManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->requestManager:Lcom/leidong/sdk/m/http/MReqManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/leidong/sdk/m/controller/MsdkManager;)Lcom/leidong/sdk/m/controller/PlatformCore;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    return-object p0
.end method

.method static synthetic access$800(Lcom/leidong/sdk/m/controller/MsdkManager;)Lcom/leidong/sdk/m/LeiMsdkCallback;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->sdkCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/leidong/sdk/m/controller/MsdkManager;Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/m/controller/MsdkManager;->startPay(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method

.method private checkRoleInfos(Ljava/lang/String;Ljava/util/HashMap;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/leidong/sdk/m/interfaces/MsdkCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "role_id"

    .line 561
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "role_name"

    .line 562
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "role_level"

    .line 563
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "server_id"

    .line 564
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "server_name"

    .line 565
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "role_balance"

    .line 566
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "role_vip"

    .line 567
    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "role_partyname"

    .line 568
    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "role_extra"

    .line 569
    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 571
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u8bf7\u68c0\u67e5\u4ee5\u4e0b\u6570\u636e\u662f\u5426\u6b63\u786e:\n"

    .line 572
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u63d0\u4ea4\u63a5\u53e3:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u89d2\u8272 ID:"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u89d2\u8272 \u540d:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u89d2\u8272\u7b49\u7ea7:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u670d\u52a1\u5668ID:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u670d\u52a1\u5668\u540d:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u89d2\u8272\u4f59\u989d:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u89d2\u8272VIP:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u89d2\u8272\u5e2e\u6d3e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u62d3\u5c55\u53c2\u6570:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/leidong/sdk/m/controller/MsdkManager$12;

    invoke-direct {p2, p0, p3}, Lcom/leidong/sdk/m/controller/MsdkManager$12;-><init>(Lcom/leidong/sdk/m/controller/MsdkManager;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V

    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/m/controller/MsdkManager;->showDebugDialog(Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V

    return-void
.end method

.method private createNewCallBack(Lcom/leidong/sdk/m/LeiMsdkCallback;)V
    .locals 1

    .line 102
    new-instance v0, Lcom/leidong/sdk/m/controller/MsdkManager$1;

    invoke-direct {v0, p0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager$1;-><init>(Lcom/leidong/sdk/m/controller/MsdkManager;Lcom/leidong/sdk/m/LeiMsdkCallback;)V

    iput-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->sdkCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    return-void
.end method

.method private hideInitSplash()V
    .locals 1

    const-string v0, "hideInitSplash"

    .line 758
    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->initLoading:Lcom/leidong/sdk/m/views/SplashDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->initLoading:Lcom/leidong/sdk/m/views/SplashDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/views/SplashDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->initLoading:Lcom/leidong/sdk/m/views/SplashDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/views/SplashDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private initAction(Z)V
    .locals 2

    const-string v0, "initAction"

    .line 705
    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPublicLog(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/m/model/MConfigManager;->getIsNewLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    invoke-direct {p0}, Lcom/leidong/sdk/m/controller/MsdkManager;->initPaltform()V

    goto :goto_0

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mConfig:Lcom/leidong/sdk/m/model/bean/MsdkBean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mConfig:Lcom/leidong/sdk/m/model/bean/MsdkBean;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/model/bean/MsdkBean;->getShowSplash()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 715
    invoke-direct {p0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->showInitSplashWithPicture(Z)V

    goto :goto_0

    .line 719
    :cond_1
    invoke-direct {p0}, Lcom/leidong/sdk/m/controller/MsdkManager;->initPaltform()V

    :goto_0
    return-void
.end method

.method private initCallBackFail(Ljava/lang/String;)V
    .locals 3

    .line 680
    iget v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->init_retry_time:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 681
    iget v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->init_retry_time:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->init_retry_time:I

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u521d\u59cb\u5316\u5931\u8d25\uff0c\u8bf7\u6c42\u91cd\u8bd5:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->init_retry_time:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 683
    invoke-direct {p0, v1, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->startInitReqeust(ZZ)V

    goto :goto_0

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->sdkCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onInitFail(Ljava/lang/String;)V

    .line 687
    :goto_0
    invoke-direct {p0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPublicLog(Ljava/lang/String;)V

    return-void
.end method

.method private initConfig(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "initConfig"

    .line 598
    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setGameKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 602
    invoke-static {p1}, Lcom/leidong/sdk/m/model/MGameConfig;->initConfig(Landroid/content/Context;)Lcom/leidong/sdk/m/model/bean/MAppBean;

    move-result-object p2

    iput-object p2, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mAppConfig:Lcom/leidong/sdk/m/model/bean/MAppBean;

    .line 604
    invoke-static {p1}, Lcom/leidong/sdk/m/model/MsdkConfig;->initConfig(Landroid/content/Context;)Lcom/leidong/sdk/m/model/bean/MsdkBean;

    move-result-object p2

    iput-object p2, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mConfig:Lcom/leidong/sdk/m/model/bean/MsdkBean;

    .line 606
    iget-object p2, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mConfig:Lcom/leidong/sdk/m/model/bean/MsdkBean;

    invoke-virtual {p2}, Lcom/leidong/sdk/m/model/bean/MsdkBean;->getSdkId()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 607
    invoke-static {v0}, Lcom/leidong/sdk/m/utils/MLogUtil;->isShowLog(Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 609
    invoke-static {p2}, Lcom/leidong/sdk/m/utils/MLogUtil;->isShowLog(Z)V

    .line 612
    :goto_0
    invoke-static {}, Lcom/leidong/open/main/OpenHttpUtils;->getInstance()Lcom/leidong/open/main/OpenHttpUtils;

    move-result-object p2

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/leidong/open/main/OpenHttpUtils;->init(Landroid/app/Application;)V

    .line 615
    new-instance p1, Lcom/leidong/open/http/OpenHttpParams;

    invoke-direct {p1}, Lcom/leidong/open/http/OpenHttpParams;-><init>()V

    .line 616
    sget-boolean p2, Lcom/leidong/sdk/m/utils/MLogUtil;->isShowLog:Z

    invoke-virtual {p1, p2}, Lcom/leidong/open/http/OpenHttpParams;->setDebug(Z)V

    .line 617
    invoke-static {}, Lcom/leidong/open/main/OpenHttpUtils;->getInstance()Lcom/leidong/open/main/OpenHttpUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/leidong/open/main/OpenHttpUtils;->reset(Lcom/leidong/open/http/OpenHttpParams;)V

    return-void
.end method

.method private declared-synchronized initPaltform()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "initPaltform"

    .line 725
    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPublicLog(Ljava/lang/String;)V

    .line 727
    invoke-static {}, Lcom/leidong/sdk/m/LeiMsdk;->getPlatform()Lcom/leidong/sdk/m/controller/PlatformCore;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    .line 728
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    iget-object v1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mConfig:Lcom/leidong/sdk/m/model/bean/MsdkBean;

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/m/controller/PlatformCore;->setPlatformConfig(Lcom/leidong/sdk/m/model/bean/MsdkBean;)V

    .line 730
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    iget-object v1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    const-string v2, ""

    iget-object v3, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->sdkCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/leidong/sdk/m/controller/PlatformCore;->doInit(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/m/LeiMsdkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 724
    monitor-exit p0

    throw v0
.end method

.method private isInitRequestSuccess()Z
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "sdk\u8fd8\u672a\u521d\u59cb\u5316\u6210\u529f"

    .line 263
    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    const-string v0, "leidong_tips_error_network"

    .line 264
    iget-object v2, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->showToast(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 266
    invoke-direct {p0, v0, v1}, Lcom/leidong/sdk/m/controller/MsdkManager;->startInitReqeust(ZZ)V

    return v0

    :cond_0
    return v1
.end method

.method private isQuickClick()Z
    .locals 7

    .line 801
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 802
    iget-wide v2, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->clickTime:J

    sub-long v4, v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    .line 803
    iput-wide v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->clickTime:J

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v2, "\u73a9\u5bb6\u5feb\u901f\u70b9\u51fb\u4e86\uff0c\u6216\u8005CP\u8c03\u7528\u63a5\u53e3\u592a\u8fc7\u9891\u7e41"

    .line 806
    invoke-direct {p0, v2}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPublicLog(Ljava/lang/String;)V

    .line 807
    iput-wide v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->clickTime:J

    const/4 v0, 0x1

    return v0
.end method

.method private postEventInit(Landroid/content/Context;)V
    .locals 3

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getMobileDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 848
    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/CommonUtil;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 849
    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setSdkRunID(Landroid/content/Context;Ljava/lang/String;)V

    .line 851
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->requestManager:Lcom/leidong/sdk/m/http/MReqManager;

    const-string v0, "init"

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/m/http/MReqManager;->submitSdkAction(Ljava/lang/String;)V

    return-void
.end method

.method private reportPlatformLoginLog(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "normal"

    const-string v1, "is_reg"

    .line 236
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "is_reg"

    .line 237
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "reg_type"

    .line 239
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "reg_type"

    .line 240
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v1, :cond_2

    .line 244
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    if-eqz p1, :cond_3

    .line 245
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "logiType"

    .line 246
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "state"

    const-string v1, "success"

    .line 247
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/PlatformLogCore;->onRegister(Landroid/os/Bundle;)V

    goto :goto_1

    .line 252
    :cond_2
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    if-eqz p1, :cond_3

    .line 253
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "logiType"

    .line 254
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "state"

    const-string v1, "success"

    .line 255
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/PlatformLogCore;->onLogin(Landroid/os/Bundle;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private sendPrivateLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MsdkManager"

    .line 813
    invoke-static {v0, p1}, Lcom/leidong/sdk/m/utils/MLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendPublicLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MsdkManager"

    .line 817
    invoke-static {v0, p1}, Lcom/leidong/sdk/m/utils/MLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MsdkManager"

    .line 818
    invoke-static {v0, p1}, Lcom/leidong/sdk/m/utils/MLogUtil;->openLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showDebugDialog(Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V
    .locals 3

    .line 822
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Debug\u6a21\u5f0f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b63\u5f0f\u51fa\u5305\u65f6\uff0c\u8bf7\u5173\u95eddebug\u6a21\u5f0f\n\u5728assets/leidongGame.ini,\u8bbe\u7f6edebug=0! \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 823
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u786e\u5b9a"

    new-instance v1, Lcom/leidong/sdk/m/controller/MsdkManager$18;

    invoke-direct {v1, p0, p2}, Lcom/leidong/sdk/m/controller/MsdkManager$18;-><init>(Lcom/leidong/sdk/m/controller/MsdkManager;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V

    .line 824
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u53d6\u6d88"

    new-instance v1, Lcom/leidong/sdk/m/controller/MsdkManager$17;

    invoke-direct {v1, p0, p2}, Lcom/leidong/sdk/m/controller/MsdkManager$17;-><init>(Lcom/leidong/sdk/m/controller/MsdkManager;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V

    .line 830
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 836
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 837
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showInitSplash(Z)V
    .locals 2

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showInitSplash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->initLoading:Lcom/leidong/sdk/m/views/SplashDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 741
    new-instance v0, Lcom/leidong/sdk/m/views/SplashDialog;

    iget-object v1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/leidong/sdk/m/views/SplashDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->initLoading:Lcom/leidong/sdk/m/views/SplashDialog;

    .line 742
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->initLoading:Lcom/leidong/sdk/m/views/SplashDialog;

    new-instance v1, Lcom/leidong/sdk/m/controller/MsdkManager$16;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/m/controller/MsdkManager$16;-><init>(Lcom/leidong/sdk/m/controller/MsdkManager;)V

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/m/views/SplashDialog;->setSplashCallback(Lcom/leidong/sdk/m/views/SplashDialog$SplashCallback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 751
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->initLoading:Lcom/leidong/sdk/m/views/SplashDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/m/views/SplashDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 752
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->initLoading:Lcom/leidong/sdk/m/views/SplashDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/m/views/SplashDialog;->show()V

    :cond_1
    return-void
.end method

.method private showInitSplashWithPicture(Z)V
    .locals 1

    const-string v0, "showInitSplashWithPicture"

    .line 766
    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 769
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->initLoading:Lcom/leidong/sdk/m/views/SplashDialog;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->initLoading:Lcom/leidong/sdk/m/views/SplashDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/m/views/SplashDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 770
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->initLoading:Lcom/leidong/sdk/m/views/SplashDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/m/views/SplashDialog;->showSolidBackground()V

    goto :goto_0

    .line 774
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->initLoading:Lcom/leidong/sdk/m/views/SplashDialog;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->initLoading:Lcom/leidong/sdk/m/views/SplashDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/m/views/SplashDialog;->getSplashCallback()Lcom/leidong/sdk/m/views/SplashDialog$SplashCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 775
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->initLoading:Lcom/leidong/sdk/m/views/SplashDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/m/views/SplashDialog;->getSplashCallback()Lcom/leidong/sdk/m/views/SplashDialog$SplashCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/leidong/sdk/m/views/SplashDialog$SplashCallback;->onEnd()V

    :cond_1
    :goto_0
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startInitReqeust(ZZ)V
    .locals 3

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initReqeust:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->init_retry_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPublicLog(Ljava/lang/String;)V

    .line 630
    invoke-direct {p0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->showInitSplash(Z)V

    .line 632
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->requestManager:Lcom/leidong/sdk/m/http/MReqManager;

    new-instance v1, Lcom/leidong/sdk/m/controller/MsdkManager$13;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/m/controller/MsdkManager$13;-><init>(Lcom/leidong/sdk/m/controller/MsdkManager;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/leidong/sdk/m/http/MReqManager;->requestCollect(Lcom/leidong/sdk/framework/http/HttpCallBack;Z)V

    .line 643
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->requestManager:Lcom/leidong/sdk/m/http/MReqManager;

    new-instance v1, Lcom/leidong/sdk/m/controller/MsdkManager$14;

    invoke-direct {v1, p0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager$14;-><init>(Lcom/leidong/sdk/m/controller/MsdkManager;Z)V

    invoke-virtual {v0, v1, p2}, Lcom/leidong/sdk/m/http/MReqManager;->requestInit(Lcom/leidong/sdk/framework/http/HttpCallBack;Z)V

    return-void
.end method

.method private startPay(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "money"

    .line 405
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "order_no"

    .line 406
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "order_name"

    .line 407
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "role_id"

    .line 408
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "role_name"

    .line 409
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "role_level"

    .line 410
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "server_id"

    .line 411
    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "server_name"

    .line 412
    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 414
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 415
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 418
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->requestManager:Lcom/leidong/sdk/m/http/MReqManager;

    const-string v1, "pay"

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/m/http/MReqManager;->submitSdkAction(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1, p2}, Lcom/leidong/sdk/m/controller/PlatformCore;->userPay(Landroid/content/Context;Ljava/util/HashMap;)V

    goto :goto_1

    .line 422
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->sdkCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    const-string p2, "\u652f\u4ed8\u53c2\u6570\u4e3a\u7a7a"

    invoke-interface {p1, p2}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onPayFail(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public doExitGame(Landroid/content/Context;)V
    .locals 1

    const-string v0, "doExitGame"

    .line 317
    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPublicLog(Ljava/lang/String;)V

    .line 319
    new-instance v0, Lcom/leidong/sdk/m/controller/MsdkManager$4;

    invoke-direct {v0, p0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager$4;-><init>(Lcom/leidong/sdk/m/controller/MsdkManager;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public doInit(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/m/LeiMsdkCallback;)V
    .locals 2

    const-string v0, "leidong_m"

    const-string v1, "<--MsdkManager--> doInit"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/m/controller/MsdkManager;->initConfig(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    new-instance p2, Lcom/leidong/sdk/m/http/MReqManager;

    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/leidong/sdk/m/http/MReqManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->requestManager:Lcom/leidong/sdk/m/http/MReqManager;

    .line 85
    new-instance p2, Lcom/leidong/sdk/m/http/MRepManager;

    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/leidong/sdk/m/http/MRepManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->repManager:Lcom/leidong/sdk/m/http/MRepManager;

    .line 89
    new-instance p2, Lcom/leidong/sdk/m/controller/PlatformLogCore;

    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/leidong/sdk/m/controller/PlatformLogCore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    .line 92
    invoke-direct {p0, p3}, Lcom/leidong/sdk/m/controller/MsdkManager;->createNewCallBack(Lcom/leidong/sdk/m/LeiMsdkCallback;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->postEventInit(Landroid/content/Context;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/m/controller/MsdkManager;->startInitReqeust(ZZ)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const-string v0, "onActivityResult"

    .line 918
    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 919
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/leidong/sdk/m/controller/PlatformCore;->onActivityResult(IILandroid/content/Intent;)V

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    if-eqz v0, :cond_1

    .line 923
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/leidong/sdk/m/controller/PlatformLogCore;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "onConfigurationChanged"

    .line 938
    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 939
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/PlatformCore;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    if-eqz v0, :cond_1

    .line 943
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/PlatformLogCore;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "onDestroy"

    .line 907
    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/PlatformCore;->onDestroy()V

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    if-eqz v0, :cond_1

    .line 913
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/PlatformLogCore;->onDestroy()V

    :cond_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "onNewIntent"

    .line 928
    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/PlatformCore;->onNewIntent(Landroid/content/Intent;)V

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    if-eqz v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/PlatformLogCore;->onNewIntent(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    const-string v0, "onPause"

    .line 887
    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/PlatformCore;->onPause()V

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    if-eqz v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/PlatformLogCore;->onPause()V

    :cond_1
    return-void
.end method

.method public onRestart()V
    .locals 1

    const-string v0, "onRestart"

    .line 867
    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/PlatformCore;->onRestart()V

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/PlatformLogCore;->onStart()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    const-string v0, "onResume"

    .line 877
    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/PlatformCore;->onResume()V

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    if-eqz v0, :cond_1

    .line 882
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/PlatformLogCore;->onResume()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    const-string v0, "onStart"

    .line 857
    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/PlatformCore;->onStart()V

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/PlatformLogCore;->onStart()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    const-string v0, "onStop"

    .line 897
    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/PlatformCore;->onStop()V

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    if-eqz v0, :cond_1

    .line 902
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/leidong/sdk/m/controller/PlatformLogCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/PlatformLogCore;->onStop()V

    :cond_1
    return-void
.end method

.method public openUserNameAuth(Landroid/content/Context;Z)V
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1, p2}, Lcom/leidong/sdk/m/controller/PlatformCore;->openUserNameAuth(Landroid/content/Context;Z)V

    return-void
.end method

.method protected postEventSdkErrorAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->requestManager:Lcom/leidong/sdk/m/http/MReqManager;

    invoke-virtual {v0, p1, p2}, Lcom/leidong/sdk/m/http/MReqManager;->postSdkErrorAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public roleChangeName(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roleUpdate\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_1

    .line 539
    invoke-static {p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->mapToMapTrim(Ljava/util/HashMap;)V

    .line 541
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 543
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mAppConfig:Lcom/leidong/sdk/m/model/bean/MAppBean;

    invoke-virtual {p1}, Lcom/leidong/sdk/m/model/bean/MAppBean;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "roleUpdate"

    .line 544
    new-instance v1, Lcom/leidong/sdk/m/controller/MsdkManager$11;

    invoke-direct {v1, p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager$11;-><init>(Lcom/leidong/sdk/m/controller/MsdkManager;Ljava/util/HashMap;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/leidong/sdk/m/controller/MsdkManager;->checkRoleInfos(Ljava/lang/String;Ljava/util/HashMap;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V

    goto :goto_0

    .line 553
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/m/controller/PlatformCore;->roleChangeName(Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public roleCreate(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roleCreate\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_1

    .line 464
    invoke-static {p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->mapToMapTrim(Ljava/util/HashMap;)V

    .line 466
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 468
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mAppConfig:Lcom/leidong/sdk/m/model/bean/MAppBean;

    invoke-virtual {p1}, Lcom/leidong/sdk/m/model/bean/MAppBean;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "roleCreate"

    .line 469
    new-instance v1, Lcom/leidong/sdk/m/controller/MsdkManager$8;

    invoke-direct {v1, p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager$8;-><init>(Lcom/leidong/sdk/m/controller/MsdkManager;Ljava/util/HashMap;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/leidong/sdk/m/controller/MsdkManager;->checkRoleInfos(Ljava/lang/String;Ljava/util/HashMap;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V

    goto :goto_0

    .line 479
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/m/controller/PlatformCore;->roleCreate(Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public roleEnterGame(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roleEnterGame\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_1

    .line 489
    invoke-static {p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->mapToMapTrim(Ljava/util/HashMap;)V

    .line 491
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 493
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mAppConfig:Lcom/leidong/sdk/m/model/bean/MAppBean;

    invoke-virtual {p1}, Lcom/leidong/sdk/m/model/bean/MAppBean;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "roleEnterGame"

    .line 494
    new-instance v1, Lcom/leidong/sdk/m/controller/MsdkManager$9;

    invoke-direct {v1, p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager$9;-><init>(Lcom/leidong/sdk/m/controller/MsdkManager;Ljava/util/HashMap;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/leidong/sdk/m/controller/MsdkManager;->checkRoleInfos(Ljava/lang/String;Ljava/util/HashMap;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V

    goto :goto_0

    .line 503
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/m/controller/PlatformCore;->roleEnterGame(Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public roleLevelUp(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roleUpgrade\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_1

    .line 513
    invoke-static {p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->mapToMapTrim(Ljava/util/HashMap;)V

    .line 515
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 517
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mAppConfig:Lcom/leidong/sdk/m/model/bean/MAppBean;

    invoke-virtual {p1}, Lcom/leidong/sdk/m/model/bean/MAppBean;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "roleUpgrade"

    .line 518
    new-instance v1, Lcom/leidong/sdk/m/controller/MsdkManager$10;

    invoke-direct {v1, p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager$10;-><init>(Lcom/leidong/sdk/m/controller/MsdkManager;Ljava/util/HashMap;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/leidong/sdk/m/controller/MsdkManager;->checkRoleInfos(Ljava/lang/String;Ljava/util/HashMap;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V

    goto :goto_0

    .line 528
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/m/controller/PlatformCore;->roleLevelUp(Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public runOnUIThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 793
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public serverSelect(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serverSelect\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_1

    .line 438
    invoke-static {p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->mapToMapTrim(Ljava/util/HashMap;)V

    .line 440
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 442
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mAppConfig:Lcom/leidong/sdk/m/model/bean/MAppBean;

    invoke-virtual {p1}, Lcom/leidong/sdk/m/model/bean/MAppBean;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "serverSelect"

    .line 443
    new-instance v1, Lcom/leidong/sdk/m/controller/MsdkManager$7;

    invoke-direct {v1, p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager$7;-><init>(Lcom/leidong/sdk/m/controller/MsdkManager;Ljava/util/HashMap;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/leidong/sdk/m/controller/MsdkManager;->checkRoleInfos(Ljava/lang/String;Ljava/util/HashMap;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V

    goto :goto_0

    .line 453
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/m/controller/PlatformCore;->serverSelect(Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public userLogin(Landroid/content/Context;)V
    .locals 2

    const-string v0, "userLogin"

    .line 275
    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0}, Lcom/leidong/sdk/m/controller/MsdkManager;->isQuickClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/leidong/sdk/m/controller/MsdkManager;->isInitRequestSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->requestManager:Lcom/leidong/sdk/m/http/MReqManager;

    const-string v1, "login"

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/m/http/MReqManager;->submitSdkAction(Ljava/lang/String;)V

    .line 283
    new-instance v0, Lcom/leidong/sdk/m/controller/MsdkManager$2;

    invoke-direct {v0, p0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager$2;-><init>(Lcom/leidong/sdk/m/controller/MsdkManager;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public userLogout(Landroid/content/Context;)V
    .locals 1

    const-string v0, "userLogout"

    .line 308
    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/PlatformCore;->userLogout(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public userPay(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 343
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "userPay\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 345
    invoke-direct {p0}, Lcom/leidong/sdk/m/controller/MsdkManager;->isQuickClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 349
    :cond_0
    new-instance p1, Lcom/leidong/sdk/m/controller/MsdkManager$5;

    invoke-direct {p1, p0, p2}, Lcom/leidong/sdk/m/controller/MsdkManager$5;-><init>(Lcom/leidong/sdk/m/controller/MsdkManager;Ljava/util/HashMap;)V

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public userPayCommon(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 360
    invoke-direct {p0}, Lcom/leidong/sdk/m/controller/MsdkManager;->isInitRequestSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "money"

    .line 362
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "order_no"

    .line 363
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "order_name"

    .line 364
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "order_ext"

    .line 365
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "role_id"

    .line 366
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "role_name"

    .line 367
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "role_level"

    .line 368
    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "server_id"

    .line 369
    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "server_name"

    .line 370
    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 372
    iget-object v9, p0, Lcom/leidong/sdk/m/controller/MsdkManager;->mAppConfig:Lcom/leidong/sdk/m/model/bean/MAppBean;

    invoke-virtual {v9}, Lcom/leidong/sdk/m/model/bean/MAppBean;->isDebug()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 374
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u5145\u503c\u91d1\u989d:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5143\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u8ba2\u5355\u5355\u53f7:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5546\u54c1\u540d\u79f0:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u62d3\u5c55\u6570\u636e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89d2\u8272 ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89d2\u8272\u540d\u79f0:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89d2\u8272\u7b49\u7ea7:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u670d\u52a1\u5668ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u670d\u52a1\u5668\u540d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/leidong/sdk/m/controller/MsdkManager$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/leidong/sdk/m/controller/MsdkManager$6;-><init>(Lcom/leidong/sdk/m/controller/MsdkManager;Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-direct {p0, v0, v1}, Lcom/leidong/sdk/m/controller/MsdkManager;->showDebugDialog(Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V

    goto :goto_0

    .line 398
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/m/controller/MsdkManager;->startPay(Landroid/content/Context;Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public userSwitch(Landroid/content/Context;)V
    .locals 1

    const-string v0, "userSwitch"

    .line 293
    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 294
    invoke-direct {p0}, Lcom/leidong/sdk/m/controller/MsdkManager;->isQuickClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/leidong/sdk/m/controller/MsdkManager;->isInitRequestSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    new-instance v0, Lcom/leidong/sdk/m/controller/MsdkManager$3;

    invoke-direct {v0, p0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager$3;-><init>(Lcom/leidong/sdk/m/controller/MsdkManager;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
