.class public Lcom/leidong/sdk/m/http/MRepManager;
.super Ljava/lang/Object;
.source "MRepManager.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/m/http/MRepManager;Lorg/json/JSONObject;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/m/http/MRepManager;->handleInitUpdate(Lorg/json/JSONObject;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public static getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 395
    invoke-static {p0, p1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 391
    invoke-static {p0, p1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 383
    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 387
    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleInitApiAndWeb(Lorg/json/JSONObject;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 1

    :try_start_0
    const-string v0, "common"

    .line 151
    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 153
    invoke-static {v0}, Lcom/leidong/sdk/m/http/MReqUrls;->initWebpages(Lorg/json/JSONObject;)V

    .line 155
    invoke-static {v0}, Lcom/leidong/sdk/m/http/MReqUrls;->initApis(Lorg/json/JSONObject;)V

    const-string v0, "channel"

    .line 158
    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 160
    invoke-static {p1}, Lcom/leidong/sdk/m/http/MReqUrls;->initChannel(Lorg/json/JSONObject;)V

    .line 162
    iget-object v0, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setInitGameData(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "\u521d\u59cb\u5316\u5b8c\u6210"

    .line 164
    invoke-interface {p2, p1}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 168
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    const-string v0, "API\u63a5\u53e3\u89e3\u6790\u5931\u8d25"

    .line 169
    invoke-interface {p2, p1, v0}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleInitUpdate(Lorg/json/JSONObject;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 4

    :try_start_0
    const-string v0, "common"

    .line 122
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "up"

    .line 123
    invoke-direct {p0, v0, v1}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "state"

    .line 125
    invoke-direct {p0, v0, v1}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "desc"

    .line 126
    invoke-direct {p0, v0, v2}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    .line 127
    invoke-direct {p0, v0, v3}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    .line 128
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p1, v1, v2, v0}, Lcom/leidong/sdk/m/controller/UpdateManager;->checkUpdate(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v0}, Lcom/leidong/sdk/m/controller/UpdateManager;->checkUpdate(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/m/http/MRepManager;->handleInitApiAndWeb(Lorg/json/JSONObject;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    goto :goto_0

    .line 138
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/m/http/MRepManager;->handleInitApiAndWeb(Lorg/json/JSONObject;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    const-string v0, "\u66f4\u65b0\u6570\u636e\u89e3\u6790\u5931\u8d25"

    .line 142
    invoke-interface {p2, p1, v0}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public handleActiveCheckResult(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 2

    .line 219
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "active"

    invoke-static {p1, v0}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p1

    if-eqz p2, :cond_0

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 225
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, -0x1

    const-string v0, "\u83b7\u53d6\u6e38\u620f\u6fc0\u6d3b\u72b6\u6001\u5931\u8d25"

    .line 226
    invoke-interface {p2, p1, v0}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public handleActiveResult(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 2

    .line 237
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "active"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p2, :cond_0

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 242
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, -0x1

    const-string v0, "\u83b7\u53d6\u7528\u6237\u6fc0\u6d3b\u7801\u6570\u636e\u5931\u8d25"

    .line 243
    invoke-interface {p2, p1, v0}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public handleAppActive(Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V
    .locals 4

    .line 355
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "state"

    .line 356
    invoke-direct {p0, v0, p1}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    .line 358
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "target_url"

    .line 360
    invoke-direct {p0, v0, p1}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "a_qq_group_key"

    .line 361
    invoke-direct {p0, v0, v1}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "code_id"

    .line 362
    invoke-direct {p0, v0, v2}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "url"

    .line 365
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "a_qq_group_key"

    .line 366
    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "code_id"

    .line 367
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-interface {p2, v2}, Lcom/leidong/sdk/m/interfaces/MsdkCallback;->onSuccess(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u4e0d\u9700\u8981\u6fc0\u6d3b\u7801"

    .line 371
    invoke-interface {p2, p1}, Lcom/leidong/sdk/m/interfaces/MsdkCallback;->onFail(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 374
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    .line 376
    invoke-interface {p2, p1}, Lcom/leidong/sdk/m/interfaces/MsdkCallback;->onFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleInit(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 5

    .line 55
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "common"

    .line 56
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "device"

    .line 59
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const-string v1, "device"

    .line 60
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    iget-object v3, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/leidong/sdk/m/utils/MsdkUtils;->unZipString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/leidong/sdk/m/utils/MLogUtil;->w(Ljava/lang/String;)V

    .line 64
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "is"

    .line 66
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "type"

    .line 67
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_0

    const-string v4, "1"

    .line 69
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/leidong/sdk/m/model/MConfigManager;->setIsNewLogin(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const-string v1, "2"

    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/leidong/sdk/m/model/MConfigManager;->setIsNewLoginAfterChannel(Landroid/content/Context;Z)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/leidong/sdk/m/model/MConfigManager;->setIsNewLogin(Landroid/content/Context;Z)V

    .line 76
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/leidong/sdk/m/model/MConfigManager;->setIsNewLoginAfterChannel(Landroid/content/Context;Z)V

    :cond_2
    :goto_0
    const-string v1, "dialogInit"

    .line 81
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "dialogInit"

    .line 83
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    const-string v0, "touch_back_close"

    .line 87
    invoke-direct {p0, v1, v0}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "target_url"

    .line 88
    invoke-direct {p0, v1, v3}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "2"

    .line 89
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u521d\u59cb\u5316\u5f39\u7a97\u662f\u5426\u53ef\u9000\u51fa\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/leidong/sdk/m/utils/MLogUtil;->d(Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/leidong/sdk/m/http/MRepManager$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/leidong/sdk/m/http/MRepManager$1;-><init>(Lcom/leidong/sdk/m/http/MRepManager;Lorg/json/JSONObject;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    invoke-static {v3, v1, v0, v2, v4}, Lcom/leidong/sdk/m/utils/MsdkUtils;->showWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    goto :goto_1

    .line 106
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/m/http/MRepManager;->handleInitUpdate(Lorg/json/JSONObject;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    goto :goto_1

    .line 110
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/m/http/MRepManager;->handleInitUpdate(Lorg/json/JSONObject;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    const-string v0, "\u521d\u59cb\u5316\u65f6\u53d1\u751f\u9519\u8bef"

    .line 114
    invoke-interface {p2, p1, v0}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public handleLoginSuccess(Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V
    .locals 6

    .line 251
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-direct {p0, v0, p1}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "uinfo"

    .line 252
    invoke-direct {p0, p1, v0}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/leidong/sdk/m/utils/MsdkUtils;->unZipString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {v0}, Lcom/leidong/sdk/m/utils/MLogUtil;->w(Ljava/lang/String;)V

    .line 256
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    const-string v2, "uid"

    invoke-direct {p0, v1, v2}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    const-string v2, "uname"

    invoke-direct {p0, v1, v2}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    const-string v2, "vname"

    invoke-direct {p0, v1, v2}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setUserVname(Landroid/content/Context;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    const-string v2, "pwd"

    invoke-direct {p0, v1, v2}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setUserPassword(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "access_token"

    .line 263
    invoke-direct {p0, p1, v0}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setUserToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    new-instance v1, Lcom/leidong/sdk/framework/user/UserInfoBean;

    invoke-direct {v1}, Lcom/leidong/sdk/framework/user/UserInfoBean;-><init>()V

    .line 268
    iget-object v2, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/user/UserInfoBean;->setUname(Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/user/UserInfoBean;->setVname(Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getUserPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/user/UserInfoBean;->setPwd(Ljava/lang/String;)V

    .line 271
    iget-object v2, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/leidong/sdk/m/utils/MsdkUtils;->addAccount(Landroid/content/Context;Lcom/leidong/sdk/framework/user/UserInfoBean;)V

    const-string v1, "old"

    .line 275
    iget-object v2, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/leidong/sdk/m/model/MConfigManager;->getIsNewLoginAfterChannel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "new"

    .line 277
    iget-object v2, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/leidong/sdk/m/model/MConfigManager;->setIsNewLogin(Landroid/content/Context;Z)V

    :cond_0
    const-string v2, "dialog"

    .line 281
    invoke-direct {p0, p1, v2}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cch_data"

    .line 282
    invoke-direct {p0, p1, v3}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_active"

    .line 283
    invoke-direct {p0, p1, v4}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 286
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "token"

    .line 287
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type"

    .line 288
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dialog"

    .line 289
    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cch_data"

    .line 290
    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app_active"

    .line 291
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-interface {p2, v4}, Lcom/leidong/sdk/m/interfaces/MsdkCallback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 294
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "\u767b\u5f55\u65f6\u89e3\u6790\u6570\u636e\u53d1\u751f\u9519\u8bef."

    .line 295
    invoke-interface {p2, p1}, Lcom/leidong/sdk/m/interfaces/MsdkCallback;->onFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handlePaySuccess(Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V
    .locals 6

    const-string v0, ""

    const-string v1, ""

    .line 181
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-direct {p0, v2, p1}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v2, "my_order_no"

    .line 184
    invoke-direct {p0, p1, v2}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "partner_data"

    .line 186
    invoke-direct {p0, p1, v3}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    iget-object v4, p0, Lcom/leidong/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    const-string v5, "device"

    invoke-direct {p0, p1, v5}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/leidong/sdk/m/utils/MsdkUtils;->unZipString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 189
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    const-string p1, "id"

    .line 191
    invoke-direct {p0, v4, p1}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string p1, "pay_url"

    .line 192
    invoke-direct {p0, v4, p1}, Lcom/leidong/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz p2, :cond_3

    .line 195
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "no"

    .line 196
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cch_data"

    .line 197
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    const-string v3, "ff9aCXiM"

    .line 198
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "new"

    goto :goto_0

    :cond_1
    const-string v0, "old"

    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "url"

    .line 199
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-interface {p2, p1}, Lcom/leidong/sdk/m/interfaces/MsdkCallback;->onSuccess(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    const-string p1, "\u652f\u4ed8\u6570\u636e\u4e3a\u7a7a"

    .line 203
    invoke-interface {p2, p1}, Lcom/leidong/sdk/m/interfaces/MsdkCallback;->onFail(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 206
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, "\u652f\u4ed8\u65f6\u53d1\u751f\u9519\u8bef"

    .line 207
    invoke-interface {p2, p1}, Lcom/leidong/sdk/m/interfaces/MsdkCallback;->onFail(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public handleRepContent(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 3

    .line 34
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    .line 35
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "msg"

    .line 36
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 38
    invoke-interface {p2, p1}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p2, v1, v0}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    const-string v0, "\u6570\u636e\u89e3\u6790\u9519\u8bef"

    .line 44
    invoke-interface {p2, p1, v0}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleRoleCreateTime(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 3

    .line 302
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5904\u7406\u89d2\u8272\u521b\u5efa\u65f6\u95f4"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 305
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "create_time"

    .line 306
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "create_time"

    .line 308
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "create_time\u7684\u503c\u4e0d\u6b63\u786e"

    .line 312
    invoke-interface {p2, v0, p1}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "json\u6570\u636e\u6ca1\u6709\u5b57\u6bb5\uff1acreate_time"

    .line 315
    invoke-interface {p2, v0, p1}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 318
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, "\u89e3\u6790\u89d2\u8272\u521b\u5efa\u65f6\u95f4\u53d1\u751f\u9519\u8bef."

    .line 319
    invoke-interface {p2, v0, p1}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleServerTime(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 3

    .line 326
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u83b7\u53d6\u670d\u52a1\u5668\u65f6\u95f4"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 329
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "service_time"

    .line 330
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "service_time"

    .line 332
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "service_time\u7684\u503c\u4e0d\u6b63\u786e"

    .line 336
    invoke-interface {p2, v0, p1}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "json\u6570\u636e\u6ca1\u6709\u5b57\u6bb5\uff1aservice_time"

    .line 339
    invoke-interface {p2, v0, p1}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 342
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, "\u83b7\u53d6\u670d\u52a1\u5668\u65f6\u95f4\u53d1\u751f\u9519\u8bef."

    .line 343
    invoke-interface {p2, v0, p1}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
