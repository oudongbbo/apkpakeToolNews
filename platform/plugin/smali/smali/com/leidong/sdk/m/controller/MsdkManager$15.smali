.class Lcom/leidong/sdk/m/controller/MsdkManager$15;
.super Landroid/os/Handler;
.source "MsdkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/m/controller/MsdkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/controller/MsdkManager;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/MsdkManager;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$15;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 692
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 694
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$15;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-static {v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$600(Lcom/leidong/sdk/m/controller/MsdkManager;)Lcom/leidong/sdk/m/http/MReqManager;

    move-result-object v0

    const-string v1, "init_success"

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/m/http/MReqManager;->submitSdkAction(Ljava/lang/String;)V

    .line 697
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 699
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$15;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-static {v0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$1300(Lcom/leidong/sdk/m/controller/MsdkManager;Z)V

    return-void
.end method
