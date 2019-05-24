.class Lcom/leidong/sdk/framework/web/SdkWebDialog$MyWebViewDownLoadListener;
.super Ljava/lang/Object;
.source "SdkWebDialog.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/framework/web/SdkWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewDownLoadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;


# direct methods
.method private constructor <init>(Lcom/leidong/sdk/framework/web/SdkWebDialog;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$MyWebViewDownLoadListener;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/leidong/sdk/framework/web/SdkWebDialog;Lcom/leidong/sdk/framework/web/SdkWebDialog$1;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lcom/leidong/sdk/framework/web/SdkWebDialog$MyWebViewDownLoadListener;-><init>(Lcom/leidong/sdk/framework/web/SdkWebDialog;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 274
    iget-object p2, p0, Lcom/leidong/sdk/framework/web/SdkWebDialog$MyWebViewDownLoadListener;->this$0:Lcom/leidong/sdk/framework/web/SdkWebDialog;

    invoke-static {p2}, Lcom/leidong/sdk/framework/web/SdkWebDialog;->access$200(Lcom/leidong/sdk/framework/web/SdkWebDialog;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->toUri(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
