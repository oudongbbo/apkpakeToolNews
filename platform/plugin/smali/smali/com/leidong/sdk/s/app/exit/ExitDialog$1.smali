.class Lcom/leidong/sdk/s/app/exit/ExitDialog$1;
.super Ljava/lang/Object;
.source "ExitDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/exit/ExitDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/exit/ExitDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/exit/ExitDialog;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog$1;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog$1;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialog;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->access$000(Lcom/leidong/sdk/s/app/exit/ExitDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialog$1;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialog;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/exit/ExitDialog;->access$100(Lcom/leidong/sdk/s/app/exit/ExitDialog;)Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/leidong/sdk/s/app/exit/ExitDialog$ExitCallBack;->close()V

    :goto_0
    return-void
.end method
