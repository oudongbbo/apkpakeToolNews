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

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/leidong/open/http/okgo/convert/FileConvert;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "destFileName"    # Ljava/lang/String;

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

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "destFileDir"    # Ljava/lang/String;
    .param p2, "destFileName"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/leidong/open/http/okgo/convert/FileConvert;->destFileDir:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/leidong/open/http/okgo/convert/FileConvert;->destFileName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/leidong/open/http/okgo/convert/FileConvert;)Lcom/leidong/open/http/okgo/callback/AbsCallback;
    .locals 1
    .param p0, "x0"    # Lcom/leidong/open/http/okgo/convert/FileConvert;

    .line 28
    iget-object v0, p0, Lcom/leidong/open/http/okgo/convert/FileConvert;->callback:Lcom/leidong/open/http/okgo/callback/AbsCallback;

    return-object v0
.end method


# virtual methods
.method public convertSuccess(Lcom/leidong/open/http/okhttp3/Response;)Ljava/io/File;
    .locals 33
    .param p1, "value"    # Lcom/leidong/open/http/okhttp3/Response;
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

    move-object/from16 v10, p1

    invoke-static {v10, v1}, Lcom/leidong/open/http/okgo/utils/HttpUtils;->getNetFileName(Lcom/leidong/open/http/okhttp3/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/leidong/open/http/okgo/convert/FileConvert;->destFileName:Ljava/lang/String;

    goto :goto_0

    .line 58
    :cond_1
    move-object/from16 v10, p1

    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, v9, Lcom/leidong/open/http/okgo/convert/FileConvert;->destFileDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v1

    .line 59
    .local v11, "dir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 60
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v2, v9, Lcom/leidong/open/http/okgo/convert/FileConvert;->destFileName:Ljava/lang/String;

    invoke-direct {v1, v11, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v12, v1

    .line 61
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 63
    :cond_3
    const-wide/16 v1, 0x0

    .line 64
    .local v1, "lastRefreshUiTime":J
    const-wide/16 v3, 0x0

    .line 66
    .local v3, "lastWriteBytes":J
    const/4 v5, 0x0

    .line 67
    .local v5, "is":Ljava/io/InputStream;
    const/16 v6, 0x800

    new-array v13, v6, [B

    .line 68
    .local v13, "buf":[B
    const/4 v6, 0x0

    .line 70
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/leidong/open/http/okhttp3/Response;->body()Lcom/leidong/open/http/okhttp3/ResponseBody;

    move-result-object v7

    invoke-virtual {v7}, Lcom/leidong/open/http/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v14, v7

    .line 71
    .end local v5    # "is":Ljava/io/InputStream;
    .local v14, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/leidong/open/http/okhttp3/Response;->body()Lcom/leidong/open/http/okhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lcom/leidong/open/http/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v7

    move-wide v15, v7

    .line 72
    .local v15, "total":J
    const-wide/16 v7, 0x0

    .line 74
    .local v7, "sum":J
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 75
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    move-wide/from16 v17, v1

    move-wide/from16 v19, v3

    .line 75
    .end local v1    # "lastRefreshUiTime":J
    .end local v3    # "lastWriteBytes":J
    .local v17, "lastRefreshUiTime":J
    .local v19, "lastWriteBytes":J
    :goto_1
    :try_start_2
    invoke-virtual {v14, v13}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v6, v1

    .line 75
    .local v6, "len":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 76
    int-to-long v1, v6

    add-long v21, v7, v1

    .line 77
    .end local v7    # "sum":J
    .local v21, "sum":J
    const/4 v1, 0x0

    invoke-virtual {v5, v13, v1, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 80
    iget-object v1, v9, Lcom/leidong/open/http/okgo/convert/FileConvert;->callback:Lcom/leidong/open/http/okgo/callback/AbsCallback;

    if-eqz v1, :cond_7

    .line 81
    move-wide/from16 v23, v21

    .line 82
    .local v23, "finalSum":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-wide/from16 v25, v1

    .line 84
    .local v25, "curTime":J
    const/4 v1, 0x0

    sub-long v1, v25, v17

    sget v3, Lcom/leidong/open/http/okgo/OkGo;->REFRESH_TIME:I

    int-to-long v3, v3

    cmp-long v7, v1, v3

    if-gez v7, :cond_5

    cmp-long v1, v23, v15

    if-nez v1, :cond_4

    goto :goto_2

    .line 100
    .end local v23    # "finalSum":J
    .end local v25    # "curTime":J
    :cond_4
    move/from16 v32, v6

    move-object/from16 v31, v11

    move-object v11, v5

    goto :goto_4

    .line 86
    .restart local v23    # "finalSum":J
    .restart local v25    # "curTime":J
    :cond_5
    :goto_2
    const/4 v1, 0x0

    sub-long v1, v25, v17

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 87
    .local v1, "diffTime":J
    const-wide/16 v3, 0x0

    cmp-long v7, v1, v3

    if-nez v7, :cond_6

    const-wide/16 v3, 0x1

    add-long v7, v1, v3

    .line 88
    .end local v1    # "diffTime":J
    .local v7, "diffTime":J
    move-wide/from16 v27, v7

    goto :goto_3

    .line 88
    .end local v7    # "diffTime":J
    .restart local v1    # "diffTime":J
    :cond_6
    move-wide/from16 v27, v1

    .line 88
    .end local v1    # "diffTime":J
    .local v27, "diffTime":J
    :goto_3
    const/4 v1, 0x0

    sub-long v29, v23, v19

    .line 89
    .local v29, "diffBytes":J
    div-long v7, v29, v27

    .line 90
    .local v7, "networkSpeed":J
    invoke-static {}, Lcom/leidong/open/http/okgo/OkGo;->getInstance()Lcom/leidong/open/http/okgo/OkGo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leidong/open/http/okgo/OkGo;->getDelivery()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/leidong/open/http/okgo/convert/FileConvert$1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v4

    move-object v2, v9

    move-object v9, v3

    move-object v10, v4

    move-wide/from16 v3, v23

    move/from16 v32, v6

    move-object/from16 v31, v11

    move-object v11, v5

    move-wide v5, v15

    .line 90
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "len":I
    .local v11, "fos":Ljava/io/FileOutputStream;
    .local v31, "dir":Ljava/io/File;
    .local v32, "len":I
    :try_start_3
    invoke-direct/range {v1 .. v8}, Lcom/leidong/open/http/okgo/convert/FileConvert$1;-><init>(Lcom/leidong/open/http/okgo/convert/FileConvert;JJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 98
    .end local v17    # "lastRefreshUiTime":J
    .local v1, "lastRefreshUiTime":J
    move-wide/from16 v3, v23

    .line 100
    .end local v7    # "networkSpeed":J
    .end local v19    # "lastWriteBytes":J
    .end local v23    # "finalSum":J
    .end local v25    # "curTime":J
    .end local v27    # "diffTime":J
    .end local v29    # "diffBytes":J
    .restart local v3    # "lastWriteBytes":J
    move-wide/from16 v17, v1

    move-wide/from16 v19, v3

    .line 75
    .end local v1    # "lastRefreshUiTime":J
    .end local v3    # "lastWriteBytes":J
    .restart local v17    # "lastRefreshUiTime":J
    .restart local v19    # "lastWriteBytes":J
    :goto_4
    move-object v5, v11

    move-wide/from16 v7, v21

    move-object/from16 v11, v31

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    goto :goto_1

    .line 75
    .end local v31    # "dir":Ljava/io/File;
    .end local v32    # "len":I
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .local v11, "dir":Ljava/io/File;
    :cond_7
    move-wide/from16 v7, v21

    .line 75
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v11, "fos":Ljava/io/FileOutputStream;
    .restart local v31    # "dir":Ljava/io/File;
    goto :goto_1

    .line 102
    .end local v21    # "sum":J
    .end local v31    # "dir":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "len":I
    .local v7, "sum":J
    .local v11, "dir":Ljava/io/File;
    :cond_8
    move/from16 v32, v6

    move-object/from16 v31, v11

    move-object v11, v5

    .line 102
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "len":I
    .local v11, "fos":Ljava/io/FileOutputStream;
    .restart local v31    # "dir":Ljava/io/File;
    .restart local v32    # "len":I
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    nop

    .line 106
    if-eqz v14, :cond_9

    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 107
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 108
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/leidong/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 108
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 109
    :cond_9
    :goto_5
    nop

    .line 111
    :goto_6
    if-eqz v11, :cond_a

    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_7

    .line 112
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 113
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/leidong/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 113
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 114
    :cond_a
    :goto_7
    nop

    .line 103
    :goto_8
    return-object v12

    .line 105
    .end local v7    # "sum":J
    .end local v15    # "total":J
    .end local v32    # "len":I
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_a

    .line 105
    .end local v31    # "dir":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .local v11, "dir":Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object/from16 v31, v11

    move-object v11, v5

    move-object v1, v0

    .line 105
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v11, "fos":Ljava/io/FileOutputStream;
    .restart local v31    # "dir":Ljava/io/File;
    goto :goto_a

    .line 105
    .end local v17    # "lastRefreshUiTime":J
    .end local v19    # "lastWriteBytes":J
    .end local v31    # "dir":Ljava/io/File;
    .local v1, "lastRefreshUiTime":J
    .restart local v3    # "lastWriteBytes":J
    .local v6, "fos":Ljava/io/FileOutputStream;
    .local v11, "dir":Ljava/io/File;
    :catchall_2
    move-exception v0

    move-object/from16 v31, v11

    move-wide/from16 v17, v1

    move-wide/from16 v19, v3

    goto :goto_9

    .line 105
    .end local v14    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    :catchall_3
    move-exception v0

    move-object/from16 v31, v11

    move-wide/from16 v17, v1

    move-wide/from16 v19, v3

    move-object v14, v5

    .line 105
    .end local v1    # "lastRefreshUiTime":J
    .end local v3    # "lastWriteBytes":J
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    .restart local v17    # "lastRefreshUiTime":J
    .restart local v19    # "lastWriteBytes":J
    :goto_9
    move-object v11, v6

    move-object v1, v0

    .line 106
    .local v11, "fos":Ljava/io/FileOutputStream;
    .restart local v31    # "dir":Ljava/io/File;
    :goto_a
    if-eqz v14, :cond_b

    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_b

    .line 107
    :catch_2
    move-exception v0

    move-object v2, v0

    .line 108
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/leidong/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 108
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_c

    .line 109
    :cond_b
    :goto_b
    nop

    .line 111
    :goto_c
    if-eqz v11, :cond_c

    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_d

    .line 112
    :catch_3
    move-exception v0

    move-object v2, v0

    .line 113
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/leidong/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 113
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 114
    :cond_c
    :goto_d
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
    .param p1, "callback"    # Lcom/leidong/open/http/okgo/callback/AbsCallback;

    .line 50
    iput-object p1, p0, Lcom/leidong/open/http/okgo/convert/FileConvert;->callback:Lcom/leidong/open/http/okgo/callback/AbsCallback;

    .line 51
    return-void
.end method
