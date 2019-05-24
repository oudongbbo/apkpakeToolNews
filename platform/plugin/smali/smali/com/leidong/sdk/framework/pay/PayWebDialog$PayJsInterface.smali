.class public Lcom/leidong/sdk/framework/pay/PayWebDialog$PayJsInterface;
.super Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;
.source "PayWebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/framework/pay/PayWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PayJsInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;


# direct methods
.method public constructor <init>(Lcom/leidong/sdk/framework/pay/PayWebDialog;Landroid/content/Context;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$PayJsInterface;->this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;

    .line 132
    check-cast p2, Landroid/app/Activity;

    invoke-static {p1}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->access$000(Lcom/leidong/sdk/framework/pay/PayWebDialog;)Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public payClose()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 136
    invoke-super {p0}, Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;->payClose()V

    .line 137
    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$PayJsInterface;->this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->payWebDismiss(I)V

    return-void
.end method

.method public payDismiss(I)V
    .locals 1

    .line 163
    invoke-super {p0, p1}, Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;->payDismiss(I)V

    .line 164
    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$PayJsInterface;->this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->payWebDismiss(I)V

    return-void
.end method

.method public payFail()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 152
    invoke-super {p0}, Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;->payFail()V

    .line 153
    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$PayJsInterface;->this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->payWebDismiss(I)V

    return-void
.end method

.method public payFail(I)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 157
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u652f\u4ed8\u9875\u9762\u5145\u503c[\u5931\u8d25]\u8c03\u7528:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$PayJsInterface;->this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;

    invoke-static {v0, p1}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->access$102(Lcom/leidong/sdk/framework/pay/PayWebDialog;I)I

    .line 159
    iget-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$PayJsInterface;->this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->payWebDismiss(I)V

    return-void
.end method

.method public paySuccess()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 141
    invoke-super {p0}, Lcom/leidong/sdk/framework/web/plugs/SdkWebJsInterface;->paySuccess()V

    .line 142
    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$PayJsInterface;->this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->payWebDismiss(I)V

    return-void
.end method

.method public paySuccess(I)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 146
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u652f\u4ed8\u9875\u9762\u5145\u503c\u3010\u6210\u529f\u3011\u8c03\u7528:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$PayJsInterface;->this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;

    invoke-static {v0, p1}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->access$102(Lcom/leidong/sdk/framework/pay/PayWebDialog;I)I

    .line 148
    iget-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$PayJsInterface;->this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->payWebDismiss(I)V

    return-void
.end method
