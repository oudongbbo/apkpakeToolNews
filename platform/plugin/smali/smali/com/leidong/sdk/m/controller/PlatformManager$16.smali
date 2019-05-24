.class Lcom/leidong/sdk/m/controller/PlatformManager$16;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/PlatformManager;->exitGameS(Landroid/content/Context;)V
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

    .line 1312
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$16;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 0

    .line 1319
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$16;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onExitGameFail()V

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 0

    .line 1323
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$16;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onExitGameFail()V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 0

    .line 1315
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$16;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onExitGameSuccess()V

    return-void
.end method
