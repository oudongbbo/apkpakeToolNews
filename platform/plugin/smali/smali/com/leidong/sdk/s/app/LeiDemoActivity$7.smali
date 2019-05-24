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

    .line 233
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$7;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 237
    new-instance p1, Lcom/leidong/sdk/framework/user/AccountManager;

    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$7;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    invoke-direct {p1, v0}, Lcom/leidong/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$7;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/framework/user/AccountManager;->cleanAccountInfoCache(Landroid/content/Context;)V

    .line 239
    iget-object p1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$7;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    const-string v0, "\u6e05\u9664\u6570\u636e\u6210\u529f"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
