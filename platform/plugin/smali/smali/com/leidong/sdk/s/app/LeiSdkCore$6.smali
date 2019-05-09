.class Lcom/leidong/sdk/s/app/LeiSdkCore$6;
.super Ljava/lang/Object;
.source "LeiSdkCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/LeiSdkCore;->showFloat(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/LeiSdkCore;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/sdk/s/app/LeiSdkCore;

    .line 324
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$6;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    iput-object p2, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$6;->this$0:Lcom/leidong/sdk/s/app/LeiSdkCore;

    # getter for: Lcom/leidong/sdk/s/app/LeiSdkCore;->sdkManager:Lcom/leidong/sdk/s/core/SdkManager;
    invoke-static {v0}, Lcom/leidong/sdk/s/app/LeiSdkCore;->access$200(Lcom/leidong/sdk/s/app/LeiSdkCore;)Lcom/leidong/sdk/s/core/SdkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$6;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/leidong/sdk/s/core/SdkManager;->showFloat(Landroid/content/Context;)V

    .line 328
    return-void
.end method
