.class public Lcom/leidong/sdk/m/http/MReqUrls;
.super Ljava/lang/Object;
.source "MReqUrls.java"


# static fields
.field public static API_M_CHANNEL_LOGIN:Ljava/lang/String; = ""

.field public static API_M_COLLECT_DEVICE:Ljava/lang/String; = "https://logapi.thunderplaygame.com/api/v1/device/index"

.field public static API_M_COLLECT_ROLE:Ljava/lang/String; = ""

.field public static API_M_COLLECT_SDK_ERROR:Ljava/lang/String; = "https://logapi.thunderplaygame.com/api/v1/sdkEx/index"

.field public static API_M_COLLECT_SDK_RUNNING:Ljava/lang/String; = "https://logapi.thunderplaygame.com/api/v1/sdkRun/index"

.field public static API_M_INIT:Ljava/lang/String; = "https://sdkapi.thunderplaygame.com/api/v1/sy/init"

.field public static API_M_ORDER_CREATE:Ljava/lang/String; = ""

.field public static API_M_ORDER_QUERY:Ljava/lang/String; = ""

.field public static API_M_USER_ACTIVE:Ljava/lang/String; = ""

.field public static API_M_USER_ACTIVE_CHECK:Ljava/lang/String; = ""

.field public static API_M_USER_PUSH:Ljava/lang/String; = ""

.field public static WEB_KEFU_SERVICE:Ljava/lang/String; = ""

.field public static WEB_USER_HELP:Ljava/lang/String; = ""

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

.method public static handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "MReqUrls"

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6709\u66f4\u65b0\uff01\u65b0\u5730\u5740\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/leidong/sdk/m/utils/MLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public static initApis(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "collect"

    .line 42
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "collect"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "device"

    .line 45
    sget-object v1, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_COLLECT_DEVICE:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/leidong/sdk/m/http/MReqUrls;->handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_COLLECT_DEVICE:Ljava/lang/String;

    const-string p0, "role"

    .line 46
    sget-object v1, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_COLLECT_ROLE:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/leidong/sdk/m/http/MReqUrls;->handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_COLLECT_ROLE:Ljava/lang/String;

    const-string p0, "sdkEx"

    .line 47
    sget-object v1, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_COLLECT_SDK_ERROR:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/leidong/sdk/m/http/MReqUrls;->handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_COLLECT_SDK_ERROR:Ljava/lang/String;

    const-string p0, "sdkRun"

    .line 48
    sget-object v1, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_COLLECT_SDK_RUNNING:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/leidong/sdk/m/http/MReqUrls;->handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_COLLECT_SDK_RUNNING:Ljava/lang/String;

    const-string p0, "sdkRun"

    .line 49
    sget-object v1, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_COLLECT_SDK_RUNNING:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/leidong/sdk/m/http/MReqUrls;->handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/leidong/sdk/s/core/http/RequestUrls;->API_COLLECT_SDK_RUNNING:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static initChannel(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "url"

    .line 66
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "url"

    .line 67
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "api"

    .line 69
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "api"

    .line 70
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "user"

    .line 72
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "user"

    .line 73
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "login"

    .line 74
    sget-object v2, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_CHANNEL_LOGIN:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/m/http/MReqUrls;->handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_CHANNEL_LOGIN:Ljava/lang/String;

    :cond_0
    const-string v0, "order"

    .line 77
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "order"

    .line 79
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "createOrder"

    .line 80
    sget-object v1, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_ORDER_CREATE:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/m/http/MReqUrls;->handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_ORDER_CREATE:Ljava/lang/String;

    const-string v0, "queryOrder"

    .line 81
    sget-object v1, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_ORDER_QUERY:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/m/http/MReqUrls;->handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/leidong/sdk/m/http/MReqUrls;->API_M_ORDER_QUERY:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static initWebpages(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "bar"

    .line 55
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bar"

    .line 56
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "customerService"

    .line 57
    sget-object v1, Lcom/leidong/sdk/m/http/MReqUrls;->WEB_KEFU_SERVICE:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/m/http/MReqUrls;->handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leidong/sdk/m/http/MReqUrls;->WEB_KEFU_SERVICE:Ljava/lang/String;

    const-string v0, "superVip"

    .line 58
    sget-object v1, Lcom/leidong/sdk/m/http/MReqUrls;->WEB_USER_SUPERVIP:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/m/http/MReqUrls;->handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leidong/sdk/m/http/MReqUrls;->WEB_USER_SUPERVIP:Ljava/lang/String;

    const-string v0, "help"

    .line 59
    sget-object v1, Lcom/leidong/sdk/m/http/MReqUrls;->WEB_KEFU_SERVICE:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/leidong/sdk/m/http/MReqUrls;->handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/leidong/sdk/m/http/MReqUrls;->WEB_USER_HELP:Ljava/lang/String;

    :cond_0
    return-void
.end method
