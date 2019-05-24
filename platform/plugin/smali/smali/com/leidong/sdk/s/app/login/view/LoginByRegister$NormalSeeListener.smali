.class Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;
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
    name = "NormalSeeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 652
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$1800(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 654
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2000(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 655
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$1800(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;

    move-result-object p1

    .line 656
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    .line 655
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 657
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2100(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    const-string v1, "leidong_login_icon_eye_close"

    const-string v2, "drawable"

    .line 658
    invoke-virtual {v0, v1, v2}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 657
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 660
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$1800(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;

    move-result-object p1

    .line 661
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    .line 660
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 662
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2100(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    const-string v1, "leidong_login_icon_eye_open"

    const-string v2, "drawable"

    .line 663
    invoke-virtual {v0, v1, v2}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 662
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 665
    :goto_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2000(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2002(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;Z)Z

    return-void
.end method
