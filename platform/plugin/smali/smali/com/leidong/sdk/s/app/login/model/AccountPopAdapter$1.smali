.class Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$1;
.super Ljava/lang/Object;
.source "AccountPopAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;I)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$1;->this$0:Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;

    iput p2, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 82
    new-instance p1, Lcom/leidong/sdk/framework/user/AccountManager;

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$1;->this$0:Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->access$200(Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/leidong/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$1;->this$0:Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->access$200(Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$1;->this$0:Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;

    invoke-static {v1}, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->access$300(Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$1;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leidong/sdk/framework/user/UserInfoBean;

    invoke-virtual {v1}, Lcom/leidong/sdk/framework/user/UserInfoBean;->getUname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/leidong/sdk/framework/user/AccountManager;->delAccountFromFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$1;->this$0:Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->access$300(Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$1;->this$0:Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->notifyDataSetChanged()V

    return-void
.end method
