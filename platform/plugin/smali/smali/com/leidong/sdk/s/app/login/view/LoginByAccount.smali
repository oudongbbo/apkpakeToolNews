.class public Lcom/leidong/sdk/s/app/login/view/LoginByAccount;
.super Lcom/leidong/sdk/s/core/view/BaseTagView;
.source "LoginByAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;,
        Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ClearAccountListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountForgetPassword;,
        Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountRegistListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToHomeBackListener;
    }
.end annotation


# instance fields
.field private accountAdapter:Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;

.field private accountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leidong/sdk/framework/user/UserInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private accountSelectPop:Landroid/widget/PopupWindow;

.field private accounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leidong/sdk/framework/user/UserInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private imageView1:Landroid/widget/ImageView;

.field private isShowPwd:Z

.field private loginMain:Lcom/leidong/sdk/s/app/login/view/LoginContent;

.field private login_account_accountclear:Landroid/widget/ImageView;

.field private login_account_back:Landroid/widget/ImageView;

.field private login_account_entergame:Landroid/widget/Button;

.field private login_account_forgetpassword:Landroid/widget/TextView;

.field private login_account_input:Landroid/widget/RelativeLayout;

.field private login_account_loginphnumber:Landroid/widget/EditText;

.field private login_account_logo:Landroid/widget/ImageView;

.field private login_account_password:Landroid/widget/EditText;

.field private login_account_regist:Landroid/widget/TextView;

.field private login_account_select_account:Landroid/widget/ImageView;

.field private login_account_visitor:Landroid/widget/TextView;

.field regHandler:Landroid/os/Handler;

.field private requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/leidong/sdk/s/app/login/view/LoginContent;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/s/core/view/BaseTagView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->isShowPwd:Z

    .line 362
    new-instance p1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$3;

    invoke-direct {p1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$3;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)V

    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->regHandler:Landroid/os/Handler;

    .line 70
    iput-object p3, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->loginMain:Lcom/leidong/sdk/s/app/login/view/LoginContent;

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/ImageView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_accountclear:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/PopupWindow;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accountSelectPop:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/Button;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_entergame:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Lcom/leidong/sdk/s/core/http/RequsetManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->isShowPwd:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->isShowPwd:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/ImageView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->imageView1:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Z
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->isQuickClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accounts:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/EditText;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_loginphnumber:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/EditText;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_password:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Lcom/leidong/sdk/s/app/login/view/LoginContent;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->loginMain:Lcom/leidong/sdk/s/app/login/view/LoginContent;

    return-object p0
.end method

