.class public Lcom/leidong/sdk/m/model/MsdkConfig;
.super Ljava/lang/Object;
.source "MsdkConfig.java"


# static fields
.field public static CONFIG_FILE_NAME:Ljava/lang/String; = "leidongMsdk.ini"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initConfig(Landroid/content/Context;)Lcom/leidong/sdk/m/model/bean/MsdkBean;
    .locals 3

    .line 23
    sget-object v0, Lcom/leidong/sdk/m/model/MsdkConfig;->CONFIG_FILE_NAME:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/leidong/sdk/framework/utils/CommonUtil;->readPropertites(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 25
    invoke-static {p0, v0}, Lcom/leidong/sdk/m/model/bean/MsdkBean;->inflactBean(Landroid/content/Context;Ljava/util/Properties;)Lcom/leidong/sdk/m/model/bean/MsdkBean;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/leidong/sdk/m/model/bean/MsdkBean;

    invoke-direct {v0}, Lcom/leidong/sdk/m/model/bean/MsdkBean;-><init>()V

    const/16 v2, 0x65

    .line 29
    invoke-virtual {v0, v2}, Lcom/leidong/sdk/m/model/bean/MsdkBean;->setSdk(I)V

    .line 30
    invoke-virtual {v0, v1}, Lcom/leidong/sdk/m/model/bean/MsdkBean;->setShowSplash(I)V

    .line 31
    invoke-virtual {v0, v1}, Lcom/leidong/sdk/m/model/bean/MsdkBean;->setShowExit(I)V

    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/leidong/sdk/m/model/bean/MsdkBean;->getPushDelay()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 36
    invoke-static {p0, v1}, Lcom/leidong/sdk/m/model/MConfigManager;->setIsPushDelay(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 38
    invoke-static {p0, v1}, Lcom/leidong/sdk/m/model/MConfigManager;->setIsPushDelay(Landroid/content/Context;Z)V

    :goto_0
    return-object v0
.end method
