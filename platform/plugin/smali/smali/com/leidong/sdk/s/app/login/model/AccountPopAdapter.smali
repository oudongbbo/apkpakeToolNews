.class public Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountPopAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leidong/sdk/framework/user/UserInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/leidong/sdk/framework/user/UserInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->mAccountList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$200(Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->mAccountList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->mAccountList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->mAccountList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->mAccountList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->mAccountList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 60
    iget-object p2, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->mContext:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const-string p3, "leidong_login_account_more_item"

    const-string v0, "layout"

    iget-object v1, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {p3, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p3

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 64
    new-instance p3, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;-><init>(Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;)V

    const-string v0, "name"

    const-string v1, "id"

    .line 65
    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->access$002(Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const-string v0, "delete"

    const-string v1, "id"

    .line 67
    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p3, v0}, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->access$102(Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 69
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;

    .line 74
    :goto_0
    invoke-static {p3}, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->access$000(Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 75
    invoke-static {p3}, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->access$000(Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->mAccountList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/leidong/sdk/framework/user/UserInfoBean;

    invoke-virtual {v2}, Lcom/leidong/sdk/framework/user/UserInfoBean;->getVname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {p3}, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->access$100(Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 77
    invoke-static {p3}, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->access$100(Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p3

    new-instance v0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$1;-><init>(Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;I)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_1

    const-string p1, "leidong_sdk_listview_bg_gray"

    const-string p3, "drawable"

    .line 90
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, v0}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    const-string p1, "leidong_sdk_listview_bg_white"

    const-string p3, "drawable"

    .line 93
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, v0}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    return-object p2
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/leidong/sdk/framework/user/UserInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;->mAccountList:Ljava/util/List;

    return-void
.end method
