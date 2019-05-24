.class Lcom/leidong/sdk/m/controller/MsdkManager$9;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Lcom/leidong/sdk/m/interfaces/MsdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/MsdkManager;->roleEnterGame(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

.field final synthetic val$newInfos:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/MsdkManager;Ljava/util/HashMap;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$9;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    iput-object p2, p0, Lcom/leidong/sdk/m/controller/MsdkManager$9;->val$newInfos:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    .line 496
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$9;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-static {p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$700(Lcom/leidong/sdk/m/controller/MsdkManager;)Lcom/leidong/sdk/m/controller/PlatformCore;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$9;->val$newInfos:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lcom/leidong/sdk/m/controller/PlatformCore;->roleEnterGame(Ljava/util/HashMap;)V

    return-void
.end method
