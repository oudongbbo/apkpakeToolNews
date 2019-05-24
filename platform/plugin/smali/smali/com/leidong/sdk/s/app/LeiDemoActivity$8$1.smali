.class Lcom/leidong/sdk/s/app/LeiDemoActivity$8$1;
.super Ljava/lang/Object;
.source "LeiDemoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/LeiDemoActivity$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/leidong/sdk/s/app/LeiDemoActivity$8;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/LeiDemoActivity$8;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiDemoActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiDemoActivity$8;

    iget-object v0, v0, Lcom/leidong/sdk/s/app/LeiDemoActivity$8;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    invoke-static {v0}, Lcom/leidong/sdk/s/app/LeiDemoActivity;->access$000(Lcom/leidong/sdk/s/app/LeiDemoActivity;)Lcom/leidong/sdk/s/app/LeiSdkCore;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$8$1;->this$1:Lcom/leidong/sdk/s/app/LeiDemoActivity$8;

    iget-object v1, v1, Lcom/leidong/sdk/s/app/LeiDemoActivity$8;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    new-instance v2, Lcom/leidong/sdk/s/app/LeiDemoActivity$8$1$1;

    invoke-direct {v2, p0}, Lcom/leidong/sdk/s/app/LeiDemoActivity$8$1$1;-><init>(Lcom/leidong/sdk/s/app/LeiDemoActivity$8$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/leidong/sdk/s/app/LeiSdkCore;->userExit(Landroid/content/Context;Lcom/leidong/sdk/framework/interfaces/SdkResultCallback;)V

    return-void
.end method
