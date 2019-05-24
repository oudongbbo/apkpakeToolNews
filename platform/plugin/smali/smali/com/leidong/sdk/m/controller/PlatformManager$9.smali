.class Lcom/leidong/sdk/m/controller/PlatformManager$9;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/leidong/sdk/m/LeiMsdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/PlatformManager;->initPlatformCallBack(Lcom/leidong/sdk/m/LeiMsdkCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

.field final synthetic val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/PlatformManager;Lcom/leidong/sdk/m/LeiMsdkCallback;)V
    .locals 0

    .line 1072
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iput-object p2, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExitGameFail()V
    .locals 1

    .line 1135
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onExitGameFail()V

    return-void
.end method

.method public onExitGameSuccess()V
    .locals 3

    .line 1127
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->roleInfos:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    const-string v1, "exitGame"

    iget-object v2, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-object v2, v2, Lcom/leidong/sdk/m/controller/PlatformManager;->roleInfos:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/m/controller/PlatformManager;->access$300(Lcom/leidong/sdk/m/controller/PlatformManager;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onExitGameSuccess()V

    return-void
.end method

.method public onInitFail(Ljava/lang/String;)V
    .locals 1

    .line 1122
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onInitFail(Ljava/lang/String;)V

    return-void
.end method

.method public onInitSuccess()V
    .locals 1

    .line 1118
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onInitSuccess()V

    return-void
.end method

.method public onLoginFail(Ljava/lang/String;)V
    .locals 1

    .line 1114
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onLoginFail(Ljava/lang/String;)V

    return-void
.end method

.method public onLoginSuccess(Landroid/os/Bundle;)V
    .locals 1

    .line 1110
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onLoginSuccess(Landroid/os/Bundle;)V

    return-void
.end method

.method public onLogoutFail(Ljava/lang/String;)V
    .locals 1

    .line 1106
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onLogoutFail(Ljava/lang/String;)V

    return-void
.end method

.method public onLogoutSuccess()V
    .locals 2

    .line 1101
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->isLogoutSuccess:Z

    .line 1102
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onLogoutSuccess()V

    return-void
.end method

.method public onPayFail(Ljava/lang/String;)V
    .locals 1

    .line 1097
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onPayFail(Ljava/lang/String;)V

    return-void
.end method

.method public onPaySuccess(Landroid/os/Bundle;)V
    .locals 1

    .line 1093
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onPaySuccess(Landroid/os/Bundle;)V

    return-void
.end method

.method public onUserSwitchFail(Ljava/lang/String;)V
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-boolean v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->isLogoutSuccess:Z

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onLoginFail(Ljava/lang/String;)V

    goto :goto_0

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onUserSwitchFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onUserSwitchSuccess(Landroid/os/Bundle;)V
    .locals 2

    .line 1075
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    iget-boolean v0, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->isLogoutSuccess:Z

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->this$0:Lcom/leidong/sdk/m/controller/PlatformManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/leidong/sdk/m/controller/PlatformManager;->isLogoutSuccess:Z

    .line 1078
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onLoginSuccess(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onUserSwitchSuccess(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
