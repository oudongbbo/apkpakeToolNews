.class Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog$2;
.super Landroid/os/Handler;
.source "AutoLoginSuccessDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog$2;->this$0:Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 118
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 120
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 130
    :pswitch_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog$2;->this$0:Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->dismiss()V

    goto :goto_0

    .line 123
    :pswitch_1
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog$2;->this$0:Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog$2;->this$0:Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->access$000(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog$2;->this$0:Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;

    invoke-static {v1}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->access$100(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->access$300(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;Landroid/view/View;Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 125
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog$2;->this$0:Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->access$400(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x12c

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog$2;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
