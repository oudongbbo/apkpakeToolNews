.class public Lcom/leidong/sdk/s/core/http/ResponseManager;
.super Ljava/lang/Object;
.source "ResponseManager.java"


# static fields
.field public static final LOGIN_BY_ACCESS:I = 0x3

.field public static final LOGIN_BY_PHONE:I = 0x1

.field public static final LOGIN_BY_TOKEN:I = 0x2


# instance fields
.field public final ERROR_CODE_DATAPARSE:I

.field public final ERROR_CODE_INIT:I

.field public final ERROR_CODE_SKIN:I

.field public final ERROR_STRING_DATAPARSE:Ljava/lang/String;

.field public final ERROR_STRING_INIT:Ljava/lang/String;

.field public final ERROR_STRING_LOGIN:Ljava/lang/String;

.field public final ERROR_STRING_SKIN:Ljava/lang/String;

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x18704

    .line 36
    iput v0, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->ERROR_CODE_DATAPARSE:I

    const v0, 0x18705

    .line 37
    iput v0, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->ERROR_CODE_INIT:I

    const v0, 0x18706

    .line 38
    iput v0, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->ERROR_CODE_SKIN:I

    const-string v0, "\u6570\u636e\u89e3\u6790\u9519\u8bef"

    .line 40
    iput-object v0, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->ERROR_STRING_DATAPARSE:Ljava/lang/String;

    const-string v0, "\u5e73\u53f0\u521d\u59cb\u5316\u6570\u636e\u89e3\u6790\u5931\u8d25"

    .line 41
    iput-object v0, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->ERROR_STRING_INIT:Ljava/lang/String;

    const-string v0, "\u66f4\u65b0\u6362\u80a4\u8d44\u6e90\u6570\u636e\u89e3\u6790\u5931\u8d25"

    .line 42
    iput-object v0, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->ERROR_STRING_SKIN:Ljava/lang/String;

    const-string v0, "\u767b\u5f55\u65f6\u6570\u636e\u89e3\u6790\u5931\u8d25"

    .line 43
    iput-object v0, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->ERROR_STRING_LOGIN:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getGameMessage(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 680
    new-instance v0, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;

    invoke-direct {v0}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;-><init>()V

    .line 681
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p3, p2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "app_name"

    .line 682
    invoke-static {v1, p2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;->setAppName(Ljava/lang/String;)V

    const-string p2, "category_name"

    .line 683
    invoke-static {v1, p2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;->setCategoryName(Ljava/lang/String;)V

    const-string p2, "app_icon"

    .line 684
    invoke-static {v1, p2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;->setIconUrl(Ljava/lang/String;)V

    const-string p2, "dow_url"

    .line 685
    invoke-static {v1, p2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;->setDownloadUrl(Ljava/lang/String;)V

    .line 686
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private handleDialogTips(Landroid/content/Context;)V
    .locals 1

    .line 288
    new-instance v0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;

    invoke-direct {v0, p1}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;-><init>(Landroid/content/Context;)V

    .line 289
    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->show()V

    .line 290
    invoke-static {p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->setUserName(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public handlGetUname(Ljava/lang/String;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 2

    .line 300
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {v0, p1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 303
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uname"

    .line 304
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "uname"

    .line 305
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-interface {p2, v0}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 309
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, "\u83b7\u53d6\u7528\u6237\u540d\u65f6\u53d1\u751f\u9519\u8bef"

    .line 310
    invoke-interface {p2, p1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public handlPaySuccess(Ljava/lang/String;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 4

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    .line 322
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {v3, p1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "my_order_no"

    .line 324
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "my_order_no"

    .line 325
    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v3, "paycenter_url"

    .line 327
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "paycenter_url"

    .line 328
    invoke-static {p1, v1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v3, "m_ext"

    .line 330
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "m_ext"

    .line 331
    invoke-static {p1, v2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz p2, :cond_3

    .line 335
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "no"

    .line 336
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "url"

    .line 337
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ext"

    .line 338
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-interface {p2, p1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 343
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, "\u652f\u4ed8\u65f6\u53d1\u751f\u9519\u8bef"

    .line 344
    invoke-interface {p2, p1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public handleBindInfoByName(Ljava/lang/String;Lcom/leidong/sdk/framework/interfaces/ResultCallback2;)V
    .locals 2

    .line 697
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {v0, p1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "mobile"

    .line 699
    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 701
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u8be5\u5e10\u53f7\u6ca1\u6709\u7ed1\u5b9a\u4fe1\u606f\uff0c\u8bf7\u8f93\u5165\u5df2\u7ed1\u5b9a\u624b\u673a\u53f7\u7684\u5e10\u53f7"

    .line 703
    invoke-interface {p2, p1}, Lcom/leidong/sdk/framework/interfaces/ResultCallback2;->onFail(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 706
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mobile"

    .line 707
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-interface {p2, v0}, Lcom/leidong/sdk/framework/interfaces/ResultCallback2;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 712
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, "\u83b7\u53d6\u7ed1\u5b9a\u4fe1\u606f\u65f6\uff0c\u6570\u636e\u89e3\u6790\u5931\u8d25"

    .line 713
    invoke-interface {p2, p1}, Lcom/leidong/sdk/framework/interfaces/ResultCallback2;->onFail(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleExitGameData(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 650
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 651
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "display_type"

    .line 652
    invoke-static {v1, p1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string p1, "image_url"

    .line 654
    invoke-static {v1, p1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/leidong/sdk/s/core/http/RequestUrls;->URL_EXIT_IMAGE:Ljava/lang/String;

    const-string p1, "target_url"

    .line 655
    invoke-static {v1, p1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/leidong/sdk/s/core/http/RequestUrls;->URL_EXIT_URL:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 658
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "app_game_1"

    .line 660
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "app_game_1"

    .line 661
    invoke-direct {p0, p1, v2, v1}, Lcom/leidong/sdk/s/core/http/ResponseManager;->getGameMessage(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    const-string v2, "app_game_2"

    .line 663
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "app_game_2"

    .line 664
    invoke-direct {p0, p1, v2, v1}, Lcom/leidong/sdk/s/core/http/ResponseManager;->getGameMessage(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2
    const-string v2, "app_game_3"

    .line 666
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "app_game_3"

    .line 667
    invoke-direct {p0, p1, v2, v1}, Lcom/leidong/sdk/s/core/http/ResponseManager;->getGameMessage(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object p1

    :catch_0
    move-exception p1

    .line 673
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    return-object v0
.end method

.method public handleInit(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 11

    .line 426
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "url"

    .line 429
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "url"

    .line 431
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 432
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-static {v1}, Lcom/leidong/sdk/s/core/http/RequestUrls;->initWebpages(Lorg/json/JSONObject;)V

    .line 438
    invoke-static {v1}, Lcom/leidong/sdk/s/core/http/RequestUrls;->initApis(Lorg/json/JSONObject;)V

    :cond_0
    const-string p1, "authConf"

    .line 455
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "authConf"

    .line 457
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 458
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "isLoginAuth"

    .line 460
    invoke-static {v1, p1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p1

    const-string v2, "isPlayAuth"

    .line 461
    invoke-static {v1, v2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "isAuthNotice"

    .line 463
    invoke-static {v1, v3}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "isNoAdultNotice"

    .line 464
    invoke-static {v1, v4}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    const-string v5, "isPlayNotice"

    .line 465
    invoke-static {v1, v5}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    const-string v6, "noAuthNoticeTime"

    .line 467
    invoke-static {v1, v6}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    const-string v7, "noAdultNoticeTime"

    .line 468
    invoke-static {v1, v7}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    const-string v8, "noAdultPlayMax"

    .line 469
    invoke-static {v1, v8}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v8

    const-string v9, "isNoAuthClose"

    .line 471
    invoke-static {v1, v9}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v9

    const-string v10, "isNoAdultClose"

    .line 472
    invoke-static {v1, v10}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    .line 474
    iget-object v10, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v10, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserIsLoginAuth(Landroid/content/Context;Z)V

    .line 475
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserIsPayAuth(Landroid/content/Context;Z)V

    .line 476
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserIsAuthNotice(Landroid/content/Context;Z)V

    .line 477
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v4}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserIsAdultNotice(Landroid/content/Context;Z)V

    .line 478
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v5}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserIsPayNotice(Landroid/content/Context;Z)V

    .line 479
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v6}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserIsAuthNoticeTime(Landroid/content/Context;I)V

    .line 480
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v7}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserIsAdultNoticeTime(Landroid/content/Context;I)V

    .line 481
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v8}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserNoAdultPayMax(Landroid/content/Context;I)V

    .line 482
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v9}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserCanAuthClose(Landroid/content/Context;Z)V

    .line 483
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserCanAdultClose(Landroid/content/Context;Z)V

    goto :goto_0

    .line 486
    :cond_1
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserIsLoginAuth(Landroid/content/Context;Z)V

    .line 487
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserIsPayAuth(Landroid/content/Context;Z)V

    .line 488
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserIsAuthNotice(Landroid/content/Context;Z)V

    .line 489
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserIsAdultNotice(Landroid/content/Context;Z)V

    .line 490
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserIsPayNotice(Landroid/content/Context;Z)V

    .line 491
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserCanAuthClose(Landroid/content/Context;Z)V

    .line 492
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserCanAdultClose(Landroid/content/Context;Z)V

    :goto_0
    const-string p1, "dialogQuit"

    .line 496
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "dialogQuit"

    .line 498
    invoke-static {v0, p1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 500
    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setExitGameData(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 504
    :cond_2
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const-string v1, ""

    invoke-static {p1, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setExitGameData(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string p1, "topScroll"

    .line 508
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "topScroll"

    .line 509
    invoke-static {v0, p1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v0, "content"

    .line 511
    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    .line 512
    invoke-static {p1, v1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 513
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 514
    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setScrollMessageText(Landroid/content/Context;Ljava/lang/String;)V

    .line 516
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 517
    iget-object v0, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setScrollMessageUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 522
    :cond_5
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setScrollMessageText(Landroid/content/Context;Ljava/lang/String;)V

    .line 523
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setScrollMessageUrl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    :goto_2
    const-string p1, "\u81ea\u8425SDK\u521d\u59cb\u5316\u5b8c\u6210"

    .line 527
    invoke-interface {p2, p1}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 531
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const p1, 0x18705

    const-string v0, "\u5e73\u53f0\u521d\u59cb\u5316\u6570\u636e\u89e3\u6790\u5931\u8d25"

    .line 532
    invoke-interface {p2, p1, v0}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    :goto_3
    return-void
.end method

.method public handleLoginSuccess(Ljava/lang/String;Ljava/lang/String;IZLcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 10

    .line 93
    :try_start_0
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    .line 94
    invoke-static {p4, p1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "uinfo"

    .line 96
    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/leidong/sdk/framework/encrypt/CodeManager;->decodeSpecial(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[uinfo]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/leidong/sdk/s/core/utils/SLogUtil;->w(Ljava/lang/String;)V

    .line 101
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    .line 125
    :pswitch_0
    iget-object v0, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const-string v2, "uid"

    invoke-static {v1, v2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const-string v2, "uname"

    invoke-static {v1, v2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const-string v2, "vname"

    invoke-static {v1, v2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserVname(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const-string v1, "access_token"

    invoke-static {p1, v1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserToken(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v0, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const-string v1, "access_token"

    invoke-static {p1, v1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserToken(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :pswitch_2
    iget-object v0, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const-string v2, "uid"

    invoke-static {v1, v2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const-string v2, "uname"

    invoke-static {v1, v2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const-string v2, "vname"

    invoke-static {v1, v2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserVname(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const-string v2, "access_token"

    invoke-static {p1, v2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setUserToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const-string v2, "vname"

    invoke-static {v1, v2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "access_token"

    invoke-static {p1, v2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    new-instance v0, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;

    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;-><init>(Landroid/content/Context;)V

    const-string v1, "float"

    .line 138
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    const-string v1, "float"

    .line 139
    invoke-static {p1, v1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "display"

    .line 141
    invoke-static {v1, v4}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 145
    invoke-virtual {v0, v3}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->setShowFloatBall(Z)V

    .line 147
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8bbe\u7f6e\u662f\u5426\u6253\u5f00\u60ac\u6d6e\u7a97:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->isShowFloatBall()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v4, "conf"

    .line 150
    invoke-static {v1, v4}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "user_center"

    .line 151
    invoke-static {v1, v4}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "msg_center"

    .line 152
    invoke-static {v1, v5}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "gift_center"

    .line 153
    invoke-static {v1, v6}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "game_center"

    .line 154
    invoke-static {v1, v7}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "server_center"

    .line 155
    invoke-static {v1, v8}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "game_forum"

    .line 156
    invoke-static {v1, v9}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v9, "display"

    .line 158
    invoke-static {v4, v9}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "display"

    .line 159
    invoke-static {v5, v9}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "display"

    .line 160
    invoke-static {v6, v9}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "display"

    .line 161
    invoke-static {v7, v9}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "display"

    .line 162
    invoke-static {v8, v9}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "display"

    .line 163
    invoke-static {v1, v9}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "1"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 167
    invoke-virtual {v0, v2}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonUcenter(Z)V

    goto :goto_1

    .line 169
    :cond_0
    invoke-virtual {v0, v3}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonUcenter(Z)V

    .line 171
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    invoke-virtual {v0, v3}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonMsg(Z)V

    goto :goto_2

    .line 174
    :cond_1
    invoke-virtual {v0, v2}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonMsg(Z)V

    .line 176
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 177
    invoke-virtual {v0, v3}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonGift(Z)V

    goto :goto_3

    .line 179
    :cond_2
    invoke-virtual {v0, v2}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonGift(Z)V

    .line 181
    :goto_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 182
    invoke-virtual {v0, v3}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonGame(Z)V

    goto :goto_4

    .line 184
    :cond_3
    invoke-virtual {v0, v2}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonGame(Z)V

    .line 186
    :goto_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "1"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 187
    invoke-virtual {v0, v3}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonCService(Z)V

    goto :goto_5

    .line 189
    :cond_4
    invoke-virtual {v0, v2}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonCService(Z)V

    .line 191
    :goto_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 192
    invoke-virtual {v0, v3}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonBBS(Z)V

    goto :goto_6

    .line 194
    :cond_5
    invoke-virtual {v0, v2}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonBBS(Z)V

    goto :goto_6

    .line 199
    :cond_6
    invoke-virtual {v0, v2}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->setShowFloatBall(Z)V

    goto :goto_6

    .line 205
    :cond_7
    invoke-virtual {v0, v2}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->setShowFloatBall(Z)V

    :goto_6
    const/4 v0, 0x3

    if-ne p3, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    :goto_7
    if-ne p3, v3, :cond_9

    const/4 v1, 0x1

    goto :goto_8

    :cond_9
    const/4 v1, 0x0

    :goto_8
    or-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 210
    new-instance v0, Lcom/leidong/sdk/framework/user/UserInfoBean;

    invoke-direct {v0}, Lcom/leidong/sdk/framework/user/UserInfoBean;-><init>()V

    .line 211
    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/user/UserInfoBean;->setUname(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/user/UserInfoBean;->setVname(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, p2}, Lcom/leidong/sdk/framework/user/UserInfoBean;->setPwd(Ljava/lang/String;)V

    .line 214
    new-instance p2, Lcom/leidong/sdk/framework/user/AccountManager;

    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/leidong/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1, v0}, Lcom/leidong/sdk/framework/user/AccountManager;->addAccountToFile(Landroid/content/Context;Lcom/leidong/sdk/framework/user/UserInfoBean;)V

    .line 215
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[\u4fdd\u5b58\u5e10\u53f7]"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/user/UserInfoBean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/leidong/sdk/s/core/utils/SLogUtil;->w(Ljava/lang/String;)V

    :cond_a
    const-string p2, "dialog"

    .line 221
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "dialog"

    .line 222
    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_b

    const-string v0, "target_url"

    .line 224
    invoke-static {p2, v0}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "touch_back_close"

    .line 225
    invoke-static {p2, v1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "2"

    .line 226
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v3

    .line 227
    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v1, v0, p2, v3, v4}, Lcom/leidong/sdk/s/core/utils/SdkUtil;->openWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    :cond_b
    const-string p2, ""

    const-string v0, "app_active"

    .line 232
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p2, "app_active"

    .line 233
    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_c
    if-eqz p5, :cond_f

    .line 239
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "uid"

    .line 240
    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uname"

    .line 241
    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vname"

    .line 242
    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "token"

    .line 243
    iget-object v1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app_active"

    .line 244
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "is_reg"

    .line 247
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    const-string p2, "is_reg"

    const-string v0, "is_reg"

    .line 248
    invoke-static {p4, v0}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_9

    :cond_d
    const-string p2, "is_reg"

    .line 250
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_9
    const-string p2, "loginType"

    .line 253
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    const-string p2, "loginType"

    const-string p3, "loginType"

    .line 254
    invoke-static {p4, p3}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    packed-switch p3, :pswitch_data_1

    goto :goto_a

    :pswitch_3
    const-string p2, "loginType"

    const-string p3, "account"

    .line 265
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_4
    const-string p2, "loginType"

    const-string p3, "token"

    .line 262
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_5
    const-string p2, "loginType"

    const-string p3, "phone"

    .line 259
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :goto_a
    invoke-interface {p5, p1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    .line 275
    iget-object p1, p0, Lcom/leidong/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/leidong/sdk/s/core/http/ResponseManager;->handleDialogTips(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception p1

    .line 278
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, "\u767b\u5f55\u65f6\u6570\u636e\u89e3\u6790\u5931\u8d25"

    .line 279
    invoke-interface {p5, p1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    :cond_f
    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public handleRepContent(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V
    .locals 3

    .line 64
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    .line 65
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 67
    invoke-interface {p2, p1}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "msg"

    .line 69
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-interface {p2, v1, p1}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const p1, 0x18704

    const-string v0, "\u6570\u636e\u89e3\u6790\u9519\u8bef"

    .line 74
    invoke-interface {p2, p1, v0}, Lcom/leidong/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleUserAuth(Ljava/lang/String;Lcom/leidong/sdk/framework/interfaces/ResultCallback2;)V
    .locals 5

    .line 725
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {v0, p1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "hasNameAuth"

    .line 727
    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "isAdult"

    .line 728
    invoke-static {p1, v1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "age"

    .line 729
    invoke-static {p1, v2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    const-string v3, "hasGuard"

    .line 730
    invoke-static {p1, v3}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p1

    .line 733
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "hasNameAuth"

    .line 734
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isAdult"

    .line 735
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "hasGuard"

    .line 736
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "age"

    .line 737
    invoke-virtual {v3, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 739
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5f53\u524d\u7528\u5b9e\u540d\u4fe1\u606f\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/leidong/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 741
    invoke-interface {p2, v3}, Lcom/leidong/sdk/framework/interfaces/ResultCallback2;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 743
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "\u83b7\u53d6\u7528\u6237\u5b9e\u540d\u4fe1\u606f\u662f\u53d1\u751f\u9519\u8bef"

    .line 744
    invoke-interface {p2, p1}, Lcom/leidong/sdk/framework/interfaces/ResultCallback2;->onFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleUserNoAdultPayMount(Ljava/lang/String;Lcom/leidong/sdk/framework/interfaces/ResultCallback2;)V
    .locals 2

    .line 755
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {v0, p1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "amount"

    .line 757
    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p1

    .line 760
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "amount"

    .line 761
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 762
    invoke-interface {p2, v0}, Lcom/leidong/sdk/framework/interfaces/ResultCallback2;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 764
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "\u83b7\u53d6\u672a\u6210\u5e74\u7528\u6237\u7684\u6bcf\u65e5\u91d1\u989d\u9650\u989d\uff0c\u53d1\u751f\u9519\u8bef"

    .line 765
    invoke-interface {p2, p1}, Lcom/leidong/sdk/framework/interfaces/ResultCallback2;->onFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
