.class Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3;
.super Ljava/lang/Object;
.source "LoginByForgetPwd.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->submmitChangePwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    .line 267
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-virtual {p1, p2}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$500(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/leidong/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3$1;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/s/core/http/ResponseManager;->handleRepContent(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method
