.class public Lcom/leidong/sdk/m/platform/LeiPlatform;
.super Lcom/leidong/sdk/m/controller/PlatformCore;
.source "LeiPlatform.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/leidong/sdk/m/controller/PlatformCore;-><init>()V

    return-void
.end method


# virtual methods
.method public mExitGame(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/leidong/sdk/m/platform/LeiPlatform;->getPlatformConfig()Lcom/leidong/sdk/m/model/bean/MsdkBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/m/model/bean/MsdkBean;->getExtra1()Ljava/lang/String;

    .line 33
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/platform/LeiPlatform;->exitGameS(Landroid/content/Context;)V

    return-void
.end method

.method public mInit(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/platform/LeiPlatform;->doInitS(Landroid/content/Context;)V

    return-void
.end method

.method public mOpenUserNameAuth(Landroid/content/Context;Z)V
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/leidong/sdk/m/platform/LeiPlatform;->openUserNameAuth4S(Landroid/content/Context;Z)V

    return-void
.end method

.method public mUserLogin(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/platform/LeiPlatform;->userLoginS(Landroid/content/Context;)V

    return-void
.end method

.method public mUserSwitch(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/platform/LeiPlatform;->userSwitchS(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 41
    invoke-super {p0}, Lcom/leidong/sdk/m/controller/PlatformCore;->onDestroy()V

    const-string v0, "\u5e73\u53f0\u9500\u6bc1\u60ac\u6d6e\u7a97\u670d\u52a1"

    .line 42
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/platform/LeiPlatform;->sendLog(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/leidong/sdk/m/platform/LeiPlatform;->fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

    iget-object v1, p0, Lcom/leidong/sdk/m/platform/LeiPlatform;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/s/app/LeiSdkCore;->hideFloat(Landroid/content/Context;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/leidong/sdk/m/controller/PlatformCore;->onPause()V

    .line 53
    iget-object v0, p0, Lcom/leidong/sdk/m/platform/LeiPlatform;->fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/leidong/sdk/m/controller/PlatformCore;->onResume()V

    .line 48
    iget-object v0, p0, Lcom/leidong/sdk/m/platform/LeiPlatform;->fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/leidong/sdk/m/controller/PlatformCore;->onStop()V

    .line 58
    iget-object v0, p0, Lcom/leidong/sdk/m/platform/LeiPlatform;->fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->onStop()V

    return-void
.end method
