.class Lcom/leidong/sdk/s/app/login/view/LoginByPhone$PhoneClearLisener;
.super Ljava/lang/Object;
.source "LoginByPhone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneClearLisener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    .line 243
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$PhoneClearLisener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 247
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$PhoneClearLisener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->login_phone_phonenumber_input:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$500(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    return-void
.end method