.method static synthetic access$600(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Z
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->isQuickClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_input:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->initPopWindows()V

    return-void
.end method

.method static synthetic access$900(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Z
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->isQuickClick()Z

    move-result p0

    return p0
.end method

.method private getViewId(Ljava/lang/String;)I
    .locals 2

    const-string v0, "id"

    .line 105
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method private initPopWindows()V
    .locals 5

    .line 194
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 195
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    const/4 v1, 0x0

    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    const/4 v1, 0x0

    .line 197
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "leidong_sdk_listview_pop_bg"

    const-string v2, "drawable"

    .line 199
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 201
    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$2;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$2;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 214
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_input:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-direct {v1, v0, v2, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accountSelectPop:Landroid/widget/PopupWindow;

    .line 216
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accountSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 217
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accountSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 218
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accountSelectPop:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    new-instance v1, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accounts:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accountAdapter:Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;

    .line 222
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accountAdapter:Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 224
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accountAdapter:Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private initViews()V
    .locals 4

    const-string v0, "login_account_back"

    .line 111
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_back:Landroid/widget/ImageView;

    const-string v0, "login_account_back"

    .line 112
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_back:Landroid/widget/ImageView;

    const-string v0, "login_account_logo"

    .line 113
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_logo:Landroid/widget/ImageView;

    const-string v0, "login_account_select_account"

    .line 115
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_select_account:Landroid/widget/ImageView;

    const-string v0, "login_account_loginphnumber"

    .line 116
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_loginphnumber:Landroid/widget/EditText;

    const-string v0, "login_account_password"

    .line 117
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_password:Landroid/widget/EditText;

    const-string v0, "login_account_entergame"

    .line 118
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_entergame:Landroid/widget/Button;

    const-string v0, "login_account_regist"

    .line 119
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_regist:Landroid/widget/TextView;

    const-string v0, "login_account_forgetpassword"

    .line 121
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_forgetpassword:Landroid/widget/TextView;

    const-string v0, "login_account_visitor"

    .line 122
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_visitor:Landroid/widget/TextView;

    const-string v0, "login_account_input"

    .line 123
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_input:Landroid/widget/RelativeLayout;

    .line 125
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getSkinLgoinLogoDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getSkinLgoinLogo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_logo:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->requestLoginLogoBitmap(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_logo:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_loginphnumber:Landroid/widget/EditText;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$1;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const-string v0, "login_account_accountclear"

    .line 147
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_accountclear:Landroid/widget/ImageView;

    const-string v0, "imageView1"

    .line 149
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->imageView1:Landroid/widget/ImageView;

    .line 151
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_back:Landroid/widget/ImageView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToHomeBackListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToHomeBackListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_select_account:Landroid/widget/ImageView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_entergame:Landroid/widget/Button;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_regist:Landroid/widget/TextView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountRegistListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountRegistListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_forgetpassword:Landroid/widget/TextView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountForgetPassword;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$AccountForgetPassword;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_visitor:Landroid/widget/TextView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->imageView1:Landroid/widget/ImageView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_accountclear:Landroid/widget/ImageView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ClearAccountListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$ClearAccountListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    new-instance v0, Lcom/leidong/sdk/framework/user/AccountManager;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leidong/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/user/AccountManager;->getAccountsFromFile(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accountList:Ljava/util/List;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accounts:Ljava/util/List;

    .line 173
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accountList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 174
    :goto_1
    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accountList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 175
    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accountList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/leidong/sdk/framework/user/UserInfoBean;

    .line 176
    invoke-virtual {v2}, Lcom/leidong/sdk/framework/user/UserInfoBean;->getPwd()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    iget-object v3, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accounts:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accounts:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 185
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_loginphnumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accounts:Ljava/util/List;

    iget-object v3, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leidong/sdk/framework/user/UserInfoBean;

    invoke-virtual {v1}, Lcom/leidong/sdk/framework/user/UserInfoBean;->getVname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_password:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accounts:Ljava/util/List;

    iget-object v3, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->accounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leidong/sdk/framework/user/UserInfoBean;

    invoke-virtual {v1}, Lcom/leidong/sdk/framework/user/UserInfoBean;->getPwd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method


# virtual methods
.method protected getParent()Landroid/view/View;
    .locals 3

    const-string v0, "leidong_login_account"

    const-string v1, "layout"

    .line 75
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->inflate(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate()V
    .locals 2

    .line 81
    invoke-super {p0}, Lcom/leidong/sdk/s/core/view/BaseTagView;->onCreate()V

    .line 82
    invoke-direct {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->initViews()V

    .line 83
    new-instance v0, Lcom/leidong/sdk/s/core/http/RequsetManager;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leidong/sdk/s/core/http/RequsetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 88
    invoke-super {p0}, Lcom/leidong/sdk/s/core/view/BaseTagView;->onResume()V

    .line 90
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    const-string v1, "login_show"

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/s/core/http/RequsetManager;->submitSdkAction(Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/leidong/sdk/framework/user/AccountManager;

    .line 94
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leidong/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/user/AccountManager;->getAccountsFromVisitorFile(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_visitor:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_visitor:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public visitorlogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "leidong_login_ing"

    .line 444
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 446
    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    new-instance v5, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$4;

    invoke-direct {v5, p0, p2}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$4;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/leidong/sdk/s/core/http/RequsetManager;->requestLoginS(Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;ZLjava/lang/String;)V

    return-void
.end method
