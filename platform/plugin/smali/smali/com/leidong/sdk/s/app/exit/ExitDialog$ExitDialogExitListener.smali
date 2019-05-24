.class Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogExitListener;
.super Ljava/lang/Object;
.source "ExitDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/exit/ExitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExitDialogExitListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/exit/ExitDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/exit/ExitDialog;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogExitListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 187
    iget-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogExitListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->access$002(Lcom/leidong/sdk/s/app/exit/ExitDialog;Z)Z

    .line 188
    iget-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogExitListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialog;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->access$100(Lcom/leidong/sdk/s/app/exit/ExitDialog;)Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitCallBack;->exit()V

    .line 189
    iget-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitDialogExitListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->dismiss()V

    return-void
.end method
