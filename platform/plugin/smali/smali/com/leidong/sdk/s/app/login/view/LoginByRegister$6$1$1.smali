.class Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1$1;
.super Ljava/lang/Object;
.source "LoginByRegister.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 0

    .line 324
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$400(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 0

    .line 320
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$400(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "uname"

    .line 307
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$300(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1$1$1;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
