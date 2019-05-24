.class Lcom/leidong/sdk/m/views/ActivationDialog$1$1$1;
.super Ljava/lang/Object;
.source "ActivationDialog.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/views/ActivationDialog$1$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/leidong/sdk/m/views/ActivationDialog$1$1;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/views/ActivationDialog$1$1;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/leidong/sdk/m/views/ActivationDialog$1$1$1;->this$2:Lcom/leidong/sdk/m/views/ActivationDialog$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1

    .line 192
    iget-object p1, p0, Lcom/leidong/sdk/m/views/ActivationDialog$1$1$1;->this$2:Lcom/leidong/sdk/m/views/ActivationDialog$1$1;

    iget-object p1, p1, Lcom/leidong/sdk/m/views/ActivationDialog$1$1;->this$1:Lcom/leidong/sdk/m/views/ActivationDialog$1;

    iget-object p1, p1, Lcom/leidong/sdk/m/views/ActivationDialog$1;->this$0:Lcom/leidong/sdk/m/views/ActivationDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Lcom/leidong/sdk/m/views/ActivationDialog;->access$000(Lcom/leidong/sdk/m/views/ActivationDialog;ZLjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 177
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 180
    iget-object p1, p0, Lcom/leidong/sdk/m/views/ActivationDialog$1$1$1;->this$2:Lcom/leidong/sdk/m/views/ActivationDialog$1$1;

    iget-object p1, p1, Lcom/leidong/sdk/m/views/ActivationDialog$1$1;->this$1:Lcom/leidong/sdk/m/views/ActivationDialog$1;

    iget-object p1, p1, Lcom/leidong/sdk/m/views/ActivationDialog$1;->this$0:Lcom/leidong/sdk/m/views/ActivationDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/m/views/ActivationDialog;->dismiss()V

    goto :goto_0

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/m/views/ActivationDialog$1$1$1;->this$2:Lcom/leidong/sdk/m/views/ActivationDialog$1$1;

    iget-object p1, p1, Lcom/leidong/sdk/m/views/ActivationDialog$1$1;->this$1:Lcom/leidong/sdk/m/views/ActivationDialog$1;

    iget-object p1, p1, Lcom/leidong/sdk/m/views/ActivationDialog$1;->this$0:Lcom/leidong/sdk/m/views/ActivationDialog;

    const-string v1, "\u6fc0\u6d3b\u5931\u8d25"

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/m/views/ActivationDialog;->access$000(Lcom/leidong/sdk/m/views/ActivationDialog;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method
