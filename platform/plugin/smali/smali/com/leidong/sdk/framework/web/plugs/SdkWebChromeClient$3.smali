.class Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient$3;
.super Ljava/lang/Object;
.source "SdkWebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .param p1, "this$0"    # Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;

    .line 98
    iput-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient$3;->this$0:Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;

    iput-object p2, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient$3;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 101
    iget-object v0, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient$3;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 102
    return-void
.end method
