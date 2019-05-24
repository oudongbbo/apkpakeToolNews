.class Lcom/leidong/sdk/m/controller/MsdkManager$14$1$1;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/MsdkManager$14$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/leidong/sdk/m/controller/MsdkManager$14$1;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/MsdkManager$14$1;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$14$1$1;->this$2:Lcom/leidong/sdk/m/controller/MsdkManager$14$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    .line 659
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$14$1$1;->this$2:Lcom/leidong/sdk/m/controller/MsdkManager$14$1;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/MsdkManager$14$1;->this$1:Lcom/leidong/sdk/m/controller/MsdkManager$14;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/MsdkManager$14;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-static {p1, p2}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$1000(Lcom/leidong/sdk/m/controller/MsdkManager;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 655
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$14$1$1;->this$2:Lcom/leidong/sdk/m/controller/MsdkManager$14$1;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/MsdkManager$14$1;->this$1:Lcom/leidong/sdk/m/controller/MsdkManager$14;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/MsdkManager$14;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/MsdkManager;->initHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$14$1$1;->this$2:Lcom/leidong/sdk/m/controller/MsdkManager$14$1;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/MsdkManager$14$1;->this$1:Lcom/leidong/sdk/m/controller/MsdkManager$14;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/MsdkManager$14;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/MsdkManager;->initHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$14$1$1;->this$2:Lcom/leidong/sdk/m/controller/MsdkManager$14$1;

    iget-object v1, v1, Lcom/leidong/sdk/m/controller/MsdkManager$14$1;->this$1:Lcom/leidong/sdk/m/controller/MsdkManager$14;

    iget-boolean v1, v1, Lcom/leidong/sdk/m/controller/MsdkManager$14;->val$ifShowSplash:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
