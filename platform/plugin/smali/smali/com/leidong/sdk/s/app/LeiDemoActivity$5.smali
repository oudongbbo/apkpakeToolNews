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
    .param p1, "this$0"    # Lcom/leidong/sdk/s/app/LeiDemoActivity;

    .line 170
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$5;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$5;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    # getter for: Lcom/leidong/sdk/s/app/LeiDemoActivity;->mayaCore:Lcom/leidong/sdk/s/app/LeiSdkCore;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/LeiDemoActivity;->access$000(Lcom/leidong/sdk/s/app/LeiDemoActivity;)Lcom/leidong/sdk/s/app/LeiSdkCore;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$5;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    new-instance v2, Lcom/leidong/sdk/s/app/LeiDemoActivity$5$1;

    invoke-direct {v2, p0}, Lcom/leidong/sdk/s/app/LeiDemoActivity$5$1;-><init>(Lcom/leidong/sdk/s/app/LeiDemoActivity$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/leidong/sdk/s/app/LeiSdkCore;->userSwitch(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    .line 194
    return-void
.end method
