.class final Lcom/leidong/sdk/m/controller/UpdateManager$2;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/m/controller/UpdateManager;->checkAndInstall(ZLandroid/content/Context;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/leidong/sdk/m/controller/UpdateManager$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/leidong/sdk/m/controller/UpdateManager$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/UpdateManager$2;->val$context:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    sget v0, Lcom/leidong/sdk/m/views/UpdateDialog;->notificationId:I

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 118
    iget-object p1, p0, Lcom/leidong/sdk/m/controller/UpdateManager$2;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/leidong/sdk/m/controller/UpdateManager$2;->val$file:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/leidong/sdk/m/controller/UpdateManager;->installApk(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method
