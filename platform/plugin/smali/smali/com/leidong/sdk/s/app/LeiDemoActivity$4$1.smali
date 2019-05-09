.class Lcom/leidong/sdk/s/app/LeiDemoActivity$4$1;
.super Ljava/lang/Object;
.source "LeiDemoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/LeiDemoActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/s/app/LeiDemoActivity$4;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/LeiDemoActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/leidong/sdk/s/app/LeiDemoActivity$4;

    .line 132
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$4$1;->this$1:Lcom/leidong/sdk/s/app/LeiDemoActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$4$1;->this$1:Lcom/leidong/sdk/s/app/LeiDemoActivity$4;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiDemoActivity$4;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    # getter for: Lcom/leidong/sdk/s/app/LeiDemoActivity;->mayaCore:Lcom/leidong/sdk/s/app/LeiSdkCore;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/LeiDemoActivity;->access$000(Lcom/leidong/sdk/s/app/LeiDemoActivity;)Lcom/leidong/sdk/s/app/LeiSdkCore;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$4$1;->this$1:Lcom/leidong/sdk/s/app/LeiDemoActivity$4;

    iget-object v1, v1, Lcom/leidong/sdk/s/app/LeiDemoActivity$4;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    new-instance v2, Lcom/leidong/sdk/s/app/LeiDemoActivity$4$1$1;

    invoke-direct {v2, p0}, Lcom/leidong/sdk/s/app/LeiDemoActivity$4$1$1;-><init>(Lcom/leidong/sdk/s/app/LeiDemoActivity$4$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/leidong/sdk/s/app/LeiSdkCore;->userLogin(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    .line 158
    return-void
.end method
