.class Lcom/leidong/sdk/s/app/LeiDemoActivity$1;
.super Ljava/lang/Object;
.source "LeiDemoActivity.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/ResultCallback;


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

    .line 40
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$1;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$1;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u521d\u59cb\u5316\u5931\u8d25:"

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

.method public onSuccess()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$1;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    const-string v1, "\u521d\u59cb\u5316\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
