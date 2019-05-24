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

    .line 340
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1$1;->this$3:Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 1

    .line 351
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1$1;->this$3:Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager$4;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    const-string v0, "pay_cancel"

    invoke-interface {p1, v0}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onPayFail(Ljava/lang/String;)V

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1$1;->this$3:Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$4;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onPayFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1$1;->this$3:Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$4$1;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$4;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$4;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onPaySuccess(Landroid/os/Bundle;)V

    return-void
.end method
