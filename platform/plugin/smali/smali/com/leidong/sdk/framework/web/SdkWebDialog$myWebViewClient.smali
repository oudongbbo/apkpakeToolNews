.class public Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;
.super Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;
.source "SdkWebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/framework/web/SdkWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "myWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;


# direct methods
.method public constructor <init>(Lcom/leidong/sdk/framework/web/SdkWebDialog;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/framework/web/SdkWebDialog;
    .param p2, "context"    # Landroid/content/Context;

    .line 282
    iput-object p1, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    .line 283
    invoke-direct {p0, p2}, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;-><init>(Landroid/content/Context;)V

    .line 285
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 311
    const-string v0, "myWeb onPageFinished"

    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/LogUtil;->w(Ljava/lang/String;)V

    .line 312
    invoke-super {p0, p1, p2}, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    # invokes: Lcom/leidong/sdk/framework/web/SdkWebDialog;->removeTimeoutCheckingRunnable()V
    invoke-static {v0}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->access$500(Lcom/leidong/sdk/framework/web/SdkWebDialog;)V

    .line 316
    iget-object v0, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    # getter for: Lcom/leidong/sdk/framework/web/SdkWebDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->access$200(Lcom/leidong/sdk/framework/web/SdkWebDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    # getter for: Lcom/leidong/sdk/framework/web/SdkWebDialog;->LOAD_TIMEOUT:J
    invoke-static {v1}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->access$700(Lcom/leidong/sdk/framework/web/SdkWebDialog;)J

    move-result-wide v1

    invoke-static {v0, p2, v1, v2}, Lcom/leidong/sdk/framework/web/webview/WebviewUtils;->isLoadOneTime(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const-string v0, "\u5f53\u524d\u9875\u9762:\u8d85\u65f6\u524d\u52a0\u8f7d\u5b8c\u6210"

    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    # getter for: Lcom/leidong/sdk/framework/web/SdkWebDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->access$200(Lcom/leidong/sdk/framework/web/SdkWebDialog;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/leidong/sdk/framework/web/webview/WebviewUtils;->setUrlLoadCount(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 320
    :cond_0
    const-string v0, "\u5f53\u524d\u9875\u9762:\u8d85\u65f6\u540e\u52a0\u8f7d\u5b8c\u6210"

    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 323
    :goto_0
    iget-object v0, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    # invokes: Lcom/leidong/sdk/framework/web/SdkWebDialog;->hideWaitDialog()V
    invoke-static {v0}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->access$900(Lcom/leidong/sdk/framework/web/SdkWebDialog;)V

    .line 324
    iget-object v0, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    # getter for: Lcom/leidong/sdk/framework/web/SdkWebDialog;->webView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;
    invoke-static {v0}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->access$300(Lcom/leidong/sdk/framework/web/SdkWebDialog;)Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->setVisibility(I)V

    .line 325
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 289
    const-string v0, "myWeb onPageStarted"

    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/LogUtil;->w(Ljava/lang/String;)V

    .line 290
    invoke-super {p0, p1, p2, p3}, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 292
    iget-object v0, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    # setter for: Lcom/leidong/sdk/framework/web/SdkWebDialog;->currentUrl:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->access$102(Lcom/leidong/sdk/framework/web/SdkWebDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    # invokes: Lcom/leidong/sdk/framework/web/SdkWebDialog;->removeTimeoutCheckingRunnable()V
    invoke-static {v0}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->access$500(Lcom/leidong/sdk/framework/web/SdkWebDialog;)V

    .line 295
    iget-object v0, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    new-instance v1, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient$1;-><init>(Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V

    # setter for: Lcom/leidong/sdk/framework/web/SdkWebDialog;->runnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->access$602(Lcom/leidong/sdk/framework/web/SdkWebDialog;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 302
    iget-object v0, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    # getter for: Lcom/leidong/sdk/framework/web/SdkWebDialog;->runnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->access$600(Lcom/leidong/sdk/framework/web/SdkWebDialog;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    # getter for: Lcom/leidong/sdk/framework/web/SdkWebDialog;->LOAD_TIMEOUT:J
    invoke-static {v1}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->access$700(Lcom/leidong/sdk/framework/web/SdkWebDialog;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/web/webview/WebviewHandler;->postDelayed(Ljava/lang/Runnable;J)V

    .line 304
    iget-object v0, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    # getter for: Lcom/leidong/sdk/framework/web/SdkWebDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->access$200(Lcom/leidong/sdk/framework/web/SdkWebDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, p2, v1, v2}, Lcom/leidong/sdk/framework/web/webview/WebviewUtils;->setUrlLoadTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 306
    iget-object v0, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    iget-object v1, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    # getter for: Lcom/leidong/sdk/framework/web/SdkWebDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->access$200(Lcom/leidong/sdk/framework/web/SdkWebDialog;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/leidong/sdk/framework/web/SdkWebDialog;->showWaitDialog(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->access$800(Lcom/leidong/sdk/framework/web/SdkWebDialog;Landroid/content/Context;)V

    .line 307
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failedUrl"    # Ljava/lang/String;

    .line 329
    const-string v0, "myWeb onReceivedError"

    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/LogUtil;->w(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    # invokes: Lcom/leidong/sdk/framework/web/SdkWebDialog;->removeTimeoutCheckingRunnable()V
    invoke-static {v0}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->access$500(Lcom/leidong/sdk/framework/web/SdkWebDialog;)V

    .line 332
    const-wide/16 v0, 0xc8

    const/4 v2, 0x1

    const/4 v3, -0x8

    if-ne v3, p2, :cond_1

    .line 334
    iget-object v3, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    # getter for: Lcom/leidong/sdk/framework/web/SdkWebDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->access$200(Lcom/leidong/sdk/framework/web/SdkWebDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p4}, Lcom/leidong/sdk/framework/web/webview/WebviewUtils;->getUrlLoadCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 335
    .local v3, "count":I
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8d85\u65f6\u5904\u7406\uff0c\u51c6\u5907\u52a0\u8f7d\u7b2c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6b21"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/LogUtil;->w(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    # getter for: Lcom/leidong/sdk/framework/web/SdkWebDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->access$200(Lcom/leidong/sdk/framework/web/SdkWebDialog;)Landroid/content/Context;

    move-result-object v0

    add-int/lit8 v1, v3, 0x1

    invoke-static {v0, p4, v1}, Lcom/leidong/sdk/framework/web/webview/WebviewUtils;->setUrlLoadCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 338
    iget-object v0, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    iget-object v0, v0, Lcom/leidong/sdk/framework/web/SdkWebDialog;->showWebHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 340
    :cond_0
    iget-object v4, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    iget-object v4, v4, Lcom/leidong/sdk/framework/web/SdkWebDialog;->showErrorWebHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 342
    .end local v3    # "count":I
    :goto_0
    goto :goto_1

    .line 344
    :cond_1
    iget-object v3, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$myWebViewClient;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    iget-object v3, v3, Lcom/leidong/sdk/framework/web/SdkWebDialog;->showErrorWebHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 347
    :goto_1
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "paramWebView"    # Landroid/webkit/WebView;
    .param p2, "paramSslErrorHandler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "paramSslError"    # Landroid/net/http/SslError;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .line 353
    const-string v0, "myWeb onReceivedSslError"

    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/LogUtil;->w(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 355
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 359
    invoke-super {p0, p1, p2}, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
