.class Lcom/leidong/sdk/s/app/LeiSdkCore$10$1$1;
.super Ljava/lang/Object;
.source "LeiSdkCore.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/ResultCallback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/LeiSdkCore$10$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$10$1;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/LeiSdkCore$10$1;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$10$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$10$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$10$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$10$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$10;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$10;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "amount"

    .line 516
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 517
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$10$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$10$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$10$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$10;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$10;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->access$000(Lcom/leidong/sdk/s/app/LeiSdkCore;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserNoAdultPayMax(Landroid/content/Context;)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 520
    new-instance p1, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$10$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$10$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$10$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$10;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$10;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->access$000(Lcom/leidong/sdk/s/app/LeiSdkCore;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;-><init>(Landroid/content/Context;)V

    const-string v0, "\u6e29\u99a8\u63d0\u793a"

    .line 521
    invoke-virtual {p1, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    const-string v0, "\u60a8\u672a\u6ee118\u5c81\uff0c\u8bf7\u8c28\u614e\u6d88\u8d39!"

    .line 522
    invoke-virtual {p1, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    const-string v0, "\u786e\u5b9a"

    .line 523
    new-instance v1, Lcom/leidong/sdk/s/app/LeiSdkCore$10$1$1$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/LeiSdkCore$10$1$1$1;-><init>(Lcom/leidong/sdk/s/app/LeiSdkCore$10$1$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    const/4 v0, 0x0

    .line 530
    invoke-virtual {p1, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setCancelable(Z)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    .line 531
    invoke-virtual {p1, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setCanceledOnTouchOutside(Z)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    .line 532
    invoke-virtual {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->show()V

    :cond_0
    return-void
.end method
