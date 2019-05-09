.class Lcom/leidong/sdk/s/app/LeiDemoActivity$7;
.super Ljava/lang/Object;
.source "LeiDemoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/LeiDemoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/LeiDemoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/s/app/LeiDemoActivity;

    .line 233
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$7;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 237
    new-instance v0, Lcom/leidong/sdk/framework/user/AccountManager;

    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$7;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    invoke-direct {v0, v1}, Lcom/leidong/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$7;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/user/AccountManager;->cleanAccountInfoCache(Landroid/content/Context;)V

    .line 239
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$7;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    const-string v1, "\u6e05\u9664\u6570\u636e\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 241
    return-void
.end method
