.class Lcom/leidong/sdk/s/app/LeiDemoActivity$9$1;
.super Ljava/lang/Object;
.source "LeiDemoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/LeiDemoActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/s/app/LeiDemoActivity$9;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/LeiDemoActivity$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/leidong/sdk/s/app/LeiDemoActivity$9;

    .line 289
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$9$1;->this$1:Lcom/leidong/sdk/s/app/LeiDemoActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 293
    new-instance v0, Lcom/leidong/sdk/framework/pay/PayInfoBean;

    invoke-direct {v0}, Lcom/leidong/sdk/framework/pay/PayInfoBean;-><init>()V

    .line 294
    .local v0, "info":Lcom/leidong/sdk/framework/pay/PayInfoBean;
    const-string v1, "0.01"

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setMoney(Ljava/lang/String;)V

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s_oder_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setOrder_no(Ljava/lang/String;)V

    .line 296
    const-string v1, "\u4e00\u6bdb\u94b1\u90fd\u4e0d\u7ed9\u6211"

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setOrder_name(Ljava/lang/String;)V

    .line 297
    const-string v1, "!*()"

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setOrder_ext(Ljava/lang/String;)V

    .line 298
    const-string v1, "110"

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setRole_id(Ljava/lang/String;)V

    .line 299
    const-string v1, "\u5f20\u4e09\u674e\u56db"

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setRole_name(Ljava/lang/String;)V

    .line 300
    const-string v1, "12"

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setRole_level(Ljava/lang/String;)V

    .line 301
    const-string v1, "131415"

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setServer_id(Ljava/lang/String;)V

    .line 302
    const-string v1, "\u68a6\u56de\u5927\u5510"

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/pay/PayInfoBean;->setServer_name(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$9$1;->this$1:Lcom/leidong/sdk/s/app/LeiDemoActivity$9;

    iget-object v1, v1, Lcom/leidong/sdk/s/app/LeiDemoActivity$9;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    # getter for: Lcom/leidong/sdk/s/app/LeiDemoActivity;->mayaCore:Lcom/leidong/sdk/s/app/LeiSdkCore;
    invoke-static {v1}, Lcom/leidong/sdk/s/app/LeiDemoActivity;->access$000(Lcom/leidong/sdk/s/app/LeiDemoActivity;)Lcom/leidong/sdk/s/app/LeiSdkCore;

    move-result-object v1

    iget-object v2, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$9$1;->this$1:Lcom/leidong/sdk/s/app/LeiDemoActivity$9;

    iget-object v2, v2, Lcom/leidong/sdk/s/app/LeiDemoActivity$9;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    new-instance v3, Lcom/leidong/sdk/s/app/LeiDemoActivity$9$1$1;

    invoke-direct {v3, p0}, Lcom/leidong/sdk/s/app/LeiDemoActivity$9$1$1;-><init>(Lcom/leidong/sdk/s/app/LeiDemoActivity$9$1;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/leidong/sdk/s/app/LeiSdkCore;->userPay(Landroid/content/Context;Lcom/leidong/sdk/framework/pay/PayInfoBean;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    .line 320
    return-void
.end method
