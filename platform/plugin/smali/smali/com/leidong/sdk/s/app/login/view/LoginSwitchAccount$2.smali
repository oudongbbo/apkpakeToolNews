.class Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;
.super Ljava/lang/Object;
.source "LoginSwitchAccount.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->LoginByAccount(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;Ljava/lang/String;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    iput-object p2, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1

    .line 346
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$1100(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 347
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-virtual {p1, p2}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$1000(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/leidong/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2$1;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/s/core/http/ResponseManager;->handleRepContent(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method
