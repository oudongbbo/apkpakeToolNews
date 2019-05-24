.class final Lcom/leidong/sdk/s/core/utils/SdkUtil$1;
.super Ljava/lang/Object;
.source "SdkUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/core/utils/SdkUtil;->exitWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/Object;Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sdkcallback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/framework/interfaces/ResultCallback;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/leidong/sdk/s/core/utils/SdkUtil$1;->val$sdkcallback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/leidong/sdk/s/core/utils/SdkUtil$1;->val$sdkcallback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/leidong/sdk/s/core/utils/SdkUtil$1;->val$sdkcallback:Lcom/leidong/sdk/framework/interfaces/ResultCallback;

    invoke-interface {p1}, Lcom/leidong/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    :cond_0
    return-void
.end method
