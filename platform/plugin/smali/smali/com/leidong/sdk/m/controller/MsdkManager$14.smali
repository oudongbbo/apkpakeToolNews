.class Lcom/leidong/sdk/m/controller/MsdkManager$14;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/MsdkManager;->startInitReqeust(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

.field final synthetic val$ifShowSplash:Z


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/MsdkManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/m/controller/MsdkManager;

    .line 642
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$14;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    iput-boolean p2, p0, Lcom/leidong/sdk/m/controller/MsdkManager$14;->val$ifShowSplash:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 671
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$14;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    # invokes: Lcom/leidong/sdk/m/controller/MsdkManager;->showToast(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$1200(Lcom/leidong/sdk/m/controller/MsdkManager;Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$14;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    # invokes: Lcom/leidong/sdk/m/controller/MsdkManager;->initCallBackFail(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$1000(Lcom/leidong/sdk/m/controller/MsdkManager;Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 646
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$14;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    # getter for: Lcom/leidong/sdk/m/controller/MsdkManager;->repManager:Lcom/leidong/sdk/m/http/MRepManager;
    invoke-static {v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$1100(Lcom/leidong/sdk/m/controller/MsdkManager;)Lcom/leidong/sdk/m/http/MRepManager;

    move-result-object v0

    new-instance v1, Lcom/leidong/sdk/m/controller/MsdkManager$14$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/m/controller/MsdkManager$14$1;-><init>(Lcom/leidong/sdk/m/controller/MsdkManager$14;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/m/http/MRepManager;->handleRepContent(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    .line 667
    return-void
.end method
