.class Lcom/leidong/sdk/m/controller/MsdkManager$4;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/MsdkManager;->doExitGame(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/MsdkManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/m/controller/MsdkManager;

    .line 318
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$4;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    iput-object p2, p0, Lcom/leidong/sdk/m/controller/MsdkManager$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$4;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    # getter for: Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;
    invoke-static {v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$700(Lcom/leidong/sdk/m/controller/MsdkManager;)Lcom/leidong/sdk/m/controller/PlatformCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$4;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    # getter for: Lcom/leidong/sdk/m/controller/MsdkManager;->platformCore:Lcom/leidong/sdk/m/controller/PlatformCore;
    invoke-static {v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$700(Lcom/leidong/sdk/m/controller/MsdkManager;)Lcom/leidong/sdk/m/controller/PlatformCore;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/m/controller/PlatformCore;->doExitGame(Landroid/content/Context;)V

    goto :goto_0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$4;->val$context:Landroid/content/Context;

    new-instance v1, Lcom/leidong/sdk/m/controller/MsdkManager$4$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/m/controller/MsdkManager$4$1;-><init>(Lcom/leidong/sdk/m/controller/MsdkManager$4;)V

    invoke-static {v0, v1}, Lcom/leidong/sdk/m/utils/MViewUtil;->showAndoridExit(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    .line 336
    :goto_0
    return-void
.end method
