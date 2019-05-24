.class public Lcom/leidong/sdk/s/app/login/view/LoginHome;
.super Lcom/leidong/sdk/s/core/view/BaseTagView;
.source "LoginHome.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leidong/sdk/s/app/login/view/LoginHome$ToStarjoysLoginListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginHome$ToLogoListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginHome$ToNameRegListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginHome$ToPhoneLoginListener;
    }
.end annotation


# instance fields
.field private father:Lcom/leidong/sdk/s/app/login/view/LoginContent;

.field private leidong_login_new_home_tv:Landroid/widget/TextView;

.field private login_home_accountlogin:Landroid/widget/Button;

.field private login_home_logo:Landroid/widget/ImageView;

.field private login_home_phonelogin:Landroid/widget/Button;

.field private login_home_quickregist:Landroid/widget/Button;

.field private requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/leidong/sdk/s/app/login/view/LoginContent;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/s/core/view/BaseTagView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 31
    iput-object p3, p0, Lcom/leidong/sdk/s/app/login/view/LoginHome;->father:Lcom/leidong/sdk/s/app/login/view/LoginContent;

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/s/app/login/view/LoginHome;)Lcom/leidong/sdk/s/app/login/view/LoginContent;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginHome;->father:Lcom/leidong/sdk/s/app/login/view/LoginContent;

    return-object p0
.end method

.method private initViews()V
    .locals 2

    const-string v0, "leidong_login_new_home_tv"

    const-string v1, "id"

    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/leidong/sdk/s/app/login/view/LoginHome;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginHome;->leidong_login_new_home_tv:Landroid/widget/TextView;

    const-string v0, "login_home_logo"

    const-string v1, "id"

    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/leidong/sdk/s/app/login/view/LoginHome;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginHome;->login_home_logo:Landroid/widget/ImageView;

    const-string v0, "login_home_vlogin"

    const-string v1, "id"

    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/leidong/sdk/s/app/login/view/LoginHome;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginHome;->login_home_phonelogin:Landroid/widget/Button;

    const-string v0, "login_home_quickregist"

    const-string v1, "id"

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/leidong/sdk/s/app/login/view/LoginHome;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginHome;->login_home_quickregist:Landroid/widget/Button;

    const-string v0, "login_home_accountlogin"

    const-string v1, "id"

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/leidong/sdk/s/app/login/view/LoginHome;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginHome;->login_home_accountlogin:Landroid/widget/Button;

    .line 61
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginHome;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getSkinLgoinLogoDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginHome;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getSkinLgoinLogo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginHome;->login_home_logo:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/leidong/sdk/s/app/login/view/LoginHome;->requestLoginLogoBitmap(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginHome;->leidong_login_new_home_tv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginHome;->login_home_logo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginHome;->login_home_logo:Landroid/widget/ImageView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginHome$ToLogoListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginHome$ToLogoListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginHome;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginHome;->login_home_phonelogin:Landroid/widget/Button;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginHome$ToPhoneLoginListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginHome$ToPhoneLoginListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginHome;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginHome;->login_home_quickregist:Landroid/widget/Button;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginHome$ToNameRegListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginHome$ToNameRegListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginHome;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginHome;->login_home_accountlogin:Landroid/widget/Button;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginHome$ToStarjoysLoginListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginHome$ToStarjoysLoginListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginHome;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected getParent()Landroid/view/View;
    .locals 2

    const-string v0, "leidong_login_home"

    const-string v1, "layout"

    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/leidong/sdk/s/app/login/view/LoginHome;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginHome;->inflate(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate()V
    .locals 2

    .line 41
    invoke-super {p0}, Lcom/leidong/sdk/s/core/view/BaseTagView;->onCreate()V

    .line 42
    invoke-direct {p0}, Lcom/leidong/sdk/s/app/login/view/LoginHome;->initViews()V

    .line 43
    new-instance v0, Lcom/leidong/sdk/s/core/http/RequsetManager;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginHome;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leidong/sdk/s/core/http/RequsetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginHome;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 48
    invoke-super {p0}, Lcom/leidong/sdk/s/core/view/BaseTagView;->onResume()V

    .line 49
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginHome;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    const-string v1, "login_show_home"

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/s/core/http/RequsetManager;->submitSdkAction(Ljava/lang/String;)V

    return-void
.end method
