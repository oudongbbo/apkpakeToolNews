.class public Lcom/leidong/sdk/m/views/UpdateDialog;
.super Landroid/app/Dialog;
.source "UpdateDialog.java"


# static fields
.field public static notificationId:I = 0x3e8


# instance fields
.field UIhandler:Landroid/os/Handler;

.field private isForceUpdate:Z

.field private loadingProgress:I

.field private loading_view:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private netType:Ljava/lang/String;

.field private nm:Landroid/app/NotificationManager;

.field private notice:Ljava/lang/String;

.field private notification:Landroid/app/Notification;

.field private switch_on:Z

.field private update_hide:Landroid/widget/Button;

.field private update_notice:Landroid/widget/TextView;

.field private update_progress:Lcom/leidong/sdk/m/views/common/LoadingLineWithText;

.field private update_size:Landroid/widget/TextView;

.field private update_speed:Landroid/widget/TextView;

.field private update_start:Landroid/widget/Button;

.field private url:Ljava/lang/String;

.field private views:Landroid/widget/RemoteViews;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->switch_on:Z

    const-string p1, ""

    .line 56
    iput-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->netType:Ljava/lang/String;

    .line 195
    new-instance p1, Lcom/leidong/sdk/m/views/UpdateDialog$3;

    invoke-direct {p1, p0}, Lcom/leidong/sdk/m/views/UpdateDialog$3;-><init>(Lcom/leidong/sdk/m/views/UpdateDialog;)V

    iput-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->UIhandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->switch_on:Z

    const-string v0, ""

    .line 56
    iput-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->netType:Ljava/lang/String;

    .line 195
    new-instance v0, Lcom/leidong/sdk/m/views/UpdateDialog$3;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/m/views/UpdateDialog$3;-><init>(Lcom/leidong/sdk/m/views/UpdateDialog;)V

    iput-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->UIhandler:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    .line 73
    iput-boolean p2, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->isForceUpdate:Z

    .line 74
    iput-object p4, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->url:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->notice:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/m/views/UpdateDialog;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->switch_on:Z

    return p0
.end method

