.class public Lcom/leidong/sdk/s/app/login/view/LoginContent;
.super Lcom/leidong/sdk/s/core/view/BaseTagView;
.source "LoginContent.java"


# instance fields
.field private content:Landroid/widget/FrameLayout;

.field private fatherDialog:Lcom/leidong/sdk/s/app/login/LoginDialog;

.field private loginByForgetPwd:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

.field private loginByPhone:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

.field private loginByRegister:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

.field private loginBySDKAccount:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

.field private loginCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

.field private loginCallback4Child:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

.field private loginHome:Lcom/leidong/sdk/s/app/login/view/LoginHome;

.field private loginSwitchAccount:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

.field private responseManager:Lcom/leidong/sdk/s/core/http/ResponseManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/leidong/sdk/s/app/login/LoginDialog;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/s/core/view/BaseTagView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 173
    new-instance p1, Lcom/leidong/sdk/s/app/login/view/LoginContent$1;

    invoke-direct {p1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginContent$1;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginContent;)V

    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->loginCallback4Child:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    .line 42
    iput-object p3, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->fatherDialog:Lcom/leidong/sdk/s/app/login/LoginDialog;

    .line 43
    iput-object p4, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->loginCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    return-void
.end method

.method private hasAccountExits()Z
    .locals 4

    .line 87
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 98
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 103
    :cond_1
    new-instance v0, Lcom/leidong/sdk/framework/user/AccountManager;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leidong/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/user/AccountManager;->getAccountsFromFile(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 105
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 110
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    return v2

    :cond_3
    return v3

    :cond_4
    :goto_0
    return v3
.end method

.method private initViews()V
    .locals 3

    const-string v0, "content"

    const-string v1, "id"

    .line 62
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->content:Landroid/widget/FrameLayout;

    .line 66
    new-instance v0, Lcom/leidong/sdk/s/app/login/view/LoginHome;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u7528\u6237\u767b\u5f55"

    invoke-direct {v0, v1, v2, p0}, Lcom/leidong/sdk/s/app/login/view/LoginHome;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/leidong/sdk/s/app/login/view/LoginContent;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->loginHome:Lcom/leidong/sdk/s/app/login/view/LoginHome;

    .line 67
    new-instance v0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u5e10\u53f7\u767b\u5f55"

    invoke-direct {v0, v1, v2, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/leidong/sdk/s/app/login/view/LoginContent;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->loginBySDKAccount:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    .line 68
    new-instance v0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u7528\u6237\u6ce8\u518c"

    invoke-direct {v0, v1, v2, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/leidong/sdk/s/app/login/view/LoginContent;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->loginByRegister:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    .line 69
    new-instance v0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u5207\u6362\u5e10\u53f7"

    invoke-direct {v0, v1, v2, p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/leidong/sdk/s/app/login/view/LoginContent;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->loginSwitchAccount:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    .line 70
    new-instance v0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u5fd8\u8bb0\u5bc6\u7801"

    invoke-direct {v0, v1, v2, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/leidong/sdk/s/app/login/view/LoginContent;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->loginByForgetPwd:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    .line 71
    new-instance v0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u624b\u673a\u5feb\u901f\u767b\u9646"

    invoke-direct {v0, v1, v2, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/leidong/sdk/s/app/login/view/LoginContent;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->loginByPhone:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    .line 73
    invoke-direct {p0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->hasAccountExits()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->loginSwitchAccount:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->switchToTab(Lcom/leidong/sdk/s/core/view/BaseTagView;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->loginHome:Lcom/leidong/sdk/s/app/login/view/LoginHome;

    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->switchToTab(Lcom/leidong/sdk/s/core/view/BaseTagView;)V

    :goto_0
    return-void
.end method

.method private switchToTab(Lcom/leidong/sdk/s/core/view/BaseTagView;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->content:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 124
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->content:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/core/view/BaseTagView;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 126
    invoke-virtual {p1}, Lcom/leidong/sdk/s/core/view/BaseTagView;->onResume()V

    return-void
.end method


# virtual methods
.method public MobilePhoneFastLogin()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->loginByPhone:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->switchToTab(Lcom/leidong/sdk/s/core/view/BaseTagView;)V

    return-void
.end method

.method public closeLoginDialog()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->fatherDialog:Lcom/leidong/sdk/s/app/login/LoginDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->fatherDialog:Lcom/leidong/sdk/s/app/login/LoginDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/LoginDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->fatherDialog:Lcom/leidong/sdk/s/app/login/LoginDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/LoginDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getCallBack()Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->loginCallback:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    return-object v0
.end method

.method public getChildCallBack()Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->loginCallback4Child:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    return-object v0
.end method

.method protected getParent()Landroid/view/View;
    .locals 3

    const-string v0, "leidong_login_content"

    const-string v1, "layout"

    .line 48
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->inflate(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/leidong/sdk/s/core/http/ResponseManager;
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->responseManager:Lcom/leidong/sdk/s/core/http/ResponseManager;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/leidong/sdk/s/core/http/ResponseManager;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leidong/sdk/s/core/http/ResponseManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->responseManager:Lcom/leidong/sdk/s/core/http/ResponseManager;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->responseManager:Lcom/leidong/sdk/s/core/http/ResponseManager;

    return-object v0
.end method

.method protected onCreate()V
    .locals 0

    .line 53
    invoke-super {p0}, Lcom/leidong/sdk/s/core/view/BaseTagView;->onCreate()V

    .line 54
    invoke-direct {p0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->initViews()V

    return-void
.end method

.method public swtichToAccount()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->loginBySDKAccount:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->switchToTab(Lcom/leidong/sdk/s/core/view/BaseTagView;)V

    return-void
.end method

.method public swtichToForgetPwd()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->loginByForgetPwd:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->switchToTab(Lcom/leidong/sdk/s/core/view/BaseTagView;)V

    return-void
.end method

.method public swtichToLoginHome()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->loginHome:Lcom/leidong/sdk/s/app/login/view/LoginHome;

    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->switchToTab(Lcom/leidong/sdk/s/core/view/BaseTagView;)V

    return-void
.end method

.method public swtichToNameRegister()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->loginByRegister:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->switchToTab(Lcom/leidong/sdk/s/core/view/BaseTagView;)V

    return-void
.end method

.method public swtichToPhoneRegister()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginContent;->loginByRegister:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->switchToTab(Lcom/leidong/sdk/s/core/view/BaseTagView;)V

    return-void
.end method
