.class Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient$4;
.super Ljava/lang/Object;
.source "SdkWebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;Landroid/webkit/JsResult;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient$4;->this$0:Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;

    iput-object p2, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient$4;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient$4;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method
