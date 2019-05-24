.class Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8$1;
.super Ljava/lang/Object;
.source "LoginByRegister.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    .line 394
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-virtual {p1, p2}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 386
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "content"

    .line 387
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "password"

    .line 388
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8;

    iget-object v1, v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8;->val$password:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "loginType"

    const-string v1, "account"

    .line 389
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->regHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8;

    iget-object v1, v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    iget-object v1, v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->regHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
