.class Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$MyWebViewDownLoadListener;
.super Ljava/lang/Object;
.source "SdkCustomerServiceActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewDownLoadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;


# direct methods
.method private constructor <init>(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$MyWebViewDownLoadListener;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$1;)V
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$MyWebViewDownLoadListener;-><init>(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 256
    iget-object p2, p0, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity$MyWebViewDownLoadListener;->this$0:Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-static {p2}, Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;->access$200(Lcom/leidong/sdk/m/activity/SdkCustomerServiceActivity;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->toUri(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
