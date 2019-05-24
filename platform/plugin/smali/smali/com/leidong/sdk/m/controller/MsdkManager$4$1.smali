.class Lcom/leidong/sdk/m/controller/MsdkManager$4$1;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/MsdkManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/m/controller/MsdkManager$4;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/MsdkManager$4;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/MsdkManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0

    .line 333
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/MsdkManager$4;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/MsdkManager$4;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-static {p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$800(Lcom/leidong/sdk/m/controller/MsdkManager;)Lcom/leidong/sdk/m/LeiMsdkCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onExitGameFail()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$4$1;->this$1:Lcom/leidong/sdk/m/controller/MsdkManager$4;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/MsdkManager$4;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-static {v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$800(Lcom/leidong/sdk/m/controller/MsdkManager;)Lcom/leidong/sdk/m/LeiMsdkCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onExitGameSuccess()V

    return-void
.end method
