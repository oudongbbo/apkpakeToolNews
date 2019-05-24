.class Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3$1;
.super Ljava/lang/Object;
.source "LoginByForgetPwd.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    .line 260
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-virtual {p1, p2}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .line 254
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$500(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->swtichToAccount()V

    .line 255
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    const-string v0, "\u627e\u56de\u5bc6\u7801\u6210\u529f\uff0c\u8bf7\u60a8\u91cd\u65b0\u767b\u5f55"

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    return-void
.end method
