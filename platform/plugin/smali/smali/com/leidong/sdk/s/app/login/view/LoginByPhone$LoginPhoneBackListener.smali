.class Lcom/leidong/sdk/s/app/login/view/LoginByPhone$LoginPhoneBackListener;
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
    name = "LoginPhoneBackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    .line 232
    iput-object p1, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$LoginPhoneBackListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 236
    iget-object v0, p0, Lcom/leidong/sdk/s/app/login/view/LoginByPhone$LoginPhoneBackListener;->this$0:Lcom/leidong/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->loginMain:Lcom/leidong/sdk/s/app/login/view/LoginContent;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/login/view/LoginByPhone;->access$600(Lcom/leidong/sdk/s/app/login/view/LoginByPhone;)Lcom/leidong/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/login/view/LoginContent;->swtichToLoginHome()V

    .line 238
    return-void
.end method
