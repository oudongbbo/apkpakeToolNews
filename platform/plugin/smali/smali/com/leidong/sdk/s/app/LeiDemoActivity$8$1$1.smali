.class Lcom/leidong/sdk/s/app/LeiDemoActivity$8$1$1;
.super Ljava/lang/Object;
.source "LeiDemoActivity.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/LeiDemoActivity$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/leidong/sdk/s/app/LeiDemoActivity$8$1;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/LeiDemoActivity$8$1;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiDemoActivity$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiDemoActivity$8$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiDemoActivity$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiDemoActivity$8;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiDemoActivity$8;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiDemoActivity$8$1;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiDemoActivity$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiDemoActivity$8;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiDemoActivity$8;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 0

    .line 261
    iget-object p1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$8$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiDemoActivity$8$1;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/LeiDemoActivity$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiDemoActivity$8;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/LeiDemoActivity$8;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    invoke-virtual {p1}, Lcom/leidong/sdk/s/app/LeiDemoActivity;->finish()V

    return-void
.end method
