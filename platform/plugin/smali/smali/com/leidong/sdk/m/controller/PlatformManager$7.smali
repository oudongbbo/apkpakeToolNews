.class Lcom/leidong/sdk/m/controller/PlatformManager$7;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/leidong/sdk/m/interfaces/MsdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/PlatformManager;->doAppActiveFuction(Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

.field final synthetic val$callback:Lcom/leidong/sdk/m/interfaces/MResultCallback;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/PlatformManager;Lcom/leidong/sdk/m/interfaces/MResultCallback;)V
    .locals 0

    .line 980
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$7;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iput-object p2, p0, Lcom/leidong/sdk/m/controller/PlatformManager$7;->val$callback:Lcom/leidong/sdk/m/interfaces/MResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0

    .line 1006
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$7;->val$callback:Lcom/leidong/sdk/m/interfaces/MResultCallback;

    invoke-interface {p1}, Lcom/leidong/sdk/m/interfaces/MResultCallback;->onSuccess()V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "url"

    .line 984
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a_qq_group_key"

    .line 985
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "code_id"

    .line 986
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 988
    iget-object v2, p0, Lcom/leidong/sdk/m/controller/PlatformManager$7;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<a_qq_group_key>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<url>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<code_id>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/leidong/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 990
    iget-object v2, p0, Lcom/leidong/sdk/m/controller/PlatformManager$7;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    new-instance v3, Lcom/leidong/sdk/m/controller/PlatformManager$7$1;

    invoke-direct {v3, p0}, Lcom/leidong/sdk/m/controller/PlatformManager$7$1;-><init>(Lcom/leidong/sdk/m/controller/PlatformManager$7;)V

    invoke-static {v2, p1, v1, v0, v3}, Lcom/leidong/sdk/m/controller/PlatformManager;->access$200(Lcom/leidong/sdk/m/controller/PlatformManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MResultCallback;)V

    return-void
.end method
