.class public Lcom/leidong/sdk/s/app/exit/ExitDialogInterfaces;
.super Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;
.source "ExitDialogInterfaces.java"


# instance fields
.field private mCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

.field private mContext:Landroid/content/Context;

.field private mWebDialog:Lcom/leidong/sdk/framework/web/SdkWebDialog;

.field private final tips:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/leidong/sdk/framework/web/SdkWebDialog;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;-><init>()V

    .line 20
    invoke-virtual {p2}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->getWebview()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialogInterfaces;->setWebview(Landroid/webkit/WebView;)V

    .line 21
    iput-object p3, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogInterfaces;->mCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    .line 22
    iput-object p2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogInterfaces;->mWebDialog:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    .line 23
    iput-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogInterfaces;->mContext:Landroid/content/Context;

    const-string p1, "leidong_exit_tips_cancel"

    .line 24
    iget-object p2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogInterfaces;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogInterfaces;->tips:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public enClose()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 37
    invoke-super {p0}, Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;->enClose()V

    .line 38
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogInterfaces;->mCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogInterfaces;->tips:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onCancel(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogInterfaces;->mWebDialog:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogInterfaces;->mWebDialog:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogInterfaces;->mWebDialog:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public enExit()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogInterfaces;->mCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
