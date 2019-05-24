.class public Lcom/leidong/sdk/s/core/SdkManager;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Lcom/leidong/sdk/s/core/interfaces/SdkInterface;


# static fields
.field public static canLoginCancel:Z = true

.field public static isLoginShowing:Z

.field public static isOnResume:Z

.field public static isPayShowing:Z

.field public static isUCShowing:Z

.field public static sdkContext:Landroid/content/Context;

.field public static sdkUserLogoutCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

.field public static sdkUserPayCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

.field public static sdkUserSwitchCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;


# instance fields
.field private bindDialog:Lcom/leidong/sdk/s/app/login/BindDialog;

.field private loginDialog:Lcom/leidong/sdk/s/app/login/LoginDialog;

.field private requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

.field private responseManager:Lcom/leidong/sdk/s/core/http/ResponseManager;

.field private webDialog:Lcom/leidong/sdk/framework/web/SdkWebDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sput-object p1, Lcom/leidong/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/s/core/SdkManager;)Lcom/leidong/sdk/s/core/http/ResponseManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/leidong/sdk/s/core/SdkManager;->responseManager:Lcom/leidong/sdk/s/core/http/ResponseManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leidong/sdk/s/core/SdkManager;)Lcom/leidong/sdk/s/core/http/RequsetManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/leidong/sdk/s/core/SdkManager;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    return-object p0
.end method

