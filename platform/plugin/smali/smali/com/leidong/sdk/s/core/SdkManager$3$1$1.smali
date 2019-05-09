.class Lcom/leidong/sdk/s/core/SdkManager$3$1$1;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/core/SdkManager$3$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/leidong/sdk/s/core/SdkManager$3$1;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/core/SdkManager$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/leidong/sdk/s/core/SdkManager$3$1;

    .line 233
    iput-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$3$1$1;->this$2:Lcom/leidong/sdk/s/core/SdkManager$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager$3$1$1;->this$2:Lcom/leidong/sdk/s/core/SdkManager$3$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/core/SdkManager$3$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$3;

    iget-object v0, v0, Lcom/leidong/sdk/s/core/SdkManager$3;->val$paycallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    const-string v1, "cancel pay"

    invoke-interface {v0, v1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager$3$1$1;->this$2:Lcom/leidong/sdk/s/core/SdkManager$3$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/core/SdkManager$3$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$3;

    iget-object v0, v0, Lcom/leidong/sdk/s/core/SdkManager$3;->val$paycallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 236
    new-instance v0, Lcom/leidong/sdk/framework/pay/PayInfoBean;

    invoke-direct {v0}, Lcom/leidong/sdk/framework/pay/PayInfoBean;-><init>()V

    .line 237
    .local v0, "temp":Lcom/leidong/sdk/framework/pay/PayInfoBean;
    iget-object v1, p0, Lcom/leidong/sdk/s/core/SdkManager$3$1$1;->this$2:Lcom/leidong/sdk/s/core/SdkManager$3$1;

    iget-object v1, v1, Lcom/leidong/sdk/s/core/SdkManager$3$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$3;

    iget-object v1, v1, Lcom/leidong/sdk/s/core/SdkManager$3;->val$payinfo:Lcom/leidong/sdk/framework/pay/PayInfoBean;

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->copyToAFromB(Lcom/leidong/sdk/framework/pay/PayInfoBean;Lcom/leidong/sdk/framework/pay/PayInfoBean;)V

    .line 239
    const-string v1, "no"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "m_no":Ljava/lang/String;
    const-string v2, "ext"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "m_ext":Ljava/lang/String;
    const-string v3, "url"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_PAY_PAGE:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v3, "url"

    .line 243
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "host":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setOrder_no_m(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0, v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setOrder_ext_m(Ljava/lang/String;)V

    .line 247
    iget-object v4, p0, Lcom/leidong/sdk/s/core/SdkManager$3$1$1;->this$2:Lcom/leidong/sdk/s/core/SdkManager$3$1;

    iget-object v4, v4, Lcom/leidong/sdk/s/core/SdkManager$3$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$3;

    iget-object v4, v4, Lcom/leidong/sdk/s/core/SdkManager$3;->this$0:Lcom/leidong/sdk/s/core/SdkManager;

    iget-object v5, p0, Lcom/leidong/sdk/s/core/SdkManager$3$1$1;->this$2:Lcom/leidong/sdk/s/core/SdkManager$3$1;

    iget-object v5, v5, Lcom/leidong/sdk/s/core/SdkManager$3$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$3;

    iget-object v5, v5, Lcom/leidong/sdk/s/core/SdkManager$3;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/leidong/sdk/s/core/SdkManager$3$1$1;->this$2:Lcom/leidong/sdk/s/core/SdkManager$3$1;

    iget-object v6, v6, Lcom/leidong/sdk/s/core/SdkManager$3$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$3;

    iget-object v6, v6, Lcom/leidong/sdk/s/core/SdkManager$3;->val$paycallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-virtual {v4, v5, v3, v0, v6}, Lcom/leidong/sdk/s/core/SdkManager;->showPayDialog(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/framework/pay/PayInfoBean;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    .line 248
    return-void
.end method
