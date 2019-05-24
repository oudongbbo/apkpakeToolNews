.class Lcom/leidong/sdk/m/controller/MsdkManager$6;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Lcom/leidong/sdk/m/interfaces/MsdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/MsdkManager;->userPayCommon(Landroid/content/Context;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$payinfos:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/MsdkManager;Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$6;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    iput-object p2, p0, Lcom/leidong/sdk/m/controller/MsdkManager$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/leidong/sdk/m/controller/MsdkManager$6;->val$payinfos:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 393
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$6;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-static {p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$800(Lcom/leidong/sdk/m/controller/MsdkManager;)Lcom/leidong/sdk/m/LeiMsdkCallback;

    move-result-object p1

    const-string v0, "pay_cancel"

    invoke-interface {p1, v0}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onPayFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2

    .line 389
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$6;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$6;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$6;->val$payinfos:Ljava/util/HashMap;

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$900(Lcom/leidong/sdk/m/controller/MsdkManager;Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method
