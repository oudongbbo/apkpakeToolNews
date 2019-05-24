.class public Lcom/leidong/sdk/s/app/login/view/LoginByRegister;
.super Lcom/leidong/sdk/s/core/view/BaseTagView;
.source "LoginByRegister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistNormalCheckListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByRegister$PhoneSeeListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByRegister$PhoneClearLisener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalClearListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistBackListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistNormalEnterGameListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistEnterGameListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalRegistListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByRegister$PhoneRegistListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;
    }
.end annotation


# instance fields
.field private countDown:Lcom/leidong/sdk/framework/view/common/CountDownView;

.field private isNormalAgreementchecked:Z

.field private isPhoneAgreementchecked:Z

.field private isShowNormalPwd:Z

.field private isShowPhonePwd:Z

.field private loginMain:Lcom/leidong/sdk/s/app/login/view/LoginContent;

.field private login_regist_agreement_tips:Landroid/widget/TextView;

.field private login_regist_agreement_tips2:Landroid/widget/TextView;

.field private login_regist_back:Landroid/widget/RelativeLayout;

.field private login_regist_checkBox:Landroid/widget/ImageView;

.field private login_regist_entergame:Landroid/widget/Button;

.field private login_regist_idcode_input:Landroid/widget/EditText;

.field private login_regist_idcode_tv:Landroid/widget/TextView;

.field private login_regist_normal_btn_rl:Landroid/widget/LinearLayout;

.field private login_regist_normal_checkBox:Landroid/widget/ImageView;

.field private login_regist_normal_entergame:Landroid/widget/Button;

.field private login_regist_normal_eye:Landroid/widget/ImageView;

.field private login_regist_normal_phone_clear:Landroid/widget/ImageView;

.field private login_regist_normalaccount_input:Landroid/widget/EditText;

.field private login_regist_normalpassword_input:Landroid/widget/EditText;

.field private login_regist_password_input:Landroid/widget/EditText;

.field private login_regist_phone_btn_rl:Landroid/widget/LinearLayout;

.field private login_regist_phone_clear:Landroid/widget/ImageView;

.field private login_regist_phone_eye:Landroid/widget/ImageView;

.field private login_regist_phonenumber_input:Landroid/widget/EditText;

.field private login_regist_rl_rl:Landroid/widget/RelativeLayout;

.field private login_regist_rl_rl2:Landroid/widget/RelativeLayout;

.field private login_regist_tvnormal:Landroid/widget/TextView;

.field private login_regist_tvnormal_line:Landroid/widget/TextView;

.field private login_regist_tvphone:Landroid/widget/TextView;

.field private login_regist_tvphone_line:Landroid/widget/TextView;

.field public regHandler:Landroid/os/Handler;

.field private requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

