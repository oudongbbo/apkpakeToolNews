.class Lcom/leidong/sdk/s/app/LeiSdkCore$3;
.super Ljava/lang/Object;
.source "LeiSdkCore.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/LeiSdkCore;->userSwitch(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

.field final synthetic val$callback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/LeiSdkCore;Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/s/app/LeiSdkCore;

    .line 150
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$3;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    iput-object p2, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$3;->val$callback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$3;->val$callback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onCancel(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$3;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/s/app/LeiSdkCore;->showFloat(Landroid/content/Context;)V

    .line 176
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$3;->val$callback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 153
    const/4 v0, 0x1

    sput-boolean v0, Lcom/leidong/sdk/s/app/LeiSdkCore;->isLoginSuccess:Z

    .line 156
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$3;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    new-instance v1, Lcom/leidong/sdk/s/app/LeiSdkCore$3$1;

    invoke-direct {v1, p0, p1}, Lcom/leidong/sdk/s/app/LeiSdkCore$3$1;-><init>(Lcom/leidong/sdk/s/app/LeiSdkCore$3;Landroid/os/Bundle;)V

    # invokes: Lcom/leidong/sdk/s/app/LeiSdkCore;->handleUserAuthLogin(Landroid/os/Bundle;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V
    invoke-static {v0, p1, v1}, Lcom/leidong/sdk/s/app/LeiSdkCore;->access$100(Lcom/leidong/sdk/s/app/LeiSdkCore;Landroid/os/Bundle;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    .line 166
    return-void
.end method
