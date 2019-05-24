.class Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/PlatformManager$8$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/leidong/sdk/m/controller/PlatformManager$8$1;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/PlatformManager$8$1;)V
    .locals 0

    .line 1026
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    .line 1051
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$8$1;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager$8$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$8;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager$8;->val$callback:Lcom/leidong/sdk/m/interfaces/MResultCallback;

    invoke-interface {p1, p2}, Lcom/leidong/sdk/m/interfaces/MResultCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    const-string v0, "0"

    .line 1031
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1033
    new-instance p1, Lcom/leidong/sdk/m/views/ActivationDialog;

    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$8$1;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$8$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$8;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$8;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/leidong/sdk/m/views/ActivationDialog;-><init>(Landroid/content/Context;)V

    .line 1034
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$8$1;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$8$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$8;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$8;->val$code_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$8$1;

    iget-object v1, v1, Lcom/leidong/sdk/m/controller/PlatformManager$8$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$8;

    iget-object v1, v1, Lcom/leidong/sdk/m/controller/PlatformManager$8;->val$a_qq_group_key:Ljava/lang/String;

    iget-object v2, p0, Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$8$1;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager$8$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$8;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager$8;->val$url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/leidong/sdk/m/views/ActivationDialog;->setActivateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    new-instance v0, Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1$1;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1$1;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1;)V

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/m/views/ActivationDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1042
    invoke-virtual {p1}, Lcom/leidong/sdk/m/views/ActivationDialog;->show()V

    goto :goto_0

    .line 1045
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$8$1;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager$8$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$8;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager$8;->val$callback:Lcom/leidong/sdk/m/interfaces/MResultCallback;

    invoke-interface {p1}, Lcom/leidong/sdk/m/interfaces/MResultCallback;->onSuccess()V

    :goto_0
    return-void
.end method
