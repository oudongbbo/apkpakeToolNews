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
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->showTime:I

    .line 114
    new-instance v0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog$2;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog$2;-><init>(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mHandler:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mContext:Landroid/content/Context;

    .line 45
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 47
    .local v0, "manager":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 48
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 49
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->screenWidth:I

    .line 50
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->screenHeight:I

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;

    .line 21
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;

    .line 21
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;Landroid/view/View;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->startAnimate(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;Landroid/view/View;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->endAnimate(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;

    .line 21
    iget v0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->showTime:I

    return v0
.end method

.method private endAnimate(Landroid/view/View;Landroid/content/Context;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .line 150
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 151
    .local v0, "translateAnimation":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 152
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 154
    return-void
.end method

.method private startAnimate(Landroid/view/View;Landroid/content/Context;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .line 142
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 143
    .local v0, "translateAnimation":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 144
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
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

    .line 111
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 56
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "leidong_logindialog_theme"

    const-string v2, "style"

    iget-object v3, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 59
    const-string v0, "leidong_login_auto_success_new"

    const-string v1, "layout"

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->setContentView(I)V

    .line 61
    const-string v0, "mContent"

    const-string v1, "id"

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mContent:Landroid/widget/LinearLayout;

    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v1

    const-wide v2, 0x3fc0a3d70a3d70a4L    # 0.13

    if-eqz v1, :cond_0

    .line 66
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->screenWidth:I

    int-to-double v4, v4

    const-wide v6, 0x3fe3333333333333L    # 0.6

    mul-double v4, v4, v6

    double-to-int v4, v4

    iget v5, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->screenWidth:I

    int-to-double v8, v5

    mul-double v8, v8, v6

    mul-double v8, v8, v2

    double-to-int v5, v8

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 67
    iget v1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->screenWidth:I

    int-to-double v4, v1

    mul-double v4, v4, v6

    double-to-int v1, v4

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->widthAnimate:I

    .line 68
    iget v1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->screenWidth:I

    int-to-double v4, v1

    mul-double v4, v4, v6

    mul-double v4, v4, v2

    double-to-int v1, v4

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->heightAnimate:I

    goto :goto_0

    .line 70
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->screenWidth:I

    int-to-double v4, v4

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double v4, v4, v6

    double-to-int v4, v4

    iget v5, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->screenWidth:I

    int-to-double v8, v5

    mul-double v8, v8, v6

    mul-double v8, v8, v2

    double-to-int v5, v8

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 71
    iget v1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->screenWidth:I

    int-to-double v4, v1

    mul-double v4, v4, v6

    double-to-int v1, v4

    iput v1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->widthAnimate:I

    .line 72
    iget v1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->screenWidth:I

    int-to-double v4, v1

    mul-double v4, v4, v6

    mul-double v4, v4, v2

    double-to-int v1, v4

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->heightAnimate:I

    .line 75
    :goto_0
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 76
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v1, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog$1;-><init>(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;)V

    invoke-virtual {p0, v1}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 89
    const-string v1, "login_auto_success_name"

    const-string v2, "id"

    iget-object v3, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->login_auto_text:Landroid/widget/TextView;

    .line 91
    return-void
.end method

.method public setUserName(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->login_auto_text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->login_auto_text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
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

    .line 105
    return-void
.end method
