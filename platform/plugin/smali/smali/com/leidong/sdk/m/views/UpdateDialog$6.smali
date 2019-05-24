.class Lcom/leidong/sdk/m/views/UpdateDialog$6;
.super Ljava/lang/Object;
.source "UpdateDialog.java"

# interfaces
.implements Lcom/leidong/open/main/OpenDownloadUtils$OpenDownLoadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/views/UpdateDialog;->startDownloadApk(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

.field final synthetic val$down_name:Ljava/lang/String;

.field final synthetic val$down_url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/views/UpdateDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$6;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    iput-object p2, p0, Lcom/leidong/sdk/m/views/UpdateDialog$6;->val$down_url:Ljava/lang/String;

    iput-object p3, p0, Lcom/leidong/sdk/m/views/UpdateDialog$6;->val$down_name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog$6;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$1500(Lcom/leidong/sdk/m/views/UpdateDialog;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog$6;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    iget-object v0, v0, Lcom/leidong/sdk/m/views/UpdateDialog;->UIhandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 382
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$6;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$002(Lcom/leidong/sdk/m/views/UpdateDialog;Z)Z

    .line 383
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$6;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$200(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog$6;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    const-string v1, "leidong_update_start"

    invoke-static {v0, v1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$100(Lcom/leidong/sdk/m/views/UpdateDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLoading(JJJF)V
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog$6;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d\u4e2d:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "  \u767e\u5206\u6bd4\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\u901f\u5ea6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$1500(Lcom/leidong/sdk/m/views/UpdateDialog;Ljava/lang/String;)V

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 373
    iget-object p2, p0, Lcom/leidong/sdk/m/views/UpdateDialog$6;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    iget-object p2, p2, Lcom/leidong/sdk/m/views/UpdateDialog;->UIhandler:Landroid/os/Handler;

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog$6;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d\u5f00\u59cb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/leidong/sdk/m/views/UpdateDialog$6;->val$down_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$1500(Lcom/leidong/sdk/m/views/UpdateDialog;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog$6;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    iget-object v0, v0, Lcom/leidong/sdk/m/views/UpdateDialog;->UIhandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 4

    .line 360
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog$6;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d\u6210\u529f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$1500(Lcom/leidong/sdk/m/views/UpdateDialog;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog$6;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {v0}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$600(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$6;->val$down_name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/leidong/sdk/m/controller/UpdateManager;->saveFileLength(Landroid/content/Context;Ljava/lang/String;J)V

    .line 363
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog$6;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    iget-object v0, v0, Lcom/leidong/sdk/m/views/UpdateDialog;->UIhandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
