.class public abstract Lcom/leidong/sdk/m/controller/PlatformCore;
.super Lcom/leidong/sdk/m/controller/PlatformManager;
.source "PlatformCore.java"

# interfaces
.implements Lcom/leidong/sdk/m/interfaces/MsdkInterfaceExpand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/leidong/sdk/m/controller/PlatformManager;-><init>()V

    return-void
.end method


# virtual methods
.method public doInit(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/m/LeiMsdkCallback;)V
    .locals 0

    .line 68
    invoke-virtual {p0, p0}, Lcom/leidong/sdk/m/controller/PlatformCore;->setPlatform(Lcom/leidong/sdk/m/controller/PlatformCore;)V

    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/leidong/sdk/m/controller/PlatformManager;->doInit(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/m/LeiMsdkCallback;)V

    return-void
.end method

.method public getPlatformCallBack()Lcom/leidong/sdk/m/LeiMsdkCallback;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformCore;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    return-object v0
.end method

.method public getPlatformConfig()Lcom/leidong/sdk/m/model/bean/MsdkBean;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformCore;->mConfig:Lcom/leidong/sdk/m/model/bean/MsdkBean;

    return-object v0
.end method

.method public getPlatformContext()Landroid/content/Context;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPlatformPayData()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformCore;->payDataExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformSingle()Lcom/leidong/sdk/s/app/LeiSdkCore;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformCore;->fmSingleSdk:Lcom/leidong/sdk/s/app/LeiSdkCore;

    return-object v0
.end method

.method public getRoleInfos()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformCore;->roleInfos:Ljava/util/HashMap;

    return-object v0
.end method

.method public isNeedInputMoney()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/leidong/sdk/m/controller/PlatformCore;->isNeedInputMoney:Z

    return v0
.end method

.method public mExitGame(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public mInit(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public mOnActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public mOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public mOnDestroy()V
    .locals 0

    return-void
.end method

.method public mOnNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public mOnPause()V
    .locals 0

    return-void
.end method

.method public mOnRestart()V
    .locals 0

    return-void
.end method

.method public mOnResume()V
    .locals 0

    return-void
.end method

.method public mOnStart()V
    .locals 0

    return-void
.end method

.method public mOnStop()V
    .locals 0

    return-void
.end method

.method public mOpenUserNameAuth(Landroid/content/Context;Z)V
    .locals 0

    return-void
.end method

.method public mRoleCreate(Ljava/util/HashMap;)V
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

.method public mRoleEnterGame(Ljava/util/HashMap;)V
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

.method public mRoleUpdate(Ljava/util/HashMap;)V
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

.method public mRoleUpgrade(Ljava/util/HashMap;)V
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

.method public mUserLogin(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public mUserLogout(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public mUserPay(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public mUserSwitch(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public setNeedInputMoney(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/leidong/sdk/m/controller/PlatformCore;->isNeedInputMoney:Z

    return-void
.end method

.method public setPlatformCallBack(Lcom/leidong/sdk/m/LeiMsdkCallback;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformCore;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    return-void
.end method

.method public setPlatformConfig(Lcom/leidong/sdk/m/model/bean/MsdkBean;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformCore;->mConfig:Lcom/leidong/sdk/m/model/bean/MsdkBean;

    return-void
.end method

.method public setPlatformContext(Landroid/content/Context;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformCore;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setPlatformPayData(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformCore;->payDataExtra:Ljava/lang/String;

    return-void
.end method

.method public setRoleInfos(Ljava/util/HashMap;)V
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

    .line 36
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformCore;->roleInfos:Ljava/util/HashMap;

    return-void
.end method
