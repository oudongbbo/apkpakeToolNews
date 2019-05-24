.class public final Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;
.super Lcom/leidong/open/http/okio/ForwardingSink;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okgo/request/ProgressRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "CountingSink"
.end annotation


# instance fields
.field private bytesWritten:J

.field private contentLength:J

.field private lastRefreshUiTime:J

.field private lastWriteBytes:J

.field final synthetic this$0:Lcom/leidong/open/http/okgo/request/ProgressRequestBody;


# direct methods
.method public constructor <init>(Lcom/leidong/open/http/okgo/request/ProgressRequestBody;Lcom/leidong/open/http/okio/Sink;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->this$0:Lcom/leidong/open/http/okgo/request/ProgressRequestBody;

    .line 73
    invoke-direct {p0, p2}, Lcom/leidong/open/http/okio/ForwardingSink;-><init>(Lcom/leidong/open/http/okio/Sink;)V

    const-wide/16 p1, 0x0

    .line 67
    iput-wide p1, p0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    .line 68
    iput-wide p1, p0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->contentLength:J

    return-void
.end method


# virtual methods
.method public write(Lcom/leidong/open/http/okio/Buffer;J)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 78
    invoke-super/range {p0 .. p3}, Lcom/leidong/open/http/okio/ForwardingSink;->write(Lcom/leidong/open/http/okio/Buffer;J)V

    .line 79
    iget-wide v1, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->contentLength:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    iget-object v1, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->this$0:Lcom/leidong/open/http/okgo/request/ProgressRequestBody;

    invoke-virtual {v1}, Lcom/leidong/open/http/okgo/request/ProgressRequestBody;->contentLength()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->contentLength:J

    .line 80
    :cond_0
    iget-wide v1, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    add-long v7, v1, p2

    iput-wide v7, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 84
    iget-wide v5, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->lastRefreshUiTime:J

    sub-long v7, v1, v5

    sget v5, Lcom/leidong/open/http/okgo/OkGo;->REFRESH_TIME:I

    int-to-long v5, v5

    cmp-long v9, v7, v5

    if-gez v9, :cond_1

    iget-wide v5, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    iget-wide v7, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->contentLength:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_4

    .line 86
    :cond_1
    iget-wide v5, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->lastRefreshUiTime:J

    sub-long v7, v1, v5

    const-wide/16 v1, 0x3e8

    div-long/2addr v7, v1

    cmp-long v1, v7, v3

    if-nez v1, :cond_2

    const-wide/16 v1, 0x1

    add-long v3, v7, v1

    goto :goto_0

    :cond_2
    move-wide v3, v7

    .line 88
    :goto_0
    iget-wide v1, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    iget-wide v5, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->lastWriteBytes:J

    sub-long v7, v1, v5

    .line 89
    div-long v14, v7, v3

    .line 90
    iget-object v1, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->this$0:Lcom/leidong/open/http/okgo/request/ProgressRequestBody;

    iget-object v1, v1, Lcom/leidong/open/http/okgo/request/ProgressRequestBody;->listener:Lcom/leidong/open/http/okgo/request/ProgressRequestBody$Listener;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->this$0:Lcom/leidong/open/http/okgo/request/ProgressRequestBody;

    iget-object v9, v1, Lcom/leidong/open/http/okgo/request/ProgressRequestBody;->listener:Lcom/leidong/open/http/okgo/request/ProgressRequestBody$Listener;

    iget-wide v10, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    iget-wide v12, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->contentLength:J

    invoke-interface/range {v9 .. v15}, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$Listener;->onRequestProgress(JJJ)V

    .line 92
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->lastRefreshUiTime:J

    .line 93
    iget-wide v1, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    iput-wide v1, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->lastWriteBytes:J

    :cond_4
    return-void
.end method
