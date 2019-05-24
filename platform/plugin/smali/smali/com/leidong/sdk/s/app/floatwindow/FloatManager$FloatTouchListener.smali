.class Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;
.super Ljava/lang/Object;
.source "FloatManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/floatwindow/FloatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FloatTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 188
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 208
    :pswitch_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$502(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;F)F

    .line 209
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$602(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;F)F

    .line 211
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    iget-object p2, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {p2}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$500(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)F

    move-result p2

    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$300(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)F

    move-result v0

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$600(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)F

    move-result v0

    iget-object v1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {v1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$400(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {p1, p2, v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1000(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;FF)V

    goto/16 :goto_1

    .line 216
    :pswitch_1
    iget-object p2, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {p2, p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1100(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 218
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$000(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto/16 :goto_1

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1200(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 223
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    iget-object p2, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {p2}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1300(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$502(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;F)F

    goto :goto_0

    .line 225
    :cond_1
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$502(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;F)F

    .line 228
    :goto_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    iget-object p2, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {p2}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$500(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)F

    move-result p2

    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1400(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    invoke-static {p1, p2, v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1000(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;FF)V

    .line 231
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$200(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 232
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$200(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;->start()Landroid/os/CountDownTimer;

    goto :goto_1

    .line 192
    :pswitch_2
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$200(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 193
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$200(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;->cancel()V

    .line 196
    :cond_2
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$302(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;F)F

    .line 197
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {p1, v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$402(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;F)F

    .line 198
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$502(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;F)F

    .line 199
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-static {p1, v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$602(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;F)F

    .line 200
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$702(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;F)F

    .line 201
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$802(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;F)F

    .line 203
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$900(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;Z)V

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
