.class Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8;
.super Ljava/lang/Object;
.source "LoginByRegister.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->registerByName(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;Ljava/lang/String;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    iput-object p2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    .line 400
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-virtual {p1, p2}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/leidong/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8$1;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/s/core/http/ResponseManager;->handleRepContent(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method
