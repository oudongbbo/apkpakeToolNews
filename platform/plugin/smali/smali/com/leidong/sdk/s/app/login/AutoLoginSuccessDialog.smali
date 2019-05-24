.class public Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;
.super Landroid/app/Dialog;
.source "AutoLoginSuccessDialog.java"


# static fields
.field private static final ACTION_END:I = 0x1

.field private static final ACTION_START:I


# instance fields
.field private heightAnimate:I

.field private login_auto_text:Landroid/widget/TextView;

.field private mContent:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private screenHeight:I

.field private screenWidth:I

.field private showName:Ljava/lang/CharSequence;

.field private showTime:I

.field private widthAnimate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->showTime:I

    .line 114
    new-instance v0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog$2;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog$2;-><init>(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mHandler:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mContext:Landroid/content/Context;

    const-string v0, "window"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 47
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 48
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 49
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->screenWidth:I

    .line 50
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->screenHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;)Landroid/widget/LinearLayout;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mContent:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->startAnimate(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->endAnimate(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->showTime:I

    return p0
.end method

.method private endAnimate(Landroid/view/View;Landroid/content/Context;)V
    .locals 2

    .line 150
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v1, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0x12c

    .line 151
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x1

    .line 152
    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 153
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startAnimate(Landroid/view/View;Landroid/content/Context;)V
    .locals 2

    .line 142
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v0, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0x12c

    .line 143
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x1

    .line 144
    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 109
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 110
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 56
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "leidong_logindialog_theme"

    const-string v1, "style"

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    const-string p1, "leidong_login_auto_success_new"

    const-string v0, "layout"

    .line 59
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->setContentView(I)V

    const-string p1, "mContent"

    const-string v0, "id"

    .line 61
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mContent:Landroid/widget/LinearLayout;

    .line 65
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->isScreenLandscape(Landroid/content/Context;)Z

    move-result p1

    const-wide v0, 0x3fc0a3d70a3d70a4L    # 0.13

    if-eqz p1, :cond_0

    .line 66
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->screenWidth:I

    int-to-double v2, v2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double v2, v2, v4

    double-to-int v2, v2

    iget v3, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->screenWidth:I

    int-to-double v6, v3

    mul-double v6, v6, v4

    mul-double v6, v6, v0

    double-to-int v3, v6

    invoke-direct {p1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67
    iget v2, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->screenWidth:I

    int-to-double v2, v2

    mul-double v2, v2, v4

    double-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->widthAnimate:I

    .line 68
    iget v2, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->screenWidth:I

    int-to-double v2, v2

    mul-double v2, v2, v4

    mul-double v2, v2, v0

    double-to-int v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->heightAnimate:I

    goto :goto_0

    .line 70
    :cond_0
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->screenWidth:I

    int-to-double v2, v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double v2, v2, v4

    double-to-int v2, v2

    iget v3, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->screenWidth:I

    int-to-double v6, v3

    mul-double v6, v6, v4

    mul-double v6, v6, v0

    double-to-int v3, v6

    invoke-direct {p1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 71
    iget v2, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->screenWidth:I

    int-to-double v2, v2

    mul-double v2, v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->widthAnimate:I

    .line 72
    iget v2, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->screenWidth:I

    int-to-double v2, v2

    mul-double v2, v2, v4

    mul-double v2, v2, v0

    double-to-int v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->heightAnimate:I

    :goto_0
    const/4 v0, 0x1

    .line 75
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 76
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance p1, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog$1;

    invoke-direct {p1, p0}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog$1;-><init>(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;)V

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const-string p1, "login_auto_success_name"

    const-string v0, "id"

    .line 89
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->login_auto_text:Landroid/widget/TextView;

    return-void
.end method

.method public setUserName(Ljava/lang/CharSequence;)V
    .locals 1

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->login_auto_text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->login_auto_text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 104
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
