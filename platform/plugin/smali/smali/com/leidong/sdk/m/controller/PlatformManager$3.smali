.class Lcom/leidong/sdk/m/controller/PlatformManager$3;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/leidong/sdk/m/views/MoneySelectDialog$MoneyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/PlatformManager;->userPay(Landroid/content/Context;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$payinfos:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/PlatformManager;Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/m/controller/PlatformManager;

    .line 263
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$3;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iput-object p2, p0, Lcom/leidong/sdk/m/controller/PlatformManager$3;->val$payinfos:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/leidong/sdk/m/controller/PlatformManager$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$3;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    const-string v1, "pay_cancel"

    invoke-interface {v0, v1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onPayFail(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public onConfirm(Ljava/lang/String;)V
    .locals 3
    .param p1, "money"    # Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$3;->val$payinfos:Ljava/util/HashMap;

    const-string v1, "money"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$3;->val$payinfos:Ljava/util/HashMap;

    const-string v1, "money"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$3;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/leidong/sdk/m/controller/PlatformManager$3;->val$payinfos:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/leidong/sdk/m/controller/PlatformManager;->userPay(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 270
    return-void
.end method
