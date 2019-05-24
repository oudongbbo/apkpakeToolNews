.class Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogExitListener;
.super Ljava/lang/Object;
.source "ExitDialogForSecond.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExitDialogExitListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogExitListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 213
    iget-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogExitListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->access$002(Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;Z)Z

    .line 214
    iget-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogExitListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->access$100(Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;)Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;->exit()V

    .line 215
    iget-object p1, p0, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond$ExitDialogExitListener;->this$0:Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/app/exit/ExitDialogForSecond;->dismiss()V

    return-void
.end method
