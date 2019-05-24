.class Lcom/leidong/sdk/s/app/login/LoginDialog$1;
.super Landroid/os/Handler;
.source "LoginDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/login/LoginDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/LoginDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/LoginDialog;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog$1;->this$0:Lcom/leidong/sdk/s/app/login/LoginDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 124
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog$1;->this$0:Lcom/leidong/sdk/s/app/login/LoginDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/app/login/LoginDialog;->dismiss()V

    .line 125
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog$1;->this$0:Lcom/leidong/sdk/s/app/login/LoginDialog;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/LoginDialog;->access$000(Lcom/leidong/sdk/s/app/login/LoginDialog;)Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/LoginDialog$1;->this$0:Lcom/leidong/sdk/s/app/login/LoginDialog;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/LoginDialog;->access$000(Lcom/leidong/sdk/s/app/login/LoginDialog;)Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;->onCancel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
