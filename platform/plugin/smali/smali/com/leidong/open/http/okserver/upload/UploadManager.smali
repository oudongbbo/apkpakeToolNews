.class public Lcom/leidong/open/http/okserver/upload/UploadManager;
.super Ljava/lang/Object;
.source "UploadManager.java"


# static fields
.field public static final ERROR:I = 0x4

.field public static final FINISH:I = 0x3

.field public static final NONE:I = 0x0

.field public static final UPLOADING:I = 0x2

.field public static final WAITING:I = 0x1

.field private static mInstance:Lcom/leidong/open/http/okserver/upload/UploadManager;


# instance fields
.field private mUploadInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okserver/upload/UploadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadUIHandler:Lcom/leidong/open/http/okserver/upload/UploadUIHandler;

.field private threadPool:Lcom/leidong/open/http/okserver/upload/UploadThreadPool;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/open/http/okserver/upload/UploadManager;->mUploadInfoList:Ljava/util/List;

    .line 53
    new-instance v0, Lcom/leidong/open/http/okserver/upload/UploadUIHandler;

    invoke-direct {v0}, Lcom/leidong/open/http/okserver/upload/UploadUIHandler;-><init>()V

    iput-object v0, p0, Lcom/leidong/open/http/okserver/upload/UploadManager;->mUploadUIHandler:Lcom/leidong/open/http/okserver/upload/UploadUIHandler;

    .line 54
    new-instance v0, Lcom/leidong/open/http/okserver/upload/UploadThreadPool;

    invoke-direct {v0}, Lcom/leidong/open/http/okserver/upload/UploadThreadPool;-><init>()V

    iput-object v0, p0, Lcom/leidong/open/http/okserver/upload/UploadManager;->threadPool:Lcom/leidong/open/http/okserver/upload/UploadThreadPool;

    .line 55
    return-void
.end method

.method public static getInstance()Lcom/leidong/open/http/okserver/upload/UploadManager;
    .locals 2

    .line 41
    sget-object v0, Lcom/leidong/open/http/okserver/upload/UploadManager;->mInstance:Lcom/leidong/open/http/okserver/upload/UploadManager;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/leidong/open/http/okserver/upload/UploadManager;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/leidong/open/http/okserver/upload/UploadManager;->mInstance:Lcom/leidong/open/http/okserver/upload/UploadManager;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/leidong/open/http/okserver/upload/UploadManager;

    invoke-direct {v1}, Lcom/leidong/open/http/okserver/upload/UploadManager;-><init>()V

    sput-object v1, Lcom/leidong/open/http/okserver/upload/UploadManager;->mInstance:Lcom/leidong/open/http/okserver/upload/UploadManager;

    .line 46
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 48
    :cond_1
    :goto_0
    sget-object v0, Lcom/leidong/open/http/okserver/upload/UploadManager;->mInstance:Lcom/leidong/open/http/okserver/upload/UploadManager;

    return-object v0
.end method


# virtual methods
.method public addTask(Ljava/lang/String;Lcom/leidong/open/http/okgo/request/BaseBodyRequest;Lcom/leidong/open/http/okserver/listener/UploadListener;)V
    .locals 2
    .param p1, "taskKey"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/leidong/open/http/okgo/request/BaseBodyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/leidong/open/http/okgo/request/BaseBodyRequest;",
            "Lcom/leidong/open/http/okserver/listener/UploadListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 66
    .local p3, "listener":Lcom/leidong/open/http/okserver/listener/UploadListener;, "Lcom/leidong/open/http/okserver/listener/UploadListener<TT;>;"
    new-instance v0, Lcom/leidong/open/http/okserver/upload/UploadInfo;

    invoke-direct {v0}, Lcom/leidong/open/http/okserver/upload/UploadInfo;-><init>()V

    .line 67
    .local v0, "uploadInfo":Lcom/leidong/open/http/okserver/upload/UploadInfo;
    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okserver/upload/UploadInfo;->setTaskKey(Ljava/lang/String;)V

    .line 68
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/leidong/open/http/okserver/upload/UploadInfo;->setState(I)V

    .line 69
    invoke-virtual {v0, p2}, Lcom/leidong/open/http/okserver/upload/UploadInfo;->setRequest(Lcom/leidong/open/http/okgo/request/BaseBodyRequest;)V

    .line 70
    iget-object v1, p0, Lcom/leidong/open/http/okserver/upload/UploadManager;->mUploadInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v1, Lcom/leidong/open/http/okserver/upload/UploadTask;

    invoke-direct {v1, v0, p3}, Lcom/leidong/open/http/okserver/upload/UploadTask;-><init>(Lcom/leidong/open/http/okserver/upload/UploadInfo;Lcom/leidong/open/http/okserver/listener/UploadListener;)V

    .line 73
    .local v1, "uploadTask":Lcom/leidong/open/http/okserver/upload/UploadTask;
    invoke-virtual {v0, v1}, Lcom/leidong/open/http/okserver/upload/UploadInfo;->setTask(Lcom/leidong/open/http/okserver/upload/UploadTask;)V

    .line 74
    return-void
.end method

.method public addTask(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/leidong/open/http/okserver/listener/UploadListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/io/File;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/leidong/open/http/okserver/listener/UploadListener<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    .local p4, "listener":Lcom/leidong/open/http/okserver/listener/UploadListener;, "Lcom/leidong/open/http/okserver/listener/UploadListener<TT;>;"
    invoke-static {p1}, Lcom/leidong/open/http/okgo/OkGo;->post(Ljava/lang/String;)Lcom/leidong/open/http/okgo/request/PostRequest;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/leidong/open/http/okgo/request/PostRequest;->params(Ljava/lang/String;Ljava/io/File;)Lcom/leidong/open/http/okgo/request/BaseBodyRequest;

    move-result-object v0

    check-cast v0, Lcom/leidong/open/http/okgo/request/PostRequest;

    .line 61
    .local v0, "request":Lcom/leidong/open/http/okgo/request/PostRequest;
    invoke-virtual {p0, p1, v0, p4}, Lcom/leidong/open/http/okserver/upload/UploadManager;->addTask(Ljava/lang/String;Lcom/leidong/open/http/okgo/request/BaseBodyRequest;Lcom/leidong/open/http/okserver/listener/UploadListener;)V

    .line 62
    return-void
.end method

.method public getAllTask()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okserver/upload/UploadInfo;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/leidong/open/http/okserver/upload/UploadManager;->mUploadInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getHandler()Lcom/leidong/open/http/okserver/upload/UploadUIHandler;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/leidong/open/http/okserver/upload/UploadManager;->mUploadUIHandler:Lcom/leidong/open/http/okserver/upload/UploadUIHandler;

    return-object v0
.end method

.method public getThreadPool()Lcom/leidong/open/http/okserver/upload/UploadThreadPool;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/leidong/open/http/okserver/upload/UploadManager;->threadPool:Lcom/leidong/open/http/okserver/upload/UploadThreadPool;

    return-object v0
.end method