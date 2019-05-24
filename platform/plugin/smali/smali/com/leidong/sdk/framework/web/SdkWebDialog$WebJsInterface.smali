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
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$WebJsInterface;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    .line 235
    check-cast p2, Landroid/app/Activity;

    invoke-static {p1}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->access$300(Lcom/leidong/sdk/framework/web/SdkWebDialog;)Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public enClose()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 249
    invoke-super {p0}, Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;->enClose()V

    const-string v0, "wap \u8c03\u7528enClose"

    .line 250
    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$WebJsInterface;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->closeWeb()V

    return-void
.end method

.method public enRefresh()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 241
    invoke-super {p0}, Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;->enRefresh()V

    const-string v0, "wap \u8c03\u7528enRefresh"

    .line 242
    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$WebJsInterface;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->refreshWeb()V

    return-void
.end method
