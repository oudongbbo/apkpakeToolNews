.class public Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;
.super Ljava/lang/Object;
.source "MaterialDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;
    }
.end annotation


# static fields
.field private static final BUTTON_BOTTOM:I = 0x9

.field private static final BUTTON_TOP:I = 0x9


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResId:I

.field private mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

.field private mCancelOutside:Z

.field private mCancelable:Z

.field private mContext:Landroid/content/Context;

.field private mHasShow:Z

.field private mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageContentView:Landroid/view/View;

.field private mMessageContentViewResId:I

.field private mMessageResId:I

.field private mNegativeButton:Landroid/widget/Button;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mPositiveButton:Landroid/widget/Button;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleResId:I

.field private mView:Landroid/view/View;

.field private nId:I

.field nListener:Landroid/view/View$OnClickListener;

.field private nText:Ljava/lang/String;

.field private pId:I

.field pListener:Landroid/view/View$OnClickListener;

.field private pText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mCancelOutside:Z

    .line 33
    iput-boolean v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mCancelable:Z

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mHasShow:Z

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBackgroundResId:I

    .line 52
    iput v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->pId:I

    iput v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->nId:I

    .line 57
    iput-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->pId:I

    return p0
.end method

.method static synthetic access$102(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->nId:I

    return p0
.end method

.method static synthetic access$1200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->pText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Ljava/lang/String;)Z
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->nText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBackgroundResId:I

    return p0
.end method

.method static synthetic access$1600(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mMessageContentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mMessageContentViewResId:I

    return p0
.end method

.method static synthetic access$1900(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mCancelOutside:Z

    return p0
.end method

.method static synthetic access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mCancelable:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/DialogInterface$OnKeyListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;F)I
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->dip2px(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Landroid/widget/ListView;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mPositiveButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$302(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mPositiveButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$400(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mNegativeButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$402(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mNegativeButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$500(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mTitleResId:I

    return p0
.end method

.method static synthetic access$700(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/CharSequence;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$800(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mMessageResId:I

    return p0
.end method

.method static synthetic access$900(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/CharSequence;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private dip2px(F)I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public static getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 541
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static isLollipop()Z
    .locals 2

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 518
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static isScreenLandscape(Landroid/content/Context;)Z
    .locals 2

    .line 547
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 548
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    return v1
.end method

.method private setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 5

    .line 522
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 529
    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    const/4 v4, 0x0

    .line 530
    invoke-interface {v0, v2, v4, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 531
    invoke-virtual {v4, v1, v1}, Landroid/view/View;->measure(II)V

    .line 532
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 536
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int v2, v2, v0

    add-int/2addr v3, v2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 537
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public getNegativeButton()Landroid/widget/Button;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mNegativeButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPositiveButton()Landroid/widget/Button;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mPositiveButton:Landroid/widget/Button;

    return-object v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;
    .locals 1

    .line 102
    iput-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 103
    iget-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object p0
.end method

.method public setBackgroundResource(I)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;
    .locals 1

    .line 110
    iput p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBackgroundResId:I

    .line 111
    iget-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    iget v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBackgroundResId:I

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->setBackgroundResource(I)V

    :cond_0
    return-object p0
.end method

.method public setCancelable(Z)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;
    .locals 1

    .line 212
    iput-boolean p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mCancelable:Z

    .line 213
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->setCancelable(Z)V

    :cond_0
    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;
    .locals 1

    .line 205
    iput-boolean p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mCancelOutside:Z

    .line 206
    iget-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    if-eqz p1, :cond_0

    .line 207
    iget-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    iget-boolean v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mCancelOutside:Z

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-object p0
.end method

.method public setContentView(I)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;
    .locals 1

    .line 93
    iput p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mMessageContentViewResId:I

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mMessageContentView:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->setContentView(I)V

    :cond_0
    return-object p0
.end method

.method public setContentView(Landroid/view/View;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mMessageContentView:Landroid/view/View;

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mMessageContentViewResId:I

    .line 80
    iget-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mMessageContentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->setContentView(Landroid/view/View;)V

    :cond_0
    return-object p0
.end method

.method public setMessage(I)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;
    .locals 1

    .line 148
    iput p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mMessageResId:I

    .line 149
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->setMessage(I)V

    :cond_0
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;
    .locals 1

    .line 156
    iput-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mMessage:Ljava/lang/CharSequence;

    .line 157
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;
    .locals 0

    .line 184
    iput p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->nId:I

    .line 185
    iput-object p2, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->nListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->nText:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->nListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;
    .locals 0

    .line 164
    iput p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->pId:I

    .line 165
    iput-object p2, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->pListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->pText:Ljava/lang/String;

    .line 179
    iput-object p2, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->pListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setTitle(I)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;
    .locals 1

    .line 132
    iput p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mTitleResId:I

    .line 133
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->setTitle(I)V

    :cond_0
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;
    .locals 1

    .line 140
    iput-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mTitle:Ljava/lang/CharSequence;

    .line 141
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;
    .locals 1

    .line 70
    iput-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mView:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->setView(Landroid/view/View;)V

    :cond_0
    return-object p0
.end method

.method public show()V
    .locals 2

    .line 61
    iget-boolean v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mHasShow:Z

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;-><init>(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$1;)V

    iput-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mBuilder:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->mHasShow:Z

    return-void
.end method
