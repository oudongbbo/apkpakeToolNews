.class Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient$6;
.super Ljava/lang/Object;
.source "SdkWebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;

.field final synthetic val$result:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;Landroid/webkit/JsPromptResult;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient$6;->this$0:Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient;

    iput-object p2, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient$6;->val$result:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 156
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/plugs/SdkWebChromeClient$6;->val$result:Landroid/webkit/JsPromptResult;

    invoke-virtual {p1}, Landroid/webkit/JsPromptResult;->cancel()V

    return-void
.end method
