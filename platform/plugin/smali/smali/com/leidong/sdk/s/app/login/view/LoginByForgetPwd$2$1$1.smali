.class Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;
.super Ljava/lang/Object;
.source "LoginByForgetPwd.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/ResultCallback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1$1;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
