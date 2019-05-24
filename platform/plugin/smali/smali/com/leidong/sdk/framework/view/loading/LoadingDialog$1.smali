.class Lcom/leidong/sdk/framework/view/loading/LoadingDialog$1;
.super Landroid/os/Handler;
.source "LoadingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/framework/view/loading/LoadingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/framework/view/loading/LoadingDialog;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog$1;->this$0:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 130
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 132
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 140
    :pswitch_0
    iget-object p1, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog$1;->this$0:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->access$202(Lcom/leidong/sdk/framework/view/loading/LoadingDialog;Z)Z

    .line 142
    iget-object p1, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog$1;->this$0:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->access$300(Lcom/leidong/sdk/framework/view/loading/LoadingDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog$1;->this$0:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->dismiss()V

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object p1, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog$1;->this$0:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->access$000(Lcom/leidong/sdk/framework/view/loading/LoadingDialog;)Lcom/leidong/sdk/framework/view/loading/LoadingSmile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/view/loading/LoadingSmile;->startAnim()V

    .line 136
    iget-object p1, p0, Lcom/leidong/sdk/framework/view/loading/LoadingDialog$1;->this$0:Lcom/leidong/sdk/framework/view/loading/LoadingDialog;

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog;->access$100(Lcom/leidong/sdk/framework/view/loading/LoadingDialog;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/leidong/sdk/framework/view/loading/LoadingDialog$1;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
