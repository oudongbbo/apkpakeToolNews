.class Lcom/leidong/sdk/m/controller/PlatformManager$11;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/PlatformManager;->doInitS(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/controller/PlatformManager;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/PlatformManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/m/controller/PlatformManager;

    .line 1155
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$11;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 1167
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 1162
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$11;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onLogoutFail(Ljava/lang/String;)V

    .line 1163
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1158
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$11;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->mCallBack:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onLogoutSuccess()V

    .line 1159
    return-void
.end method
