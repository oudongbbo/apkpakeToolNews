.class Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1$1;
.super Ljava/lang/Object;
.source "LoginByForgetPwd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;->onSuccess(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;Landroid/os/Bundle;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1$1;->this$3:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;

    iput-object p2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1$1;->this$3:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1$1;->val$bundle:Landroid/os/Bundle;

    const-string v2, "mobile"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$102(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1$1;->this$3:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1$1;->this$3:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$300(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1$1;->this$3:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1$1;->this$3:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;

    iget-object v2, v2, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1;

    iget-object v2, v2, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2;

    iget-object v2, v2, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {v2}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 186
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1$1;->this$3:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;

    iget-object v2, v2, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;->this$2:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1;

    iget-object v2, v2, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2$1;->this$1:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2;

    iget-object v2, v2, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd$2;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-static {v2}, Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;->access$400(Lcom/leidong/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "*****"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
