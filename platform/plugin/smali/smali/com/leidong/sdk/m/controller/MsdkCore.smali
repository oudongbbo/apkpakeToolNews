.class public Lcom/leidong/sdk/m/controller/MsdkCore;
.super Ljava/lang/Object;
.source "MsdkCore.java"

# interfaces
.implements Lcom/leidong/sdk/m/interfaces/MsdkInterface;


# instance fields
.field public sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-direct {v0}, Lcom/leidong/sdk/m/controller/MsdkManager;-><init>()V

    iput-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkCore;->sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;

    return-void
.end method


# virtual methods
.method public doExitGame(Landroid/content/Context;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkCore;->sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->doExitGame(Landroid/content/Context;)V

    return-void
.end method

.method public doInit(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/m/LeiMsdkCallback;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkCore;->sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/leidong/sdk/m/controller/MsdkManager;->doInit(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/m/LeiMsdkCallback;)V

    return-void
.end method

.method public getAppConfig(Landroid/content/Context;)Lcom/leidong/sdk/m/model/bean/MAppBean;
    .locals 0

    .line 118
    invoke-static {p1}, Lcom/leidong/sdk/m/model/MGameConfig;->initConfig(Landroid/content/Context;)Lcom/leidong/sdk/m/model/bean/MAppBean;

    move-result-object p1

    return-object p1
.end method

.method public getGid(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/controller/MsdkCore;->getAppConfig(Landroid/content/Context;)Lcom/leidong/sdk/m/model/bean/MAppBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/sdk/m/model/bean/MAppBean;->getGid()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMid(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/controller/MsdkCore;->getAppConfig(Landroid/content/Context;)Lcom/leidong/sdk/m/model/bean/MAppBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/sdk/m/model/bean/MAppBean;->getMid()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPid(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/controller/MsdkCore;->getAppConfig(Landroid/content/Context;)Lcom/leidong/sdk/m/model/bean/MAppBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/sdk/m/model/bean/MAppBean;->getPid()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSdkVer(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/controller/MsdkCore;->getAppConfig(Landroid/content/Context;)Lcom/leidong/sdk/m/model/bean/MAppBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/sdk/m/model/bean/MAppBean;->getSdkVer()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkCore;->sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/leidong/sdk/m/controller/MsdkManager;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkCore;->sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkCore;->sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkCore;->sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkCore;->sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->onPause()V

    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkCore;->sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkCore;->sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkCore;->sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkCore;->sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->onStop()V

    return-void
.end method

.method public openSdkCustomerService(Landroid/content/Context;)V
    .locals 2

    .line 166
    sget-object v0, Lcom/leidong/sdk/m/http/MReqUrls;->WEB_KEFU_SERVICE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "leidong_tips_url_not_exit"

    .line 167
    invoke-static {v0, p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 168
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 170
    :cond_0
    new-instance v0, Lcom/leidong/sdk/m/utils/MsdkUtils;

    invoke-direct {v0}, Lcom/leidong/sdk/m/utils/MsdkUtils;-><init>()V

    sget-object v1, Lcom/leidong/sdk/m/http/MReqUrls;->WEB_KEFU_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/m/utils/MsdkUtils;->showSdkCustomerServiceActivity(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public openUserNameAuth(Landroid/content/Context;Z)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkCore;->sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1, p2}, Lcom/leidong/sdk/m/controller/MsdkManager;->openUserNameAuth(Landroid/content/Context;Z)V

    return-void
.end method

.method public openUserSuperVip(Landroid/content/Context;)V
    .locals 3

    .line 146
    sget-object v0, Lcom/leidong/sdk/m/http/MReqUrls;->WEB_USER_SUPERVIP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "leidong_tips_url_not_exit"

    .line 147
    invoke-static {v0, p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 151
    :cond_0
    sget-object v0, Lcom/leidong/sdk/m/http/MReqUrls;->WEB_USER_SUPERVIP:Ljava/lang/String;

    new-instance v1, Lcom/leidong/sdk/m/controller/MsdkCore$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/m/controller/MsdkCore$1;-><init>(Lcom/leidong/sdk/m/controller/MsdkCore;)V

    const/4 v2, 0x1

    invoke-static {p1, v0, v2, v2, v1}, Lcom/leidong/sdk/m/utils/MsdkUtils;->showWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    :goto_0
    return-void
.end method

.method public roleChangeName(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkCore;->sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->roleChangeName(Ljava/util/HashMap;)V

    return-void
.end method

.method public roleCreate(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkCore;->sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->roleCreate(Ljava/util/HashMap;)V

    return-void
.end method

.method public roleEnterGame(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkCore;->sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->roleEnterGame(Ljava/util/HashMap;)V

    return-void
.end method

.method public roleLevelUp(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkCore;->sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->roleLevelUp(Ljava/util/HashMap;)V

    return-void
.end method

.method public serverSelect(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkCore;->sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->serverSelect(Ljava/util/HashMap;)V

    return-void
.end method

.method public userLogin(Landroid/content/Context;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkCore;->sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->userLogin(Landroid/content/Context;)V

    return-void
.end method

.method public userLogout(Landroid/content/Context;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkCore;->sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->userLogout(Landroid/content/Context;)V

    return-void
.end method

.method public userPay(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
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

    .line 51
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkCore;->sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1, p2}, Lcom/leidong/sdk/m/controller/MsdkManager;->userPay(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method

.method public userSwitch(Landroid/content/Context;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkCore;->sdkCore:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->userSwitch(Landroid/content/Context;)V

    return-void
.end method
