.class Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;
.super Ljava/lang/Object;
.source "LoginByAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PasswordStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    .line 311
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 314
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_password:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$400(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "pwd":Ljava/lang/String;
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->isShowPwd:Z
    invoke-static {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$1200(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_password:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$400(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 318
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->imageView1:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$1300(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    const-string v3, "leidong_login_icon_eye_close"

    const-string v4, "drawable"

    invoke-virtual {v2, v3, v4}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->login_account_password:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$400(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/EditText;

    move-result-object v1

    .line 321
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    .line 320
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 322
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->imageView1:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$1300(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    const-string v3, "leidong_login_icon_eye_open"

    const-string v4, "drawable"

    invoke-virtual {v2, v3, v4}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 324
    :goto_0
    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->isShowPwd:Z
    invoke-static {v2}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$1200(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    # setter for: Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->isShowPwd:Z
    invoke-static {v1, v2}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$1202(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;Z)Z

    .line 325
    return-void
.end method
