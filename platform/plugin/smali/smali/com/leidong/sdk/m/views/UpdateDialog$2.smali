.class Lcom/leidong/sdk/m/views/UpdateDialog$2;
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

    .line 114
    iput-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$2;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 120
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$2;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog$2;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {v0}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$300(Lcom/leidong/sdk/m/views/UpdateDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/m/views/UpdateDialog;->checkDownload(Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$2;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$400(Lcom/leidong/sdk/m/views/UpdateDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$2;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$500(Lcom/leidong/sdk/m/views/UpdateDialog;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$2;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->dismiss()V

    :goto_0
    return-void
.end method
