.class public Lcom/leidong/sdk/m/views/ActivationDialog;
.super Landroid/app/Dialog;
.source "ActivationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private activationCodeInput:Landroid/widget/EditText;

.field private activationCodeTips:Landroid/widget/TextView;

.field private activationContent:Landroid/widget/LinearLayout;

.field private codeID:Ljava/lang/String;

.field private codeQQ:Ljava/lang/String;

.field private codeWebUrl:Ljava/lang/String;

.field private doubleGetCodeFromQQ:Landroid/widget/RelativeLayout;

.field private doubleGetCodeFromWeb:Landroid/widget/RelativeLayout;

.field private enterGame:Landroid/widget/Button;

.field private gameName:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mrepManager:Lcom/leidong/sdk/m/http/MRepManager;

.field private mreqManager:Lcom/leidong/sdk/m/http/MReqManager;

.field private screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->codeWebUrl:Ljava/lang/String;

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->codeQQ:Ljava/lang/String;

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->codeID:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    const-string v0, "window"

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 58
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 59
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 60
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->screenWidth:I

    .line 62
    new-instance p1, Lcom/leidong/sdk/m/http/MRepManager;

    iget-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/leidong/sdk/m/http/MRepManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->mrepManager:Lcom/leidong/sdk/m/http/MRepManager;

    .line 63
    new-instance p1, Lcom/leidong/sdk/m/http/MReqManager;

    iget-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/leidong/sdk/m/http/MReqManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->mreqManager:Lcom/leidong/sdk/m/http/MReqManager;

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/m/views/ActivationDialog;ZLjava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/leidong/sdk/m/views/ActivationDialog;->controlErrorTips(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/leidong/sdk/m/views/ActivationDialog;)Lcom/leidong/sdk/m/http/MRepManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->mrepManager:Lcom/leidong/sdk/m/http/MRepManager;

    return-object p0
.end method

