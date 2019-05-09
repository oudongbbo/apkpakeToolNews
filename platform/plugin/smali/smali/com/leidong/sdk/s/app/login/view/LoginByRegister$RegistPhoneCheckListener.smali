.class Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;
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
    name = "RegistPhoneCheckListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    .line 708
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 711
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->isPhoneAgreementchecked:Z
    invoke-static {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2700(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    # setter for: Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->isPhoneAgreementchecked:Z
    invoke-static {v0, v1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2702(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;Z)Z

    .line 712
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->isPhoneAgreementchecked:Z
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2700(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_checkBox:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2800(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "leidong_agreement_checked"

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    .line 714
    invoke-virtual {v3}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 713
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 715
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_agreement_tips:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2900(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-virtual {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "leidong_regist_agreement_text"

    const-string v3, "color"

    iget-object v4, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    .line 717
    invoke-virtual {v4}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 716
    invoke-static {v2, v3, v4}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 715
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_checkBox:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2800(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "leidong_agreement_unchecked"

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    .line 720
    invoke-virtual {v3}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 719
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 721
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->login_regist_agreement_tips:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2900(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-virtual {v1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "leidong_login_text_black"

    const-string v3, "color"

    iget-object v4, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    .line 723
    invoke-virtual {v4}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    .line 722
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 721
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 725
    :goto_0
    return-void
.end method
