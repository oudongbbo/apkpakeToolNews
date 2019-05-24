.class Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1;
.super Ljava/lang/Object;
.source "LoginByRegister.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    .line 330
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$400(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/leidong/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1$1;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/s/core/http/ResponseManager;->handlGetUname(Ljava/lang/String;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    return-void
.end method
