.class Lcom/leidong/sdk/m/controller/MsdkManager$1;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Lcom/leidong/sdk/m/LeiMsdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/MsdkManager;->createNewCallBack(Lcom/leidong/sdk/m/LeiMsdkCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

.field final synthetic val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/MsdkManager;Lcom/leidong/sdk/m/LeiMsdkCallback;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    iput-object p2, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExitGameFail()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onExitGameFail()V

    return-void
.end method

.method public onExitGameSuccess()V
    .locals 4

    .line 188
    :try_start_0
    sget v0, Lcom/leidong/sdk/m/views/UpdateDialog;->notificationId:I

    .line 189
    iget-object v1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    const-string v2, "\u6e05\u9664\u4e0b\u8f7d\u6846"

    invoke-static {v1, v2}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$500(Lcom/leidong/sdk/m/controller/MsdkManager;Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-static {v1}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$200(Lcom/leidong/sdk/m/controller/MsdkManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/leidong/sdk/m/model/MConfigManager;->getUpdateStartState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    const-string v2, "\u5f00\u59cb\u4e0b\u8f7d\uff0c\u540c\u65f6\u6ca1\u6709\u4e0b\u8f7d\u5b8c\u6210\uff0c\u9700\u8981\u53d6\u6d88\u901a\u77e5\u680f"

    invoke-static {v1, v2}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$500(Lcom/leidong/sdk/m/controller/MsdkManager;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-static {v1}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$200(Lcom/leidong/sdk/m/controller/MsdkManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-static {v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$300(Lcom/leidong/sdk/m/controller/MsdkManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u63d0\u4ea4\u9000\u51fa\u4fe1\u606f"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-static {v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$600(Lcom/leidong/sdk/m/controller/MsdkManager;)Lcom/leidong/sdk/m/http/MReqManager;

    move-result-object v0

    const-string v1, "logout"

    new-instance v2, Lcom/leidong/sdk/m/controller/MsdkManager$1$1;

    invoke-direct {v2, p0}, Lcom/leidong/sdk/m/controller/MsdkManager$1$1;-><init>(Lcom/leidong/sdk/m/controller/MsdkManager$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/leidong/sdk/m/http/MReqManager;->submitSdkAction(Ljava/lang/String;Lcom/leidong/sdk/framework/http/HttpCallBack;)V

    goto :goto_1

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onExitGameSuccess()V

    :goto_1
    return-void
.end method

.method public onInitFail(Ljava/lang/String;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-static {v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$000(Lcom/leidong/sdk/m/controller/MsdkManager;)V

    .line 117
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    const-string v1, "error_init"

    invoke-virtual {v0, v1, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->postEventSdkErrorAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onInitFail(Ljava/lang/String;)V

    return-void
.end method

.method public onInitSuccess()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-static {v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$000(Lcom/leidong/sdk/m/controller/MsdkManager;)V

    .line 107
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onInitSuccess()V

    .line 109
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-static {v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$100(Lcom/leidong/sdk/m/controller/MsdkManager;)Lcom/leidong/sdk/m/controller/PlatformLogCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-static {v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$100(Lcom/leidong/sdk/m/controller/MsdkManager;)Lcom/leidong/sdk/m/controller/PlatformLogCore;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-static {v1}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$200(Lcom/leidong/sdk/m/controller/MsdkManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/m/controller/PlatformLogCore;->onInit(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onLoginFail(Ljava/lang/String;)V
    .locals 2

    const-string v0, "login_cancel"

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    const-string v1, "error_login"

    invoke-virtual {v0, v1, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->postEventSdkErrorAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onLoginFail(Ljava/lang/String;)V

    return-void
.end method

.method public onLoginSuccess(Landroid/os/Bundle;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$302(Lcom/leidong/sdk/m/controller/MsdkManager;Z)Z

    .line 123
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onLoginSuccess(Landroid/os/Bundle;)V

    .line 126
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-static {v0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$400(Lcom/leidong/sdk/m/controller/MsdkManager;Landroid/os/Bundle;)V

    return-void
.end method

.method public onLogoutFail(Ljava/lang/String;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onLogoutFail(Ljava/lang/String;)V

    return-void
.end method

.method public onLogoutSuccess()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onLogoutSuccess()V

    return-void
.end method

.method public onPayFail(Ljava/lang/String;)V
    .locals 2

    const-string v0, "pay_cancel"

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    const-string v1, "error_pay"

    invoke-virtual {v0, v1, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->postEventSdkErrorAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onPayFail(Ljava/lang/String;)V

    return-void
.end method

.method public onPaySuccess(Landroid/os/Bundle;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onPaySuccess(Landroid/os/Bundle;)V

    .line 161
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-static {v0}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$100(Lcom/leidong/sdk/m/controller/MsdkManager;)Lcom/leidong/sdk/m/controller/PlatformLogCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leidong/sdk/m/controller/PlatformLogCore;->onPayFinish(Landroid/os/Bundle;)V

    return-void
.end method

.method public onUserSwitchFail(Ljava/lang/String;)V
    .locals 2

    const-string v0, "switch_cancel"

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    const-string v1, "error_switch"

    invoke-virtual {v0, v1, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->postEventSdkErrorAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onUserSwitchFail(Ljava/lang/String;)V

    return-void
.end method

.method public onUserSwitchSuccess(Landroid/os/Bundle;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$302(Lcom/leidong/sdk/m/controller/MsdkManager;Z)Z

    .line 141
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/leidong/sdk/m/LeiMsdkCallback;

    invoke-interface {v0, p1}, Lcom/leidong/sdk/m/LeiMsdkCallback;->onUserSwitchSuccess(Landroid/os/Bundle;)V

    .line 143
    iget-object v0, p0, Lcom/leidong/sdk/m/controller/MsdkManager$1;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    invoke-static {v0, p1}, Lcom/leidong/sdk/m/controller/MsdkManager;->access$400(Lcom/leidong/sdk/m/controller/MsdkManager;Landroid/os/Bundle;)V

    return-void
.end method
