.class Lcom/leidong/sdk/s/app/login/BindDialog$1;
.super Landroid/os/Handler;
.source "BindDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/login/BindDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/BindDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/BindDialog;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/BindDialog$1;->this$0:Lcom/leidong/sdk/s/app/login/BindDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 87
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/BindDialog$1;->this$0:Lcom/leidong/sdk/s/app/login/BindDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/app/login/BindDialog;->dismiss()V

    return-void
.end method