.method private controlErrorTips(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->activationCodeTips:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object p1, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->activationCodeTips:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object p1, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->activationCodeInput:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->activationCodeTips:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initViews()V
    .locals 3

    const-string v0, "activation_content"

    const-string v1, "id"

    .line 93
    iget-object v2, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/views/ActivationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->activationContent:Landroid/widget/LinearLayout;

    .line 94
    iget-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->activationContent:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/views/ActivationDialog;->setDialogFrame(Landroid/widget/LinearLayout;)V

    const-string v0, "activation_gamename"

    const-string v1, "id"

    .line 96
    iget-object v2, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/views/ActivationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->gameName:Landroid/widget/TextView;

    const-string v0, "activation_edittext_input"

    const-string v1, "id"

    .line 97
    iget-object v2, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/views/ActivationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->activationCodeInput:Landroid/widget/EditText;

    const-string v0, "activation_text_tips"

    const-string v1, "id"

    .line 98
    iget-object v2, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/views/ActivationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->activationCodeTips:Landroid/widget/TextView;

    const-string v0, "leidong_activation_entergame"

    const-string v1, "id"

    .line 99
    iget-object v2, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/views/ActivationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->enterGame:Landroid/widget/Button;

    const-string v0, "leidong_activation_getcode_web"

    const-string v1, "id"

    .line 102
    iget-object v2, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/views/ActivationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->doubleGetCodeFromWeb:Landroid/widget/RelativeLayout;

    const-string v0, "leidong_activation_getcode_qq"

    const-string v1, "id"

    .line 103
    iget-object v2, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/m/views/ActivationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->doubleGetCodeFromQQ:Landroid/widget/RelativeLayout;

    .line 113
    iget-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->enterGame:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->doubleGetCodeFromWeb:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->doubleGetCodeFromQQ:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private joinQQGroup(Ljava/lang/String;)Z
    .locals 3

    .line 239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 243
    :try_start_0
    iget-object p1, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 248
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "\u672a\u5b89\u88c5\u624bQ\u6216\u5b89\u88c5\u7684\u7248\u672c\u4e0d\u652f\u6301"

    .line 249
    invoke-direct {p0, p1}, Lcom/leidong/sdk/m/views/ActivationDialog;->showToast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private setDialogFrame(Landroid/widget/LinearLayout;)V
    .locals 9

    .line 124
    iget-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/CommonUtil;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v0

    const-wide v1, 0x3fe851eb851eb852L    # 0.76

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->screenWidth:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, v5

    double-to-int v3, v3

    iget v4, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->screenWidth:I

    int-to-double v7, v4

    mul-double v7, v7, v5

    mul-double v7, v7, v1

    double-to-int v1, v7

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->screenWidth:I

    int-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double v3, v3, v5

    double-to-int v3, v3

    iget v4, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->screenWidth:I

    int-to-double v7, v4

    mul-double v7, v7, v5

    mul-double v7, v7, v1

    double-to-int v1, v7

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 v1, 0x11

    .line 131
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 132
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 152
    iget-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->enterGame:Landroid/widget/Button;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->activationCodeInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p1, "\u6fc0\u6d3b\u7801\u4e0d\u53ef\u4ee5\u4e3a\u7a7a"

    .line 155
    invoke-direct {p0, p1}, Lcom/leidong/sdk/m/views/ActivationDialog;->showToast(Ljava/lang/String;)V

    return-void

    .line 158
    :cond_0
    iget-object v3, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->codeID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "\u6fc0\u6d3bID\u4e3a\u7a7a\uff0c\u8bf7\u68c0\u67e5\u63a5\u53e3\u6570\u636e"

    .line 159
    invoke-direct {p0, p1}, Lcom/leidong/sdk/m/views/ActivationDialog;->showToast(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v3, ""

    .line 163
    invoke-direct {p0, v2, v3}, Lcom/leidong/sdk/m/views/ActivationDialog;->controlErrorTips(ZLjava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->mreqManager:Lcom/leidong/sdk/m/http/MReqManager;

    iget-object v4, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->codeID:Ljava/lang/String;

    new-instance v5, Lcom/leidong/sdk/m/views/ActivationDialog$1;

    invoke-direct {v5, p0}, Lcom/leidong/sdk/m/views/ActivationDialog$1;-><init>(Lcom/leidong/sdk/m/views/ActivationDialog;)V

    invoke-virtual {v3, v4, v0, v1, v5}, Lcom/leidong/sdk/m/http/MReqManager;->requestActive(Ljava/lang/String;Ljava/lang/String;ZLcom/leidong/sdk/framework/http/HttpCallBack;)V

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->doubleGetCodeFromWeb:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->codeWebUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u6682\u65f6\u8fd8\u6ca1\u6709\u6fc0\u6d3b\u7801\u5b98\u7f51\u5730\u5740"

    .line 215
    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/views/ActivationDialog;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->codeWebUrl:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v2, v4}, Lcom/leidong/sdk/m/utils/MsdkUtils;->showWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/leidong/sdk/framework/interfaces/ResultCallback;)V

    .line 222
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->doubleGetCodeFromQQ:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_6

    .line 223
    iget-object p1, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->codeQQ:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "\u6682\u65f6\u65e0\u6cd5\u4eceQQ\u7fa4\u83b7\u53d6\u6fc0\u6d3b\u7801"

    .line 224
    invoke-direct {p0, p1}, Lcom/leidong/sdk/m/views/ActivationDialog;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 226
    :cond_5
    iget-object p1, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->codeQQ:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/leidong/sdk/m/views/ActivationDialog;->joinQQGroup(Ljava/lang/String;)Z

    :cond_6
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 76
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/leidong/sdk/m/views/ActivationDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "leidong_dialog_theme_main"

    const-string v1, "style"

    iget-object v2, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    const-string p1, "leidong_dialog_activation"

    const-string v0, "layout"

    .line 79
    iget-object v1, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/views/ActivationDialog;->setContentView(I)V

    .line 81
    invoke-direct {p0}, Lcom/leidong/sdk/m/views/ActivationDialog;->initViews()V

    .line 83
    iget-object p1, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->gameName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 85
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/views/ActivationDialog;->setCancelable(Z)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/views/ActivationDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public setActivateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p3, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->codeWebUrl:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->codeQQ:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/leidong/sdk/m/views/ActivationDialog;->codeID:Ljava/lang/String;

    return-void
.end method
