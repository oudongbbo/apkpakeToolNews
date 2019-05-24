.class public Lcom/leidong/sdk/m/model/MGameConfig;
.super Ljava/lang/Object;
.source "MGameConfig.java"


# static fields
.field public static CONFIG_FILE_NAME:Ljava/lang/String; = "leidongGame.ini"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initConfig(Landroid/content/Context;)Lcom/leidong/sdk/m/model/bean/MAppBean;
    .locals 7

    .line 21
    new-instance v0, Lcom/leidong/sdk/m/model/bean/MAppBean;

    invoke-direct {v0}, Lcom/leidong/sdk/m/model/bean/MAppBean;-><init>()V

    .line 22
    sget-object v1, Lcom/leidong/sdk/m/model/MGameConfig;->CONFIG_FILE_NAME:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->readPropertites(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "gid"

    .line 24
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pid"

    .line 25
    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mid"

    .line 26
    invoke-virtual {v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sdkversion"

    .line 27
    invoke-virtual {v1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sdk_debug"

    .line 28
    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "please cheak assets/leidongGame.ini\uff0cgid is null!"

    .line 32
    invoke-static {p0, v6}, Lcom/leidong/sdk/m/model/MGameConfig;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "please cheak assets/leidongGame.ini\uff0cpid  is null!"

    .line 34
    invoke-static {p0, v6}, Lcom/leidong/sdk/m/model/MGameConfig;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "please cheak assets/leidongGame.ini\uff0cmid  is null!"

    .line 36
    invoke-static {p0, v6}, Lcom/leidong/sdk/m/model/MGameConfig;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "please cheak assets/leidongGame.ini\uff0csdkversion is null!"

    .line 38
    invoke-static {p0, v6}, Lcom/leidong/sdk/m/model/MGameConfig;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v1, "0"

    goto :goto_0

    :cond_4
    const-string v6, "2.0.1"

    .line 41
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "please cheak assets/leidongGame.ini\uff0csdkversion is old!"

    .line 42
    invoke-static {p0, v6}, Lcom/leidong/sdk/m/model/MGameConfig;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    :cond_5
    :goto_0
    invoke-static {p0, v2}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setGameId(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    invoke-static {p0, v3}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setGamePid(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    invoke-static {p0, v4}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setGameMid(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    invoke-static {p0, v5}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->setSdkVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v2}, Lcom/leidong/sdk/m/model/bean/MAppBean;->setGid(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v3}, Lcom/leidong/sdk/m/model/bean/MAppBean;->setPid(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, v4}, Lcom/leidong/sdk/m/model/bean/MAppBean;->setMid(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v5}, Lcom/leidong/sdk/m/model/bean/MAppBean;->setSdkVer(Ljava/lang/String;)V

    const-string p0, "1"

    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/leidong/sdk/m/model/bean/MAppBean;->setDebug(Z)V

    return-object v0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
