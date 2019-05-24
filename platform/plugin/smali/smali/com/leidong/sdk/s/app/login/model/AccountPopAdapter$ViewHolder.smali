.class public Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AccountPopAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private delete:Landroid/widget/ImageView;

.field private name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;


# direct methods
.method public constructor <init>(Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->this$0:Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->name:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->name:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/model/AccountPopAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    return-object p1
.end method
