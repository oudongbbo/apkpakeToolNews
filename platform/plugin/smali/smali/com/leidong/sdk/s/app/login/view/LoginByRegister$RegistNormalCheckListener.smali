.class Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistNormalCheckListener;
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
    name = "RegistNormalCheckListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V
    .locals 0

    .line 689
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistNormalCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 692
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistNormalCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistNormalCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2400(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2402(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;Z)Z

    .line 693
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistNormalCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2400(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 694
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistNormalCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2500(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/ImageView;

    move-result-object p1

    const-string v0, "leidong_agreement_checked"

    const-string v1, "drawable"

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistNormalCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    .line 695
    invoke-virtual {v2}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 694
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 696
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistNormalCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2600(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistNormalCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "leidong_regist_agreement_text"

    const-string v2, "color"

    iget-object v3, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistNormalCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    .line 698
    invoke-virtual {v3}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 697
    invoke-static {v1, v2, v3}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 696
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 700
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistNormalCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2500(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/ImageView;

    move-result-object p1

    const-string v0, "leidong_agreement_unchecked"

    const-string v1, "drawable"

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistNormalCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    .line 701
    invoke-virtual {v2}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 700
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 702
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistNormalCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2600(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistNormalCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "leidong_login_text_black"

    const-string v2, "color"

    iget-object v3, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistNormalCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    .line 704
    invoke-virtual {v3}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 703
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 702
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
