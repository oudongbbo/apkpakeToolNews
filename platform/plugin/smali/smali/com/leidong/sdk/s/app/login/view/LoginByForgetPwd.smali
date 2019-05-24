.class public Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;
.super Lcom/leidong/sdk/s/core/view/BaseTagView;
.source "LoginByForgetPwd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$PhoneClearLisener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2SubmmitListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$BindBackListener;,
        Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step1Listener;
    }
.end annotation


# instance fields
.field private countDown:Lcom/leidong/sdk/framework/view/common/CountDownView;

.field private isShowPhonePwd:Z

.field private loginMain:Lcom/leidong/sdk/s/app/login/view/LoginContent;

.field private login_forgetpwd_back:Landroid/widget/RelativeLayout;

.field private login_forgetpwd_step1:Landroid/view/View;

.field private login_forgetpwd_step1_next:Landroid/widget/Button;

.field private login_forgetpwd_step1_phone:Landroid/widget/EditText;

.field private login_forgetpwd_step1_phone_clear:Landroid/widget/ImageView;

.field private login_forgetpwd_step2:Landroid/view/View;

.field private login_forgetpwd_step2_eye:Landroid/widget/ImageView;

.field private login_forgetpwd_step2_idcode_input:Landroid/widget/EditText;

.field private login_forgetpwd_step2_idcode_tv:Landroid/widget/TextView;

.field private login_forgetpwd_step2_phone_text:Landroid/widget/TextView;

.field private login_forgetpwd_step2_pwd_input:Landroid/widget/EditText;

.field private login_forgetpwd_step2_submmit:Landroid/widget/Button;

.field private mobile:Ljava/lang/String;

.field private requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

.field private vname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/leidong/sdk/s/app/login/view/LoginContent;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/s/core/view/BaseTagView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->isShowPhonePwd:Z

    .line 67
    iput-object p3, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->loginMain:Lcom/leidong/sdk/s/app/login/view/LoginContent;

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/ImageView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1_phone_clear:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->mobile:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/EditText;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_idcode_input:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$102(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->mobile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Z
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->isQuickClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Lcom/leidong/sdk/framework/view/common/CountDownView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->countDown:Lcom/leidong/sdk/framework/view/common/CountDownView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Lcom/leidong/sdk/s/core/http/RequsetManager;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Z
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->isQuickClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->submmitChangePwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->isShowPhonePwd:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->isShowPhonePwd:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/ImageView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_eye:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/TextView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_phone_text:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Lcom/leidong/sdk/s/app/login/view/LoginContent;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->loginMain:Lcom/leidong/sdk/s/app/login/view/LoginContent;

    return-object p0
.end method

.method static synthetic access$600(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Z
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->isQuickClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/EditText;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1_phone:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$800(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->requestBindInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/EditText;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_pwd_input:Landroid/widget/EditText;

    return-object p0
.end method

.method private getIdByName(Ljava/lang/String;)I
    .locals 2

    const-string v0, "id"

    .line 92
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method private initViews()V
    .locals 4

    const-string v0, "login_forgetpwd_back"

    .line 98
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_back:Landroid/widget/RelativeLayout;

    const-string v0, "login_forgetpwd_step1"

    .line 100
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1:Landroid/view/View;

    const-string v0, "login_forgetpwd_step1_phone_input"

    .line 101
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1_phone:Landroid/widget/EditText;

    const-string v0, "login_forgetpwd_step1_phone_clear"

    .line 102
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1_phone_clear:Landroid/widget/ImageView;

    const-string v0, "login_forgetpwd_step1_next"

    .line 103
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1_next:Landroid/widget/Button;

    const-string v0, "login_forgetpwd_step2"

    .line 105
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2:Landroid/view/View;

    const-string v0, "login_forgetpwd_step2_phone_text"

    .line 106
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_phone_text:Landroid/widget/TextView;

    const-string v0, "login_forgetpwd_step2_idcode_tv"

    .line 107
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_idcode_tv:Landroid/widget/TextView;

    const-string v0, "login_forgetpwd_step2_idcode_input"

    .line 108
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_idcode_input:Landroid/widget/EditText;

    const-string v0, "login_forgetpwd_step2_eye"

    .line 109
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_eye:Landroid/widget/ImageView;

    const-string v0, "login_forgetpwd_step2_pwd_input"

    .line 110
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_pwd_input:Landroid/widget/EditText;

    const-string v0, "login_forgetpwd_step2_submmit"

    .line 111
    invoke-direct {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_submmit:Landroid/widget/Button;

    .line 114
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1_phone:Landroid/widget/EditText;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$1;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 127
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->countDown:Lcom/leidong/sdk/framework/view/common/CountDownView;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/leidong/sdk/framework/view/common/CountDownView;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_idcode_tv:Landroid/widget/TextView;

    const/16 v2, 0x3c

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/leidong/sdk/framework/view/common/CountDownView;-><init>(Landroid/widget/TextView;ILandroid/app/Activity;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->countDown:Lcom/leidong/sdk/framework/view/common/CountDownView;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_back:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$BindBackListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$BindBackListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1_next:Landroid/widget/Button;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step1Listener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step1Listener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1_phone_clear:Landroid/widget/ImageView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$PhoneClearLisener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$PhoneClearLisener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_idcode_tv:Landroid/widget/TextView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_eye:Landroid/widget/ImageView;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_submmit:Landroid/widget/Button;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2SubmmitListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2SubmmitListener;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private requestBindInfo(Ljava/lang/String;)V
    .locals 2

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u7528\u6237\u540d\u4e0d\u80fd\u4e3a\u7a7a"

    .line 150
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    return-void

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->vname:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    new-instance v1, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/s/core/http/RequsetManager;->requestBindInfo(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method private submmitChangePwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 229
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "leidong_bind_phone_tips"

    .line 230
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    return-void

    .line 234
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xc

    if-le v0, v2, :cond_2

    goto :goto_1

    .line 239
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_3

    goto :goto_0

    .line 244
    :cond_3
    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    new-instance v6, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3;

    invoke-direct {v6, p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$3;-><init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)V

    const/4 v7, 0x1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/leidong/sdk/s/core/http/RequsetManager;->requestFindPwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;Z)V

    return-void

    :cond_4
    :goto_0
    const-string p1, "leidong_tips_pwd_limit"

    .line 240
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    const-string p1, "leidong_tips_name_limit"

    .line 235
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_2
    const-string p1, "leidong_tips_login_no_name_or_pwd"

    .line 225
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getParent()Landroid/view/View;
    .locals 3

    const-string v0, "leidong_login_forgetpwd"

    const-string v1, "layout"

    .line 72
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->inflate(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate()V
    .locals 2

    .line 78
    invoke-super {p0}, Lcom/leidong/sdk/s/core/view/BaseTagView;->onCreate()V

    .line 79
    invoke-direct {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->initViews()V

    .line 80
    new-instance v0, Lcom/leidong/sdk/s/core/http/RequsetManager;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leidong/sdk/s/core/http/RequsetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcom/leidong/sdk/s/core/view/BaseTagView;->onResume()V

    .line 87
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->requestManager:Lcom/leidong/sdk/s/core/http/RequsetManager;

    const-string v1, "forgetpwd"

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/s/core/http/RequsetManager;->submitSdkAction(Ljava/lang/String;)V

    return-void
.end method
