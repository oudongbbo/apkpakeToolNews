.class Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;
.super Ljava/lang/Object;
.source "LoginByRegister.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    .line 505
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-virtual {p1, p2}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    .line 506
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$700(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Lcom/leidong/sdk/framework/view/common/CountDownView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/view/common/CountDownView;->stopCountDown()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/sdk/s/core/utils/SLogUtil;->i(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/leidong/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1$1;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/s/core/http/ResponseManager;->handleRepContent(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method
