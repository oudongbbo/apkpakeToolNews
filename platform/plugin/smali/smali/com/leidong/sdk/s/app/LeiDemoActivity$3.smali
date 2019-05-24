.class Lcom/leidong/sdk/s/app/LeiDemoActivity$3;
.super Ljava/lang/Object;
.source "LeiDemoActivity.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;


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

    .line 82
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$3;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 2

    .line 115
    iget-object p1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$3;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    const-string v0, "\u6ce8\u9500\u5931\u8d25\uff0c\u65e0\u9700\u64cd\u4f5c"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2

    .line 87
    iget-object p1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$3;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    const-string v0, "\u6ce8\u9500\u6210\u529f\uff0c\u8bf7\u91cd\u65b0\u53d1\u8d77\u767b\u5f55\u64cd\u4f5c."

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 89
    iget-object p1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$3;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/LeiDemoActivity;->access$000(Lcom/leidong/sdk/s/app/LeiDemoActivity;)Lcom/leidong/sdk/s/app/LeiSdkCore;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$3;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    new-instance v1, Lcom/leidong/sdk/s/app/LeiDemoActivity$3$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/LeiDemoActivity$3$1;-><init>(Lcom/leidong/sdk/s/app/LeiDemoActivity$3;)V

    invoke-virtual {p1, v0, v1}, Lcom/leidong/sdk/s/app/LeiSdkCore;->userSwitch(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    return-void
.end method
