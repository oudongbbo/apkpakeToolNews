.class Lcom/leidong/sdk/s/app/LeiSdkCore$4$1$1;
.super Ljava/lang/Object;
.source "LeiSdkCore.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->val$payCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onCancel(Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->showFloat(Landroid/content/Context;)V

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->val$payCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->showFloat(Landroid/content/Context;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->val$payCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    .line 202
    iget-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$4$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$4;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiSdkCore$4;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->showFloat(Landroid/content/Context;)V

    return-void
.end method
