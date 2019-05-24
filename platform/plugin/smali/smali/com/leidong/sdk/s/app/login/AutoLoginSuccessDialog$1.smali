.class Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog$1;
.super Ljava/lang/Object;
.source "AutoLoginSuccessDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog$1;->this$0:Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 84
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog$1;->this$0:Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog$1;->this$0:Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->access$000(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog$1;->this$0:Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;

    invoke-static {v1}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->access$100(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;->access$200(Lcom/leidong/sdk/s/app/login/AutoLoginSuccessDialog;Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method
