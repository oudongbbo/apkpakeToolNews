.class Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener;
.super Ljava/lang/Object;
.source "LoginByPhone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetCodeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    .line 268
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 273
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    # invokes: Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->isQuickClick()Z
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$800(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_phonenumber_input:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$500(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "phoneNum":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    const-string v2, "leidong_common_input_phone"

    iget-object v3, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-virtual {v3}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-virtual {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->hideSystemKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 286
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->countDown:Lcom/leidong/sdk/framework/view/common/CountDownView;
    invoke-static {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$900(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Lcom/leidong/sdk/framework/view/common/CountDownView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/sdk/framework/view/common/CountDownView;->startCountDown()V

    .line 288
    const-string v7, "quick_login"

    .line 289
    .local v7, "type":Ljava/lang/String;
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;
    invoke-static {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$1000(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Lcom/leidong/sdk/s/core/http/RequsetManager;

    move-result-object v1

    const-string v4, ""

    new-instance v5, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;

    invoke-direct {v5, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener;)V

    const/4 v6, 0x1

    move-object v2, v0

    move-object v3, v7

    invoke-virtual/range {v1 .. v6}, Lcom/leidong/sdk/s/core/http/RequsetManager;->requestGetVcode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;Z)V

    .line 324
    .end local v7    # "type":Ljava/lang/String;
    :goto_0
    return-void
.end method
