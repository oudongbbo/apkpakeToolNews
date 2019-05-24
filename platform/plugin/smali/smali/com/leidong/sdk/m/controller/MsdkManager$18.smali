.class Lcom/leidong/sdk/m/controller/MsdkManager$18;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/MsdkManager;->showDebugDialog(Ljava/lang/String;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

.field final synthetic val$callback:Lcom/leidong/sdk/m/interfaces/MsdkCallback;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/controller/MsdkManager;Lcom/leidong/sdk/m/interfaces/MsdkCallback;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$18;->this$0:Lcom/leidong/sdk/m/controller/MsdkManager;

    iput-object p2, p0, Lcom/leidong/sdk/m/controller/MsdkManager$18;->val$callback:Lcom/leidong/sdk/m/interfaces/MsdkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 827
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/MsdkManager$18;->val$callback:Lcom/leidong/sdk/m/interfaces/MsdkCallback;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1, p2}, Lcom/leidong/sdk/m/interfaces/MsdkCallback;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
