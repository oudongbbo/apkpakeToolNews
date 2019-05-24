.class public Lcom/leidong/sdk/s/app/exit/ExitDialog;
.super Landroid/app/Dialog;
.source "ExitDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogExitListener;,
        Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogGiftListener;,
        Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogBBSListener;,
        Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogBitmapListener;,
        Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitCallBack;
    }
.end annotation


# instance fields
.field private exitdialog_ad_view:Landroid/widget/RelativeLayout;

.field private exitdialog_bbsbtn:Landroid/widget/ImageButton;

.field private exitdialog_bg:Landroid/widget/ImageView;

.field private exitdialog_exitbtn:Landroid/widget/Button;

.field private exitdialog_giftbtn:Landroid/widget/ImageButton;

.field private exitdialog_starlogo:Landroid/widget/ImageView;

.field private isExitClick:Z

.field private mCallback:Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitCallBack;

.field private mContent:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitCallBack;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->mCallback:Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitCallBack;

    const-string p2, "window"

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 47
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 48
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 49
    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->screenWidth:I

    .line 50
    iget p1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->screenHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/s/app/exit/ExitDialog;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->isExitClick:Z

    return p0
.end method

.method static synthetic access$002(Lcom/leidong/sdk/s/app/exit/ExitDialog;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->isExitClick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/leidong/sdk/s/app/exit/ExitDialog;)Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitCallBack;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->mCallback:Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitCallBack;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leidong/sdk/s/app/exit/ExitDialog;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->exitdialog_ad_view:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leidong/sdk/s/app/exit/ExitDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->exitdialog_bg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leidong/sdk/s/app/exit/ExitDialog;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/leidong/sdk/s/app/exit/ExitDialog;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->showToas(Ljava/lang/String;)V

    return-void
.end method

.method private initViews()V
    .locals 9

    const-string v0, "mContent"

    const-string v1, "id"

    .line 74
    iget-object v2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->mContent:Landroid/widget/RelativeLayout;

    .line 78
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/CommonUtil;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v0

    const-wide v1, 0x3fe6666666666666L    # 0.7

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->screenWidth:I

    int-to-double v3, v3

    const-wide v5, 0x3fe3333333333333L    # 0.6

    mul-double v3, v3, v5

    double-to-int v3, v3

    iget v4, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->screenWidth:I

    int-to-double v7, v4

    mul-double v7, v7, v5

    mul-double v7, v7, v1

    double-to-int v1, v7

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->screenWidth:I

    int-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double v3, v3, v5

    double-to-int v3, v3

    iget v4, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->screenWidth:I

    int-to-double v7, v4

    mul-double v7, v7, v5

    mul-double v7, v7, v1

    double-to-int v1, v7

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 v1, 0x11

    .line 87
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 88
    iget-object v1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "exitdialog_starlogo"

    const-string v1, "id"

    .line 90
    iget-object v2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    .line 91
    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->exitdialog_starlogo:Landroid/widget/ImageView;

    const-string v0, "exitdialog_bg"

    const-string v1, "id"

    .line 92
    iget-object v2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->exitdialog_bg:Landroid/widget/ImageView;

    const-string v0, "exitdialog_bbsbtn"

    const-string v1, "id"

    .line 94
    iget-object v2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    .line 95
    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->exitdialog_bbsbtn:Landroid/widget/ImageButton;

    const-string v0, "exitdialog_giftbtn"

    const-string v1, "id"

    .line 96
    iget-object v2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    .line 97
    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->exitdialog_giftbtn:Landroid/widget/ImageButton;

    const-string v0, "exitdialog_exitbtn"

    const-string v1, "id"

    .line 98
    iget-object v2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->exitdialog_exitbtn:Landroid/widget/Button;

    const-string v0, "exitdialog_ad_view"

    const-string v1, "id"

    .line 100
    iget-object v2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    .line 101
    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->exitdialog_ad_view:Landroid/widget/RelativeLayout;

    .line 103
    sget-object v0, Lcom/leidong/sdk/s/core/http/RequestUrls;->URL_EXIT_IMAGE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    new-instance v0, Lcom/leidong/sdk/framework/utils/ImageUtil;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/leidong/sdk/framework/utils/ImageUtil;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/leidong/sdk/s/core/http/RequestUrls;->URL_EXIT_IMAGE:Ljava/lang/String;

    new-instance v2, Lcom/leidong/sdk/s/app/exit/ExitDialog$2;

    invoke-direct {v2, p0}, Lcom/leidong/sdk/s/app/exit/ExitDialog$2;-><init>(Lcom/leidong/sdk/s/app/exit/ExitDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/ImageUtil;->loadBitmap(Ljava/lang/String;Lcom/leidong/sdk/framework/utils/ImageUtil$ImageCallback;)V

    .line 123
    :goto_1
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->exitdialog_bg:Landroid/widget/ImageView;

    new-instance v1, Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogBitmapListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogBitmapListener;-><init>(Lcom/leidong/sdk/s/app/exit/ExitDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->exitdialog_bbsbtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogBBSListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogBBSListener;-><init>(Lcom/leidong/sdk/s/app/exit/ExitDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->exitdialog_giftbtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogGiftListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogGiftListener;-><init>(Lcom/leidong/sdk/s/app/exit/ExitDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->exitdialog_exitbtn:Landroid/widget/Button;

    new-instance v1, Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogExitListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogExitListener;-><init>(Lcom/leidong/sdk/s/app/exit/ExitDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showToas(Ljava/lang/String;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/leidong/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 54
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "leidong_dialog_theme"

    const-string v1, "style"

    iget-object v2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    const-string p1, "leidong_dialog_exitgame"

    const-string v0, "layout"

    .line 57
    iget-object v1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->setContentView(I)V

    .line 59
    invoke-direct {p0}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->initViews()V

    .line 61
    new-instance p1, Lcom/leidong/sdk/s/app/exit/ExitDialog$1;

    invoke-direct {p1, p0}, Lcom/leidong/sdk/s/app/exit/ExitDialog$1;-><init>(Lcom/leidong/sdk/s/app/exit/ExitDialog;)V

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
