.class Lcom/leidong/sdk/m/controller/PlatformManager$12$1;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/leidong/sdk/m/interfaces/MsdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/PlatformManager$12;->onSuccess(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/m/controller/PlatformManager$12;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/PlatformManager$12;)V
    .locals 0

    .line 1177
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$12$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$12$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$12;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$12;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onUserSwitchFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    .line 1180
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$12$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$12;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$12;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onUserSwitchSuccess(Landroid/os/Bundle;)V

    return-void
.end method
