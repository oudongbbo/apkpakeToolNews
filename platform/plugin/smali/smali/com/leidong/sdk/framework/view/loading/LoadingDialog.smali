.class public Lcom/leidong/sdk/framework/view/loading/LoadingDialog;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"


# instance fields
.field private isDefaultTimeEnd:Z

.field private isUserTimeEnd:Z

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mLoading:Lcom/leidong/sdk/framework/view/loading/LoadingSmile;

.field private mMessage:Ljava/lang/CharSequence;

.field private mTextView:Landroid/widget/TextView;

.field private showTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->showTime:I

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->isDefaultTimeEnd:Z

    .line 25
    iput-boolean v0, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->isUserTimeEnd:Z

    .line 126
    new-instance v0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog$1;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog$1;-><init>(Lcom/leidong/sdk/framework/view/loading/LoadingDialog;)V

    iput-object v0, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mHandler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x1

    .line 23
    iput p2, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->showTime:I

    const/4 p2, 0x0

    .line 24
    iput-boolean p2, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->isDefaultTimeEnd:Z

    .line 25
    iput-boolean p2, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->isUserTimeEnd:Z

    .line 126
    new-instance p2, Lcom/leidong/sdk/framework/view/loading/LoadingDialog$1;

    invoke-direct {p2, p0}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog$1;-><init>(Lcom/leidong/sdk/framework/view/loading/LoadingDialog;)V

    iput-object p2, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mHandler:Landroid/os/Handler;

    .line 34
    iput-object p1, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/framework/view/loading/LoadingDialog;)Lcom/leidong/sdk/framework/view/loading/LoadingSmile;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mLoading:Lcom/leidong/sdk/framework/view/loading/LoadingSmile;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leidong/sdk/framework/view/loading/LoadingDialog;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->showTime:I

    return p0
.end method

.method static synthetic access$202(Lcom/leidong/sdk/framework/view/loading/LoadingDialog;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->isDefaultTimeEnd:Z

    return p1
.end method

.method static synthetic access$300(Lcom/leidong/sdk/framework/view/loading/LoadingDialog;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->isUserTimeEnd:Z

    return p0
.end method

.method private resetAttr()V
    .locals 1

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->isDefaultTimeEnd:Z

    .line 157
    iput-boolean v0, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->isUserTimeEnd:Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->isDefaultTimeEnd:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mLoading:Lcom/leidong/sdk/framework/view/loading/LoadingSmile;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/view/loading/LoadingSmile;->stopAnim()V

    .line 115
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 117
    invoke-direct {p0}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->resetAttr()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->isUserTimeEnd:Z

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 40
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "leidong_dialog_theme_main"

    const-string v1, "style"

    iget-object v2, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    .line 45
    new-instance p1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 49
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-static {v3, v4}, Lcom/leidong/sdk/framework/utils/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iget-object v5, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/leidong/sdk/framework/utils/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 53
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v0, v3}, Lcom/leidong/sdk/framework/utils/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    const-string v4, "leidong_sdk_loading"

    const-string v5, "drawable"

    .line 54
    iget-object v6, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    .line 55
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 56
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 58
    invoke-virtual {p1, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    new-instance v0, Lcom/leidong/sdk/framework/view/loading/LoadingSmile;

    iget-object v2, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/leidong/sdk/framework/view/loading/LoadingSmile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mLoading:Lcom/leidong/sdk/framework/view/loading/LoadingSmile;

    .line 61
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mLoading:Lcom/leidong/sdk/framework/view/loading/LoadingSmile;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/leidong/sdk/framework/view/loading/LoadingSmile;->setId(I)V

    .line 62
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v2, v4}, Lcom/leidong/sdk/framework/utils/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iget-object v5, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/leidong/sdk/framework/utils/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 63
    iget-object v2, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/leidong/sdk/framework/utils/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v2, 0xe

    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 66
    iget-object v3, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mLoading:Lcom/leidong/sdk/framework/view/loading/LoadingSmile;

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mTextView:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mTextView:Landroid/widget/TextView;

    const-string v3, "leidong_loading"

    iget-object v4, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mTextView:Landroid/widget/TextView;

    const-string v3, "leidong_white"

    iget-object v4, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getColorByName(Ljava/lang/String;Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 71
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72
    iget-object v3, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mLoading:Lcom/leidong/sdk/framework/view/loading/LoadingSmile;

    invoke-virtual {v3}, Lcom/leidong/sdk/framework/view/loading/LoadingSmile;->getId()I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 73
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 75
    iget-object v2, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setLoadingMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 83
    iput-object p1, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mMessage:Ljava/lang/CharSequence;

    .line 85
    iget-object p1, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setShowTime(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 96
    iput p1, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->showTime:I

    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 106
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
