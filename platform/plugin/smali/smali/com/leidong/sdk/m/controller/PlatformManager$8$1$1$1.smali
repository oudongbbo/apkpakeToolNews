.class Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1$1;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1;

    .line 1032
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1$1;->this$3:Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 1036
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1$1;->this$3:Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1;->this$2:Lcom/leidong/sdk/m/controller/PlatformManager$8$1;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$8$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$8;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$8;->val$callback:Lcom/leidong/sdk/m/interfaces/MResultCallback;

    invoke-interface {v0}, Lcom/leidong/sdk/m/interfaces/MResultCallback;->onSuccess()V

    .line 1037
    return-void
.end method
