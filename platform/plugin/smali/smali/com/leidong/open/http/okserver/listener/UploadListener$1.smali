.class final Lcom/leidong/open/http/okserver/listener/UploadListener$1;
.super Lcom/leidong/open/http/okserver/listener/UploadListener;
.source "UploadListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okserver/listener/UploadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/leidong/open/http/okserver/listener/UploadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/leidong/open/http/okserver/upload/UploadInfo;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onFinish(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onProgress(Lcom/leidong/open/http/okserver/upload/UploadInfo;)V
    .locals 0

    return-void
.end method

.method public parseNetworkResponse(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/Response;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p1
.end method

.method public bridge synthetic parseNetworkResponse(Lcom/leidong/open/http/okhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okserver/listener/UploadListener$1;->parseNetworkResponse(Lcom/leidong/open/http/okhttp3/Response;)Lcom/leidong/open/http/okhttp3/Response;

    move-result-object p1

    return-object p1
.end method
