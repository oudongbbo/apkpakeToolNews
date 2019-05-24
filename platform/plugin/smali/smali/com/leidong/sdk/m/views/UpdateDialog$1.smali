.class Lcom/leidong/sdk/m/views/UpdateDialog$1;
.super Ljava/lang/Object;
.source "UpdateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/views/UpdateDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/views/UpdateDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/views/UpdateDialog;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$1;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 103
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$1;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$000(Lcom/leidong/sdk/m/views/UpdateDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$1;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$002(Lcom/leidong/sdk/m/views/UpdateDialog;Z)Z

    .line 105
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$1;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$200(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog$1;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    const-string v1, "leidong_update_start"

    invoke-static {v0, v1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$100(Lcom/leidong/sdk/m/views/UpdateDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$1;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog$1;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {v0}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$300(Lcom/leidong/sdk/m/views/UpdateDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/m/views/UpdateDialog;->stopDownload(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$1;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog$1;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {v0}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$300(Lcom/leidong/sdk/m/views/UpdateDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/m/views/UpdateDialog;->checkDownload(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
