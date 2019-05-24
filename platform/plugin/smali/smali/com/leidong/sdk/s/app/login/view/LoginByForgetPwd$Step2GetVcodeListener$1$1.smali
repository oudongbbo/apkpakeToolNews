.class Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1$1;
.super Ljava/lang/Object;
.source "LoginByForgetPwd.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    .line 349
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-virtual {p1, p2}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    .line 350
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$1200(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Lcom/leidong/sdk/framework/view/common/CountDownView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/view/common/CountDownView;->stopCountDown()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 344
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    const-string v0, "leidong_common_toast_vcode_sent"

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;

    iget-object v1, v1, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;

    iget-object v1, v1, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-virtual {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    return-void
.end method
