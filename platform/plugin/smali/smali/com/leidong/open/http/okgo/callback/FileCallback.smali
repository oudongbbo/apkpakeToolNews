.class public abstract Lcom/leidong/open/http/okgo/callback/FileCallback;
.super Lcom/leidong/open/http/okgo/callback/AbsCallback;
.source "FileCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/leidong/open/http/okgo/callback/AbsCallback<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private convert:Lcom/leidong/open/http/okgo/convert/FileConvert;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0}, Lcom/leidong/open/http/okgo/callback/FileCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0, p1}, Lcom/leidong/open/http/okgo/callback/FileCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/leidong/open/http/okgo/callback/AbsCallback;-><init>()V

    .line 32
    new-instance v0, Lcom/leidong/open/http/okgo/convert/FileConvert;

    invoke-direct {v0, p1, p2}, Lcom/leidong/open/http/okgo/convert/FileConvert;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/leidong/open/http/okgo/callback/FileCallback;->convert:Lcom/leidong/open/http/okgo/convert/FileConvert;

    .line 33
    iget-object p1, p0, Lcom/leidong/open/http/okgo/callback/FileCallback;->convert:Lcom/leidong/open/http/okgo/convert/FileConvert;

    invoke-virtual {p1, p0}, Lcom/leidong/open/http/okgo/convert/FileConvert;->setCallback(Lcom/leidong/open/http/okgo/callback/AbsCallback;)V

    return-void
.end method


# virtual methods
.method public convertSuccess(Lcom/leidong/open/http/okhttp3/Response;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/leidong/open/http/okgo/callback/FileCallback;->convert:Lcom/leidong/open/http/okgo/convert/FileConvert;

    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okgo/convert/FileConvert;->convertSuccess(Lcom/leidong/open/http/okhttp3/Response;)Ljava/io/File;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/Response;->close()V

    return-object v0
.end method

.method public bridge synthetic convertSuccess(Lcom/leidong/open/http/okhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okgo/callback/FileCallback;->convertSuccess(Lcom/leidong/open/http/okhttp3/Response;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
