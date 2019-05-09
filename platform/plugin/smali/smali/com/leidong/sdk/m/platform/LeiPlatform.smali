.class public Lcom/leidong/sdk/m/platform/LeiPlatform;
.super Lcom/leidong/sdk/m/controller/PlatformCore;
.source "LeiPlatform.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/leidong/sdk/m/controller/PlatformCore;-><init>()V

    return-void
.end method


# virtual methods
.method public mExitGame(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/platform/LeiPlatform;->exitGameS(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public mInit(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 10
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/platform/LeiPlatform;->doInitS(Landroid/content/Context;)V

    .line 11
    return-void
.end method

.method public mOpenUserNameAuth(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "canCancel"    # Z

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/leidong/sdk/m/platform/LeiPlatform;->openUserNameAuth4S(Landroid/content/Context;Z)V

    .line 27
    return-void
.end method

.method public mUserLogin(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/platform/LeiPlatform;->userLoginS(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public mUserSwitch(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/platform/LeiPlatform;->userSwitchS(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 30
    invoke-super {p0}, Lcom/leidong/sdk/m/controller/PlatformCore;->onDestroy()V

    .line 31
    const-string v0, "\u5e73\u53f0\u9500\u6bc1\u60ac\u6d6e\u7a97\u670d\u52a1"

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/platform/LeiPlatform;->sendLog(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/leidong/sdk/m/platform/LeiPlatform;->fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

    iget-object v1, p0, Lcom/leidong/sdk/m/platform/LeiPlatform;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/s/app/LeiSdkCore;->hideFloat(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 41
    invoke-super {p0}, Lcom/leidong/sdk/m/controller/PlatformCore;->onPause()V

    .line 42
    iget-object v0, p0, Lcom/leidong/sdk/m/platform/LeiPlatform;->fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->onPause()V

    .line 43
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/leidong/sdk/m/controller/PlatformCore;->onResume()V

    .line 37
    iget-object v0, p0, Lcom/leidong/sdk/m/platform/LeiPlatform;->fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->onResume()V

    .line 38
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/leidong/sdk/m/controller/PlatformCore;->onStop()V

    .line 47
    iget-object v0, p0, Lcom/leidong/sdk/m/platform/LeiPlatform;->fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->onStop()V

    .line 48
    return-void
.end method
