.class Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$1;
.super Ljava/lang/Object;
.source "SdkCustomerServiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$1;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$1;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-virtual {p1}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->finish()V

    return-void
.end method
