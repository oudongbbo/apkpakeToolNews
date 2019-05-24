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

    .line 201
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$6;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const-string p1, "007"

    const-string v0, "\u8a79\u59c6\u65af\u90a6\u5fb7"

    const-string v1, "88"

    const-string v2, "001"

    const-string v3, "\u5f00\u5929\u8f9f\u5730"

    const-string v4, "7"

    const-string v5, "100"

    const-string v6, "\u5730\u7403\u4eba\u4e00\u5bb6\u4eb2"

    const-string v7, "\u62d3\u5c55\u5b57\u6bb5"

    .line 214
    new-instance v8, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;

    invoke-direct {v8}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;-><init>()V

    .line 215
    invoke-virtual {v8, p1}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->setRoleId(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v8, v0}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->setRoleName(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v8, v1}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->setRoleLevel(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v8, v2}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->setServerId(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v8, v3}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->setServerName(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v8, v4}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->setVip(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v8, v5}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->setBalance(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v8, v6}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->setPartyName(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v8, v7}, Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;->setExtra(Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$6;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/LeiDemoActivity;->access$000(Lcom/leidong/sdk/s/app/LeiDemoActivity;)Lcom/leidong/sdk/s/app/LeiSdkCore;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/leidong/sdk/s/app/LeiSdkCore;->updateRoleInfos(Lcom/leidong/sdk/s/core/model/bean/SubmitRoleBean;)V

    return-void
.end method
