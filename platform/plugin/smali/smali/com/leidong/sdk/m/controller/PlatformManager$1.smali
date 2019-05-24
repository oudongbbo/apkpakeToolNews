.class Lcom/leidong/sdk/m/controller/PlatformManager$1;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/PlatformManager;->doExitGame(Landroid/content/Context;)V
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

    .line 219
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$1;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0

    .line 225
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$1;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onExitGameFail()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$1;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onExitGameSuccess()V

    return-void
.end method
