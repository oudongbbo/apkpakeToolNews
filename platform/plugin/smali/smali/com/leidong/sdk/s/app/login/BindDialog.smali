.class public Lcom/leidong/sdk/s/app/login/BindDialog;
.super Landroid/app/Dialog;
.source "BindDialog.java"


# instance fields
.field private dismissHandler:Landroid/os/Handler;

.field private mContent:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Lcom/leidong/sdk/s/app/login/BindDialog$1;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/s/app/login/BindDialog$1;-><init>(Lcom/leidong/sdk/s/app/login/BindDialog;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/BindDialog;->dismissHandler:Landroid/os/Handler;

    .line 32
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/BindDialog;->mContext:Landroid/content/Context;

    const-string v0, "window"

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 36
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 37
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 38
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/leidong/sdk/s/app/login/BindDialog;->screenWidth:I

    .line 39
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/leidong/sdk/s/app/login/BindDialog;->screenHeight:I

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 93
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 44
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/BindDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "leidong_logindialog_theme"

    const-string v1, "style"

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/BindDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    const-string p1, "leidong_dialog_bind"

    const-string v0, "layout"

    .line 49
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/BindDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/BindDialog;->setContentView(I)V

    const-string p1, "content"

    const-string v0, "id"

    .line 51
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/BindDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/BindDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/BindDialog;->mContent:Landroid/widget/FrameLayout;

    .line 56
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/BindDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->isScreenLandscape(Landroid/content/Context;)Z

    move-result p1

    const-wide v0, 0x3fe4cccccccccccdL    # 0.65

    if-eqz p1, :cond_0

    .line 57
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/leidong/sdk/s/app/login/BindDialog;->screenWidth:I

    int-to-double v2, v2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double v2, v2, v4

    double-to-int v2, v2

    iget v3, p0, Lcom/leidong/sdk/s/app/login/BindDialog;->screenWidth:I

    int-to-double v6, v3

    mul-double v6, v6, v4

    mul-double v6, v6, v0

    double-to-int v0, v6

    invoke-direct {p1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 59
    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/leidong/sdk/s/app/login/BindDialog;->screenWidth:I

    int-to-double v2, v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double v2, v2, v4

    double-to-int v2, v2

    iget v3, p0, Lcom/leidong/sdk/s/app/login/BindDialog;->screenWidth:I

    int-to-double v6, v3

    mul-double v6, v6, v4

    mul-double v6, v6, v0

    double-to-int v0, v6

    invoke-direct {p1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 v0, 0x11

    .line 62
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 63
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/BindDialog;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/BindDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "leidong_login_bg_dialog"

    const-string v1, "drawable"

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/BindDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/BindDialog;->mContent:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/BindDialog;->mContext:Landroid/content/Context;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v2, v3}, Lcom/leidong/sdk/framework/utils/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/leidong/sdk/framework/utils/ViewUtil;->createRoundConerImage(Landroid/graphics/Bitmap;Ljava/lang/Float;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 99
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/BindDialog;->dismissHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p1, 0x1

    return p1

    .line 102
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    return-void
.end method
