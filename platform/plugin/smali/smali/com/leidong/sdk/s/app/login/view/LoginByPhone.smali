.class public Lcom/leidong/sdk/s/app/login/view/LoginByPhone;
.super Lcom/leidong/sdk/s/core/view/BaseTagView;
.source "LoginByPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByPhone$EnterGameLisener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByPhone$PhoneClearLisener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByPhone$LoginPhoneBackListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;
    }
.end annotation


# instance fields
.field Phonenumber:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leidong/sdk/framework/user/UserInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private accountAdapter:Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;

.field private accountSelectPop:Landroid/widget/PopupWindow;

.field private countDown:Lcom/leidong/sdk/framework/view/common/CountDownView;

.field private loginMain:Lcom/leidong/sdk/s/app/login/view/LoginContent;

.field private login_phone_back:Landroid/widget/RelativeLayout;

.field private login_phone_clear:Landroid/widget/ImageView;

.field private login_phone_entergame:Landroid/widget/Button;

.field private login_phone_idcode_input:Landroid/widget/EditText;

.field private login_phone_idcode_tv:Landroid/widget/TextView;

.field private login_phone_phonenumber_input:Landroid/widget/EditText;

.field private login_phone_phonenumber_rl:Landroid/widget/RelativeLayout;

.field private login_phone_select_account:Landroid/widget/ImageView;

.field private phoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leidong/sdk/framework/user/UserInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/leidong/sdk/s/app/login/view/LoginContent;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/s/core/view/BaseTagView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 54
    iput-object p3, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->loginMain:Lcom/leidong/sdk/s/app/login/view/LoginContent;

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/ImageView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_clear:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Z
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->isQuickClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Lcom/leidong/sdk/s/core/http/RequsetManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->accountSelectPop:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_phonenumber_rl:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->initPopWindows()V

    return-void
.end method

.method static synthetic access$500(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/EditText;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_phonenumber_input:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Lcom/leidong/sdk/s/app/login/view/LoginContent;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->loginMain:Lcom/leidong/sdk/s/app/login/view/LoginContent;

    return-object p0
.end method

.method static synthetic access$700(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/EditText;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_idcode_input:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$800(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Z
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->isQuickClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Lcom/leidong/sdk/framework/view/common/CountDownView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->countDown:Lcom/leidong/sdk/framework/view/common/CountDownView;

    return-object p0
.end method

.method private initPopWindows()V
    .locals 5

    .line 195
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    const/4 v1, 0x0

    .line 197
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    const/4 v1, 0x0

    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "leidong_sdk_listview_pop_bg"

    const-string v2, "drawable"

    .line 200
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 199
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 202
    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$2;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$2;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 216
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_phonenumber_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-direct {v1, v0, v2, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->accountSelectPop:Landroid/widget/PopupWindow;

    .line 218
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->accountSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 219
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->accountSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 220
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->accountSelectPop:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    new-instance v1, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->Phonenumber:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->accountAdapter:Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;

    .line 225
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->accountAdapter:Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 227
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->accountAdapter:Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private initViews()V
    .locals 4

    const-string v0, "login_phone_phonenumber_rl"

    const-string v1, "id"

    .line 83
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 82
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_phonenumber_rl:Landroid/widget/RelativeLayout;

    const-string v0, "login_phone_back"

    const-string v1, "id"

    .line 87
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_back:Landroid/widget/RelativeLayout;

    const-string v0, "login_phone_phonenumber_input"

    const-string v1, "id"

    .line 90
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 89
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_phonenumber_input:Landroid/widget/EditText;

    const-string v0, "login_phone_idcode_input"

    const-string v1, "id"

    .line 92
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 91
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_idcode_input:Landroid/widget/EditText;

    const-string v0, "login_phone_select_account"

    const-string v1, "id"

    .line 96
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 95
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_select_account:Landroid/widget/ImageView;

    const-string v0, "login_phone_entergame"

    const-string v1, "id"

    .line 100
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 99
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_entergame:Landroid/widget/Button;

    const-string v0, "login_phone_clear"

    const-string v1, "id"

    .line 104
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 103
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_clear:Landroid/widget/ImageView;

    const-string v0, "login_phone_idcode_tv"

    const-string v1, "id"

    .line 107
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 106
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_idcode_tv:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_idcode_tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->countDown:Lcom/leidong/sdk/framework/view/common/CountDownView;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/leidong/sdk/framework/view/common/CountDownView;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_idcode_tv:Landroid/widget/TextView;

    const/16 v2, 0x3c

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/leidong/sdk/framework/view/common/CountDownView;-><init>(Landroid/widget/TextView;ILandroid/app/Activity;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->countDown:Lcom/leidong/sdk/framework/view/common/CountDownView;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_phonenumber_input:Landroid/widget/EditText;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$1;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 131
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_back:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$LoginPhoneBackListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$LoginPhoneBackListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_clear:Landroid/widget/ImageView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$PhoneClearLisener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$PhoneClearLisener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_entergame:Landroid/widget/Button;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$EnterGameLisener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$EnterGameLisener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_idcode_tv:Landroid/widget/TextView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$GetCodeListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_select_account:Landroid/widget/ImageView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$SelectMoreAccountListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    new-instance v0, Lcom/leidong/sdk/framework/user/AccountManager;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leidong/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/user/AccountManager;->getAccountsFromFile(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->phoneList:Ljava/util/List;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->Phonenumber:Ljava/util/List;

    .line 142
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->phoneList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 143
    :goto_0
    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->phoneList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 144
    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->phoneList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/leidong/sdk/framework/user/UserInfoBean;

    invoke-virtual {v2}, Lcom/leidong/sdk/framework/user/UserInfoBean;->getPwd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->Phonenumber:Ljava/util/List;

    iget-object v3, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->phoneList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->Phonenumber:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->Phonenumber:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_phonenumber_input:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->Phonenumber:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leidong/sdk/framework/user/UserInfoBean;

    invoke-virtual {v1}, Lcom/leidong/sdk/framework/user/UserInfoBean;->getVname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public LoginByPhone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "leidong_login_ing"

    .line 330
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 332
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "leidong_tips_login_no_phone_number"

    .line 333
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->showToast(Ljava/lang/String;)V

    return-void

    .line 337
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "leidong_common_toast_vcode_is_null"

    .line 338
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->showToast(Ljava/lang/String;)V

    return-void

    .line 343
    :cond_1
    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    new-instance v5, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$3;

    invoke-direct {v5, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$3;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)V

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/leidong/sdk/s/core/http/RequsetManager;->requestPhoneLogin(Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;ZLjava/lang/String;)V

    return-void
.end method

.method protected getParent()Landroid/view/View;
    .locals 3

    const-string v0, "leidong_login_phone"

    const-string v1, "layout"

    .line 60
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->inflate(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate()V
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->initViews()V

    .line 67
    new-instance v0, Lcom/leidong/sdk/s/core/http/RequsetManager;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leidong/sdk/s/core/http/RequsetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 73
    invoke-super {p0}, Lcom/leidong/sdk/s/core/view/BaseTagView;->onResume()V

    .line 74
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    const-string v1, "login_show_phone"

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/s/core/http/RequsetManager;->submitSdkAction(Ljava/lang/String;)V

    return-void
.end method
