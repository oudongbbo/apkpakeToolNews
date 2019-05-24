.class public Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;
.super Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;
.source "SdkCustomerServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "myWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;


# direct methods
.method public constructor <init>(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Landroid/content/Context;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    .line 265
    invoke-direct {p0, p2}, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    const-string v1, "myWeb onPageFinished"

    invoke-static {v0, v1}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$500(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V

    .line 294
    invoke-super {p0, p1, p2}, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 296
    iget-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-static {p1}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$600(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)V

    .line 298
    iget-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-static {p1}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$200(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-static {v0}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$800(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/leidong/sdk/framework/web/webview/WebviewUtils;->isLoadOneTime(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 299
    iget-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    const-string v0, "\u5f53\u524d\u9875\u9762:\u8d85\u65f6\u524d\u52a0\u8f7d\u5b8c\u6210"

    invoke-static {p1, v0}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$500(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V

    .line 300
    iget-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-static {p1}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$200(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/leidong/sdk/framework/web/webview/WebviewUtils;->setUrlLoadCount(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    const-string p2, "\u5f53\u524d\u9875\u9762:\u8d85\u65f6\u540e\u52a0\u8f7d\u5b8c\u6210"

    invoke-static {p1, p2}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$500(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V

    .line 305
    :goto_0
    iget-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-static {p1}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$1000(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)V

    .line 306
    iget-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-static {p1}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$300(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    const-string v1, "myWeb onPageStarted"

    invoke-static {v0, v1}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$500(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V

    .line 272
    invoke-super {p0, p1, p2, p3}, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 274
    iget-object p3, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-static {p3, p2}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$102(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    iget-object p3, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-static {p3}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$600(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)V

    .line 277
    iget-object p3, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    new-instance v0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient$1;-><init>(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$702(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 284
    iget-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-static {p1}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$700(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)Ljava/lang/Runnable;

    move-result-object p1

    iget-object p3, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-static {p3}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$800(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/web/webview/WebviewHandler;->postDelayed(Ljava/lang/Runnable;J)V

    .line 286
    iget-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-static {p1}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$200(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/leidong/sdk/framework/web/webview/WebviewUtils;->setUrlLoadTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 288
    iget-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    iget-object p2, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-static {p2}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$200(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$900(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Landroid/content/Context;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 311
    iget-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    const-string p3, "myWeb onReceivedError"

    invoke-static {p1, p3}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$500(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V

    .line 313
    iget-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-static {p1}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$600(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)V

    const-wide/16 v0, 0xc8

    const/4 p1, 0x1

    const/4 p3, -0x8

    if-ne p3, p2, :cond_1

    .line 316
    iget-object p2, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-static {p2}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$200(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p4}, Lcom/leidong/sdk/framework/web/webview/WebviewUtils;->getUrlLoadCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x3

    if-ge p2, p3, :cond_0

    .line 318
    iget-object p3, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8d85\u65f6\u5904\u7406\uff0c\u51c6\u5907\u52a0\u8f7d\u7b2c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6b21"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$500(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V

    .line 319
    iget-object p3, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-static {p3}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$200(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p4, p2}, Lcom/leidong/sdk/framework/web/webview/WebviewUtils;->setUrlLoadCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 320
    iget-object p2, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    iget-object p2, p2, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->showWebHandler:Landroid/os/Handler;

    const-wide/16 p3, 0x1f4

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 322
    :cond_0
    iget-object p2, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    iget-object p2, p2, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->showErrorWebHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 326
    :cond_1
    iget-object p2, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    iget-object p2, p2, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->showErrorWebHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .line 335
    iget-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    const-string p3, "myWeb onReceivedSslError"

    invoke-static {p1, p3}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$500(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 341
    invoke-super {p0, p1, p2}, Lcom/leidong/sdk/framework/web/plugs/SdkWebveiwClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
