.class Lcom/leidong/sdk/m/controller/PlatformManager$8$1;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/PlatformManager$8;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/m/controller/PlatformManager$8;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/PlatformManager$8;)V
    .locals 0

    .line 1022
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$8$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    .line 1058
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$8$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$8;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/PlatformManager$8;->val$callback:Lcom/leidong/sdk/m/interfaces/MResultCallback;

    invoke-interface {p1, p2}, Lcom/leidong/sdk/m/interfaces/MResultCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1026
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$8$1;->this$1:Lcom/leidong/sdk/m/controller/PlatformManager$8;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager$8;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    invoke-static {v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->access$000(Lcom/leidong/sdk/m/controller/PlatformManager;)Lcom/leidong/sdk/m/http/MRepManager;

    move-result-object v0

    new-instance v1, Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/m/controller/PlatformManager$8$1$1;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager$8$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/m/http/MRepManager;->handleActiveCheckResult(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    return-void
.end method
