.class Lcom/leidong/sdk/m/controller/PlatformManager$5;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/PlatformManager;->mLoginSuccess(Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MLoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

.field final synthetic val$callback:Lcom/leidong/sdk/m/interfaces/MLoginCallback;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/PlatformManager;Lcom/leidong/sdk/m/interfaces/MLoginCallback;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$5;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iput-object p2, p0, Lcom/leidong/sdk/m/controller/PlatformManager$5;->val$callback:Lcom/leidong/sdk/m/interfaces/MLoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    .line 944
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$5;->val$callback:Lcom/leidong/sdk/m/interfaces/MLoginCallback;

    invoke-interface {p1, p2}, Lcom/leidong/sdk/m/interfaces/MLoginCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 883
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$5;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    invoke-static {v0}, Lcom/leidong/sdk/m/controller/PlatformManager;->access$000(Lcom/leidong/sdk/m/controller/PlatformManager;)Lcom/leidong/sdk/m/http/MRepManager;

    move-result-object v0

    new-instance v1, Lcom/leidong/sdk/m/controller/PlatformManager$5$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/m/controller/PlatformManager$5$1;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager$5;)V

    invoke-virtual {v0, p1, v1}, Lcom/leidong/sdk/m/http/MRepManager;->handleLoginSuccess(Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V

    return-void
.end method
