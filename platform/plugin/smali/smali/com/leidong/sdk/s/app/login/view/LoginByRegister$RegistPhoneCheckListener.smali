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

    .line 709
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 712
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2700(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2702(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;Z)Z

    .line 713
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2700(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 714
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2800(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/ImageView;

    move-result-object p1

    const-string v0, "leidong_agreement_checked"

    const-string v1, "drawable"

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    .line 715
    invoke-virtual {v2}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 714
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 716
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2900(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "leidong_regist_agreement_text"

    const-string v2, "color"

    iget-object v3, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    .line 718
    invoke-virtual {v3}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 717
    invoke-static {v1, v2, v3}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 716
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 720
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2800(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/ImageView;

    move-result-object p1

    const-string v0, "leidong_agreement_unchecked"

    const-string v1, "drawable"

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    .line 721
    invoke-virtual {v2}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 720
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 722
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->access$2900(Lcom/leidong/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "leidong_login_text_black"

    const-string v2, "color"

    iget-object v3, p0, Lcom/leidong/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByRegister;

    .line 724
    invoke-virtual {v3}, Lcom/leidong/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 723
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 722
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
