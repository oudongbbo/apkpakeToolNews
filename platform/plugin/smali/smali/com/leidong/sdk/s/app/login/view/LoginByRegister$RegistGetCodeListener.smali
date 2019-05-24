.class Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;
.super Ljava/lang/Object;
.source "LoginByRegister.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RegistGetCodeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 468
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$500(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$600(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 474
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    const-string v0, "leidong_common_input_phone"

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-virtual {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->hideSystemKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 480
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$700(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Lcom/leidong/sdk/framework/view/common/CountDownView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/view/common/CountDownView;->startCountDown()V

    const-string v3, "reg"

    .line 483
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$800(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Lcom/leidong/sdk/s/core/http/RequsetManager;

    move-result-object v1

    const-string v4, ""

    new-instance v5, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;

    invoke-direct {v5, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;)V

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/leidong/sdk/s/core/http/RequsetManager;->requestGetVcode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;Z)V

    :goto_0
    return-void
.end method