.field private showPhoneFirst:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/leidong/sdk/s/app/login/view/LoginContent;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/s/core/view/BaseTagView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->isShowNormalPwd:Z

    .line 59
    iput-boolean p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->isShowPhonePwd:Z

    .line 60
    iput-boolean p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->isPhoneAgreementchecked:Z

    .line 61
    iput-boolean p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->isNormalAgreementchecked:Z

    .line 70
    iput-boolean p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->showPhoneFirst:Z

    .line 265
    new-instance p1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$5;

    invoke-direct {p1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$5;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->regHandler:Landroid/os/Handler;

    .line 85
    iput-object p3, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->loginMain:Lcom/leidong/sdk/s/app/login/view/LoginContent;

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/ImageView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_phone_clear:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/ImageView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_phone_clear:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->loadPhoneRegView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Z
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->isQuickClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->loadNameRegView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Z
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->isQuickClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_password_input:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_idcode_input:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->registerByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Z
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->isQuickClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normalpassword_input:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->registerByName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Lcom/leidong/sdk/s/app/login/view/LoginContent;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->loginMain:Lcom/leidong/sdk/s/app/login/view/LoginContent;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->isShowNormalPwd:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->isShowNormalPwd:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/ImageView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_eye:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->isShowPhonePwd:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->isShowPhonePwd:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/ImageView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_phone_eye:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->isNormalAgreementchecked:Z

    return p0
.end method

.method static synthetic access$2402(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->isNormalAgreementchecked:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/ImageView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_checkBox:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_agreement_tips2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->isPhoneAgreementchecked:Z

    return p0
.end method

.method static synthetic access$2702(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->isPhoneAgreementchecked:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/ImageView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_checkBox:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_agreement_tips:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normalaccount_input:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->loadLocalName()V

    return-void
.end method

.method static synthetic access$500(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Z
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->isQuickClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_phonenumber_input:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$700(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Lcom/leidong/sdk/framework/view/common/CountDownView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->countDown:Lcom/leidong/sdk/framework/view/common/CountDownView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Lcom/leidong/sdk/s/core/http/RequsetManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Z
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->isQuickClick()Z

    move-result p0

    return p0
.end method

.method private initViews()V
    .locals 4

    const-string v0, "login_regist_phonenumber_input"

    const-string v1, "id"

    .line 120
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 119
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_phonenumber_input:Landroid/widget/EditText;

    const-string v0, "login_regist_idcode_input"

    const-string v1, "id"

    .line 122
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 121
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_idcode_input:Landroid/widget/EditText;

    const-string v0, "login_regist_idcode_tv"

    const-string v1, "id"

    .line 124
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 123
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_idcode_tv:Landroid/widget/TextView;

    const-string v0, "login_regist_tvphone"

    const-string v1, "id"

    .line 126
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 125
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_tvphone:Landroid/widget/TextView;

    const-string v0, "login_regist_tvphone_line"

    const-string v1, "id"

    .line 128
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 127
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_tvphone_line:Landroid/widget/TextView;

    const-string v0, "login_regist_tvnormal"

    const-string v1, "id"

    .line 130
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_tvnormal:Landroid/widget/TextView;

    const-string v0, "login_regist_phone_btn_rl"

    const-string v1, "id"

    .line 132
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 131
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_phone_btn_rl:Landroid/widget/LinearLayout;

    const-string v0, "login_regist_normal_btn_rl"

    const-string v1, "id"

    .line 134
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 133
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_btn_rl:Landroid/widget/LinearLayout;

    const-string v0, "login_regist_checkBox"

    const-string v1, "id"

    .line 137
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 136
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_checkBox:Landroid/widget/ImageView;

    const-string v0, "login_regist_agreement_tips"

    const-string v1, "id"

    .line 140
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 139
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_agreement_tips:Landroid/widget/TextView;

    const-string v0, "login_regist_agreement_tips2"

    const-string v1, "id"

    .line 143
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 142
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_agreement_tips2:Landroid/widget/TextView;

    const-string v0, "login_regist_back"

    const-string v1, "id"

    .line 147
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 146
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_back:Landroid/widget/RelativeLayout;

    const-string v0, "login_regist_rl_rl"

    const-string v1, "id"

    .line 149
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 148
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_rl_rl:Landroid/widget/RelativeLayout;

    const-string v0, "login_regist_rl_rl2"

    const-string v1, "id"

    .line 151
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 150
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_rl_rl2:Landroid/widget/RelativeLayout;

    const-string v0, "login_regist_password_input"

    const-string v1, "id"

    .line 153
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 152
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_password_input:Landroid/widget/EditText;

    const-string v0, "login_regist_normalaccount_input"

    const-string v1, "id"

    .line 155
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 154
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normalaccount_input:Landroid/widget/EditText;

    const-string v0, "login_regist_normalpassword_input"

    const-string v1, "id"

    .line 157
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 156
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normalpassword_input:Landroid/widget/EditText;

    const-string v0, "login_regist_entergame"

    const-string v1, "id"

    .line 159
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 158
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_entergame:Landroid/widget/Button;

    const-string v0, "login_regist_normal_entergame"

    const-string v1, "id"

    .line 161
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 160
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_entergame:Landroid/widget/Button;

    const-string v0, "login_regist_tvnormal_line"

    const-string v1, "id"

    .line 163
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 162
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_tvnormal_line:Landroid/widget/TextView;

    const-string v0, "login_regist_normal_checkBox"

    const-string v1, "id"

    .line 166
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 165
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_checkBox:Landroid/widget/ImageView;

    const-string v0, "login_regist_normal_phone_clear"

    const-string v1, "id"

    .line 170
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 169
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_phone_clear:Landroid/widget/ImageView;

    const-string v0, "login_regist_phone_clear"

    const-string v1, "id"

    .line 173
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 172
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_phone_clear:Landroid/widget/ImageView;

    const-string v0, "login_regist_normal_eye"

    const-string v1, "id"

    .line 176
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 175
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_eye:Landroid/widget/ImageView;

    const-string v0, "login_regist_phone_eye"

    const-string v1, "id"

    .line 180
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 179
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_phone_eye:Landroid/widget/ImageView;

    .line 182
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normalaccount_input:Landroid/widget/EditText;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$1;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 193
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_phonenumber_input:Landroid/widget/EditText;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$2;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$2;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 204
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_checkBox:Landroid/widget/ImageView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_checkBox:Landroid/widget/ImageView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistNormalCheckListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistNormalCheckListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_phone_btn_rl:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->countDown:Lcom/leidong/sdk/framework/view/common/CountDownView;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/leidong/sdk/framework/view/common/CountDownView;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_idcode_tv:Landroid/widget/TextView;

    const/16 v2, 0x3c

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/leidong/sdk/framework/view/common/CountDownView;-><init>(Landroid/widget/TextView;ILandroid/app/Activity;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->countDown:Lcom/leidong/sdk/framework/view/common/CountDownView;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_tvphone:Landroid/widget/TextView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$PhoneRegistListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$PhoneRegistListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_tvnormal:Landroid/widget/TextView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalRegistListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalRegistListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_entergame:Landroid/widget/Button;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistEnterGameListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistEnterGameListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_entergame:Landroid/widget/Button;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistNormalEnterGameListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistNormalEnterGameListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_idcode_tv:Landroid/widget/TextView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_back:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistBackListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistBackListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_phone_clear:Landroid/widget/ImageView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalClearListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalClearListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_phone_clear:Landroid/widget/ImageView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$PhoneClearLisener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$PhoneClearLisener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_eye:Landroid/widget/ImageView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_phone_eye:Landroid/widget/ImageView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$PhoneSeeListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$PhoneSeeListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_agreement_tips:Landroid/widget/TextView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$3;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$3;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_agreement_tips2:Landroid/widget/TextView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$4;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$4;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private loadDefaultUserNameAndPwd()V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$6;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/leidong/sdk/s/core/http/RequsetManager;->requestGetRegName(Lcom/leidong/sdk/framework/http/HttpCallBack;Z)V

    return-void
.end method

.method private loadDefaultregview()V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->loadNameRegView()V

    return-void
.end method

.method private loadLocalName()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normalaccount_input:Landroid/widget/EditText;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$7;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$7;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private loadNameRegView()V
    .locals 5

    .line 564
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u666e\u901a\u6ce8\u518c\u3002\u3002\u3002"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    const-string v1, "reg_show_name"

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/s/core/http/RequsetManager;->submitSdkAction(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_tvnormal:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "leidong_login_text_black"

    const-string v3, "color"

    .line 570
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 569
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 571
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_tvphone:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "leidong_login_text_gray_dark"

    const-string v3, "color"

    .line 573
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    .line 572
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 571
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 576
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_btn_rl:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_tvnormal_line:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_phone_btn_rl:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_tvphone_line:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_rl_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_rl_rl2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normalaccount_input:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normalaccount_input:Landroid/widget/EditText;

    .line 586
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 585
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    invoke-direct {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->loadDefaultUserNameAndPwd()V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normalpassword_input:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normalpassword_input:Landroid/widget/EditText;

    .line 591
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 590
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normalpassword_input:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getRandNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private loadPhoneRegView()V
    .locals 5

    .line 527
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    const-string v1, "reg_show_phone"

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/s/core/http/RequsetManager;->submitSdkAction(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->countDown:Lcom/leidong/sdk/framework/view/common/CountDownView;

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Lcom/leidong/sdk/framework/view/common/CountDownView;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_idcode_tv:Landroid/widget/TextView;

    const/16 v2, 0x3c

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/leidong/sdk/framework/view/common/CountDownView;-><init>(Landroid/widget/TextView;ILandroid/app/Activity;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->countDown:Lcom/leidong/sdk/framework/view/common/CountDownView;

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_tvphone:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "leidong_login_text_black"

    const-string v3, "color"

    .line 534
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 533
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 535
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_tvnormal:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "leidong_login_text_gray_dark"

    const-string v3, "color"

    .line 537
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    .line 536
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 535
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 540
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_btn_rl:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_tvnormal_line:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_phone_btn_rl:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_tvphone_line:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_rl_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_rl_rl2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private registerByName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 354
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 359
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xc

    if-le v0, v2, :cond_1

    goto :goto_1

    .line 364
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    goto :goto_0

    .line 369
    :cond_2
    iget-boolean v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->isNormalAgreementchecked:Z

    if-nez v0, :cond_3

    const-string p1, "leidong_agreement_tips"

    .line 370
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    return-void

    .line 375
    :cond_3
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getContentView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/ViewUtil;->saveView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8;

    invoke-direct {v1, p0, p2}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$8;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/leidong/sdk/s/core/http/RequsetManager;->requestRegisterByName(Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;Z)V

    return-void

    :cond_4
    :goto_0
    const-string p1, "leidong_tips_pwd_limit"

    .line 365
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    const-string p1, "leidong_tips_name_limit"

    .line 360
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_2
    const-string p1, "leidong_tips_login_no_name_or_pwd"

    .line 355
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private registerByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 407
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 412
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "leidong_common_toast_vcode_is_null"

    .line 413
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    return-void

    .line 417
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xc

    if-le v0, v2, :cond_2

    goto :goto_1

    .line 422
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_3

    goto :goto_0

    .line 427
    :cond_3
    iget-boolean v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->isPhoneAgreementchecked:Z

    if-nez v0, :cond_4

    const-string p1, "leidong_agreement_tips"

    .line 428
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    return-void

    .line 433
    :cond_4
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getContentView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/ViewUtil;->saveView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 435
    iget-object v3, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    new-instance v7, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$9;

    invoke-direct {v7, p0, p2}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$9;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;Ljava/lang/String;)V

    const/4 v8, 0x1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/leidong/sdk/s/core/http/RequsetManager;->requestRegisterByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;Z)V

    return-void

    :cond_5
    :goto_0
    const-string p1, "leidong_tips_pwd_limit"

    .line 423
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_1
    const-string p1, "leidong_tips_name_limit"

    .line 418
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_2
    const-string p1, "leidong_tips_login_no_name_or_pwd"

    .line 408
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getParent()Landroid/view/View;
    .locals 3

    const-string v0, "leidong_login_by_register"

    const-string v1, "layout"

    .line 89
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->inflate(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isShowPhoneFirst()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->showPhoneFirst:Z

    return v0
.end method

.method protected onCreate()V
    .locals 2

    .line 93
    invoke-super {p0}, Lcom/leidong/sdk/s/core/view/BaseTagView;->onCreate()V

    .line 94
    invoke-direct {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->initViews()V

    .line 95
    new-instance v0, Lcom/leidong/sdk/s/core/http/RequsetManager;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leidong/sdk/s/core/http/RequsetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 99
    invoke-super {p0}, Lcom/leidong/sdk/s/core/view/BaseTagView;->onResume()V

    .line 109
    invoke-direct {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->loadDefaultregview()V

    return-void
.end method

.method public setShowPhoneFirst(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->showPhoneFirst:Z

    return-void
.end method
