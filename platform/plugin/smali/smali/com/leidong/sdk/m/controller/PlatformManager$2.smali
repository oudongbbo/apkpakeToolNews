.class Lcom/leidong/sdk/m/controller/PlatformManager$2;
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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/PlatformManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/m/controller/PlatformManager;

    .line 231
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$2;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iput-object p2, p0, Lcom/leidong/sdk/m/controller/PlatformManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 248
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$2;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->mConfig:Lcom/leidong/sdk/m/model/bean/MsdkBean;

    invoke-virtual {v0}, Lcom/leidong/sdk/m/model/bean/MsdkBean;->getSdk()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$2;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->mConfig:Lcom/leidong/sdk/m/model/bean/MsdkBean;

    .line 236
    invoke-virtual {v0}, Lcom/leidong/sdk/m/model/bean/MsdkBean;->getSdk()I

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$2;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->mPlatform:Lcom/leidong/sdk/m/controller/PlatformCore;

    iget-object v1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/m/controller/PlatformCore;->mExitGame(Landroid/content/Context;)V

    .line 242
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$2;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onExitGameSuccess()V

    goto :goto_1

    .line 238
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$2;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onExitGameSuccess()V

    .line 244
    :goto_1
    return-void
.end method
