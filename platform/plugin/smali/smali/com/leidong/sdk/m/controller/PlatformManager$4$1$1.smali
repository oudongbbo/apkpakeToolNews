.class Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/leidong/sdk/m/interfaces/MsdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/PlatformManager$4$1;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$4;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onPayFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "no"

    .line 315
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    .line 316
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cch_data"

    .line 317
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    .line 318
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "new"

    .line 320
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object v1, v1, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object v1, v1, Lcom/leidong/sdk/m/controller/PlatformManager$4;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v1, v1, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/leidong/sdk/m/model/MConfigManager;->setIsNewPay(Landroid/content/Context;Z)V

    .line 325
    new-instance v1, Lcom/leidong/sdk/framework/pay/PayInfoBean;

    invoke-direct {v1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;-><init>()V

    .line 326
    iget-object v2, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    const-string v3, "money"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setMoney(Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    const-string v3, "order_no"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setOrder_no(Ljava/lang/String;)V

    .line 328
    iget-object v2, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    const-string v3, "order_name"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setOrder_name(Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    const-string v3, "order_ext"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setOrder_ext(Ljava/lang/String;)V

    .line 330
    iget-object v2, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    const-string v3, "role_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setRole_id(Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    const-string v3, "role_name"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setRole_name(Ljava/lang/String;)V

    .line 332
    iget-object v2, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    const-string v3, "role_level"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setRole_level(Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    const-string v3, "server_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setServer_id(Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    const-string v3, "server_name"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setServer_name(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v1, v0}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setOrder_no_m(Ljava/lang/String;)V

    const-string v0, ""

    .line 336
    invoke-virtual {v1, v0}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setOrder_ext_m(Ljava/lang/String;)V

    .line 338
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_PAY_PAGE:Ljava/lang/String;

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$4;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1$1;

    invoke-direct {v2, p0}, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1$1;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;)V

    invoke-static {v0, p1, v1, v2}, Lcom/leidong/sdk/m/utils/MsdkUtils;->showSdkPayDialog(Landroid/content/Context;Ljava/lang/String;Lcom/leidong/sdk/framework/pay/PayInfoBean;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    goto :goto_0

    .line 356
    :cond_1
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager$4;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/leidong/sdk/m/model/MConfigManager;->setIsNewPay(Landroid/content/Context;Z)V

    .line 358
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    const-string v1, "order_no_m"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    const-string v0, "order_cch_data"

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager$4;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager;->mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$4;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object v1, v1, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object v1, v1, Lcom/leidong/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Lcom/leidong/sdk/m/controller/PlatformCore;->mUserPay(Landroid/content/Context;Ljava/util/HashMap;)V

    :goto_0
    return-void
.end method
