.class Lcom/leidong/sdk/s/app/LeiDemoActivity$9;
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

    .line 286
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiDemoActivity$9;->this$0:Lcom/leidong/sdk/s/app/LeiDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 289
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/leidong/sdk/s/app/LeiDemoActivity$9$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/s/app/LeiDemoActivity$9$1;-><init>(Lcom/leidong/sdk/s/app/LeiDemoActivity$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    return-void
.end method
