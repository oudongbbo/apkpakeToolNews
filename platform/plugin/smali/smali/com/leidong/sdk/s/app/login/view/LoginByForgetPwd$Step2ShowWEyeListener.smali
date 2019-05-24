.class Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;
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
    name = "Step2ShowWEyeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 403
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$900(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 405
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$1600(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 406
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$900(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 407
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$1700(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    const-string v1, "leidong_login_icon_eye_close"

    const-string v2, "drawable"

    invoke-virtual {v0, v1, v2}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 410
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$900(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 411
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$1700(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    const-string v1, "leidong_login_icon_eye_open"

    const-string v2, "drawable"

    invoke-virtual {v0, v1, v2}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 413
    :goto_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$1600(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$1602(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;Z)Z

    return-void
.end method
