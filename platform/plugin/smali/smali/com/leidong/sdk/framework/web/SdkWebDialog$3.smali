.class Lcom/leidong/sdk/framework/web/SdkWebDialog$3;
.super Landroid/os/Handler;
.source "SdkWebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/framework/web/SdkWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/framework/web/SdkWebDialog;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$3;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4

    .line 181
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 182
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$3;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    invoke-static {p1}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->access$200(Lcom/leidong/sdk/framework/web/SdkWebDialog;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u5373\u5c06\u5173\u95ed.."

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 184
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$3;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    iget-object p1, p1, Lcom/leidong/sdk/framework/web/SdkWebDialog;->closeHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
