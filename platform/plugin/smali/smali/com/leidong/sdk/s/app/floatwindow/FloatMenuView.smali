.class public Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;
.super Landroid/widget/LinearLayout;
.source "FloatMenuView.java"


# static fields
.field private static instance:Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;


# instance fields
.field private floatConfig:Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;

.field private floatPopView:Landroid/view/View;

.field private leidong_float_bbs:Landroid/widget/RelativeLayout;

.field private leidong_float_changeuser:Landroid/widget/RelativeLayout;

.field private leidong_float_cs:Landroid/widget/RelativeLayout;

.field private leidong_float_game:Landroid/widget/RelativeLayout;

.field private leidong_float_gift:Landroid/widget/RelativeLayout;

.field private leidong_float_msg:Landroid/widget/RelativeLayout;

.field private leidong_float_user:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field ocl:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 170
    new-instance v0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView$1;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView$1;-><init>(Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->ocl:Landroid/view/View$OnClickListener;

    .line 47
    iput-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->getPopWindow()Landroid/view/View;

    .line 49
    invoke-direct {p0}, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    new-instance p2, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView$1;

    invoke-direct {p2, p0}, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView$1;-><init>(Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;)V

    iput-object p2, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->ocl:Landroid/view/View$OnClickListener;

    .line 54
    iput-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->getPopWindow()Landroid/view/View;

    .line 56
    invoke-direct {p0}, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_user:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_msg:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_gift:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_cs:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_bbs:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_game:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_changeuser:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;
    .locals 1

    .line 28
    sget-object v0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->instance:Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->instance:Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;

    .line 31
    :cond_0
    sget-object p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->instance:Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;

    return-object p0
.end method

.method private getRid(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
    .locals 0

    .line 285
    invoke-static {p1, p2, p3}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method private initView()V
    .locals 4

    .line 75
    new-instance v0, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->floatConfig:Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;

    .line 77
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->floatPopView:Landroid/view/View;

    const-string v1, "leidong_float_user"

    const-string v2, "id"

    iget-object v3, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;

    .line 78
    invoke-direct {p0, v1, v2, v3}, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->getRid(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_user:Landroid/widget/RelativeLayout;

    .line 79
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->floatPopView:Landroid/view/View;

    const-string v1, "leidong_float_msg"

    const-string v2, "id"

    iget-object v3, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;

    .line 80
    invoke-direct {p0, v1, v2, v3}, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->getRid(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_msg:Landroid/widget/RelativeLayout;

    .line 81
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->floatPopView:Landroid/view/View;

    const-string v1, "leidong_float_gift"

    const-string v2, "id"

    iget-object v3, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;

    .line 82
    invoke-direct {p0, v1, v2, v3}, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->getRid(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_gift:Landroid/widget/RelativeLayout;

    .line 83
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->floatPopView:Landroid/view/View;

    const-string v1, "leidong_float_cs"

    const-string v2, "id"

    iget-object v3, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;

    .line 84
    invoke-direct {p0, v1, v2, v3}, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->getRid(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_cs:Landroid/widget/RelativeLayout;

    .line 85
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->floatPopView:Landroid/view/View;

    const-string v1, "leidong_float_bbs"

    const-string v2, "id"

    iget-object v3, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;

    .line 86
    invoke-direct {p0, v1, v2, v3}, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->getRid(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_bbs:Landroid/widget/RelativeLayout;

    .line 87
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->floatPopView:Landroid/view/View;

    const-string v1, "leidong_float_game"

    const-string v2, "id"

    iget-object v3, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;

    .line 88
    invoke-direct {p0, v1, v2, v3}, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->getRid(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_game:Landroid/widget/RelativeLayout;

    .line 89
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->floatPopView:Landroid/view/View;

    const-string v1, "leidong_float_changeuser"

    const-string v2, "id"

    iget-object v3, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;

    .line 90
    invoke-direct {p0, v1, v2, v3}, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->getRid(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_changeuser:Landroid/widget/RelativeLayout;

    const-string v0, "1"

    .line 93
    iget-object v1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/s/core/model/SdkConfigManager;->getSdkFloatSwitch(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_changeuser:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_changeuser:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->floatConfig:Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->isShowFloatButtonUcenter()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_USERCENTER:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_user:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_user:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 105
    :goto_1
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->floatConfig:Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->isShowFloatButtonMsg()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_MESSAGE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_msg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_msg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 111
    :goto_2
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->floatConfig:Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->isShowFloatButtonGift()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_GAME_GIFT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_gift:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_gift:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 118
    :goto_3
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->floatConfig:Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->isShowFloatButtonCService()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_KEFU:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 120
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_cs:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_cs:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 125
    :goto_4
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->floatConfig:Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->isShowFloatButtonBBS()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_BBS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 126
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_bbs:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5

    .line 128
    :cond_5
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_bbs:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 131
    :goto_5
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->floatConfig:Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->isShowFloatButtonGame()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/leidong/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_GAME_CENTER:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 133
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_game:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_6

    .line 135
    :cond_6
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_game:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 158
    :goto_6
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_user:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->ocl:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_msg:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->ocl:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_gift:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->ocl:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_cs:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->ocl:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_bbs:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->ocl:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_game:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->ocl:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->leidong_float_changeuser:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->ocl:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->floatConfig:Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatConfig;->EditorCommit()V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public getPopWindow()Landroid/view/View;
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->floatPopView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const-string v1, "leidong_float_popwindow"

    const-string v2, "layout"

    .line 67
    iget-object v3, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v2, v3}, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->getRid(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->floatPopView:Landroid/view/View;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMenuView;->floatPopView:Landroid/view/View;

    return-object v0
.end method
