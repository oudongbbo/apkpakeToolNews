.class Lcom/leidong/sdk/s/app/login/AutoLoginDialog$2;
.super Ljava/lang/Object;
.source "AutoLoginDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/AutoLoginDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/AutoLoginDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/AutoLoginDialog;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginDialog$2;->this$0:Lcom/leidong/sdk/s/app/login/AutoLoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 99
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginDialog$2;->this$0:Lcom/leidong/sdk/s/app/login/AutoLoginDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/app/login/AutoLoginDialog;->dismiss()V

    .line 100
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginDialog$2;->this$0:Lcom/leidong/sdk/s/app/login/AutoLoginDialog;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/login/AutoLoginDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 101
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/AutoLoginDialog$2;->this$0:Lcom/leidong/sdk/s/app/login/AutoLoginDialog;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/AutoLoginDialog;->access$300(Lcom/leidong/sdk/s/app/login/AutoLoginDialog;)Lcom/leidong/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/leidong/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;->clickSwitch()V

    return-void
.end method
