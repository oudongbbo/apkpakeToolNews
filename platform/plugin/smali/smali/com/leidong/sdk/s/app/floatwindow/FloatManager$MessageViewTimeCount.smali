.class Lcom/leidong/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;
.super Landroid/os/CountDownTimer;
.source "FloatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/floatwindow/FloatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageViewTimeCount"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;


# direct methods
.method public constructor <init>(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;JJ)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    .line 639
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 644
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1600(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$000(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1600(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1500(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1500(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$000(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;

    iget-object v2, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-direct {v1, v2}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;-><init>(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 650
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$000(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatClickListener;

    iget-object v2, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-direct {v1, v2}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatClickListener;-><init>(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1500(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->dismiss()V

    .line 652
    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$200(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;->start()Landroid/os/CountDownTimer;

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
