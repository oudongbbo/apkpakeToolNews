.class Lcom/leidong/sdk/framework/web/SdkWebActivity$1;
.super Ljava/lang/Object;
.source "SdkWebActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/framework/web/SdkWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/framework/web/SdkWebActivity;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/framework/web/SdkWebActivity;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/leidong/sdk/framework/web/SdkWebActivity$1;->this$0:Lcom/leidong/sdk/framework/web/SdkWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/leidong/sdk/framework/web/SdkWebActivity$1;->this$0:Lcom/leidong/sdk/framework/web/SdkWebActivity;

    invoke-virtual {p1}, Lcom/leidong/sdk/framework/web/SdkWebActivity;->finish()V

    return-void
.end method
