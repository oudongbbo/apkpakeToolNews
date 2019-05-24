.class public Lcom/leidong/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;
.super Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;
.source "SdkWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/core/activity/SdkWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SdkWebJavaScriptInterface"
.end annotation


# instance fields
.field jsContext:Landroid/content/Context;

.field jsDialog:Lcom/leidong/sdk/framework/web/SdkWebDialog;

.field final synthetic this$0:Lcom/leidong/sdk/s/core/activity/SdkWebActivity;


# direct methods
.method public constructor <init>(Lcom/leidong/sdk/s/core/activity/SdkWebActivity;Lcom/leidong/sdk/framework/web/SdkWebDialog;Landroid/content/Context;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/leidong/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;->this$0:Lcom/leidong/sdk/s/core/activity/SdkWebActivity;

    .line 103
    move-object p1, p3

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;-><init>(Landroid/app/Activity;)V

    .line 105
    iput-object p3, p0, Lcom/leidong/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;->jsContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/leidong/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;->jsDialog:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    .line 108
    iget-object p1, p0, Lcom/leidong/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;->jsDialog:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->getWebview()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;->setWebview(Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public bindVistor()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "bindVistor"

    .line 154
    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/leidong/sdk/s/app/LeiSdkCore;->getInstance()Lcom/leidong/sdk/s/app/LeiSdkCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->vistorBind()V

    .line 156
    iget-object v0, p0, Lcom/leidong/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;->this$0:Lcom/leidong/sdk/s/core/activity/SdkWebActivity;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/core/activity/SdkWebActivity;->closeWebActivity()V

    return-void
.end method

.method public enClose()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 122
    invoke-super {p0}, Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;->enClose()V

    const-string v0, "wap \u8c03\u7528enClose"

    .line 123
    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/leidong/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;->jsDialog:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->closeWeb()V

    return-void
.end method

.method public enRefresh()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 114
    invoke-super {p0}, Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;->enRefresh()V

    const-string v0, "wap \u8c03\u7528enRefresh"

    .line 115
    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/leidong/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;->jsDialog:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->refreshWeb()V

    return-void
.end method

.method public logoutSdkAccount()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "logoutSdkAccount"

    .line 147
    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/leidong/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;->userLogout()V

    .line 149
    iget-object v0, p0, Lcom/leidong/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;->this$0:Lcom/leidong/sdk/s/core/activity/SdkWebActivity;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/core/activity/SdkWebActivity;->closeWebActivity()V

    return-void
.end method

.method public userLogout()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "userLogout"

    .line 137
    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/leidong/sdk/s/core/SdkManager;->sdkUserLogoutCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/leidong/sdk/s/core/SdkManager;->sdkUserLogoutCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public userSwitch()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "userSwitch"

    .line 129
    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/leidong/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/leidong/sdk/s/app/LeiSdkCore;->getInstance()Lcom/leidong/sdk/s/app/LeiSdkCore;

    move-result-object v0

    sget-object v1, Lcom/leidong/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    sget-object v2, Lcom/leidong/sdk/s/core/SdkManager;->sdkUserSwitchCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-virtual {v0, v1, v2}, Lcom/leidong/sdk/s/app/LeiSdkCore;->userSwitch(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    :cond_0
    return-void
.end method
