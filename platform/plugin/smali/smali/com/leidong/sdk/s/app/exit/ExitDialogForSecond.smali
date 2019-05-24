.class public Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;
.super Landroid/app/Dialog;
.source "ExitDialogForSecond.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogExitListener;,
        Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogThirdBitmapListener;,
        Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogSecondBitmapListener;,
        Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogFirstBitmapListener;,
        Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;
    }
.end annotation


# instance fields
.field private exitdialog_exitbtn:Landroid/widget/Button;

.field private exitdialog_starlogo:Landroid/widget/ImageView;

.field private isExitClick:Z

.field private leidong_exitdialog_firstgame_gamename:Landroid/widget/TextView;

.field private leidong_exitdialog_firstgame_gametype:Landroid/widget/TextView;

.field private leidong_exitdialog_firstgame_icon:Landroid/widget/ImageView;

.field private leidong_exitdialog_secondgame_gamename:Landroid/widget/TextView;

.field private leidong_exitdialog_secondgame_gametype:Landroid/widget/TextView;

.field private leidong_exitdialog_secondgame_icon:Landroid/widget/ImageView;

.field private leidong_exitdialog_thirdgame_gamename:Landroid/widget/TextView;

.field private leidong_exitdialog_thirdgame_gametype:Landroid/widget/TextView;

.field private leidong_exitdialog_thirdgame_icon:Landroid/widget/ImageView;

.field private listGameBean:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;

.field private mContent:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;",
            ">;",
            "Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    .line 53
    iput-object p3, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mCallback:Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;

    .line 54
    iput-object p2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;

    const-string p2, "window"

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 57
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 58
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 59
    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->screenWidth:I

    .line 60
    iget p1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->screenHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->isExitClick:Z

    return p0
.end method

.method static synthetic access$002(Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->isExitClick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;)Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mCallback:Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private initViews()V
    .locals 9

    const-string v0, "mContent"

    const-string v1, "id"

    .line 87
    iget-object v2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContent:Landroid/widget/RelativeLayout;

    .line 91
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/CommonUtil;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v0

    const-wide v1, 0x3fe6666666666666L    # 0.7

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->screenWidth:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, v5

    double-to-int v3, v3

    iget v4, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->screenWidth:I

    int-to-double v7, v4

    mul-double v7, v7, v5

    mul-double v7, v7, v1

    double-to-int v1, v7

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->screenWidth:I

    int-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double v3, v3, v5

    double-to-int v3, v3

    iget v4, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->screenWidth:I

    int-to-double v7, v4

    mul-double v7, v7, v5

    mul-double v7, v7, v1

    double-to-int v1, v7

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 v1, 0x11

    .line 98
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 99
    iget-object v1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "exitdialog_starlogo"

    const-string v1, "id"

    .line 101
    iget-object v2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    .line 102
    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 101
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->exitdialog_starlogo:Landroid/widget/ImageView;

    const-string v0, "leidong_exitdialog_firstgame_icon"

    const-string v1, "id"

    .line 103
    iget-object v2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    .line 104
    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 103
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->leidong_exitdialog_firstgame_icon:Landroid/widget/ImageView;

    const-string v0, "leidong_exitdialog_secondgame_icon"

    const-string v1, "id"

    .line 105
    iget-object v2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    .line 106
    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 105
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->leidong_exitdialog_secondgame_icon:Landroid/widget/ImageView;

    const-string v0, "leidong_exitdialog_thirdgame_icon"

    const-string v1, "id"

    .line 107
    iget-object v2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 107
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->leidong_exitdialog_thirdgame_icon:Landroid/widget/ImageView;

    const-string v0, "leidong_exitdialog_firstgame_gamename"

    const-string v1, "id"

    .line 110
    iget-object v2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    .line 111
    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 110
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->leidong_exitdialog_firstgame_gamename:Landroid/widget/TextView;

    const-string v0, "leidong_exitdialog_firstgame_gametype"

    const-string v1, "id"

    .line 112
    iget-object v2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 112
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->leidong_exitdialog_firstgame_gametype:Landroid/widget/TextView;

    const-string v0, "leidong_exitdialog_secondgame_gamename"

    const-string v1, "id"

    .line 114
    iget-object v2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    .line 115
    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 114
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->leidong_exitdialog_secondgame_gamename:Landroid/widget/TextView;

    const-string v0, "leidong_exitdialog_secondgame_gametype"

    const-string v1, "id"

    .line 116
    iget-object v2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    .line 117
    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->leidong_exitdialog_secondgame_gametype:Landroid/widget/TextView;

    const-string v0, "leidong_exitdialog_thirdgame_gamename"

    const-string v1, "id"

    .line 118
    iget-object v2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    .line 119
    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 118
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->leidong_exitdialog_thirdgame_gamename:Landroid/widget/TextView;

    const-string v0, "leidong_exitdialog_thirdgame_gametype"

    const-string v1, "id"

    .line 120
    iget-object v2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 120
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->leidong_exitdialog_thirdgame_gametype:Landroid/widget/TextView;

    const-string v0, "exitdialog_exitbtn"

    const-string v1, "id"

    .line 123
    iget-object v2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->exitdialog_exitbtn:Landroid/widget/Button;

    .line 126
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v1}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->leidong_exitdialog_firstgame_icon:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v3}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->loadingBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 127
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v1}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->leidong_exitdialog_secondgame_icon:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v4}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->loadingBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 128
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v1}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->leidong_exitdialog_thirdgame_icon:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v5}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->loadingBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 131
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->leidong_exitdialog_firstgame_gamename:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v1}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->leidong_exitdialog_firstgame_gametype:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v1}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->leidong_exitdialog_secondgame_gamename:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v1}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->leidong_exitdialog_secondgame_gametype:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v1}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->leidong_exitdialog_thirdgame_gamename:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v1}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->leidong_exitdialog_thirdgame_gametype:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v1}, Lcom/leidong/sdk/s/core/model/bean/ExitGameBean;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->leidong_exitdialog_firstgame_icon:Landroid/widget/ImageView;

    new-instance v1, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogFirstBitmapListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogFirstBitmapListener;-><init>(Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->leidong_exitdialog_secondgame_icon:Landroid/widget/ImageView;

    new-instance v1, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogSecondBitmapListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogSecondBitmapListener;-><init>(Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->leidong_exitdialog_thirdgame_icon:Landroid/widget/ImageView;

    new-instance v1, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogThirdBitmapListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogThirdBitmapListener;-><init>(Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->exitdialog_exitbtn:Landroid/widget/Button;

    new-instance v1, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogExitListener;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogExitListener;-><init>(Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private loadingBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 223
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 227
    :cond_0
    new-instance v0, Lcom/leidong/sdk/framework/utils/ImageUtil;

    invoke-direct {v0, p1}, Lcom/leidong/sdk/framework/utils/ImageUtil;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$2;

    invoke-direct {p1, p0, p3}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$2;-><init>(Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p2, p1}, Lcom/leidong/sdk/framework/utils/ImageUtil;->loadBitmap(Ljava/lang/String;Lcom/leidong/sdk/framework/utils/ImageUtil$ImageCallback;)V

    return-void
.end method

.method private showToas(Ljava/lang/String;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/leidong/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 66
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "leidong_dialog_theme"

    const-string v1, "style"

    iget-object v2, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    const-string p1, "leidong_dialog_exitgame_second"

    const-string v0, "layout"

    .line 69
    iget-object v1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->setContentView(I)V

    .line 71
    invoke-direct {p0}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->initViews()V

    .line 73
    new-instance p1, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$1;

    invoke-direct {p1, p0}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$1;-><init>(Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;)V

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
