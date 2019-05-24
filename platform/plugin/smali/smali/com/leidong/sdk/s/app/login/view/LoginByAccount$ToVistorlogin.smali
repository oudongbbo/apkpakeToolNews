.class Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;
.super Ljava/lang/Object;
.source "LoginByAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToVistorlogin"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 383
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$1400(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 387
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 388
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserIsVisitor(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 392
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {v1, p1, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->visitorlogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_1
    new-instance p1, Lcom/leidong/sdk/framework/user/AccountManager;

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/leidong/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/framework/user/AccountManager;->getAccountsFromVisitorFile(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 396
    new-instance p1, Lcom/leidong/sdk/framework/user/AccountManager;

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    .line 397
    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/leidong/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/framework/user/AccountManager;->getAccountsFromVisitorFile(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 398
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leidong/sdk/framework/user/UserInfoBean;

    invoke-virtual {v1}, Lcom/leidong/sdk/framework/user/UserInfoBean;->getVname()Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/leidong/sdk/framework/user/UserInfoBean;

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/user/UserInfoBean;->getPwd()Ljava/lang/String;

    move-result-object p1

    .line 400
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 401
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {v0, v1, p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->visitorlogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :cond_2
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$1100(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Lcom/leidong/sdk/s/core/http/RequsetManager;

    move-result-object p1

    new-instance v0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/leidong/sdk/s/core/http/RequsetManager;->requestRegVisitor(Lcom/leidong/sdk/framework/http/HttpCallBack;Z)V

    :cond_3
    :goto_0
    return-void
.end method
