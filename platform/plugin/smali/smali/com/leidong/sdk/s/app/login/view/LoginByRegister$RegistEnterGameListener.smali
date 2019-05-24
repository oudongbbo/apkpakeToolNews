.class Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistEnterGameListener;
.super Ljava/lang/Object;
.source "LoginByRegister.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RegistEnterGameListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 600
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$1300(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 604
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$600(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 605
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$1400(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 606
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$1500(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 608
    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistEnterGameListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {v2, p1, v0, v1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$1600(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
