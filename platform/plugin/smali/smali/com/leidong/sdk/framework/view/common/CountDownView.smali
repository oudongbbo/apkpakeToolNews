.class public Lcom/leidong/sdk/framework/view/common/CountDownView;
.super Ljava/lang/Object;
.source "CountDownView.java"


# instance fields
.field private countDownUtil:Lcom/leidong/sdk/framework/model/CountDownTool;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;ILandroid/app/Activity;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 20
    new-instance v1, Lcom/leidong/sdk/framework/model/CountDownTool;

    invoke-direct {v1, p2}, Lcom/leidong/sdk/framework/model/CountDownTool;-><init>(I)V

    iput-object v1, p0, Lcom/leidong/sdk/framework/view/common/CountDownView;->countDownUtil:Lcom/leidong/sdk/framework/model/CountDownTool;

    .line 21
    iget-object p2, p0, Lcom/leidong/sdk/framework/view/common/CountDownView;->countDownUtil:Lcom/leidong/sdk/framework/model/CountDownTool;

    new-instance v1, Lcom/leidong/sdk/framework/view/common/CountDownView$1;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/leidong/sdk/framework/view/common/CountDownView$1;-><init>(Lcom/leidong/sdk/framework/view/common/CountDownView;Landroid/widget/TextView;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/leidong/sdk/framework/model/CountDownTool;->setFeedBack(Lcom/leidong/sdk/framework/model/CountDownTool$CountDownFeedBack;)V

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/framework/view/common/CountDownView;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)I
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/leidong/sdk/framework/view/common/CountDownView;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method private getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)I
    .locals 2

    .line 58
    :try_start_0
    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 60
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    const-string p3, "CountDownView"

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8d44\u6e90\u672a\u627e\u5230\uff1aname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_type="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    :goto_0
    return p3
.end method


# virtual methods
.method public startCountDown()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/common/CountDownView;->countDownUtil:Lcom/leidong/sdk/framework/model/CountDownTool;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/model/CountDownTool;->startCountDown()V

    return-void
.end method

.method public stopCountDown()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/common/CountDownView;->countDownUtil:Lcom/leidong/sdk/framework/model/CountDownTool;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/model/CountDownTool;->stopCountDown()V

    return-void
.end method
