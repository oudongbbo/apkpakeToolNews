.class Lcom/leidong/sdk/m/controller/PlatformManager$14;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/PlatformManager;->userSwitchS(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/controller/PlatformManager;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/PlatformManager;)V
    .locals 0

    .line 1237
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$14;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 1

    .line 1256
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$14;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    const-string v0, "switch_cancel"

    invoke-interface {p1, v0}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onUserSwitchFail(Ljava/lang/String;)V

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 1260
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$14;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onUserSwitchFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2

    .line 1241
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$14;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    new-instance v1, Lcom/leidong/sdk/m/controller/PlatformManager$14$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/m/controller/PlatformManager$14$1;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager$14;)V

    invoke-static {v0, p1, v1}, Lcom/leidong/sdk/m/controller/PlatformManager;->access$400(Lcom/leidong/sdk/m/controller/PlatformManager;Landroid/os/Bundle;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V

    return-void
.end method
