.class public Lcom/leidong/sdk/framework/pay/PayWebDialog;
.super Landroid/app/Dialog;
.source "PayWebDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leidong/sdk/framework/pay/PayWebDialog$PayJsInterface;
    }
.end annotation


# static fields
.field public static sdkPayCallBack:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;


# instance fields
.field private currentUrl:Ljava/lang/String;

.field private loadCallback:Lcom/leidong/sdk/framework/web/SdkWebCallback;

.field private mContext:Landroid/content/Context;

.field private mProgressDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

.field private mWebChromeClient:Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;

.field private mWebClient:Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;

.field private mWebView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

.field private payInfoBean:Lcom/leidong/sdk/framework/pay/PayInfoBean;

.field private payResultHandler:Landroid/os/Handler;

.field private payType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;Lcom/leidong/sdk/framework/pay/PayInfoBean;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mWebChromeClient:Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;

    .line 37
    iput-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mWebClient:Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->payType:I

    .line 193
    new-instance v0, Lcom/leidong/sdk/framework/pay/PayWebDialog$3;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/framework/pay/PayWebDialog$3;-><init>(Lcom/leidong/sdk/framework/pay/PayWebDialog;)V

    iput-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->payResultHandler:Landroid/os/Handler;

    .line 231
    new-instance v0, Lcom/leidong/sdk/framework/pay/PayWebDialog$4;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/framework/pay/PayWebDialog$4;-><init>(Lcom/leidong/sdk/framework/pay/PayWebDialog;)V

    iput-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->loadCallback:Lcom/leidong/sdk/framework/web/SdkWebCallback;

    .line 50
    iput-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->currentUrl:Ljava/lang/String;

    .line 52
    sput-object p3, Lcom/leidong/sdk/framework/pay/PayWebDialog;->sdkPayCallBack:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    .line 53
    iput-object p4, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->payInfoBean:Lcom/leidong/sdk/framework/pay/PayInfoBean;

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/framework/pay/PayWebDialog;)Lcom/leidong/sdk/framework/web/webview/WebViewBase;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/leidong/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/leidong/sdk/framework/pay/PayWebDialog;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->payType:I

    return p1
.end method

