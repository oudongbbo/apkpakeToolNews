.class Lcom/leidong/sdk/m/controller/MsdkManager$12;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Lcom/leidong/sdk/m/interfaces/MsdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/MsdkManager;->checkRoleInfos(Ljava/lang/String;Ljava/util/HashMap;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

.field final synthetic val$callback:Lcom/leidong/sdk/m/interfaces/MsdkCallback;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/MsdkManager;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$12;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    iput-object p2, p0, Lcom/leidong/sdk/m/controller/MsdkManager$12;->val$callback:Lcom/leidong/sdk/m/interfaces/MsdkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$12;->val$callback:Lcom/leidong/sdk/m/interfaces/MsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/interfaces/MsdkCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$12;->val$callback:Lcom/leidong/sdk/m/interfaces/MsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/interfaces/MsdkCallback;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
