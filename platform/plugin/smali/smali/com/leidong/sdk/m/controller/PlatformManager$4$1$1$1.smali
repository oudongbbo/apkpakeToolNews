.class Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1$1;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->onSuccess(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;

    .line 337
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1$1;->this$3:Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1$1;->this$3:Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$4;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    const-string v1, "pay_cancel"

    invoke-interface {v0, v1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onPayFail(Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1$1;->this$3:Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$4;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onPayFail(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .line 340
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1$1;->this$3:Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$4;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onPaySuccess(Landroid/os/Bundle;)V

    .line 341
    return-void
.end method