.method static synthetic access$002(Lcom/leidong/sdk/m/views/UpdateDialog;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->switch_on:Z

    return p1
.end method

.method static synthetic access$100(Lcom/leidong/sdk/m/views/UpdateDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/leidong/sdk/m/views/UpdateDialog;)Lcom/leidong/sdk/m/views/common/LoadingLineWithText;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->update_progress:Lcom/leidong/sdk/m/views/common/LoadingLineWithText;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/app/NotificationManager;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->nm:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/leidong/sdk/m/views/UpdateDialog;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->netType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/widget/RemoteViews;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->views:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/app/Notification;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/leidong/sdk/m/views/UpdateDialog;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->sendLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/widget/Button;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->update_start:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leidong/sdk/m/views/UpdateDialog;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leidong/sdk/m/views/UpdateDialog;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->isForceUpdate:Z

    return p0
.end method

.method static synthetic access$500(Lcom/leidong/sdk/m/views/UpdateDialog;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/leidong/sdk/m/views/UpdateDialog;->back2Launcher()V

    return-void
.end method

.method static synthetic access$600(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/leidong/sdk/m/views/UpdateDialog;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->loadingProgress:I

    return p0
.end method

.method static synthetic access$702(Lcom/leidong/sdk/m/views/UpdateDialog;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->loadingProgress:I

    return p1
.end method

.method static synthetic access$800(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/widget/TextView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->update_size:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/widget/TextView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->update_speed:Landroid/widget/TextView;

    return-object p0
.end method

.method private back2Launcher()V
    .locals 2

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private sendLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "leidong_UpdateDialog->"

    .line 442
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public checkDownload(Ljava/lang/String;)V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getNetWorkTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->netType:Ljava/lang/String;

    const-string v0, "NO_NETWORK"

    .line 299
    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->netType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UNKNOWN"

    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->netType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WIFI"

    .line 303
    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->netType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->startDownloadApk(Ljava/lang/String;)V

    goto :goto_1

    .line 310
    :cond_1
    new-instance v0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "\u4e0b\u8f7d\u63d0\u793a"

    .line 312
    invoke-virtual {v0, v1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    move-result-object v1

    const-string v2, "\u60a8\u5f53\u524d\u51fa\u4e8e\u79fb\u52a8\u7f51\u7edc\uff0c\u7ee7\u7eed\u4e0b\u8f7d\u6e38\u620f\u5417?"

    .line 313
    invoke-virtual {v1, v2}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    move-result-object v1

    const-string v2, "\u7ee7\u7eed"

    new-instance v3, Lcom/leidong/sdk/m/views/UpdateDialog$5;

    invoke-direct {v3, p0, v0, p1}, Lcom/leidong/sdk/m/views/UpdateDialog$5;-><init>(Lcom/leidong/sdk/m/views/UpdateDialog;Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v1, v2, v3}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    move-result-object p1

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/leidong/sdk/m/views/UpdateDialog$4;

    invoke-direct {v2, p0, v0}, Lcom/leidong/sdk/m/views/UpdateDialog$4;-><init>(Lcom/leidong/sdk/m/views/UpdateDialog;Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)V

    .line 320
    invoke-virtual {p1, v1, v2}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    const/4 p1, 0x0

    .line 326
    invoke-virtual {v0, p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->setCanceledOnTouchOutside(Z)Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    .line 327
    invoke-virtual {v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->show()V

    goto :goto_1

    .line 301
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    const-string v0, "\u5f53\u524d\u65e0\u7f51\u7edc"

    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public convertFileSize(J)Ljava/lang/String;
    .locals 3

    const-wide/32 v0, 0x40000000

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-int p1, p1

    int-to-long p1, p1

    div-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "GB"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-int p1, p1

    int-to-long p1, p1

    div-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "MB"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/16 v0, 0x400

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-int p1, p1

    int-to-long p1, p1

    div-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "KB"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 426
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "B"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method initUpdateNotification()V
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->nm:Landroid/app/NotificationManager;

    .line 154
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    .line 155
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    const v1, 0x1080081

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 157
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 158
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    const-string v1, "\u6e38\u620f\u66f4\u65b0"

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 159
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 160
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    const/4 v1, 0x4

    iput v1, v0, Landroid/app/Notification;->defaults:I

    const-string v0, "leidong_update_notification"

    const-string v1, "layout"

    .line 164
    iget-object v2, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    const-string v1, "update_icon"

    const-string v2, "id"

    .line 165
    iget-object v3, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    const-string v2, "update_name"

    const-string v3, "id"

    .line 166
    iget-object v4, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    .line 168
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->views:Landroid/widget/RemoteViews;

    .line 170
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->views:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getAppIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 171
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->views:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->views:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 175
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getGameId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getGamePid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/leidong/sdk/framework/model/config/ConfigManager;->getGameMid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u901a\u77e5\u680f\u4efb\u52a1ID\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/leidong/sdk/m/views/UpdateDialog;->sendLog(Ljava/lang/String;)V

    const-string v1, "[a-zA-Z]"

    const-string v3, ""

    .line 181
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    const-string v3, ""

    .line 182
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x8

    if-le v1, v3, :cond_0

    .line 184
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 187
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/leidong/sdk/m/views/UpdateDialog;->notificationId:I

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u542f\u52a8\u901a\u77e5\u680f\u8fdb\u5ea6\u6846:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/leidong/sdk/m/views/UpdateDialog;->notificationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/views/UpdateDialog;->sendLog(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->nm:Landroid/app/NotificationManager;

    sget v1, Lcom/leidong/sdk/m/views/UpdateDialog;->notificationId:I

    iget-object v2, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 82
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/leidong/sdk/m/views/UpdateDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "leidong_dialog_theme_main"

    const-string v1, "style"

    iget-object v2, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    const-string p1, "leidong_update_dialog_content"

    const-string v0, "layout"

    .line 85
    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->setContentView(I)V

    const-string p1, "update_notice"

    const-string v0, "id"

    .line 87
    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->update_notice:Landroid/widget/TextView;

    const-string p1, "update_size"

    const-string v0, "id"

    .line 88
    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->update_size:Landroid/widget/TextView;

    const-string p1, "update_speed"

    const-string v0, "id"

    .line 89
    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->update_speed:Landroid/widget/TextView;

    const-string p1, "update_start"

    const-string v0, "id"

    .line 90
    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->update_start:Landroid/widget/Button;

    const-string p1, "update_hide"

    const-string v0, "id"

    .line 91
    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->update_hide:Landroid/widget/Button;

    const-string p1, "update_progress"

    const-string v0, "id"

    .line 92
    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/leidong/sdk/m/views/common/LoadingLineWithText;

    iput-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->update_progress:Lcom/leidong/sdk/m/views/common/LoadingLineWithText;

    const-string p1, "update_loadingview"

    const-string v0, "id"

    .line 93
    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->loading_view:Landroid/view/View;

    .line 95
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->notice:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->update_notice:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->notice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->update_start:Landroid/widget/Button;

    new-instance v0, Lcom/leidong/sdk/m/views/UpdateDialog$1;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/m/views/UpdateDialog$1;-><init>(Lcom/leidong/sdk/m/views/UpdateDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->update_hide:Landroid/widget/Button;

    new-instance v0, Lcom/leidong/sdk/m/views/UpdateDialog$2;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/m/views/UpdateDialog$2;-><init>(Lcom/leidong/sdk/m/views/UpdateDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 133
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->setCanceledOnTouchOutside(Z)V

    .line 135
    iget-boolean v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->isForceUpdate:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 136
    invoke-virtual {p0, p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->setCancelable(Z)V

    :cond_1
    return-void
.end method

.method public startDownloadApk(Ljava/lang/String;)V
    .locals 4

    .line 336
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->loading_view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 337
    iput-boolean v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->switch_on:Z

    .line 338
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->update_start:Landroid/widget/Button;

    const-string v1, "leidong_update_stop"

    invoke-direct {p0, v1}, Lcom/leidong/sdk/m/views/UpdateDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u51c6\u5907\u4e0b\u8f7d\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/views/UpdateDialog;->sendLog(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leidong/sdk/m/controller/UpdateManager;->getSDPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    invoke-static {p1}, Lcom/leidong/sdk/m/controller/UpdateManager;->getFileNameOfUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5b58\u50a8\u4f4d\u7f6e\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/views/UpdateDialog;->sendLog(Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lcom/leidong/open/main/OpenDownloadUtils;->getInstance()Lcom/leidong/open/main/OpenDownloadUtils;

    move-result-object v0

    new-instance v2, Lcom/leidong/sdk/m/views/UpdateDialog$6;

    invoke-direct {v2, p0, p1, v1}, Lcom/leidong/sdk/m/views/UpdateDialog$6;-><init>(Lcom/leidong/sdk/m/views/UpdateDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/leidong/open/main/OpenDownloadUtils;->download(Ljava/lang/String;Ljava/lang/String;Lcom/leidong/open/main/OpenDownloadUtils$OpenDownLoadCallBack;)V

    goto :goto_0

    .line 388
    :cond_0
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    const-string v0, "leidong_update_fail"

    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/views/UpdateDialog;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leidong/sdk/m/controller/UpdateManager;->showTips(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopDownload(Ljava/lang/String;)V
    .locals 5

    const-string v0, "\u6682\u505c\u4e0b\u8f7d"

    .line 396
    invoke-direct {p0, v0}, Lcom/leidong/sdk/m/views/UpdateDialog;->sendLog(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->nm:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const-string v0, "update_text"

    const-string v1, "id"

    .line 400
    iget-object v2, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    const-string v1, "update_progress"

    const-string v2, "id"

    .line 401
    iget-object v3, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 403
    iget-object v2, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->views:Landroid/widget/RemoteViews;

    const-string v3, "\u5df2\u6682\u505c"

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 404
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->views:Landroid/widget/RemoteViews;

    const/16 v2, 0x64

    iget v3, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->loadingProgress:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 405
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->views:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 406
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->nm:Landroid/app/NotificationManager;

    sget v1, Lcom/leidong/sdk/m/views/UpdateDialog;->notificationId:I

    iget-object v2, p0, Lcom/leidong/sdk/m/views/UpdateDialog;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 409
    :cond_0
    invoke-static {}, Lcom/leidong/open/main/OpenDownloadUtils;->getInstance()Lcom/leidong/open/main/OpenDownloadUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leidong/open/main/OpenDownloadUtils;->pause(Ljava/lang/String;)V

    return-void
.end method
