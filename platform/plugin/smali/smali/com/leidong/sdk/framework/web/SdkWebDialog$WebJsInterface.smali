.class public Lcom/leidong/sdk/framework/web/SdkWebDialog$WebJsInterface;
.super Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;
.source "SdkWebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/framework/web/SdkWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebJsInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;


# direct methods
.method public constructor <init>(Lcom/leidong/sdk/framework/web/SdkWebDialog;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/leidong/sdk/framework/web/SdkWebDialog;
    .param p2, "context"    # Landroid/content/Context;

    .line 234
    iput-object p1, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$WebJsInterface;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    .line 235
    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    # getter for: Lcom/leidong/sdk/framework/web/SdkWebDialog;->webView:Lcom/leidong/sdk/framework/web/webview/WebViewBase;
    invoke-static {p1}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->access$300(Lcom/leidong/sdk/framework/web/SdkWebDialog;)Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 236
    return-void
.end method


# virtual methods
.method public enClose()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 249
    invoke-super {p0}, Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;->enClose()V

    .line 250
    const-string v0, "wap \u8c03\u7528enClose"

    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$WebJsInterface;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->closeWeb()V

    .line 252
    return-void
.end method

.method public enRefresh()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 241
    invoke-super {p0}, Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;->enRefresh()V

    .line 242
    const-string v0, "wap \u8c03\u7528enRefresh"

    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$WebJsInterface;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->refreshWeb()V

    .line 244
    return-void
.end method