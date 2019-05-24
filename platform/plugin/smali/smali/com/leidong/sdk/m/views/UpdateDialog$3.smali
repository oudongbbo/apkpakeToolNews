.class Lcom/leidong/sdk/m/views/UpdateDialog$3;
.super Landroid/os/Handler;
.source "UpdateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/m/views/UpdateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/m/views/UpdateDialog;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/m/views/UpdateDialog;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 199
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 278
    :pswitch_0
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->initUpdateNotification()V

    .line 280
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$600(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/leidong/sdk/m/views/UpdateDialog;->notificationId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/leidong/sdk/m/model/MConfigManager;->setUpdateStartState(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 266
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {v0}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$600(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    const-string v3, "leidong_update_fail"

    invoke-static {v2, v3}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$100(Lcom/leidong/sdk/m/views/UpdateDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/leidong/sdk/m/controller/UpdateManager;->showTips(Landroid/content/Context;Ljava/lang/String;)V

    .line 270
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$1100(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/app/NotificationManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 271
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$1100(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/app/NotificationManager;

    move-result-object p1

    sget v0, Lcom/leidong/sdk/m/views/UpdateDialog;->notificationId:I

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 221
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "_"

    .line 224
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 225
    array-length v0, p1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 226
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/leidong/sdk/m/views/UpdateDialog;->convertFileSize(J)Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v3, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/leidong/sdk/m/views/UpdateDialog;->convertFileSize(J)Ljava/lang/String;

    move-result-object v1

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/leidong/sdk/m/views/UpdateDialog;->convertFileSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 229
    iget-object v4, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    const/4 v5, 0x3

    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    invoke-static {v4, p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$702(Lcom/leidong/sdk/m/views/UpdateDialog;I)I

    .line 230
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$800(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$900(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$1000(Lcom/leidong/sdk/m/views/UpdateDialog;)Lcom/leidong/sdk/m/views/common/LoadingLineWithText;

    move-result-object p1

    iget-object v4, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {v4}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$700(Lcom/leidong/sdk/m/views/UpdateDialog;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/leidong/sdk/m/views/common/LoadingLineWithText;->setValue(I)V

    .line 235
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$1100(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/app/NotificationManager;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p1, "update_text"

    const-string v4, "id"

    .line 237
    iget-object v5, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {v5}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$600(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/content/Context;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    const-string v4, "update_progress"

    const-string v5, "id"

    .line 238
    iget-object v6, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {v6}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$600(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/leidong/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    .line 240
    iget-object v5, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {v5}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$700(Lcom/leidong/sdk/m/views/UpdateDialog;)I

    move-result v5

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    const-string v0, "\u5df2\u5b8c\u6210"

    goto :goto_0

    :cond_0
    const-string v5, "0B/s"

    .line 243
    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "\u5df2\u6682\u505c"

    goto :goto_0

    .line 248
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {v7}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$1200(Lcom/leidong/sdk/m/views/UpdateDialog;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "   "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    :goto_0
    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {v1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$1300(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 252
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$1300(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/widget/RemoteViews;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {v0}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$700(Lcom/leidong/sdk/m/views/UpdateDialog;)I

    move-result v0

    invoke-virtual {p1, v4, v6, v0, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 254
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$1400(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/app/Notification;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {v0}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$1300(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 255
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$1100(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/app/NotificationManager;

    move-result-object p1

    sget v0, Lcom/leidong/sdk/m/views/UpdateDialog;->notificationId:I

    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {v1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$1400(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 204
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    if-eqz p1, :cond_2

    .line 206
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 208
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {v0}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$600(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    const-string v3, "leidong_update_complete"

    invoke-static {v2, v3}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$100(Lcom/leidong/sdk/m/views/UpdateDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leidong/sdk/m/controller/UpdateManager;->showTips(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {v0}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$400(Lcom/leidong/sdk/m/views/UpdateDialog;)Z

    move-result v0

    iget-object v1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {v1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$600(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/leidong/sdk/m/controller/UpdateManager;->checkAndInstall(ZLandroid/content/Context;Ljava/io/File;)V

    .line 210
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-virtual {p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->dismiss()V

    goto :goto_1

    .line 213
    :cond_2
    iget-object p1, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    invoke-static {p1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$600(Lcom/leidong/sdk/m/views/UpdateDialog;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/leidong/sdk/m/views/UpdateDialog$3;->this$0:Lcom/leidong/sdk/m/views/UpdateDialog;

    const-string v1, "leidong_update_fail"

    invoke-static {v0, v1}, Lcom/leidong/sdk/m/views/UpdateDialog;->access$100(Lcom/leidong/sdk/m/views/UpdateDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leidong/sdk/m/controller/UpdateManager;->showTips(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
