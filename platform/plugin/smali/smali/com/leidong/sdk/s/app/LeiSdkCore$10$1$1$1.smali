.class Lcom/leidong/sdk/s/app/LeiSdkCore$10$1$1$1;
.super Ljava/lang/Object;
.source "LeiSdkCore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/LeiSdkCore$10$1$1;->onSuccess(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/leidong/sdk/s/app/LeiSdkCore$10$1$1;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/LeiSdkCore$10$1$1;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$10$1$1$1;->this$3:Lcom/leidong/sdk/s/app/LeiSdkCore$10$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 527
    iget-object p1, p0, Lcom/leidong/sdk/s/app/LeiSdkCore$10$1$1$1;->this$3:Lcom/leidong/sdk/s/app/LeiSdkCore$10$1$1;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/LeiSdkCore$10$1$1;->this$2:Lcom/leidong/sdk/s/app/LeiSdkCore$10$1;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/LeiSdkCore$10$1;->this$1:Lcom/leidong/sdk/s/app/LeiSdkCore$10;

    iget-object p1, p1, Lcom/leidong/sdk/s/app/LeiSdkCore$10;->val$callback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-interface {p1}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    return-void
.end method
