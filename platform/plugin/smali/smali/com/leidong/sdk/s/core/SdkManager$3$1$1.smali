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

    .line 233
    iput-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$3$1$1;->this$2:Lcom/leidong/sdk/s/core/SdkManager$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 1

    .line 255
    iget-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$3$1$1;->this$2:Lcom/leidong/sdk/s/core/SdkManager$3$1;

    iget-object p1, p1, Lcom/leidong/sdk/s/core/SdkManager$3$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$3;

    iget-object p1, p1, Lcom/leidong/sdk/s/core/SdkManager$3;->val$paycallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    const-string v0, "cancel pay"

    invoke-interface {p1, v0}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager$3$1$1;->this$2:Lcom/leidong/sdk/s/core/SdkManager$3$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/core/SdkManager$3$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$3;

    iget-object v0, v0, Lcom/leidong/sdk/s/core/SdkManager$3;->val$paycallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 4

    .line 236
    new-instance v0, Lcom/leidong/sdk/framework/pay/PayInfoBean;

    invoke-direct {v0}, Lcom/leidong/sdk/framework/pay/PayInfoBean;-><init>()V

    .line 237
    iget-object v1, p0, Lcom/leidong/sdk/s/core/SdkManager$3$1$1;->this$2:Lcom/leidong/sdk/s/core/SdkManager$3$1;

    iget-object v1, v1, Lcom/leidong/sdk/s/core/SdkManager$3$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$3;

    iget-object v1, v1, Lcom/leidong/sdk/s/core/SdkManager$3;->val$payinfo:Lcom/leidong/sdk/framework/pay/PayInfoBean;

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->copyToAFromB(Lcom/leidong/sdk/framework/pay/PayInfoBean;Lcom/leidong/sdk/framework/pay/PayInfoBean;)V

    const-string v1, "no"

    .line 239
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ext"

    .line 240
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    .line 242
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object p1, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_PAY_PAGE:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v3, "url"

    .line 243
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 244
    :goto_0
    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setOrder_no_m(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0, v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setOrder_ext_m(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/leidong/sdk/s/core/SdkManager$3$1$1;->this$2:Lcom/leidong/sdk/s/core/SdkManager$3$1;

    iget-object v1, v1, Lcom/leidong/sdk/s/core/SdkManager$3$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$3;

    iget-object v1, v1, Lcom/leidong/sdk/s/core/SdkManager$3;->this$0:Lcom/leidong/sdk/s/core/SdkManager;

    iget-object v2, p0, Lcom/leidong/sdk/s/core/SdkManager$3$1$1;->this$2:Lcom/leidong/sdk/s/core/SdkManager$3$1;

    iget-object v2, v2, Lcom/leidong/sdk/s/core/SdkManager$3$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$3;

    iget-object v2, v2, Lcom/leidong/sdk/s/core/SdkManager$3;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/leidong/sdk/s/core/SdkManager$3$1$1;->this$2:Lcom/leidong/sdk/s/core/SdkManager$3$1;

    iget-object v3, v3, Lcom/leidong/sdk/s/core/SdkManager$3$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$3;

    iget-object v3, v3, Lcom/leidong/sdk/s/core/SdkManager$3;->val$paycallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/leidong/sdk/s/core/SdkManager;->showPayDialog(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/framework/pay/PayInfoBean;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    return-void
.end method
