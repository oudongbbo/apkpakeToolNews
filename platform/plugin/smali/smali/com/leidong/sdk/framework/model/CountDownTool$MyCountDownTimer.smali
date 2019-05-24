.class Lcom/leidong/sdk/framework/model/CountDownTool$MyCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "CountDownTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/framework/model/CountDownTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCountDownTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/framework/model/CountDownTool;


# direct methods
.method public constructor <init>(Lcom/leidong/sdk/framework/model/CountDownTool;JJ)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/leidong/sdk/framework/model/CountDownTool$MyCountDownTimer;->this$0:Lcom/leidong/sdk/framework/model/CountDownTool;

    .line 44
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/leidong/sdk/framework/model/CountDownTool$MyCountDownTimer;->this$0:Lcom/leidong/sdk/framework/model/CountDownTool;

    invoke-static {v0}, Lcom/leidong/sdk/framework/model/CountDownTool;->access$000(Lcom/leidong/sdk/framework/model/CountDownTool;)Lcom/leidong/sdk/framework/model/CountDownTool$CountDownFeedBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/leidong/sdk/framework/model/CountDownTool$MyCountDownTimer;->this$0:Lcom/leidong/sdk/framework/model/CountDownTool;

    invoke-static {v0}, Lcom/leidong/sdk/framework/model/CountDownTool;->access$000(Lcom/leidong/sdk/framework/model/CountDownTool;)Lcom/leidong/sdk/framework/model/CountDownTool$CountDownFeedBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/leidong/sdk/framework/model/CountDownTool$CountDownFeedBack;->onEnd()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/leidong/sdk/framework/model/CountDownTool$MyCountDownTimer;->this$0:Lcom/leidong/sdk/framework/model/CountDownTool;

    invoke-static {v0}, Lcom/leidong/sdk/framework/model/CountDownTool;->access$000(Lcom/leidong/sdk/framework/model/CountDownTool;)Lcom/leidong/sdk/framework/model/CountDownTool$CountDownFeedBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/leidong/sdk/framework/model/CountDownTool$MyCountDownTimer;->this$0:Lcom/leidong/sdk/framework/model/CountDownTool;

    invoke-static {v0}, Lcom/leidong/sdk/framework/model/CountDownTool;->access$000(Lcom/leidong/sdk/framework/model/CountDownTool;)Lcom/leidong/sdk/framework/model/CountDownTool$CountDownFeedBack;

    move-result-object v0

    long-to-int p1, p1

    div-int/lit16 p1, p1, 0x3e8

    invoke-interface {v0, p1}, Lcom/leidong/sdk/framework/model/CountDownTool$CountDownFeedBack;->onTick(I)V

    :cond_0
    return-void
.end method
