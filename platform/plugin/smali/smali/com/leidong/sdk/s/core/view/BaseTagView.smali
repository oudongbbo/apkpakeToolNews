.class public abstract Lcom/leidong/sdk/s/core/view/BaseTagView;
.super Ljava/lang/Object;
.source "BaseTagView.java"


# static fields
.field protected static final mHandler:Landroid/os/Handler;


# instance fields
.field protected clickTime:J

.field private mActivity:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mParent:Landroid/view/View;

.field private mTag:Ljava/lang/String;

.field private mTagColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/leidong/sdk/s/core/view/BaseTagView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->clickTime:J

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->mTagColor:I

    .line 32
    iput-object p1, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->mActivity:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->mTag:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    invoke-virtual {p0}, Lcom/leidong/sdk/s/core/view/BaseTagView;->getParent()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 38
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\u7236View\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_0
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iput-object p1, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->mParent:Landroid/view/View;

    .line 44
    invoke-virtual {p0}, Lcom/leidong/sdk/s/core/view/BaseTagView;->onCreate()V

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/sdk/s/core/view/BaseTagView;)Landroid/app/Activity;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->mActivity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->mParent:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getContentView()Landroid/view/View;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->mParent:Landroid/view/View;

    return-object v0
.end method

.method protected getParent()Landroid/view/View;
    .locals 2

    .line 60
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/leidong/sdk/s/core/view/BaseTagView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getResourcesID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/leidong/sdk/s/core/view/BaseTagView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leidong/sdk/s/core/view/BaseTagView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d44\u6e90\u672a\u627e\u5230\uff1aname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_type="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTagColor()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->mTagColor:I

    return v0
.end method

.method public inflate(I)Landroid/view/View;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected declared-synchronized isQuickClick()Z
    .locals 7

    monitor-enter p0

    .line 96
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 97
    iget-wide v2, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->clickTime:J

    const/4 v4, 0x0

    sub-long v4, v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    .line 98
    iput-wide v0, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->clickTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 99
    monitor-exit p0

    return v0

    .line 101
    :cond_0
    :try_start_1
    iput-wide v0, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->clickTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 102
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 95
    monitor-exit p0

    throw v0
.end method

.method protected onCreate()V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public requestLoginLogoBitmap(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    .line 158
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 163
    :cond_0
    new-instance v0, Lcom/leidong/open/main/OpenImageUtils;

    iget-object v1, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/leidong/open/main/OpenImageUtils;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/leidong/sdk/s/core/view/BaseTagView$3;

    invoke-direct {v1, p0, p1}, Lcom/leidong/sdk/s/core/view/BaseTagView$3;-><init>(Lcom/leidong/sdk/s/core/view/BaseTagView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p2, v1}, Lcom/leidong/open/main/OpenImageUtils;->loadBitmap(Ljava/lang/String;Lcom/leidong/open/main/OpenImageUtils$OpenImageCallback;)V

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->mTag:Ljava/lang/String;

    return-void
.end method

.method public setTagColor(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->mTagColor:I

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/leidong/sdk/s/core/view/BaseTagView$1;

    invoke-direct {v1, p0, p1}, Lcom/leidong/sdk/s/core/view/BaseTagView$1;-><init>(Lcom/leidong/sdk/s/core/view/BaseTagView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public showToastWithRes(Ljava/lang/String;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/leidong/sdk/s/core/view/BaseTagView;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/leidong/sdk/s/core/view/BaseTagView$2;

    invoke-direct {v1, p0, p1}, Lcom/leidong/sdk/s/core/view/BaseTagView$2;-><init>(Lcom/leidong/sdk/s/core/view/BaseTagView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
