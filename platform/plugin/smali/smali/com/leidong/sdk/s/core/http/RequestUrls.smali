.class public Lcom/leidong/sdk/s/core/http/RequestUrls;
.super Ljava/lang/Object;
.source "RequestUrls.java"


# static fields
.field public static API_COLLECT_SDK_RUNNING:Ljava/lang/String; = "http://logapi.thunderplaygame.com/api/v1/sdkRun/index"

.field public static API_FINDPWD:Ljava/lang/String; = ""

.field public static API_FINDPWD_GET_USER:Ljava/lang/String; = ""

.field public static API_GET_USER_PAYMONEY:Ljava/lang/String; = ""

.field public static API_GET_VCODE:Ljava/lang/String; = ""

.field public static API_LOGIN:Ljava/lang/String; = ""

.field public static API_LOGIN_BY_ACCESSTOKEN:Ljava/lang/String; = ""

.field public static API_LOGIN_MOBILE_QUICK:Ljava/lang/String; = ""

.field public static API_PAY_ORDER_CREATE:Ljava/lang/String; = ""

.field public static API_PAY_ORDER_QUERY:Ljava/lang/String; = ""

.field public static API_REG_ACCOUNT:Ljava/lang/String; = ""

.field public static API_REG_GETNAME:Ljava/lang/String; = ""

.field public static API_REG_MOBILE:Ljava/lang/String; = ""

.field public static API_REG_VISITOR:Ljava/lang/String; = ""

.field public static API_USER_GUARD_AUTH:Ljava/lang/String; = ""

.field public static API_USER_NAME_AUTH:Ljava/lang/String; = ""

.field public static URL_EXIT_IMAGE:Ljava/lang/String; = ""

.field public static URL_EXIT_URL:Ljava/lang/String; = ""

.field public static WEB_AGREMENT:Ljava/lang/String; = null

.field public static WEB_HELP:Ljava/lang/String; = ""

.field public static WEB_PAY_PAGE:Ljava/lang/String; = ""

.field public static WEB_SIDEBAR_BBS:Ljava/lang/String; = ""

.field public static WEB_SIDEBAR_GAME_CENTER:Ljava/lang/String; = ""

.field public static WEB_SIDEBAR_GAME_GIFT:Ljava/lang/String; = ""

.field public static WEB_SIDEBAR_HOME:Ljava/lang/String; = ""

.field public static WEB_SIDEBAR_KEFU:Ljava/lang/String; = ""

.field public static WEB_SIDEBAR_MESSAGE:Ljava/lang/String; = ""

.field public static WEB_SIDEBAR_USERCENTER:Ljava/lang/String; = ""

.field public static WEB_USER_CERTIFICATION:Ljava/lang/String; = ""

.field public static WEB_USER_NAMEAUTH:Ljava/lang/String; = ""

.field public static WEB_USER_SUPERVIP:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u6709\u66f4\u65b0\uff01\u65b0\u5730\u5740\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/leidong/sdk/s/core/utils/SLogUtil;->d(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public static initApis(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_3

    const-string v0, "api"

    .line 60
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "api"

    .line 61
    invoke-static {p0, v0}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "user"

    .line 63
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "user"

    .line 64
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "login"

    .line 77
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_LOGIN:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_LOGIN:Ljava/lang/String;

    const-string v1, "accessTokenLogin"

    .line 78
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_LOGIN_BY_ACCESSTOKEN:Ljava/lang/String;

    .line 79
    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_LOGIN_BY_ACCESSTOKEN:Ljava/lang/String;

    const-string v1, "mobileQuickLogin"

    .line 80
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_LOGIN_MOBILE_QUICK:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_LOGIN_MOBILE_QUICK:Ljava/lang/String;

    const-string v1, "regAccount"

    .line 81
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_REG_ACCOUNT:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_REG_ACCOUNT:Ljava/lang/String;

    const-string v1, "regMobile"

    .line 82
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_REG_MOBILE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_REG_MOBILE:Ljava/lang/String;

    const-string v1, "getUname"

    .line 83
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_REG_GETNAME:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_REG_GETNAME:Ljava/lang/String;

    const-string v1, "findPwd"

    .line 84
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_FINDPWD:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_FINDPWD:Ljava/lang/String;

    const-string v1, "findPwdVerifyUser"

    .line 85
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_FINDPWD_GET_USER:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_FINDPWD_GET_USER:Ljava/lang/String;

    const-string v1, "idConfirmInfo"

    .line 86
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_USER_NAME_AUTH:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_USER_NAME_AUTH:Ljava/lang/String;

    const-string v1, "guardConfirmInfo"

    .line 87
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_USER_GUARD_AUTH:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_USER_GUARD_AUTH:Ljava/lang/String;

    :cond_0
    const-string v0, "smsCode"

    .line 92
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "smsCode"

    .line 93
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "mobileCode"

    .line 94
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_GET_VCODE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_GET_VCODE:Ljava/lang/String;

    :cond_1
    const-string v0, "order"

    .line 97
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "order"

    .line 99
    invoke-static {p0, v0}, Lcom/leidong/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "createOrder"

    .line 100
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_PAY_ORDER_CREATE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_PAY_ORDER_CREATE:Ljava/lang/String;

    const-string v1, "queryOrder"

    .line 101
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_PAY_ORDER_QUERY:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_PAY_ORDER_QUERY:Ljava/lang/String;

    :cond_2
    const-string v0, "currech"

    .line 103
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "currech"

    .line 104
    sget-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_GET_USER_PAYMONEY:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_GET_USER_PAYMONEY:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public static initWebpages(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "sideBar"

    .line 124
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sideBar"

    .line 125
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "gameGift"

    .line 127
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_GAME_GIFT:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_GAME_GIFT:Ljava/lang/String;

    const-string v1, "help"

    .line 128
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_HELP:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_HELP:Ljava/lang/String;

    const-string v1, "userCenter"

    .line 129
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_USERCENTER:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_USERCENTER:Ljava/lang/String;

    const-string v1, "msg"

    .line 130
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_MESSAGE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_MESSAGE:Ljava/lang/String;

    const-string v1, "customerService"

    .line 131
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_KEFU:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_KEFU:Ljava/lang/String;

    const-string v1, "gameCenter"

    .line 132
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_GAME_CENTER:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_GAME_CENTER:Ljava/lang/String;

    const-string v1, "userVerified"

    .line 133
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_USER_CERTIFICATION:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_USER_CERTIFICATION:Ljava/lang/String;

    const-string v1, "nameAuth"

    .line 134
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_USER_NAMEAUTH:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_USER_NAMEAUTH:Ljava/lang/String;

    const-string v1, "superVip"

    .line 135
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_USER_SUPERVIP:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_USER_SUPERVIP:Ljava/lang/String;

    const-string v1, "agreement"

    .line 136
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_AGREMENT:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_AGREMENT:Ljava/lang/String;

    const-string v1, "sidebar"

    .line 137
    sget-object v2, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_HOME:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_HOME:Ljava/lang/String;

    :cond_0
    const-string v0, "play"

    .line 142
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "play"

    .line 143
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "goToPlay"

    .line 144
    sget-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_PAY_PAGE:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_PAY_PAGE:Ljava/lang/String;

    :cond_1
    return-void
.end method
