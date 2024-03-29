.class public Lcom/leidong/open/http/okserver/upload/UploadInfo;
.super Ljava/lang/Object;
.source "UploadInfo.java"


# instance fields
.field private listener:Lcom/leidong/open/http/okserver/listener/UploadListener;

.field private networkSpeed:J

.field private progress:F

.field private request:Lcom/leidong/open/http/okgo/request/BaseBodyRequest;

.field private state:I

.field private task:Lcom/leidong/open/http/okserver/upload/UploadTask;

.field private taskKey:Ljava/lang/String;

.field private totalLength:J

.field private uploadLength:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 118
    instance-of v0, p1, Lcom/leidong/open/http/okserver/download/DownloadInfo;

    if-eqz v0, :cond_0

    .line 119
    check-cast p1, Lcom/leidong/open/http/okserver/download/DownloadInfo;

    .line 120
    invoke-virtual {p0}, Lcom/leidong/open/http/okserver/upload/UploadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/leidong/open/http/okserver/download/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getListener()Lcom/leidong/open/http/okserver/listener/UploadListener;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/leidong/open/http/okserver/upload/UploadInfo;->listener:Lcom/leidong/open/http/okserver/listener/UploadListener;

    return-object v0
.end method

.method public getNetworkSpeed()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/leidong/open/http/okserver/upload/UploadInfo;->networkSpeed:J

    return-wide v0
.end method

.method public getProgress()F
    .locals 1

    .line 48
    iget v0, p0, Lcom/leidong/open/http/okserver/upload/UploadInfo;->progress:F

    return v0
.end method

.method public getRequest()Lcom/leidong/open/http/okgo/request/BaseBodyRequest;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/leidong/open/http/okserver/upload/UploadInfo;->request:Lcom/leidong/open/http/okgo/request/BaseBodyRequest;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/leidong/open/http/okserver/upload/UploadInfo;->state:I

    return v0
.end method

.method public getTask()Lcom/leidong/open/http/okserver/upload/UploadTask;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/leidong/open/http/okserver/upload/UploadInfo;->task:Lcom/leidong/open/http/okserver/upload/UploadTask;

    return-object v0
.end method

.method public getTaskKey()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/leidong/open/http/okserver/upload/UploadInfo;->taskKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalLength()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/leidong/open/http/okserver/upload/UploadInfo;->totalLength:J

    return-wide v0
.end method

.method public getUploadLength()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/leidong/open/http/okserver/upload/UploadInfo;->uploadLength:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/leidong/open/http/okserver/upload/UploadInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public removeListener()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/leidong/open/http/okserver/upload/UploadInfo;->listener:Lcom/leidong/open/http/okserver/listener/UploadListener;

    return-void
.end method

.method public setListener(Lcom/leidong/open/http/okserver/listener/UploadListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/leidong/open/http/okserver/upload/UploadInfo;->listener:Lcom/leidong/open/http/okserver/listener/UploadListener;

    return-void
.end method

.method public setNetworkSpeed(J)V
    .locals 0

    .line 76
    iput-wide p1, p0, Lcom/leidong/open/http/okserver/upload/UploadInfo;->networkSpeed:J

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/leidong/open/http/okserver/upload/UploadInfo;->progress:F

    return-void
.end method

.method public setRequest(Lcom/leidong/open/http/okgo/request/BaseBodyRequest;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/leidong/open/http/okserver/upload/UploadInfo;->request:Lcom/leidong/open/http/okgo/request/BaseBodyRequest;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/leidong/open/http/okserver/upload/UploadInfo;->state:I

    return-void
.end method

.method public setTask(Lcom/leidong/open/http/okserver/upload/UploadTask;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/leidong/open/http/okserver/upload/UploadInfo;->task:Lcom/leidong/open/http/okserver/upload/UploadTask;

    return-void
.end method

.method public setTaskKey(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/leidong/open/http/okserver/upload/UploadInfo;->taskKey:Ljava/lang/String;

    return-void
.end method

.method public setTotalLength(J)V
    .locals 0

    .line 60
    iput-wide p1, p0, Lcom/leidong/open/http/okserver/upload/UploadInfo;->totalLength:J

    return-void
.end method

.method public setUploadLength(J)V
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/leidong/open/http/okserver/upload/UploadInfo;->uploadLength:J

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/leidong/open/http/okserver/upload/UploadInfo;->url:Ljava/lang/String;

    return-void
.end method
