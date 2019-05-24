.class Lcom/leidong/sdk/s/app/login/view/LoginByPhone$2;
.super Ljava/lang/Object;
.source "LoginByPhone.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->initPopWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$2;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 207
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$2;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$2;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$2;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$500(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$2;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    iget-object p2, p2, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->Phonenumber:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/leidong/sdk/framework/user/UserInfoBean;

    invoke-virtual {p2}, Lcom/leidong/sdk/framework/user/UserInfoBean;->getVname()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
