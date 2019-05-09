.class Lcom/leidong/sdk/s/app/LeiSdkCore$4$2;
.super Ljava/lang/Object;
.source "LeiSdkCore.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/LeiSdkCore$4;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/LeiSdkCore$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    .line 225
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$2;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$2;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->val$payCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onCancel(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$2;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$2;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    iget-object v1, v1, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/s/app/LeiSdkCore;->showFloat(Landroid/content/Context;)V

    .line 243
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$2;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->val$payCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$2;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$2;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    iget-object v1, v1, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/s/app/LeiSdkCore;->showFloat(Landroid/content/Context;)V

    .line 237
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 228
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$2;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->val$payCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    .line 230
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$2;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$2;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    iget-object v1, v1, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/s/app/LeiSdkCore;->showFloat(Landroid/content/Context;)V

    .line 231
    return-void
.end method
