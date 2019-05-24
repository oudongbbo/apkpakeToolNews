.class public Lcom/leidong/sdk/m/controller/PlatformManager;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/leidong/sdk/m/interfaces/MsdkInterface;


# instance fields
.field protected fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

.field protected isLogoutSuccess:Z

.field protected isNeedInputMoney:Z

.field protected mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

.field protected mConfig:Lcom/leidong/sdk/m/model/bean/MsdkBean;

.field protected mContext:Landroid/content/Context;

.field protected mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

.field protected payDataExtra:Ljava/lang/String;

.field private requestManager:Lcom/leidong/sdk/m/http/MReqManager;

.field private responseManager:Lcom/leidong/sdk/m/http/MRepManager;

.field protected roleInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->isLogoutSuccess:Z

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->isNeedInputMoney:Z

    const-string v0, ""

    .line 61
    iput-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->payDataExtra:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/m/controller/PlatformManager;)Lcom/leidong/sdk/m/http/MRepManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->responseManager:Lcom/leidong/sdk/m/http/MRepManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leidong/sdk/m/controller/PlatformManager;Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MResultCallback;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/m/controller/PlatformManager;->doAppActiveFuction(Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MResultCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/leidong/sdk/m/controller/PlatformManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MResultCallback;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/leidong/sdk/m/controller/PlatformManager;->handleAppActiveAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MResultCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/leidong/sdk/m/controller/PlatformManager;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/m/controller/PlatformManager;->postRoleInfos(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$400(Lcom/leidong/sdk/m/controller/PlatformManager;Landroid/os/Bundle;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/m/controller/PlatformManager;->handleLoginSSuccessBundle(Landroid/os/Bundle;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V

    return-void
.end method

.method private doAppActiveFuction(Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MResultCallback;)V
    .locals 2

    .line 980
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->responseManager:Lcom/leidong/sdk/m/http/MRepManager;

    new-instance v1, Lcom/leidong/sdk/m/controller/PlatformManager$7;

    invoke-direct {v1, p0, p2}, Lcom/leidong/sdk/m/controller/PlatformManager$7;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager;Lcom/leidong/sdk/m/interfaces/MResultCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/m/http/MRepManager;->handleAppActive(Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V

    return-void
.end method

.method private handleAppActive(Landroid/os/Bundle;Lcom/leidong/sdk/m/interfaces/MResultCallback;)V
    .locals 1

    const-string v0, "app_active"

    .line 952
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 956
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    invoke-interface {p2}, Lcom/leidong/sdk/m/interfaces/MResultCallback;->onSuccess()V

    goto :goto_0

    .line 961
    :cond_0
    new-instance v0, Lcom/leidong/sdk/m/controller/PlatformManager$6;

    invoke-direct {v0, p0, p2}, Lcom/leidong/sdk/m/controller/PlatformManager$6;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager;Lcom/leidong/sdk/m/interfaces/MResultCallback;)V

    invoke-direct {p0, p1, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->doAppActiveFuction(Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MResultCallback;)V

    :goto_0
    return-void
.end method

.method private handleAppActiveAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MResultCallback;)V
    .locals 8

    .line 1018
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->requestManager:Lcom/leidong/sdk/m/http/MReqManager;

    new-instance v7, Lcom/leidong/sdk/m/controller/PlatformManager$8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/leidong/sdk/m/controller/PlatformManager$8;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MResultCallback;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, v7}, Lcom/leidong/sdk/m/http/MReqManager;->requestActiveCheck(Ljava/lang/String;ZLcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method private handleLoginSSuccessBundle(Landroid/os/Bundle;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V
    .locals 3

    .line 1330
    invoke-virtual {p0}, Lcom/leidong/sdk/m/controller/PlatformManager;->postEventPlatformLoginSuccess()V

    .line 1333
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "token"

    const-string v2, "token"

    .line 1334
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_reg"

    .line 1335
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "is_reg"

    const-string v2, "is_reg"

    .line 1337
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const-string v1, "loginType"

    .line 1339
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "loginType"

    const-string v2, "loginType"

    .line 1341
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    :cond_1
    new-instance v1, Lcom/leidong/sdk/m/controller/PlatformManager$17;

    invoke-direct {v1, p0, p2, v0}, Lcom/leidong/sdk/m/controller/PlatformManager$17;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager;Lcom/leidong/sdk/m/interfaces/MsdkCallback;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v1}, Lcom/leidong/sdk/m/controller/PlatformManager;->handleAppActive(Landroid/os/Bundle;Lcom/leidong/sdk/m/interfaces/MResultCallback;)V

    return-void
.end method

.method private initPlatformCallBack(Lcom/leidong/sdk/m/LeiMsdkCallback;)V
    .locals 1

    .line 1072
    new-instance v0, Lcom/leidong/sdk/m/controller/PlatformManager$9;

    invoke-direct {v0, p0, p1}, Lcom/leidong/sdk/m/controller/PlatformManager$9;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager;Lcom/leidong/sdk/m/LeiMsdkCallback;)V

    iput-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    return-void
.end method

.method public static mapToJson(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1372
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1376
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1377
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1379
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1381
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1383
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1384
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1385
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1387
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1390
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method private postRoleInfos(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 799
    invoke-static {p2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->mapToMapTrim(Ljava/util/HashMap;)V

    .line 800
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->requestManager:Lcom/leidong/sdk/m/http/MReqManager;

    invoke-static {p2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->mapToJson(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/leidong/sdk/m/http/MReqManager;->submitRoleInfos(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private userPayM(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->requestManager:Lcom/leidong/sdk/m/http/MReqManager;

    iget-object v1, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->payDataExtra:Ljava/lang/String;

    new-instance v2, Lcom/leidong/sdk/m/controller/PlatformManager$4;

    invoke-direct {v2, p0, p1}, Lcom/leidong/sdk/m/controller/PlatformManager$4;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager;Ljava/util/HashMap;)V

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/leidong/sdk/m/http/MReqManager;->requestPay(Ljava/util/HashMap;Ljava/lang/String;ZLcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method


# virtual methods
.method public doExitGame(Landroid/content/Context;)V
    .locals 2

    .line 217
    invoke-virtual {p0}, Lcom/leidong/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Lcom/leidong/sdk/m/controller/PlatformManager$1;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/m/controller/PlatformManager$1;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager;)V

    invoke-static {p1, v0}, Lcom/leidong/sdk/m/utils/MViewUtil;->showAndoridExit(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mConfig:Lcom/leidong/sdk/m/model/bean/MsdkBean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mConfig:Lcom/leidong/sdk/m/model/bean/MsdkBean;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/model/bean/MsdkBean;->getShowExit()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 231
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/PlatformCore;->mExitGame(Landroid/content/Context;)V

    goto :goto_0

    .line 234
    :cond_1
    new-instance v0, Lcom/leidong/sdk/m/controller/PlatformManager$2;

    invoke-direct {v0, p0, p1}, Lcom/leidong/sdk/m/controller/PlatformManager$2;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager;Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/leidong/sdk/m/utils/MViewUtil;->showAndoridExit(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    :goto_0
    return-void
.end method

.method public doInit(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/m/LeiMsdkCallback;)V
    .locals 0

    const-string p2, "doInit"

    .line 149
    invoke-virtual {p0, p2}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    .line 152
    iput-boolean p2, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->isLogoutSuccess:Z

    .line 153
    new-instance p2, Lcom/leidong/sdk/m/http/MReqManager;

    invoke-direct {p2, p1}, Lcom/leidong/sdk/m/http/MReqManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->requestManager:Lcom/leidong/sdk/m/http/MReqManager;

    .line 154
    new-instance p2, Lcom/leidong/sdk/m/http/MRepManager;

    invoke-direct {p2, p1}, Lcom/leidong/sdk/m/http/MRepManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->responseManager:Lcom/leidong/sdk/m/http/MRepManager;

    .line 156
    invoke-direct {p0, p3}, Lcom/leidong/sdk/m/controller/PlatformManager;->initPlatformCallBack(Lcom/leidong/sdk/m/LeiMsdkCallback;)V

    .line 158
    invoke-virtual {p0}, Lcom/leidong/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "init s"

    .line 159
    invoke-virtual {p0, p2}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/controller/PlatformManager;->doInitS(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p2, "init m"

    .line 162
    invoke-virtual {p0, p2}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {p2, p1}, Lcom/leidong/sdk/m/controller/PlatformCore;->mInit(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized doInitS(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    .line 1144
    :try_start_0
    invoke-static {}, Lcom/leidong/sdk/s/app/LeiSdkCore;->getInstance()Lcom/leidong/sdk/s/app/LeiSdkCore;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

    .line 1146
    invoke-static {p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getGameKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1147
    iget-object v1, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

    new-instance v2, Lcom/leidong/sdk/m/controller/PlatformManager$10;

    invoke-direct {v2, p0}, Lcom/leidong/sdk/m/controller/PlatformManager$10;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/leidong/sdk/s/app/LeiSdkCore;->init(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    .line 1158
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

    new-instance v0, Lcom/leidong/sdk/m/controller/PlatformManager$11;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/m/controller/PlatformManager$11;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager;)V

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->setUserLogoutCallback(Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    .line 1173
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

    new-instance v0, Lcom/leidong/sdk/m/controller/PlatformManager$12;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/m/controller/PlatformManager$12;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager;)V

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->setUserSwitchCallback(Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1197
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1143
    monitor-exit p0

    throw p1
.end method

.method public exitGameS(Landroid/content/Context;)V
    .locals 2

    .line 1308
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

    if-nez v0, :cond_0

    .line 1309
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/controller/PlatformManager;->doInitS(Landroid/content/Context;)V

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

    new-instance v1, Lcom/leidong/sdk/m/controller/PlatformManager$16;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/m/controller/PlatformManager$16;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/s/app/LeiSdkCore;->userExit(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    return-void
.end method

.method public handleLoginAndSwitchCallbackBundle(ZLandroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 871
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {p1, p2}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onUserSwitchSuccess(Landroid/os/Bundle;)V

    goto :goto_0

    .line 873
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {p1, p2}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onLoginSuccess(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public handleLoginAndSwitchCallbackCancel(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 862
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    const-string v0, "switch_cancel"

    invoke-interface {p1, v0}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onUserSwitchFail(Ljava/lang/String;)V

    goto :goto_0

    .line 864
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    const-string v0, "login_cancel"

    invoke-interface {p1, v0}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onLoginFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleLoginAndSwitchCallbackFail(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 853
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {p1, p2}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onUserSwitchFail(Ljava/lang/String;)V

    goto :goto_0

    .line 855
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {p1, p2}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onLoginFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isNewSdk()Z
    .locals 2

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNewSdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/m/model/MConfigManager;->getIsNewLogin(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/m/model/MConfigManager;->getIsNewLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOldSdk()Z
    .locals 2

    .line 833
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mConfig:Lcom/leidong/sdk/m/model/bean/MsdkBean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mConfig:Lcom/leidong/sdk/m/model/bean/MsdkBean;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/model/bean/MsdkBean;->getSdk()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mConfig:Lcom/leidong/sdk/m/model/bean/MsdkBean;

    .line 834
    invoke-virtual {v0}, Lcom/leidong/sdk/m/model/bean/MsdkBean;->getSdk()I

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public mLoginSuccess(Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MLoginCallback;)V
    .locals 2

    .line 879
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->responseManager:Lcom/leidong/sdk/m/http/MRepManager;

    new-instance v1, Lcom/leidong/sdk/m/controller/PlatformManager$5;

    invoke-direct {v1, p0, p2}, Lcom/leidong/sdk/m/controller/PlatformManager$5;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager;Lcom/leidong/sdk/m/interfaces/MLoginCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/m/http/MRepManager;->handleRepContent(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const-string v0, "onActivityResult()"

    .line 123
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/leidong/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/leidong/sdk/m/controller/PlatformCore;->mOnActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "onConfigurationChanged()"

    .line 137
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/leidong/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/PlatformCore;->mOnConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "onDestroy()"

    .line 116
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/leidong/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/PlatformCore;->mOnDestroy()V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "onNewIntent()"

    .line 130
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/leidong/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/PlatformCore;->mOnNewIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const-string v0, "onPause()"

    .line 102
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/leidong/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/PlatformCore;->mOnPause()V

    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    const-string v0, "onRestart()"

    .line 88
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/leidong/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/PlatformCore;->mOnRestart()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    const-string v0, "onResume()"

    .line 95
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/leidong/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/PlatformCore;->mOnResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    const-string v0, "onStart()"

    .line 81
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/leidong/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/PlatformCore;->mOnStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    const-string v0, "onStop()"

    .line 109
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/leidong/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/PlatformCore;->mOnStop()V

    :cond_0
    return-void
.end method

.method public openUserNameAuth(Landroid/content/Context;Z)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1, p2}, Lcom/leidong/sdk/m/controller/PlatformCore;->mOpenUserNameAuth(Landroid/content/Context;Z)V

    return-void
.end method

.method public openUserNameAuth4S(Landroid/content/Context;Z)V
    .locals 1

    .line 1359
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

    invoke-virtual {v0, p1, p2}, Lcom/leidong/sdk/s/app/LeiSdkCore;->openUserNameAuth(Landroid/content/Context;Z)V

    return-void
.end method

.method public postEventPlatformLoginSuccess()V
    .locals 2

    .line 843
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->requestManager:Lcom/leidong/sdk/m/http/MReqManager;

    const-string v1, "login_success"

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/m/http/MReqManager;->submitSdkAction(Ljava/lang/String;)V

    return-void
.end method

.method public roleChangeName(Ljava/util/HashMap;)V
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

    const-string v0, "roleUpdate"

    .line 631
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Lcom/leidong/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 636
    :cond_0
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->roleInfos:Ljava/util/HashMap;

    .line 637
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/controller/PlatformManager;->updateRoleInfos(Ljava/util/HashMap;)V

    const-string v0, "changeName"

    .line 638
    invoke-direct {p0, v0, p1}, Lcom/leidong/sdk/m/controller/PlatformManager;->postRoleInfos(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 639
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/PlatformCore;->mRoleUpdate(Ljava/util/HashMap;)V

    :goto_0
    return-void
.end method

.method public roleCreate(Ljava/util/HashMap;)V
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

    const-string v0, "roleCreate"

    .line 394
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/leidong/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->roleInfos:Ljava/util/HashMap;

    .line 401
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/controller/PlatformManager;->updateRoleInfos(Ljava/util/HashMap;)V

    const-string v0, "roleCreate"

    .line 403
    invoke-direct {p0, v0, p1}, Lcom/leidong/sdk/m/controller/PlatformManager;->postRoleInfos(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v0, "role_createtime"

    .line 405
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/PlatformCore;->mRoleCreate(Ljava/util/HashMap;)V

    goto :goto_0

    .line 408
    :cond_1
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v0, "\u89d2\u8272\u521b\u5efa\u65f6\u95f4\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public roleEnterGame(Ljava/util/HashMap;)V
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

    const-string v0, "roleEnterGame"

    .line 468
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Lcom/leidong/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->roleInfos:Ljava/util/HashMap;

    .line 475
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/controller/PlatformManager;->updateRoleInfos(Ljava/util/HashMap;)V

    const-string v0, "enterGame"

    .line 477
    invoke-direct {p0, v0, p1}, Lcom/leidong/sdk/m/controller/PlatformManager;->postRoleInfos(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v0, "role_createtime"

    .line 479
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/PlatformCore;->mRoleEnterGame(Ljava/util/HashMap;)V

    goto :goto_0

    .line 482
    :cond_1
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v0, "\u89d2\u8272\u521b\u5efa\u65f6\u95f4\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public roleLevelUp(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "roleUpgrade"

    .line 550
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Lcom/leidong/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "role_leveltime"

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->roleInfos:Ljava/util/HashMap;

    .line 559
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/controller/PlatformManager;->updateRoleInfos(Ljava/util/HashMap;)V

    const-string v0, "roleUplevel"

    .line 561
    invoke-direct {p0, v0, p1}, Lcom/leidong/sdk/m/controller/PlatformManager;->postRoleInfos(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v0, "role_createtime"

    .line 563
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/PlatformCore;->mRoleUpgrade(Ljava/util/HashMap;)V

    goto :goto_0

    .line 566
    :cond_1
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v0, "\u89d2\u8272\u521b\u5efa\u65f6\u95f4\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public runOnUiThread(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .line 847
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Platform"

    .line 1367
    invoke-static {v0, p1}, Lcom/leidong/sdk/m/utils/MLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public serverSelect(Ljava/util/HashMap;)V
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

    const-string v0, "roleCreate"

    .line 384
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/leidong/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "serverSeclet"

    .line 389
    invoke-direct {p0, v0, p1}, Lcom/leidong/sdk/m/controller/PlatformManager;->postRoleInfos(Ljava/lang/String;Ljava/util/HashMap;)V

    :goto_0
    return-void
.end method

.method public setPlatform(Lcom/leidong/sdk/m/controller/PlatformCore;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

    return-void
.end method

.method public updateRoleInfos(Ljava/util/HashMap;)V
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

    if-eqz p1, :cond_0

    .line 809
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, "role_id"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setRoleId(Landroid/content/Context;Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, "role_name"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setRoleName(Landroid/content/Context;Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, "role_level"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setRoleLevel(Landroid/content/Context;Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, "server_id"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setRoleServerId(Landroid/content/Context;Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, "server_name"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setRoleServerName(Landroid/content/Context;Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, "role_vip"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setRoleVip(Landroid/content/Context;Ljava/lang/String;)V

    .line 815
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, "role_partyname"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setRolePartyName(Landroid/content/Context;Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, "role_balance"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setRoleBalance(Landroid/content/Context;Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, "role_extra"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setRoleExtra(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public userLogin(Landroid/content/Context;)V
    .locals 1

    const-string v0, "userLogin"

    .line 169
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 171
    iget-boolean v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->isLogoutSuccess:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    const-string p1, "login,context is null."

    .line 175
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/leidong/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "login-s"

    .line 180
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/controller/PlatformManager;->userLoginS(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v0, "login-m"

    .line 183
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/PlatformCore;->mUserLogin(Landroid/content/Context;)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/controller/PlatformManager;->userSwitch(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public userLoginS(Landroid/content/Context;)V
    .locals 2

    .line 1201
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

    if-nez v0, :cond_0

    .line 1202
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/controller/PlatformManager;->doInitS(Landroid/content/Context;)V

    .line 1204
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

    new-instance v1, Lcom/leidong/sdk/m/controller/PlatformManager$13;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/m/controller/PlatformManager$13;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/s/app/LeiSdkCore;->userLogin(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    return-void
.end method

.method public userLogout(Landroid/content/Context;)V
    .locals 2

    const-string v0, "userLogout"

    .line 204
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/PlatformCore;->mUserLogout(Landroid/content/Context;)V

    .line 212
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onLogoutSuccess()V

    return-void
.end method

.method public userPay(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 2
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

    const-string v0, "userPay"

    .line 259
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const-string v0, "0"

    const-string v1, "money"

    .line 263
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->isNeedInputMoney:Z

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Lcom/leidong/sdk/m/views/MoneySelectDialog;

    invoke-direct {v0, p1}, Lcom/leidong/sdk/m/views/MoneySelectDialog;-><init>(Landroid/content/Context;)V

    .line 266
    new-instance v1, Lcom/leidong/sdk/m/controller/PlatformManager$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/leidong/sdk/m/controller/PlatformManager$3;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager;Ljava/util/HashMap;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/m/views/MoneySelectDialog;->setMoneyCallback(Lcom/leidong/sdk/m/views/MoneySelectDialog$MoneyCallback;)V

    .line 279
    invoke-virtual {v0}, Lcom/leidong/sdk/m/views/MoneySelectDialog;->show()V

    goto :goto_1

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/leidong/sdk/m/controller/PlatformManager;->isOldSdk()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/leidong/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "userPay-m"

    .line 289
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 291
    invoke-direct {p0, p2}, Lcom/leidong/sdk/m/controller/PlatformManager;->userPayM(Ljava/util/HashMap;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "userPay-s"

    .line 284
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/leidong/sdk/m/controller/PlatformManager;->userPayS(Landroid/content/Context;Ljava/util/HashMap;)V

    goto :goto_1

    .line 295
    :cond_3
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    const-string p2, "\u652f\u4ed8\u53c2\u6570\u4e3a\u7a7a"

    invoke-interface {p1, p2}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onPayFail(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public userPayS(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3
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

    .line 1272
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

    if-nez v0, :cond_0

    .line 1273
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/controller/PlatformManager;->doInitS(Landroid/content/Context;)V

    :cond_0
    const-string v0, "order_no"

    .line 1276
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1278
    new-instance v1, Lcom/leidong/sdk/framework/pay/PayInfoBean;

    invoke-direct {v1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;-><init>()V

    const-string v2, "money"

    .line 1279
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setMoney(Ljava/lang/String;)V

    const-string v2, "order_no"

    .line 1280
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setOrder_no(Ljava/lang/String;)V

    const-string v2, "order_name"

    .line 1281
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setOrder_name(Ljava/lang/String;)V

    const-string v2, "order_ext"

    .line 1282
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setOrder_ext(Ljava/lang/String;)V

    const-string v2, "role_id"

    .line 1283
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setRole_id(Ljava/lang/String;)V

    const-string v2, "role_name"

    .line 1284
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setRole_name(Ljava/lang/String;)V

    const-string v2, "role_level"

    .line 1285
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setRole_level(Ljava/lang/String;)V

    const-string v2, "server_id"

    .line 1286
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setServer_id(Ljava/lang/String;)V

    const-string v2, "server_name"

    .line 1287
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setServer_name(Ljava/lang/String;)V

    .line 1289
    iget-object p2, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

    new-instance v2, Lcom/leidong/sdk/m/controller/PlatformManager$15;

    invoke-direct {v2, p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager$15;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager;Ljava/lang/String;)V

    invoke-virtual {p2, p1, v1, v2}, Lcom/leidong/sdk/s/app/LeiSdkCore;->userPay(Landroid/content/Context;Lcom/leidong/sdk/framework/pay/PayInfoBean;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    return-void
.end method

.method public userSwitch(Landroid/content/Context;)V
    .locals 1

    const-string v0, "userSwitch"

    .line 193
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/leidong/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/controller/PlatformManager;->userSwitchS(Landroid/content/Context;)V

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/PlatformCore;->mUserSwitch(Landroid/content/Context;)V

    return-void
.end method

.method public userSwitchS(Landroid/content/Context;)V
    .locals 2

    .line 1234
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

    if-nez v0, :cond_0

    .line 1235
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/controller/PlatformManager;->doInitS(Landroid/content/Context;)V

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

    new-instance v1, Lcom/leidong/sdk/m/controller/PlatformManager$14;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/m/controller/PlatformManager$14;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/s/app/LeiSdkCore;->userSwitch(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    return-void
.end method
