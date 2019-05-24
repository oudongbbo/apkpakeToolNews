.class Lcom/leidong/sdk/m/controller/PlatformManager$6;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/leidong/sdk/m/interfaces/MResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/PlatformManager;->handleAppActive(Landroid/os/Bundle;Lcom/leidong/sdk/m/interfaces/MResultCallback;)V
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

    .line 961
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$6;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iput-object p2, p0, Lcom/leidong/sdk/m/controller/PlatformManager$6;->val$callback:Lcom/leidong/sdk/m/interfaces/MResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$6;->val$callback:Lcom/leidong/sdk/m/interfaces/MResultCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/interfaces/MResultCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$6;->val$callback:Lcom/leidong/sdk/m/interfaces/MResultCallback;

    invoke-interface {v0}, Lcom/leidong/sdk/m/interfaces/MResultCallback;->onSuccess()V

    return-void
.end method
