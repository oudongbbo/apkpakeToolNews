.class Lcom/leidong/sdk/s/core/SdkManager$6$1;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/core/SdkManager$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/s/core/SdkManager$6;

.field final synthetic val$tips:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/core/SdkManager$6;Ljava/lang/String;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/leidong/sdk/s/core/SdkManager$6$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$6;

    iput-object p2, p0, Lcom/leidong/sdk/s/core/SdkManager$6$1;->val$tips:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager$6$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$6;

    iget-object v0, v0, Lcom/leidong/sdk/s/core/SdkManager$6;->val$callback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    iget-object v1, p0, Lcom/leidong/sdk/s/core/SdkManager$6$1;->val$tips:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onCancel(Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/leidong/sdk/s/core/SdkManager$6$1;->this$1:Lcom/leidong/sdk/s/core/SdkManager$6;

    iget-object v0, v0, Lcom/leidong/sdk/s/core/SdkManager$6;->val$callback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
