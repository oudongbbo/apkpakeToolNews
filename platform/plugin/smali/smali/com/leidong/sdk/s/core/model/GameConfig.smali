.class public Lcom/leidong/sdk/s/core/model/GameConfig;
.super Ljava/lang/Object;
.source "GameConfig.java"


# static fields
.field public static CONFIG_FILE_NAME:Ljava/lang/String; = "leidongGame.ini"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initConfig(Landroid/content/Context;)V
    .locals 8

    .line 20
    sget-object v0, Lcom/leidong/sdk/s/core/model/GameConfig;->CONFIG_FILE_NAME:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/leidong/sdk/framework/utils/CommonUtil;->readPropertites(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "gid"

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pid"

    .line 23
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mid"

    .line 24
    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sdkversion"

    .line 25
    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sdk_float_position"

    .line 26
    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sdk_id"

    .line 28
    invoke-virtual {v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "sdk_float_switch"

    .line 29
    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "check assets/leidongGame.ini\uff0cgid is null!"

    .line 32
    invoke-static {p0, v7}, Lcom/leidong/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "check assets/leidongGame.ini\uff0cpid is null!"

    .line 35
    invoke-static {p0, v7}, Lcom/leidong/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "check assets/leidongGame.ini\uff0cmid is null!"

    .line 38
    invoke-static {p0, v7}, Lcom/leidong/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "check assets/leidongGame.ini\uff0csdkversion is null!"

    .line 41
    invoke-static {p0, v7}, Lcom/leidong/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v5, "2"

    .line 46
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v6, "0"

    .line 49
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v0, "1"

    .line 53
    :cond_6
    invoke-static {p0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setGameId(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    invoke-static {p0, v2}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setGamePid(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, v3}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setGameMid(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    invoke-static {p0, v4}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setSdkVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setSdkFloatPosition(Landroid/content/Context;I)V

    .line 59
    invoke-static {p0, v6}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setSdkId(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->setSdkFloatSwitch(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    return-void
.end method
