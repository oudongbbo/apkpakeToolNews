.class Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;
.super Ljava/lang/Object;
.source "LoginByAccount.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;

.field final synthetic val$pwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;Ljava/lang/String;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;

    iput-object p2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;->val$pwd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1

    .line 311
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$1000(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 312
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {p1, p2}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$1000(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$1000(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$500(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/leidong/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1$1;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/s/core/http/ResponseManager;->handleRepContent(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method
