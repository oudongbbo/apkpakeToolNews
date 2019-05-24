.class Lcom/leidong/sdk/s/app/LeiDemoActivity$5;
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

    .line 170
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$5;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 173
    iget-object p1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$5;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/LeiDemoActivity;->access$000(Lcom/leidong/sdk/s/app/LeiDemoActivity;)Lcom/leidong/sdk/s/app/LeiSdkCore;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$5;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    new-instance v1, Lcom/leidong/sdk/s/app/LeiDemoActivity$5$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/LeiDemoActivity$5$1;-><init>(Lcom/leidong/sdk/s/app/LeiDemoActivity$5;)V

    invoke-virtual {p1, v0, v1}, Lcom/leidong/sdk/s/app/LeiSdkCore;->userSwitch(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    return-void
.end method
