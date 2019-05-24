.class Lcom/leidong/sdk/framework/pay/PayWebDialog$3;
.super Landroid/os/Handler;
.source "PayWebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/framework/pay/PayWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/framework/pay/PayWebDialog;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$3;->this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 195
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$3;->this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;

    invoke-static {v0}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->access$000(Lcom/leidong/sdk/framework/pay/PayWebDialog;)Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$3;->this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;

    invoke-static {v0}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->access$000(Lcom/leidong/sdk/framework/pay/PayWebDialog;)Lcom/leidong/sdk/framework/web/webview/WebViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$3;->this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$3;->this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;

    invoke-virtual {v0}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->dismiss()V

    .line 209
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 222
    :pswitch_0
    iget-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$3;->this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;

    const-string v0, "\u652f\u4ed8\u8df3\u8f6c"

    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->access$600(Lcom/leidong/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V

    goto :goto_1

    .line 219
    :pswitch_1
    iget-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$3;->this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;

    const-string v0, "leidong_pay_state_cancel"

    iget-object v1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$3;->this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;

    invoke-static {v1}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->access$300(Lcom/leidong/sdk/framework/pay/PayWebDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->access$500(Lcom/leidong/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V

    goto :goto_1

    .line 213
    :pswitch_2
    iget-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$3;->this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;

    invoke-static {p1}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->access$200(Lcom/leidong/sdk/framework/pay/PayWebDialog;)V

    goto :goto_1

    .line 216
    :pswitch_3
    iget-object p1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$3;->this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;

    const-string v0, "leidong_pay_state_fail"

    iget-object v1, p0, Lcom/leidong/sdk/framework/pay/PayWebDialog$3;->this$0:Lcom/leidong/sdk/framework/pay/PayWebDialog;

    invoke-static {v1}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->access$300(Lcom/leidong/sdk/framework/pay/PayWebDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/pay/PayWebDialog;->access$400(Lcom/leidong/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
