.class public Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;
.super Landroid/app/Activity;
.source "SdkCustomerServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;,
        Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$MyWebViewDownLoadListener;,
        Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$JsObj;
    }
.end annotation


# instance fields
.field private LOAD_TIMEOUT:J

.field private final RETRY_LOAD_COUNTS:I

.field closeHandler:Landroid/os/Handler;

.field private currentUrl:Ljava/lang/String;

.field private isTransparent:Z

.field private leidong_customer_rl:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private runnable:Ljava/lang/Runnable;

.field private screenWidth:I

.field private screenheight:I

.field private sdkWebChromeClient:Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;

.field showErrorWebHandler:Landroid/os/Handler;

.field showWebHandler:Landroid/os/Handler;

.field private waitDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

.field webLoadCallback:Lcom/leidong/sdk/framework/web/SdkWebCallback;

.field private webView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-wide/16 v0, 0x1388

    .line 45
    iput-wide v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->LOAD_TIMEOUT:J

    const/4 v0, 0x3

    .line 46
    iput v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->RETRY_LOAD_COUNTS:I

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->isTransparent:Z

    .line 139
    new-instance v0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$2;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$2;-><init>(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)V

    iput-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->showWebHandler:Landroid/os/Handler;

    .line 169
    new-instance v0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$3;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$3;-><init>(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)V

    iput-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->closeHandler:Landroid/os/Handler;

    .line 179
    new-instance v0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$4;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$4;-><init>(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)V

    iput-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->showErrorWebHandler:Landroid/os/Handler;

    .line 355
    new-instance v0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$5;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$5;-><init>(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)V

    iput-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->webLoadCallback:Lcom/leidong/sdk/framework/web/SdkWebCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->currentUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->hideWaitDialog()V

    return-void
.end method

.method static synthetic access$102(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->currentUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->updateWaitDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)Lcom/leidong/sdk/framework/web/webview/WebViewBase;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->isTransparent:Z

    return p0
.end method

.method static synthetic access$500(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->sendLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->removeTimeoutCheckingRunnable()V

    return-void
.end method

.method static synthetic access$700(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$702(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->runnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$800(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->LOAD_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->showWaitDialog(Landroid/content/Context;)V

    return-void
.end method

.method private hideWaitDialog()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private removeTimeoutCheckingRunnable()V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->runnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/leidong/sdk/framework/web/webview/WebviewHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 351
    iput-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->runnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private sendLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SdkCustomerServiceActivity"

    .line 406
    invoke-static {v0, p1}, Lcom/leidong/sdk/m/utils/MLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showWaitDialog(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 193
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-direct {v0, p1}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    .line 195
    iget-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 199
    iget-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->show()V

    :cond_1
    return-void
.end method

.method private updateWaitDialog(Ljava/lang/String;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->setLoadingMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->sdkWebChromeClient:Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->sdkWebChromeClient:Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;->onActivityResult(IILandroid/content/Intent;)V

    .line 394
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onActivityResultAboveL(IILandroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->sdkWebChromeClient:Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->sdkWebChromeClient:Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;->onActivityResultAboveL(IILandroid/content/Intent;)V

    .line 401
    invoke-virtual {p0, p1, p2, p3}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    iput-object p0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->setFinishOnTouchOutside(Z)V

    const-string v0, "window"

    .line 65
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 66
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 67
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 68
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->screenWidth:I

    .line 69
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->screenheight:I

    .line 71
    invoke-virtual {p0}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->currentUrl:Ljava/lang/String;

    .line 74
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Web\u9875\u52a0\u8f7durl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->currentUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "leidong_dialog_customer"

    const-string v1, "layout"

    .line 80
    iget-object v2, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->setContentView(I)V

    .line 85
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/CommonUtil;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v0

    const-wide v1, 0x3fe4cccccccccccdL    # 0.65

    if-eqz v0, :cond_1

    .line 86
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->screenWidth:I

    int-to-double v3, v3

    mul-double v3, v3, v1

    double-to-int v3, v3

    iget v4, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->screenWidth:I

    int-to-double v4, v4

    mul-double v4, v4, v1

    const-wide v1, 0x3fe3333333333333L    # 0.6

    mul-double v4, v4, v1

    double-to-int v1, v4

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 88
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->screenWidth:I

    int-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double v3, v3, v5

    double-to-int v3, v3

    iget v4, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->screenheight:I

    int-to-double v4, v4

    mul-double v4, v4, v1

    double-to-int v1, v4

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 v1, 0x11

    .line 91
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const-string v1, "leidong_customer_content"

    const-string v2, "id"

    .line 93
    iget-object v3, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    .line 94
    invoke-static {v1, v2, v3}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 93
    invoke-virtual {p0, v1}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 95
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "leidong_customer_title"

    const-string v1, "id"

    .line 97
    iget-object v2, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v0, "leidong_customer_close"

    const-string v1, "id"

    .line 98
    iget-object v2, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "leidong_customer_rl"

    const-string v2, "id"

    .line 99
    iget-object v3, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->leidong_customer_rl:Landroid/widget/RelativeLayout;

    .line 100
    new-instance v1, Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    iget-object v2, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    .line 101
    iget-object v1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->leidong_customer_rl:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 105
    new-instance v1, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$1;-><init>(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->setEnableHardwareAccelerated(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 121
    new-instance v0, Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;

    iget-object v1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->webLoadCallback:Lcom/leidong/sdk/framework/web/SdkWebCallback;

    invoke-direct {v0, v1, v2}, Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;-><init>(Landroid/content/Context;Lcom/leidong/sdk/framework/web/SdkWebCallback;)V

    iput-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->sdkWebChromeClient:Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;

    .line 123
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    new-instance v1, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$MyWebViewDownLoadListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$MyWebViewDownLoadListener;-><init>(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 124
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    new-instance v1, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;

    iget-object v2, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;-><init>(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 125
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    iget-object v1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->sdkWebChromeClient:Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 128
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {v1}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v2, "Android"

    const-string v3, "Android FMWebView"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    new-instance v1, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$JsObj;

    iget-object v2, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$JsObj;-><init>(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Landroid/content/Context;)V

    const-string v2, "fmWebUtils"

    invoke-virtual {v0, v1, v2}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->showWebHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 135
    iget-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->setVisibility(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const-string v0, "myWeb\u88ab\u9500\u6bc1\uff0c\u5148\u5173\u95ed\u52a0\u8f7d\u8fdb\u5ea6\u6846"

    .line 382
    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->sendLog(Ljava/lang/String;)V

    .line 383
    invoke-direct {p0}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->hideWaitDialog()V

    .line 385
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/framework/web/webview/WebviewUtils;->clearWebviewPrefs(Landroid/content/Context;)V

    .line 386
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
