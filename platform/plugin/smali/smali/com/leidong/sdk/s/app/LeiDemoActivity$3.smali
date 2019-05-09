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
    .param p1, "this$0"    # Lcom/leidong/sdk/s/app/LeiDemoActivity;

    .line 82
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$3;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 121
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$3;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    const-string v1, "\u6ce8\u9500\u5931\u8d25\uff0c\u65e0\u9700\u64cd\u4f5c"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 116
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 87
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$3;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    const-string v1, "\u6ce8\u9500\u6210\u529f\uff0c\u8bf7\u91cd\u65b0\u53d1\u8d77\u767b\u5f55\u64cd\u4f5c."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$3;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    # getter for: Lcom/leidong/sdk/s/app/LeiDemoActivity;->mayaCore:Lcom/leidong/sdk/s/app/LeiSdkCore;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/LeiDemoActivity;->access$000(Lcom/leidong/sdk/s/app/LeiDemoActivity;)Lcom/leidong/sdk/s/app/LeiSdkCore;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$3;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    new-instance v2, Lcom/leidong/sdk/s/app/LeiDemoActivity$3$1;

    invoke-direct {v2, p0}, Lcom/leidong/sdk/s/app/LeiDemoActivity$3$1;-><init>(Lcom/leidong/sdk/s/app/LeiDemoActivity$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/leidong/sdk/s/app/LeiSdkCore;->userSwitch(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    .line 111
    return-void
.end method