.method private autoLogin(Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 2

    .line 549
    new-instance v0, Lcom/leidong/sdk/s/app/login/AutoLoginDialog;

    sget-object v1, Lcom/leidong/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/leidong/sdk/s/app/login/AutoLoginDialog;-><init>(Landroid/content/Context;)V

    .line 550
    new-instance v1, Lcom/leidong/sdk/s/core/SdkManager$10;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/leidong/sdk/s/core/SdkManager$10;-><init>(Lcom/leidong/sdk/s/core/SdkManager;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/s/app/login/AutoLoginDialog;->setAutoLoginListener(Lcom/leidong/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;)V

    .line 586
    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/AutoLoginDialog;->show()V

    .line 587
    invoke-virtual {v0, p2}, Lcom/leidong/sdk/s/app/login/AutoLoginDialog;->setUserName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getGameMessage(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
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

    .line 620
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p3, p2}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 621
    new-instance p2, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;

    invoke-direct {p2}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;-><init>()V

    const-string p3, "app_name"

    .line 622
    invoke-static {v0, p3}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;->setAppName(Ljava/lang/String;)V

    const-string p3, "category_name"

    .line 623
    invoke-static {v0, p3}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;->setCategoryName(Ljava/lang/String;)V

    const-string p3, "app_icon"

    .line 624
    invoke-static {v0, p3}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;->setIconUrl(Ljava/lang/String;)V

    const-string p3, "dow_url"

    .line 625
    invoke-static {v0, p3}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;->setDownloadUrl(Ljava/lang/String;)V

    .line 626
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isShowFloat()Z
    .locals 1

    .line 634
    sget-object v0, Lcom/leidong/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/leidong/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    .line 635
    invoke-static {v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getSdkSelfLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public handleVisitordialogTips(Landroid/content/Context;)V
    .locals 4

    .line 480
    new-instance v0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-direct {v0, p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "leidong_login_toast_visitorlogin"

    .line 482
    invoke-static {v1, p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 481
    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    move-result-object v1

    const-string v2, "\u53bb\u8f6c\u6b63"

    new-instance v3, Lcom/leidong/sdk/s/core/SdkManager$8;

    invoke-direct {v3, p0, v0, p1}, Lcom/leidong/sdk/s/core/SdkManager$8;-><init>(Lcom/leidong/sdk/s/core/SdkManager;Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Landroid/content/Context;)V

    .line 483
    invoke-virtual {v1, v2, v3}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    move-result-object v1

    const-string v2, "\u4e0b\u6b21\u518d\u8bf4"

    new-instance v3, Lcom/leidong/sdk/s/core/SdkManager$7;

    invoke-direct {v3, p0, v0, p1}, Lcom/leidong/sdk/s/core/SdkManager$7;-><init>(Lcom/leidong/sdk/s/core/SdkManager;Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Landroid/content/Context;)V

    .line 489
    invoke-virtual {v1, v2, v3}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    const/4 v1, 0x0

    .line 495
    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setCanceledOnTouchOutside(Z)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    .line 496
    new-instance v1, Lcom/leidong/sdk/s/core/SdkManager$9;

    invoke-direct {v1, p0, p1}, Lcom/leidong/sdk/s/core/SdkManager$9;-><init>(Lcom/leidong/sdk/s/core/SdkManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    .line 506
    invoke-virtual {v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->show()V

    return-void
.end method

.method public hideFloat(Landroid/content/Context;)V
    .locals 2

    .line 381
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hideFloat"

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/utils/LogUtil;->sysout(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 383
    sput-boolean v0, Lcom/leidong/sdk/s/core/SdkManager;->isOnResume:Z

    .line 384
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->getInstance(Landroid/app/Activity;)Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->dismiss()V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V
    .locals 3

    .line 85
    sput-object p1, Lcom/leidong/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    .line 87
    invoke-static {p1, p2}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setGameKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    invoke-static {p1}, Lcom/leidong/sdk/s/core/model/GameConfig;->initConfig(Landroid/content/Context;)V

    const-string p2, "1"

    .line 91
    invoke-static {p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getSdkId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 92
    invoke-static {p2}, Lcom/leidong/sdk/s/core/utils/SLogUtil;->isShowLog(Z)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {v0}, Lcom/leidong/sdk/s/core/utils/SLogUtil;->isShowLog(Z)V

    .line 98
    :goto_0
    new-instance p2, Lcom/leidong/sdk/s/core/http/RequsetManager;

    invoke-direct {p2, p1}, Lcom/leidong/sdk/s/core/http/RequsetManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/leidong/sdk/s/core/SdkManager;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    .line 99
    new-instance p2, Lcom/leidong/sdk/s/core/http/ResponseManager;

    invoke-direct {p2, p1}, Lcom/leidong/sdk/s/core/http/ResponseManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/leidong/sdk/s/core/SdkManager;->responseManager:Lcom/leidong/sdk/s/core/http/ResponseManager;

    .line 102
    invoke-static {p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getInitGameData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 104
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "\u81ea\u8425SDK\u521d\u59cb\u5316\u6570\u636e\u4e3a\u7a7a"

    .line 106
    invoke-interface {p3, p1}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    return-void

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/leidong/sdk/s/core/SdkManager;->responseManager:Lcom/leidong/sdk/s/core/http/ResponseManager;

    new-instance v2, Lcom/leidong/sdk/s/core/SdkManager$1;

    invoke-direct {v2, p0, p3}, Lcom/leidong/sdk/s/core/SdkManager$1;-><init>(Lcom/leidong/sdk/s/core/SdkManager;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    invoke-virtual {v1, p2, v2}, Lcom/leidong/sdk/s/core/http/ResponseManager;->handleInit(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    .line 122
    invoke-static {p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getSdkSpecial(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 124
    new-instance p2, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;

    invoke-direct {p2, p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->setShowFloatBall(Z)V

    .line 128
    :cond_2
    sget-object p1, Lcom/leidong/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setSdkSelfLogin(Landroid/content/Context;Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 297
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SdkManager-onPause"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 298
    sput-boolean v0, Lcom/leidong/sdk/s/core/SdkManager;->isOnResume:Z

    .line 299
    sget-object v0, Lcom/leidong/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->getInstance(Landroid/app/Activity;)Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->dismiss()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 285
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SdkManager-onResume"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 287
    sput-boolean v0, Lcom/leidong/sdk/s/core/SdkManager;->isOnResume:Z

    .line 288
    invoke-direct {p0}, Lcom/leidong/sdk/s/core/SdkManager;->isShowFloat()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/leidong/sdk/s/core/SdkManager;->isLoginShowing:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/leidong/sdk/s/core/SdkManager;->isPayShowing:Z

    if-nez v0, :cond_0

    .line 292
    sget-object v0, Lcom/leidong/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->getInstance(Landroid/app/Activity;)Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->show()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    .line 303
    sput-boolean v0, Lcom/leidong/sdk/s/core/SdkManager;->isOnResume:Z

    return-void
.end method

.method public parseJson(Ljava/lang/String;)Ljava/util/List;
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

    .line 592
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "display_type"

    .line 593
    invoke-static {v1, p1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string p1, "img"

    .line 595
    invoke-static {v1, p1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/leidong/sdk/s/core/http/RequestUrls;->URL_EXIT_IMAGE:Ljava/lang/String;

    const-string p1, "url"

    .line 596
    invoke-static {v1, p1}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/leidong/sdk/s/core/http/RequestUrls;->URL_EXIT_URL:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 599
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "app_game_1"

    .line 601
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "app_game_1"

    .line 602
    invoke-direct {p0, p1, v2, v1}, Lcom/leidong/sdk/s/core/SdkManager;->getGameMessage(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    const-string v2, "app_game_2"

    .line 604
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "app_game_2"

    .line 605
    invoke-direct {p0, p1, v2, v1}, Lcom/leidong/sdk/s/core/SdkManager;->getGameMessage(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2
    const-string v2, "app_game_3"

    .line 607
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "app_game_3"

    .line 608
    invoke-direct {p0, p1, v2, v1}, Lcom/leidong/sdk/s/core/SdkManager;->getGameMessage(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object p1

    :catch_0
    move-exception p1

    .line 613
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    return-object v0
.end method

.method public setUserLogoutCallback(Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 0

    .line 136
    sput-object p1, Lcom/leidong/sdk/s/core/SdkManager;->sdkUserLogoutCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    return-void
.end method

.method public setUserSwitchCallback(Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 0

    .line 140
    sput-object p1, Lcom/leidong/sdk/s/core/SdkManager;->sdkUserSwitchCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    return-void
.end method

.method public showFloat(Landroid/content/Context;)V
    .locals 2

    .line 367
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showFloat"

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/utils/LogUtil;->sysout(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 369
    sput-boolean v0, Lcom/leidong/sdk/s/core/SdkManager;->isOnResume:Z

    .line 371
    invoke-direct {p0}, Lcom/leidong/sdk/s/core/SdkManager;->isShowFloat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->getInstance(Landroid/app/Activity;)Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->show()V

    :cond_0
    return-void
.end method

.method public showFloatAuto(Landroid/content/Context;)V
    .locals 0

    .line 359
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/core/SdkManager;->showFloat(Landroid/content/Context;)V

    return-void
.end method

.method public showLoginDialog(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager;->loginDialog:Lcom/leidong/sdk/s/app/login/LoginDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager;->loginDialog:Lcom/leidong/sdk/s/app/login/LoginDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/LoginDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager;->loginDialog:Lcom/leidong/sdk/s/app/login/LoginDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/LoginDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager;->loginDialog:Lcom/leidong/sdk/s/app/login/LoginDialog;

    .line 338
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager;->loginDialog:Lcom/leidong/sdk/s/app/login/LoginDialog;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 339
    new-instance v0, Lcom/leidong/sdk/s/app/login/LoginDialog;

    invoke-direct {v0, p1, p2}, Lcom/leidong/sdk/s/app/login/LoginDialog;-><init>(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager;->loginDialog:Lcom/leidong/sdk/s/app/login/LoginDialog;

    .line 340
    iget-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager;->loginDialog:Lcom/leidong/sdk/s/app/login/LoginDialog;

    new-instance p2, Lcom/leidong/sdk/s/core/SdkManager$5;

    invoke-direct {p2, p0}, Lcom/leidong/sdk/s/core/SdkManager$5;-><init>(Lcom/leidong/sdk/s/core/SdkManager;)V

    invoke-virtual {p1, p2}, Lcom/leidong/sdk/s/app/login/LoginDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 346
    iget-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager;->loginDialog:Lcom/leidong/sdk/s/app/login/LoginDialog;

    sget-boolean p2, Lcom/leidong/sdk/s/core/SdkManager;->canLoginCancel:Z

    invoke-virtual {p1, p2}, Lcom/leidong/sdk/s/app/login/LoginDialog;->setCancelable(Z)V

    .line 347
    iget-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager;->loginDialog:Lcom/leidong/sdk/s/app/login/LoginDialog;

    sget-boolean p2, Lcom/leidong/sdk/s/core/SdkManager;->canLoginCancel:Z

    invoke-virtual {p1, p2}, Lcom/leidong/sdk/s/app/login/LoginDialog;->setCanceledOnTouchOutside(Z)V

    .line 349
    sput-boolean v1, Lcom/leidong/sdk/s/core/SdkManager;->canLoginCancel:Z

    .line 352
    :cond_1
    iget-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager;->loginDialog:Lcom/leidong/sdk/s/app/login/LoginDialog;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager;->loginDialog:Lcom/leidong/sdk/s/app/login/LoginDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/app/login/LoginDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 353
    iget-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager;->loginDialog:Lcom/leidong/sdk/s/app/login/LoginDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/app/login/LoginDialog;->show()V

    .line 354
    sput-boolean v1, Lcom/leidong/sdk/s/core/SdkManager;->isLoginShowing:Z

    :cond_2
    return-void
.end method

.method public showPayDialog(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/framework/pay/PayInfoBean;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 2

    .line 314
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/core/SdkManager;->hideFloat(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 316
    invoke-static {p1, p2, p3, v0}, Lcom/leidong/sdk/framework/utils/ReqUtil;->buildPayParams(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/framework/pay/PayInfoBean;Z)Ljava/lang/String;

    move-result-object p2

    .line 318
    new-instance v1, Lcom/leidong/sdk/framework/pay/PayWebDialog;

    invoke-direct {v1, p1, p2, p4, p3}, Lcom/leidong/sdk/framework/pay/PayWebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;Lcom/leidong/sdk/framework/pay/PayInfoBean;)V

    .line 319
    invoke-virtual {v1}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->show()V

    .line 320
    sput-boolean v0, Lcom/leidong/sdk/s/core/SdkManager;->isPayShowing:Z

    .line 321
    new-instance p1, Lcom/leidong/sdk/s/core/SdkManager$4;

    invoke-direct {p1, p0}, Lcom/leidong/sdk/s/core/SdkManager$4;-><init>(Lcom/leidong/sdk/s/core/SdkManager;)V

    invoke-virtual {v1, p1}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public submitRoleInfo(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public userExit(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 2

    .line 391
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/leidong/sdk/s/core/SdkManager$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/leidong/sdk/s/core/SdkManager$6;-><init>(Lcom/leidong/sdk/s/core/SdkManager;Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public userLogin(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 4

    .line 145
    sget-object v0, Lcom/leidong/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setSdkSelfLogin(Landroid/content/Context;Z)V

    if-nez p2, :cond_0

    const-string p2, "leidong_tips_login_no_callback"

    .line 149
    invoke-static {p2, p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 148
    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 154
    :cond_0
    invoke-static {p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getIsPhoneQuickLogin(Landroid/content/Context;)Z

    .line 157
    invoke-static {p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 160
    invoke-direct {p0, v0, v1, p2}, Lcom/leidong/sdk/s/core/SdkManager;->autoLogin(Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/leidong/sdk/s/core/SdkManager;->showLoginDialog(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    :goto_0
    return-void
.end method

.method public userLogout()V
    .locals 2

    .line 172
    sget-object v0, Lcom/leidong/sdk/s/core/SdkManager;->sdkUserLogoutCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lcom/leidong/sdk/s/core/SdkManager;->sdkUserLogoutCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public userPay(Landroid/content/Context;Lcom/leidong/sdk/framework/pay/PayInfoBean;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 2

    if-nez p3, :cond_0

    const-string p2, "leidong_tips_pay_no_callback"

    .line 215
    invoke-static {p2, p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 214
    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 219
    :cond_0
    sput-object p3, Lcom/leidong/sdk/s/core/SdkManager;->sdkUserPayCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    .line 221
    invoke-static {p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "leidong_tips_not_logined"

    .line 222
    invoke-static {v0, p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    new-instance v1, Lcom/leidong/sdk/s/core/SdkManager$3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/leidong/sdk/s/core/SdkManager$3;-><init>(Lcom/leidong/sdk/s/core/SdkManager;Lcom/leidong/sdk/framework/pay/PayInfoBean;Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p2, v1, p1}, Lcom/leidong/sdk/s/core/http/RequsetManager;->requestPayOrder(Lcom/leidong/sdk/framework/pay/PayInfoBean;Lcom/leidong/sdk/framework/http/HttpCallBack;Z)V

    return-void
.end method

.method public userSwitch(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 2

    .line 179
    sget-object v0, Lcom/leidong/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setSdkSelfLogin(Landroid/content/Context;Z)V

    .line 181
    invoke-static {p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->skipUserSwitchView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p2, p1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/leidong/sdk/s/core/SdkManager;->showLoginDialog(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    :goto_0
    return-void
.end method

.method public vistorBind(Landroid/content/Context;)V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager;->bindDialog:Lcom/leidong/sdk/s/app/login/BindDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager;->bindDialog:Lcom/leidong/sdk/s/app/login/BindDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/BindDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager;->bindDialog:Lcom/leidong/sdk/s/app/login/BindDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/BindDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager;->bindDialog:Lcom/leidong/sdk/s/app/login/BindDialog;

    .line 198
    new-instance v0, Lcom/leidong/sdk/s/app/login/BindDialog;

    invoke-direct {v0, p1}, Lcom/leidong/sdk/s/app/login/BindDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager;->bindDialog:Lcom/leidong/sdk/s/app/login/BindDialog;

    .line 199
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager;->bindDialog:Lcom/leidong/sdk/s/app/login/BindDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/s/app/login/BindDialog;->setCancelable(Z)V

    .line 200
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager;->bindDialog:Lcom/leidong/sdk/s/app/login/BindDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/s/app/login/BindDialog;->setCanceledOnTouchOutside(Z)V

    .line 201
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager;->bindDialog:Lcom/leidong/sdk/s/app/login/BindDialog;

    new-instance v1, Lcom/leidong/sdk/s/core/SdkManager$2;

    invoke-direct {v1, p0, p1}, Lcom/leidong/sdk/s/core/SdkManager$2;-><init>(Lcom/leidong/sdk/s/core/SdkManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/s/app/login/BindDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 207
    iget-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager;->bindDialog:Lcom/leidong/sdk/s/app/login/BindDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/app/login/BindDialog;->show()V

    return-void
.end method
