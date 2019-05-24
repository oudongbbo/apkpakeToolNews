.class Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2SubmmitListener;
.super Ljava/lang/Object;
.source "LoginByForgetPwd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Step2SubmmitListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2SubmmitListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 373
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2SubmmitListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$1400(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 378
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2SubmmitListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$900(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 379
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2SubmmitListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$1000(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2SubmmitListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2SubmmitListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {v2}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$1500(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
