.class public Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;
.super Lcom/leidong/sdk/s/core/view/BaseTagView;
.source "LoginSwitchAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToStarjoysLoginListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToLogoListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToOtherAccountListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;,
        Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;
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

.field private father:Lcom/leidong/sdk/s/app/login/view/LoginContent;

.field private isFisrtStart:Z

.field private isShowPwd:Z

.field private leidong_login_home_second_tv:Landroid/widget/TextView;

.field private login_home_second_enterGame:Landroid/widget/Button;

.field private login_home_second_input:Landroid/widget/RelativeLayout;

.field private login_home_second_loginphnumber:Landroid/widget/EditText;

.field private login_home_second_logo:Landroid/widget/ImageView;

.field private login_home_second_rl:Landroid/widget/RelativeLayout;

.field private login_home_second_select_account:Landroid/widget/ImageView;

.field private password:Ljava/lang/String;

.field private requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

.field private userName:Ljava/lang/String;

.field private vserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/leidong/sdk/s/app/login/view/LoginContent;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/s/core/view/BaseTagView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->isShowPwd:Z

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->isFisrtStart:Z

    const-string p1, ""

    .line 56
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->password:Ljava/lang/String;

    const-string p1, ""

    .line 57
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->userName:Ljava/lang/String;

    const-string p1, ""

    .line 58
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->vserName:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->father:Lcom/leidong/sdk/s/app/login/view/LoginContent;

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/PopupWindow;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountSelectPop:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Lcom/leidong/sdk/s/app/login/view/LoginContent;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->father:Lcom/leidong/sdk/s/app/login/view/LoginContent;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/Button;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_enterGame:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/EditText;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_loginphnumber:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->password:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->password:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->userName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->userName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->vserName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->vserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Z
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->isQuickClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_input:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->initPopWindows()V

    return-void
.end method

.method static synthetic access$900(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Z
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->isQuickClick()Z

    move-result p0

    return p0
.end method

.method private initAccountData()Z
    .locals 4

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->isFisrtStart:Z

    .line 175
    new-instance v1, Lcom/leidong/sdk/framework/user/AccountManager;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/leidong/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/user/AccountManager;->getAccountsFromFile(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    .line 177
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 178
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leidong/sdk/framework/user/UserInfoBean;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/user/UserInfoBean;->getUname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->userName:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leidong/sdk/framework/user/UserInfoBean;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/user/UserInfoBean;->getVname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->vserName:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leidong/sdk/framework/user/UserInfoBean;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/user/UserInfoBean;->getPwd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->password:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_loginphnumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->vserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_loginphnumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->vserName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return v2

    :cond_2
    return v0
.end method

.method private initPopWindows()V
    .locals 5

    .line 193
    new-instance v0, Lcom/leidong/sdk/framework/user/AccountManager;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leidong/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/user/AccountManager;->getAccountsFromFile(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    .line 194
    new-instance v0, Lcom/leidong/sdk/framework/user/AccountManager;

    .line 195
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leidong/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/user/AccountManager;->getAccountsFromVisitorFile(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    :cond_0
    if-eqz v0, :cond_1

    .line 202
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
    :cond_1
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 206
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    const/4 v1, 0x0

    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    const/4 v1, 0x0

    .line 208
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 209
    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$1;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 226
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_input:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountSelectPop:Landroid/widget/PopupWindow;

    .line 228
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountSelectPop:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 229
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 230
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "leidong_sdk_listview_pop_bg"

    const-string v4, "drawable"

    .line 231
    invoke-virtual {p0, v3, v4}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 230
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    new-instance v1, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountAdapter:Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;

    .line 235
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountAdapter:Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 237
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->accountAdapter:Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private initViews()V
    .locals 2

    const-string v0, "leidong_login_home_second_tv"

    const-string v1, "id"

    .line 93
    invoke-virtual {p0, v0, v1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->leidong_login_home_second_tv:Landroid/widget/TextView;

    const-string v0, "login_home_second_logo"

    const-string v1, "id"

    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_logo:Landroid/widget/ImageView;

    const-string v0, "login_home_second_select_account"

    const-string v1, "id"

    .line 98
    invoke-virtual {p0, v0, v1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_select_account:Landroid/widget/ImageView;

    const-string v0, "login_home_second_loginphnumber"

    const-string v1, "id"

    .line 100
    invoke-virtual {p0, v0, v1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_loginphnumber:Landroid/widget/EditText;

    const-string v0, "login_home_second_enterGame"

    const-string v1, "id"

    .line 102
    invoke-virtual {p0, v0, v1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_enterGame:Landroid/widget/Button;

    const-string v0, "login_home_second_rl"

    const-string v1, "id"

    .line 105
    invoke-virtual {p0, v0, v1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_rl:Landroid/widget/RelativeLayout;

    const-string v0, "login_home_second_input"

    const-string v1, "id"

    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_input:Landroid/widget/RelativeLayout;

    .line 109
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getSkinLgoinLogoDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getSkinLgoinLogo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_logo:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->requestLoginLogoBitmap(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_logo:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_logo:Landroid/widget/ImageView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToLogoListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToLogoListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_enterGame:Landroid/widget/Button;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_rl:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToOtherAccountListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToOtherAccountListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_select_account:Landroid/widget/ImageView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public LoginByAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 326
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    new-instance v3, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;

    invoke-direct {v3, p0, p2}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$2;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;Ljava/lang/String;)V

    const-string v5, ""

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/leidong/sdk/s/core/http/RequsetManager;->requestLoginS(Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;ZLjava/lang/String;)V

    return-void
.end method

.method public LoginByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 359
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, p3, v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 361
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 364
    :cond_0
    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    new-instance v6, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$3;

    invoke-direct {v6, p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$3;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)V

    const/4 v7, 0x1

    const-string v8, ""

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/leidong/sdk/s/core/http/RequsetManager;->requestAccessTokenLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;ZLjava/lang/String;)V

    return-void
.end method

.method protected getParent()Landroid/view/View;
    .locals 2

    const-string v0, "leidong_login_switch"

    const-string v1, "layout"

    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->inflate(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate()V
    .locals 2

    .line 70
    invoke-super {p0}, Lcom/leidong/sdk/s/core/view/BaseTagView;->onCreate()V

    .line 71
    invoke-direct {p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->initViews()V

    .line 72
    new-instance v0, Lcom/leidong/sdk/s/core/http/RequsetManager;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leidong/sdk/s/core/http/RequsetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 76
    invoke-super {p0}, Lcom/leidong/sdk/s/core/view/BaseTagView;->onResume()V

    .line 78
    iget-boolean v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->isFisrtStart:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->initAccountData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    const-string v1, "login_show_switch"

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/s/core/http/RequsetManager;->submitSdkAction(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    const-string v1, "login_show_switch"

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/s/core/http/RequsetManager;->submitSdkAction(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
