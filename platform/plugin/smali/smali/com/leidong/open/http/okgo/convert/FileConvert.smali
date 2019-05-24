.class public Lcom/leidong/open/http/okgo/convert/FileConvert;
.super Ljava/lang/Object;
.source "FileConvert.java"

# interfaces
.implements Lcom/leidong/open/http/okgo/convert/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/leidong/open/http/okgo/convert/Converter<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final DM_TARGET_FOLDER:Ljava/lang/String;


# instance fields
.field private callback:Lcom/leidong/open/http/okgo/callback/AbsCallback;

.field private destFileDir:Ljava/lang/String;

.field private destFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leidong/open/http/okgo/convert/FileConvert;->DM_TARGET_FOLDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, v0}, Lcom/leidong/open/http/okgo/convert/FileConvert;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/leidong/open/http/okgo/convert/FileConvert;->DM_TARGET_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/leidong/open/http/okgo/convert/FileConvert;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/leidong/open/http/okgo/convert/FileConvert;->destFileDir:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/leidong/open/http/okgo/convert/FileConvert;->destFileName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/leidong/open/http/okgo/convert/FileConvert;)Lcom/leidong/open/http/okgo/callback/AbsCallback;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/leidong/open/http/okgo/convert/FileConvert;->callback:Lcom/leidong/open/http/okgo/callback/AbsCallback;

    return-object p0
.end method


# virtual methods
.method public convertSuccess(Lcom/leidong/open/http/okhttp3/Response;)Ljava/io/File;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v9, p0

    .line 55
    iget-object v1, v9, Lcom/leidong/open/http/okgo/convert/FileConvert;->destFileDir:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/leidong/open/http/okgo/convert/FileConvert;->DM_TARGET_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/leidong/open/http/okgo/convert/FileConvert;->destFileDir:Ljava/lang/String;

    .line 56
    :cond_0
    iget-object v1, v9, Lcom/leidong/open/http/okgo/convert/FileConvert;->destFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/leidong/open/http/okhttp3/Response;->request()Lcom/leidong/open/http/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/Request;->url()Lcom/leidong/open/http/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/open/http/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lcom/leidong/open/http/okgo/utils/HttpUtils;->getNetFileName(Lcom/leidong/open/http/okhttp3/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/leidong/open/http/okgo/convert/FileConvert;->destFileName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object/from16 v2, p1

    .line 58
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v3, v9, Lcom/leidong/open/http/okgo/convert/FileConvert;->destFileDir:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 60
    :cond_2
    new-instance v10, Ljava/io/File;

    iget-object v3, v9, Lcom/leidong/open/http/okgo/convert/FileConvert;->destFileName:Ljava/lang/String;

    invoke-direct {v10, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_3
    const/16 v1, 0x800

    .line 67
    new-array v11, v1, [B

    const/4 v1, 0x0

    .line 70
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/leidong/open/http/okhttp3/Response;->body()Lcom/leidong/open/http/okhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/leidong/open/http/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 71
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/leidong/open/http/okhttp3/Response;->body()Lcom/leidong/open/http/okhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/leidong/open/http/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v13

    .line 74
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v16, 0x0

    move-wide/from16 v1, v16

    move-wide v3, v1

    move-wide v5, v3

    .line 75
    :goto_1
    :try_start_2
    invoke-virtual {v12, v11}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    move-wide/from16 v18, v5

    int-to-long v5, v7

    add-long v20, v1, v5

    const/4 v1, 0x0

    .line 77
    invoke-virtual {v15, v11, v1, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 80
    iget-object v1, v9, Lcom/leidong/open/http/okgo/convert/FileConvert;->callback:Lcom/leidong/open/http/okgo/callback/AbsCallback;

    if-eqz v1, :cond_7

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v5, 0x0

    sub-long v5, v1, v3

    .line 84
    sget v1, Lcom/leidong/open/http/okgo/OkGo;->REFRESH_TIME:I

    int-to-long v1, v1

    cmp-long v7, v5, v1

    if-gez v7, :cond_5

    cmp-long v1, v20, v13

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v22, v11

    move-wide/from16 v5, v18

    goto :goto_4

    :cond_5
    :goto_2
    const-wide/16 v1, 0x3e8

    .line 86
    div-long/2addr v5, v1

    cmp-long v1, v5, v16

    if-nez v1, :cond_6

    const-wide/16 v1, 0x1

    add-long v3, v5, v1

    goto :goto_3

    :cond_6
    move-wide v3, v5

    :goto_3
    const/4 v1, 0x0

    sub-long v1, v20, v18

    .line 89
    div-long v7, v1, v3

    .line 90
    invoke-static {}, Lcom/leidong/open/http/okgo/OkGo;->getInstance()Lcom/leidong/open/http/okgo/OkGo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/open/http/okgo/OkGo;->getDelivery()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/leidong/open/http/okgo/convert/FileConvert$1;

    move-object v1, v6

    move-object v2, v9

    move-wide/from16 v3, v20

    move-object v9, v5

    move-object/from16 v22, v11

    move-object v11, v6

    move-wide v5, v13

    invoke-direct/range {v1 .. v8}, Lcom/leidong/open/http/okgo/convert/FileConvert$1;-><init>(Lcom/leidong/open/http/okgo/convert/FileConvert;JJJ)V

    invoke-virtual {v9, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-wide v3, v1

    move-wide/from16 v5, v20

    :goto_4
    move-wide/from16 v1, v20

    move-object/from16 v11, v22

    move-object/from16 v9, p0

    goto :goto_1

    :cond_7
    move-wide/from16 v5, v18

    move-wide/from16 v1, v20

    goto :goto_1

    .line 102
    :cond_8
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_9

    .line 106
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 108
    invoke-static {v0}, Lcom/leidong/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    :cond_9
    :goto_5
    if-eqz v15, :cond_a

    .line 111
    :try_start_4
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 113
    invoke-static {v0}, Lcom/leidong/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    :cond_a
    :goto_6
    return-object v10

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v15, v1

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v12, v1

    move-object v15, v12

    :goto_7
    move-object v1, v0

    if-eqz v12, :cond_b

    .line 106
    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    .line 108
    invoke-static {v0}, Lcom/leidong/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    :cond_b
    :goto_8
    if-eqz v15, :cond_c

    .line 111
    :try_start_6
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    .line 113
    invoke-static {v0}, Lcom/leidong/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 114
    :cond_c
    :goto_9
    throw v1
.end method

.method public bridge synthetic convertSuccess(Lcom/leidong/open/http/okhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okgo/convert/FileConvert;->convertSuccess(Lcom/leidong/open/http/okhttp3/Response;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public setCallback(Lcom/leidong/open/http/okgo/callback/AbsCallback;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/leidong/open/http/okgo/convert/FileConvert;->callback:Lcom/leidong/open/http/okgo/callback/AbsCallback;

    return-void
.end method
