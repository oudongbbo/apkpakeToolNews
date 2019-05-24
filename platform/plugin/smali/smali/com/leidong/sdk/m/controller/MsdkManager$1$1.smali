.class Lcom/leidong/sdk/m/controller/MsdkManager$1$1;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Lcom/leidong/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/MsdkManager$1;->onExitGameSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/m/controller/MsdkManager$1;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/MsdkManager$1;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1$1;->this$1:Lcom/leidong/sdk/m/controller/MsdkManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    .line 218
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1$1;->this$1:Lcom/leidong/sdk/m/controller/MsdkManager$1;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onExitGameSuccess()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0

    .line 214
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1$1;->this$1:Lcom/leidong/sdk/m/controller/MsdkManager$1;

    iget-object p1, p1, Lcom/leidong/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onExitGameSuccess()V

    return-void
.end method
