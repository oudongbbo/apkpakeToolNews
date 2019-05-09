.class Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToOtherAccountListener;
.super Ljava/lang/Object;
.source "LoginSwitchAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToOtherAccountListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    .line 297
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToOtherAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .line 300
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount$ToOtherAccountListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->father:Lcom/leidong/sdk/s/app/login/view/LoginContent;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;->access$1000(Lcom/leidong/sdk/s/app/login/view/LoginSwitchAccount;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->swtichToLoginHome()V

    .line 301
    return-void
.end method
