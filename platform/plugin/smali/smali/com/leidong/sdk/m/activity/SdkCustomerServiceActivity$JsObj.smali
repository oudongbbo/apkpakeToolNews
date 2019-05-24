.class Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$JsObj;
.super Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;
.source "SdkCustomerServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JsObj"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;


# direct methods
.method public constructor <init>(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Landroid/content/Context;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$JsObj;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    .line 228
    check-cast p2, Landroid/app/Activity;

    invoke-static {p1}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$300(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public enClose()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 241
    invoke-super {p0}, Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;->enClose()V

    .line 242
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$JsObj;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    const-string v1, "wap \u8c03\u7528enClose"

    invoke-static {v0, v1}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$500(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$JsObj;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    iget-object v0, v0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->closeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public enRefresh()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$JsObj;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    const-string v1, "wap \u8c03\u7528enRefresh"

    invoke-static {v0, v1}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$500(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$JsObj;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    iget-object v0, v0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->showWebHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
