.class Lcom/leidong/sdk/s/app/LeiDemoActivity$10;
.super Ljava/lang/Object;
.source "LeiDemoActivity.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/LeiDemoActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
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

    .line 393
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$10;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 407
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$10;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 408
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 402
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$10;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 403
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 397
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$10;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    invoke-virtual {v0}, Lcom/leidong/sdk/s/app/LeiDemoActivity;->finish()V

    .line 398
    return-void
.end method