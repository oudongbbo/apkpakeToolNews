.class Lcom/leidong/sdk/m/controller/MsdkManager$13;
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


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/MsdkManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/m/controller/MsdkManager;

    .line 631
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$13;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 638
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$13;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    # invokes: Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$500(Lcom/leidong/sdk/m/controller/MsdkManager;Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$13;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    # invokes: Lcom/leidong/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$500(Lcom/leidong/sdk/m/controller/MsdkManager;Ljava/lang/String;)V

    .line 635
    return-void
.end method
