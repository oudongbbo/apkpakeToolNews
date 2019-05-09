.class Lcom/leidong/sdk/s/app/LeiDemoActivity$6;
.super Ljava/lang/Object;
.source "LeiDemoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/LeiDemoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/LeiDemoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/s/app/LeiDemoActivity;

    .line 201
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$6;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .line 204
    const-string v0, "007"

    .line 205
    .local v0, "roleId":Ljava/lang/String;
    const-string v1, "\u8a79\u59c6\u65af\u90a6\u5fb7"

    .line 206
    .local v1, "roleName":Ljava/lang/String;
    const-string v2, "88"

    .line 207
    .local v2, "roleLevel":Ljava/lang/String;
    const-string v3, "001"

    .line 208
    .local v3, "serverId":Ljava/lang/String;
    const-string v4, "\u5f00\u5929\u8f9f\u5730"

    .line 209
    .local v4, "serverName":Ljava/lang/String;
    const-string v5, "7"

    .line 210
    .local v5, "vip":Ljava/lang/String;
    const-string v6, "100"

    .line 211
    .local v6, "balance":Ljava/lang/String;
    const-string v7, "\u5730\u7403\u4eba\u4e00\u5bb6\u4eb2"

    .line 212
    .local v7, "partyName":Ljava/lang/String;
    const-string v8, "\u62d3\u5c55\u5b57\u6bb5"

    .line 214
    .local v8, "extra":Ljava/lang/String;
    new-instance v9, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;

    invoke-direct {v9}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;-><init>()V

    .line 215
    .local v9, "info":Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;
    invoke-virtual {v9, v0}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->setRoleId(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v9, v1}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->setRoleName(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v9, v2}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->setRoleLevel(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v9, v3}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->setServerId(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v9, v4}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->setServerName(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v9, v5}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->setVip(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v9, v6}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->setBalance(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v9, v7}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->setPartyName(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v9, v8}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->setExtra(Ljava/lang/String;)V

    .line 225
    iget-object v10, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$6;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    # getter for: Lcom/leidong/sdk/s/app/LeiDemoActivity;->mayaCore:Lcom/leidong/sdk/s/app/LeiSdkCore;
    invoke-static {v10}, Lcom/leidong/sdk/s/app/LeiDemoActivity;->access$000(Lcom/leidong/sdk/s/app/LeiDemoActivity;)Lcom/leidong/sdk/s/app/LeiSdkCore;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/leidong/sdk/s/app/LeiSdkCore;->updateRoleInfos(Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;)V

    .line 226
    return-void
.end method
