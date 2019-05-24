.class public Lcom/leidong/sdk/m/http/MReqManager;
.super Ljava/lang/Object;
.source "MReqManager.java"


# static fields
.field public static final GET:Ljava/lang/String; = "GET"

.field public static final POST:Ljava/lang/String; = "POST"


# instance fields
.field private httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/leidong/sdk/framework/http/HttpManager;

    invoke-direct {v0, p1}, Lcom/leidong/sdk/framework/http/HttpManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leidong/sdk/m/http/MReqManager;->httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

    return-void
.end method

.method private request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/leidong/sdk/framework/http/HttpCallBack;",
            ")V"
        }
    .end annotation

    .line 236
    new-instance v0, Lcom/leidong/sdk/framework/http/HttpBean;

    invoke-direct {v0}, Lcom/leidong/sdk/framework/http/HttpBean;-><init>()V

    .line 237
    invoke-virtual {v0, p2}, Lcom/leidong/sdk/framework/http/HttpBean;->setReqUrl(Ljava/lang/String;)V

    .line 238
    iget-object p2, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/leidong/sdk/framework/utils/ReqUtil;->addCommonParams(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/leidong/sdk/framework/http/HttpBean;->setParams(Ljava/util/HashMap;)V

    .line 239
    invoke-virtual {v0, p4}, Lcom/leidong/sdk/framework/http/HttpBean;->setLoading(Z)V

    const-string p2, ""

    .line 240
    invoke-virtual {v0, p2}, Lcom/leidong/sdk/framework/http/HttpBean;->setLoadingText(Ljava/lang/String;)V

    .line 242
    iget-object p2, p0, Lcom/leidong/sdk/m/http/MReqManager;->httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

    sget-boolean p3, Lcom/leidong/sdk/m/utils/MLogUtil;->isShowLog:Z

    invoke-virtual {p2, p3}, Lcom/leidong/sdk/framework/http/HttpManager;->setIsShowLog(Z)V

    const-string p2, "POST"

    .line 243
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 244
    iget-object p1, p0, Lcom/leidong/sdk/m/http/MReqManager;->httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

    invoke-virtual {p1, v0, p5}, Lcom/leidong/sdk/framework/http/HttpManager;->post(Lcom/leidong/sdk/framework/http/HttpBean;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/m/http/MReqManager;->httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

    invoke-virtual {p1, v0, p5}, Lcom/leidong/sdk/framework/http/HttpManager;->get(Lcom/leidong/sdk/framework/http/HttpBean;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    :goto_0
    return-void
.end method

.method private requestFree(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/leidong/sdk/framework/http/HttpCallBack;",
            ")V"
        }
    .end annotation

    .line 254
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x194

    const-string p2, "url\u4e3a\u7a7a"

    .line 255
    invoke-interface {p5, p1, p2}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : ------------>url\u4e3a\u7a7a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/leidong/sdk/framework/utils/LogUtil;->e(Ljava/lang/String;)V

    return-void

    .line 261
    :cond_0
    new-instance v0, Lcom/leidong/sdk/framework/http/HttpBean;

    invoke-direct {v0}, Lcom/leidong/sdk/framework/http/HttpBean;-><init>()V

    .line 262
    invoke-virtual {v0, p2}, Lcom/leidong/sdk/framework/http/HttpBean;->setReqUrl(Ljava/lang/String;)V

    .line 263
    iget-object p2, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/leidong/sdk/framework/utils/ReqUtil;->addAuthParams(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/leidong/sdk/framework/http/HttpBean;->setParams(Ljava/util/HashMap;)V

    .line 264
    invoke-virtual {v0, p4}, Lcom/leidong/sdk/framework/http/HttpBean;->setLoading(Z)V

    const-string p2, ""

    .line 265
    invoke-virtual {v0, p2}, Lcom/leidong/sdk/framework/http/HttpBean;->setLoadingText(Ljava/lang/String;)V

    .line 266
    iget-object p2, p0, Lcom/leidong/sdk/m/http/MReqManager;->httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

    sget-boolean p3, Lcom/leidong/sdk/m/utils/MLogUtil;->isShowLog:Z

    invoke-virtual {p2, p3}, Lcom/leidong/sdk/framework/http/HttpManager;->setIsShowLog(Z)V

    .line 267
    iget-object p2, p0, Lcom/leidong/sdk/m/http/MReqManager;->httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

    sget-boolean p3, Lcom/leidong/sdk/m/utils/MLogUtil;->isShowLog:Z

    invoke-virtual {p2, p3}, Lcom/leidong/sdk/framework/http/HttpManager;->setIsShowLog(Z)V

    const-string p2, "POST"

    .line 269
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 270
    iget-object p1, p0, Lcom/leidong/sdk/m/http/MReqManager;->httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

    invoke-virtual {p1, v0, p5}, Lcom/leidong/sdk/framework/http/HttpManager;->post(Lcom/leidong/sdk/framework/http/HttpBean;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    goto :goto_0

    .line 272
    :cond_1
    iget-object p1, p0, Lcom/leidong/sdk/m/http/MReqManager;->httpManager:Lcom/leidong/sdk/framework/http/HttpManager;

    invoke-virtual {p1, v0, p5}, Lcom/leidong/sdk/framework/http/HttpManager;->get(Lcom/leidong/sdk/framework/http/HttpBean;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public postSdkErrorAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 200
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "error_msg"

    .line 201
    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "action"

    .line 202
    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "sdk_ver"

    .line 203
    iget-object v0, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "POST"

    .line 205
    sget-object v2, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_COLLECT_SDK_ERROR:Ljava/lang/String;

    new-instance v5, Lcom/leidong/sdk/m/http/MReqManager$3;

    invoke-direct {v5, p0, p1}, Lcom/leidong/sdk/m/http/MReqManager$3;-><init>(Lcom/leidong/sdk/m/http/MReqManager;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/leidong/sdk/m/http/MReqManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public requestActive(Ljava/lang/String;Ljava/lang/String;ZLcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 8

    .line 156
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "tm"

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gid"

    .line 158
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getGameId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pid"

    .line 159
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getGamePid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "access_token"

    .line 160
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "code_id"

    .line 161
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "active_code"

    .line 162
    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GET"

    .line 164
    sget-object v2, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_USER_ACTIVE:Ljava/lang/String;

    move-object v0, p0

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/leidong/sdk/m/http/MReqManager;->requestFree(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public requestActiveCheck(Ljava/lang/String;ZLcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 8

    .line 142
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "tm"

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gid"

    .line 144
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getGameId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pid"

    .line 145
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getGamePid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "access_token"

    .line 146
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "code_id"

    .line 147
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GET"

    .line 149
    sget-object v2, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_USER_ACTIVE_CHECK:Ljava/lang/String;

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/leidong/sdk/m/http/MReqManager;->requestFree(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public requestCollect(Lcom/leidong/sdk/framework/http/HttpCallBack;Z)V
    .locals 6

    .line 34
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "sdk_ver"

    .line 35
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "package_name"

    .line 36
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mac"

    .line 37
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "imei"

    .line 38
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wpi"

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getWpixels(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hpi"

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getHpixels(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "device_brand"

    .line 41
    invoke-static {}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "device_model"

    .line 42
    invoke-static {}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "net"

    .line 43
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getNetWorkTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "os_ver"

    .line 44
    invoke-static {}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getOSVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "client"

    const-string v1, "android"

    .line 46
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "POST"

    .line 48
    sget-object v2, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_COLLECT_DEVICE:Ljava/lang/String;

    move-object v0, p0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/leidong/sdk/m/http/MReqManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public requestInit(Lcom/leidong/sdk/framework/http/HttpCallBack;Z)V
    .locals 6

    .line 53
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "mac"

    .line 54
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "imei"

    .line 55
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_ver"

    .line 56
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_ver"

    .line 57
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getAppInfo(Landroid/content/Context;)Lcom/leidong/open/utils/AppUtils$AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/open/utils/AppUtils$AppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_vercode"

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getAppInfo(Landroid/content/Context;)Lcom/leidong/open/utils/AppUtils$AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/leidong/open/utils/AppUtils$AppInfo;->getVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "client"

    const-string v1, "android"

    .line 59
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "POST"

    .line 61
    sget-object v2, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_INIT:Ljava/lang/String;

    move-object v0, p0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/leidong/sdk/m/http/MReqManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public requestLogin(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;Z)V
    .locals 6

    .line 66
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "partner_login_data"

    .line 67
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "POST"

    .line 68
    sget-object v2, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_CHANNEL_LOGIN:Ljava/lang/String;

    move-object v0, p0

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/leidong/sdk/m/http/MReqManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public requestPay(Ljava/util/HashMap;Ljava/lang/String;ZLcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/leidong/sdk/framework/http/HttpCallBack;",
            ")V"
        }
    .end annotation

    .line 81
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "amt"

    const-string v1, "money"

    .line 82
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "game_order_no"

    const-string v1, "order_no"

    .line 83
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "goods_name"

    const-string v1, "order_name"

    .line 84
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "game_ext"

    const-string v1, "order_ext"

    .line 85
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_id"

    const-string v1, "role_id"

    .line 86
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_name"

    const-string v1, "role_name"

    .line 87
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_level"

    const-string v1, "role_level"

    .line 88
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_id"

    const-string v1, "server_id"

    .line 89
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_name"

    const-string v1, "server_name"

    .line 90
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "access_token"

    .line 91
    iget-object v0, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "partner_pay_data"

    .line 92
    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "client"

    const-string p2, "android"

    .line 93
    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sdk_ver"

    .line 94
    iget-object p2, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/leidong/sdk/m/model/MConfigManager;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "POST"

    .line 97
    sget-object v2, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_ORDER_CREATE:Ljava/lang/String;

    move-object v0, p0

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/leidong/sdk/m/http/MReqManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public requestPush(ZLcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 6

    .line 102
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "sdk_ver"

    .line 103
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GET"

    .line 106
    sget-object v2, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_USER_PUSH:Ljava/lang/String;

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/leidong/sdk/m/http/MReqManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public submitRoleInfos(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 119
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "action"

    .line 120
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "client"

    const-string v1, "android"

    .line 121
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_info"

    .line 122
    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "access_token"

    .line 123
    iget-object v0, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "POST"

    .line 125
    sget-object v2, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_COLLECT_ROLE:Ljava/lang/String;

    new-instance v5, Lcom/leidong/sdk/m/http/MReqManager$1;

    invoke-direct {v5, p0, p1}, Lcom/leidong/sdk/m/http/MReqManager$1;-><init>(Lcom/leidong/sdk/m/http/MReqManager;Ljava/lang/String;)V

    move-object v0, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/leidong/sdk/m/http/MReqManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public submitSdkAction(Ljava/lang/String;)V
    .locals 6

    .line 173
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "run_id"

    .line 174
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getSdkRunID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "action"

    .line 175
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_ver"

    .line 176
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "POST"

    .line 178
    sget-object v2, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_COLLECT_SDK_RUNNING:Ljava/lang/String;

    new-instance v5, Lcom/leidong/sdk/m/http/MReqManager$2;

    invoke-direct {v5, p0, p1}, Lcom/leidong/sdk/m/http/MReqManager$2;-><init>(Lcom/leidong/sdk/m/http/MReqManager;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/leidong/sdk/m/http/MReqManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public submitSdkAction(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 6

    .line 226
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "run_id"

    .line 227
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getSdkRunID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "action"

    .line 228
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sdk_ver"

    .line 229
    iget-object v0, p0, Lcom/leidong/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "POST"

    .line 230
    sget-object v2, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_COLLECT_SDK_RUNNING:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/leidong/sdk/m/http/MReqManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method
