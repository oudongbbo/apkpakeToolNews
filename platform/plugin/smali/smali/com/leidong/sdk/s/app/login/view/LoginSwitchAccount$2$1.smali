.class Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2$1;
.super Ljava/lang/Object;
.source "LoginSwitchAccount.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;

    .line 329
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-virtual {v0, p2}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->showToast(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_enterGame:Landroid/widget/Button;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$1100(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 340
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;

    .line 332
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->father:Lcom/leidong/sdk/s/app/login/view/LoginContent;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$1000(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/leidong/sdk/s/core/http/ResponseManager;

    move-result-object v1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;

    iget-object v3, v0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;->val$password:Ljava/lang/String;

    .line 333
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->father:Lcom/leidong/sdk/s/app/login/view/LoginContent;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$1000(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getChildCallBack()Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    move-result-object v6

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/leidong/sdk/s/core/http/ResponseManager;->handleLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZLcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    .line 334
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_enterGame:Landroid/widget/Button;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$1100(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 335
    return-void
.end method
