.class Lcom/leidong/sdk/s/app/floatwindow/FloatManager$1;
.super Landroid/os/Handler;
.source "FloatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/floatwindow/FloatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 343
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 385
    :pswitch_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {p1, v1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$900(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;Z)V

    goto/16 :goto_0

    .line 372
    :pswitch_1
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1700(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;

    move-result-object p1

    const-string v1, "leidong_left_popwin_anim_style"

    const-string v3, "style"

    iget-object v4, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    .line 373
    invoke-static {v4}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1600(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 372
    invoke-virtual {p1, v1}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->setAnimationStyle(I)V

    .line 377
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1700(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;

    move-result-object p1

    iget-object v1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {v1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$000(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1, v2, v0, v2}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->showOnAnchor(Landroid/view/View;IIZ)V

    .line 380
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1700(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->update()V

    goto :goto_0

    .line 362
    :pswitch_2
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1700(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;

    move-result-object p1

    const-string v0, "leidong_right_popwin_anim_style"

    const-string v3, "style"

    iget-object v4, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    .line 363
    invoke-static {v4}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1600(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 362
    invoke-virtual {p1, v0}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->setAnimationStyle(I)V

    .line 365
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1700(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$000(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v1, v2}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->showOnAnchor(Landroid/view/View;IIZ)V

    .line 367
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1700(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->update()V

    goto :goto_0

    .line 355
    :pswitch_3
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1500(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;

    move-result-object p1

    iget-object v1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {v1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$000(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1, v2, v0, v2}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->showOnAnchor(Landroid/view/View;IIZ)V

    .line 357
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1500(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->update()V

    goto :goto_0

    .line 348
    :pswitch_4
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1500(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$000(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v1, v2}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->showOnAnchor(Landroid/view/View;IIZ)V

    .line 350
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$1;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1500(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->update()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
