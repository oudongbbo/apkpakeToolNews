.class Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$1;
.super Ljava/lang/Object;
.source "LoginSwitchAccount.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->initPopWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$1;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

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

    .line 213
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$1;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$000(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$1;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$000(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$1;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$200(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$1;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {p2}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/leidong/sdk/framework/user/UserInfoBean;

    invoke-virtual {p2}, Lcom/leidong/sdk/framework/user/UserInfoBean;->getVname()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$1;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    iget-object p2, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$1;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {p2}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/leidong/sdk/framework/user/UserInfoBean;

    invoke-virtual {p2}, Lcom/leidong/sdk/framework/user/UserInfoBean;->getPwd()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$302(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$1;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    iget-object p2, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$1;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {p2}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/leidong/sdk/framework/user/UserInfoBean;

    invoke-virtual {p2}, Lcom/leidong/sdk/framework/user/UserInfoBean;->getUname()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$402(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$1;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    iget-object p2, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$1;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-static {p2}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$100(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/leidong/sdk/framework/user/UserInfoBean;

    invoke-virtual {p2}, Lcom/leidong/sdk/framework/user/UserInfoBean;->getVname()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$502(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
