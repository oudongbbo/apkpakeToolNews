.class Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;
.super Ljava/lang/Object;
.source "LoginByForgetPwd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Step2GetVcodeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 319
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$1100(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    const-string v0, "leidong_common_input_phone"

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-virtual {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->hideSystemKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 330
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$1200(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Lcom/leidong/sdk/framework/view/common/CountDownView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/view/common/CountDownView;->startCountDown()V

    const-string v2, "findpwd"

    .line 333
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$1300(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Lcom/leidong/sdk/s/core/http/RequsetManager;

    move-result-object v0

    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    new-instance v4, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;

    invoke-direct {v4, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;)V

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/leidong/sdk/s/core/http/RequsetManager;->requestGetVcode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;Z)V

    :goto_0
    return-void
.end method
