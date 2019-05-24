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

    .line 336
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 340
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$400(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 342
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$1200(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 343
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$400(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 344
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$1300(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    const-string v1, "leidong_login_icon_eye_close"

    const-string v2, "drawable"

    invoke-virtual {v0, v1, v2}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 346
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$400(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/EditText;

    move-result-object p1

    .line 347
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    .line 346
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 348
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$1300(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    const-string v1, "leidong_login_icon_eye_open"

    const-string v2, "drawable"

    invoke-virtual {v0, v1, v2}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 350
    :goto_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByAccount;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$1200(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByAccount;->access$1202(Lcom/leidong/sdk/s/app/login/view/LoginByAccount;Z)Z

    return-void
.end method
