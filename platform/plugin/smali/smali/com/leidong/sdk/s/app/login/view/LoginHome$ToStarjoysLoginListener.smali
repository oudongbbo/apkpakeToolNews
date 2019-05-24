.class Lcom/leidong/sdk/s/app/login/view/LoginHome$ToStarjoysLoginListener;
.super Ljava/lang/Object;
.source "LoginHome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/login/view/LoginHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToStarjoysLoginListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginHome;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginHome;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginHome$ToStarjoysLoginListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginHome$ToStarjoysLoginListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginHome;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/login/view/LoginHome;->access$000(Lcom/leidong/sdk/s/app/login/view/LoginHome;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->swtichToAccount()V

    return-void
.end method
