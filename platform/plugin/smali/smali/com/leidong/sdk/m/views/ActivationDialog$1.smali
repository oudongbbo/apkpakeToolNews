.class Lcom/leidong/sdk/m/views/ActivationDialog$1;
.super Ljava/lang/Object;
.source "ActivationDialog.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/views/ActivationDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/views/ActivationDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/views/ActivationDialog;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/leidong/sdk/m/views/ActivationDialog$1;->this$0:Lcom/leidong/sdk/m/views/ActivationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2

    .line 207
    iget-object p1, p0, Lcom/leidong/sdk/m/views/ActivationDialog$1;->this$0:Lcom/leidong/sdk/m/views/ActivationDialog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6fc0\u6d3b\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Lcom/leidong/sdk/m/views/ActivationDialog;->access$000(Lcom/leidong/sdk/m/views/ActivationDialog;ZLjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/leidong/sdk/m/views/ActivationDialog$1;->this$0:Lcom/leidong/sdk/m/views/ActivationDialog;

    invoke-static {v0}, Lcom/leidong/sdk/m/views/ActivationDialog;->access$100(Lcom/leidong/sdk/m/views/ActivationDialog;)Lcom/leidong/sdk/m/http/MRepManager;

    move-result-object v0

    new-instance v1, Lcom/leidong/sdk/m/views/ActivationDialog$1$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/m/views/ActivationDialog$1$1;-><init>(Lcom/leidong/sdk/m/views/ActivationDialog$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/m/http/MRepManager;->handleRepContent(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method