.method static synthetic access$200(Lcom/leidong/sdk/framework/pay/PayWebDialog;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->callbackSuccess()V

    return-void
.end method

.method static synthetic access$300(Lcom/leidong/sdk/framework/pay/PayWebDialog;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leidong/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->callbackFail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/leidong/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->callbackCancel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/leidong/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/leidong/sdk/framework/pay/PayWebDialog;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->showLoading()V

    return-void
.end method

.method static synthetic access$800(Lcom/leidong/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->setLoadingMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/leidong/sdk/framework/pay/PayWebDialog;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->closeLoading()V

    return-void
.end method

.method private callbackCancel(Ljava/lang/String;)V
    .locals 1

    .line 320
    sget-object v0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->sdkPayCallBack:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    if-eqz v0, :cond_0

    .line 321
    sget-object v0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->sdkPayCallBack:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onCancel(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_0
    invoke-direct {p0, p1}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private callbackFail(Ljava/lang/String;)V
    .locals 1

    .line 312
    sget-object v0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->sdkPayCallBack:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    if-eqz v0, :cond_0

    .line 313
    sget-object v0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->sdkPayCallBack:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_0
    invoke-direct {p0, p1}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private callbackSuccess()V
    .locals 4

    .line 292
    sget-object v0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->sdkPayCallBack:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "money"

    .line 294
    iget-object v2, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->payInfoBean:Lcom/leidong/sdk/framework/pay/PayInfoBean;

    invoke-virtual {v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->getMoney()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "order_no_m"

    .line 295
    iget-object v2, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->payInfoBean:Lcom/leidong/sdk/framework/pay/PayInfoBean;

    invoke-virtual {v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->getOrder_no_m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "order_name"

    .line 296
    iget-object v2, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->payInfoBean:Lcom/leidong/sdk/framework/pay/PayInfoBean;

    invoke-virtual {v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->getOrder_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "role_id"

    .line 297
    iget-object v2, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->payInfoBean:Lcom/leidong/sdk/framework/pay/PayInfoBean;

    invoke-virtual {v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->getRole_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "role_name"

    .line 298
    iget-object v2, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->payInfoBean:Lcom/leidong/sdk/framework/pay/PayInfoBean;

    invoke-virtual {v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->getRole_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "role_level"

    .line 299
    iget-object v2, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->payInfoBean:Lcom/leidong/sdk/framework/pay/PayInfoBean;

    invoke-virtual {v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->getRole_level()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "server_id"

    .line 300
    iget-object v2, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->payInfoBean:Lcom/leidong/sdk/framework/pay/PayInfoBean;

    invoke-virtual {v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->getServer_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "server_name"

    .line 301
    iget-object v2, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->payInfoBean:Lcom/leidong/sdk/framework/pay/PayInfoBean;

    invoke-virtual {v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->getServer_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "payType"

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->payType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "state"

    const-string v2, "success"

    .line 303
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    sget-object v1, Lcom/leidong/sdk/framework/pay/PayWebDialog;->sdkPayCallBack:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v1, v0}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string v0, "leidong_pay_state_success"

    .line 307
    iget-object v1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static checkApkExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 339
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private closeLoading()V
    .locals 1

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 281
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 2

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PayWeb--->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/leidong/sdk/framework/utils/LogUtil;->w(Ljava/lang/String;)V

    return-void
.end method

.method private setLoadingMsg(Ljava/lang/String;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->setLoadingMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private showLoading()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    iget-object v1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->show()V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/leidong/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 57
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "leidong_dialog_theme_main"

    const-string v1, "style"

    iget-object v2, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    .line 60
    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    .line 66
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v0, Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    iget-object v2, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    .line 71
    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    new-instance p1, Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;

    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->loadCallback:Lcom/leidong/sdk/framework/web/SdkWebCallback;

    invoke-direct {p1, v0, v1}, Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;-><init>(Landroid/content/Context;Lcom/leidong/sdk/framework/web/SdkWebCallback;)V

    iput-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mWebChromeClient:Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;

    .line 79
    new-instance p1, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;

    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->loadCallback:Lcom/leidong/sdk/framework/web/SdkWebCallback;

    invoke-direct {p1, v0, v1}, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;-><init>(Landroid/content/Context;Lcom/leidong/sdk/framework/web/SdkWebCallback;)V

    iput-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mWebClient:Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;

    .line 80
    iget-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mWebChromeClient:Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 81
    iget-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mWebClient:Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 83
    iget-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    new-instance v0, Lcom/leidong/sdk/framework/pay/PayWebDialog$PayJsInterface;

    iget-object v1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/leidong/sdk/framework/pay/PayWebDialog$PayJsInterface;-><init>(Lcom/leidong/sdk/framework/pay/PayWebDialog;Landroid/content/Context;)V

    const-string v1, "fmWebUtils"

    invoke-virtual {p1, v0, v1}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 86
    iget-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object v1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {v1}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v2, "Android"

    const-string v3, "Android FMWebView"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 89
    new-instance p1, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    iget-object v1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    .line 90
    iget-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->setCancelable(Z)V

    .line 91
    iget-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 94
    iget-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    iget-object v2, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->currentUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->loadUrl(Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {p1, v1}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->setBackgroundColor(I)V

    .line 98
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p1, v1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    invoke-static {v0}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->setWebContentsDebuggingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 170
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "leidong_tips_exit_pay"

    .line 172
    iget-object p2, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 174
    new-instance p2, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;-><init>(Landroid/content/Context;)V

    .line 175
    invoke-virtual {p2, p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    move-result-object p1

    const-string v0, "\u53d6\u6d88"

    new-instance v1, Lcom/leidong/sdk/framework/pay/PayWebDialog$2;

    invoke-direct {v1, p0, p2}, Lcom/leidong/sdk/framework/pay/PayWebDialog$2;-><init>(Lcom/leidong/sdk/framework/pay/PayWebDialog;Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)V

    invoke-virtual {p1, v0, v1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    move-result-object p1

    const-string v0, "\u786e\u5b9a"

    new-instance v1, Lcom/leidong/sdk/framework/pay/PayWebDialog$1;

    invoke-direct {v1, p0, p2}, Lcom/leidong/sdk/framework/pay/PayWebDialog$1;-><init>(Lcom/leidong/sdk/framework/pay/PayWebDialog;Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)V

    .line 179
    invoke-virtual {p1, v0, v1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    const/4 p1, 0x0

    .line 185
    invoke-virtual {p2, p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setCanceledOnTouchOutside(Z)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    .line 186
    invoke-virtual {p2}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->show()V

    const/4 p1, 0x1

    return p1

    .line 190
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 114
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public payWebDismiss(I)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog;->payResultHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public show()V
    .locals 0

    .line 106
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
