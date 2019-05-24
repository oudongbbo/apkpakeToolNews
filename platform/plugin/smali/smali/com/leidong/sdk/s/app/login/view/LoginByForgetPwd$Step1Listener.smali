.class Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step1Listener;
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
    name = "Step1Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step1Listener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 282
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step1Listener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$600(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step1Listener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$700(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 288
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step1Listener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {v0, p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$800(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;Ljava/lang/String;)V

    return-void
.end method
