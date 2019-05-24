.class public Lcom/leidong/sdk/s/app/login/LoginDialog;
.super Landroid/app/Dialog;
.source "LoginDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leidong/sdk/s/app/login/LoginDialog$NotifitionTextListener;
    }
.end annotation


# instance fields
.field private dismissHandler:Landroid/os/Handler;

.field private loginListener:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

.field private mContent:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mNotifition:Landroid/widget/TextView;

.field private rl_bg:Landroid/widget/ImageView;

.field private screenHeight:I

.field private screenWidth:I

.field private scrollWidth:I

.field private scroll_message_bg:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 119
    new-instance v0, Lcom/leidong/sdk/s/app/login/LoginDialog$1;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/s/app/login/LoginDialog$1;-><init>(Lcom/leidong/sdk/s/app/login/LoginDialog;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->dismissHandler:Landroid/os/Handler;

    .line 48
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->loginListener:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    const-string p2, "window"

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 53
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 54
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 55
    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->screenWidth:I

    .line 56
    iget p1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->screenHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/s/app/login/LoginDialog;)Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->loginListener:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leidong/sdk/s/app/login/LoginDialog;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private requestLoginBitmap(Landroid/widget/ImageView;)V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getSkinLgoinBg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getSkinLgoinBgStartTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getSkinLgoinBgStartTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->isDisplayLoginLogo(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 159
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 163
    :cond_2
    new-instance v1, Lcom/leidong/sdk/framework/utils/ImageUtil;

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/leidong/sdk/framework/utils/ImageUtil;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/leidong/sdk/s/app/login/LoginDialog$2;

    invoke-direct {v2, p0, p1}, Lcom/leidong/sdk/s/app/login/LoginDialog$2;-><init>(Lcom/leidong/sdk/s/app/login/LoginDialog;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0, v2}, Lcom/leidong/sdk/framework/utils/ImageUtil;->loadBitmap(Ljava/lang/String;Lcom/leidong/sdk/framework/utils/ImageUtil$ImageCallback;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 133
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 61
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/login/LoginDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "leidong_logindialog_theme"

    const-string v1, "style"

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    const-string p1, "leidong_dialog_login"

    const-string v0, "layout"

    .line 64
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/LoginDialog;->setContentView(I)V

    const-string p1, "content"

    const-string v0, "id"

    .line 66
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mContent:Landroid/widget/FrameLayout;

    const-string p1, "rl_bg"

    const-string v0, "id"

    .line 68
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->rl_bg:Landroid/widget/ImageView;

    const-string p1, "scroll_message_bg"

    const-string v0, "id"

    .line 69
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->scroll_message_bg:Landroid/widget/FrameLayout;

    .line 71
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->rl_bg:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/leidong/sdk/s/app/login/LoginDialog;->requestLoginBitmap(Landroid/widget/ImageView;)V

    const-string p1, "notification"

    const-string v0, "id"

    .line 73
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/s/app/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mNotifition:Landroid/widget/TextView;

    .line 77
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->isScreenLandscape(Landroid/content/Context;)Z

    move-result p1

    const-wide v0, 0x3fe4cccccccccccdL    # 0.65

    if-eqz p1, :cond_0

    .line 78
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->screenWidth:I

    int-to-double v2, v2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double v2, v2, v4

    double-to-int v2, v2

    iget v3, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->screenWidth:I

    int-to-double v6, v3

    mul-double v6, v6, v4

    mul-double v6, v6, v0

    double-to-int v0, v6

    invoke-direct {p1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->screenWidth:I

    int-to-double v2, v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double v2, v2, v4

    double-to-int v2, v2

    iget v3, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->screenWidth:I

    int-to-double v6, v3

    mul-double v6, v6, v4

    mul-double v6, v6, v0

    double-to-int v0, v6

    invoke-direct {p1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 v0, 0x11

    .line 83
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 84
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getScrollMessageText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 88
    iget v0, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->screenWidth:I

    iput v0, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->scrollWidth:I

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    const/4 v1, 0x0

    .line 91
    :goto_1
    iget v2, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->scrollWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    iget-object v4, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mNotifition:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    mul-float v4, v4, v3

    div-float/2addr v2, v4

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u3000"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mNotifition:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mNotifition:Landroid/widget/TextView;

    new-instance v0, Lcom/leidong/sdk/s/app/login/LoginDialog$NotifitionTextListener;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/s/app/login/LoginDialog$NotifitionTextListener;-><init>(Lcom/leidong/sdk/s/app/login/LoginDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->scroll_message_bg:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 99
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mNotifition:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    :goto_2
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "leidong_login_bg_dialog"

    const-string v1, "drawable"

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 104
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mContent:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

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

    .line 108
    :cond_3
    new-instance p1, Lcom/leidong/sdk/s/app/login/view/LoginContent;

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const-string v1, "\u767b\u5f55\u4e3b\u754c\u9762"

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->loginListener:Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    invoke-direct {p1, v0, v1, p0, v2}, Lcom/leidong/sdk/s/app/login/view/LoginContent;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/leidong/sdk/s/app/login/LoginDialog;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    .line 109
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 139
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog;->dismissHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p1, 0x1

    return p1

    .line 142
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    return-void
.end method
