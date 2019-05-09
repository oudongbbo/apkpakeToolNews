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
    .locals 2
    .param p1, "this$0"    # Lcom/leidong/open/http/okgo/request/ProgressRequestBody;
    .param p2, "delegate"    # Lcom/leidong/open/http/okio/Sink;

    .line 72
    iput-object p1, p0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->this$0:Lcom/leidong/open/http/okgo/request/ProgressRequestBody;

    .line 73
    invoke-direct {p0, p2}, Lcom/leidong/open/http/okio/ForwardingSink;-><init>(Lcom/leidong/open/http/okio/Sink;)V

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    .line 68
    iput-wide v0, p0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->contentLength:J

    .line 74
    return-void
.end method


# virtual methods
.method public write(Lcom/leidong/open/http/okio/Buffer;J)V
    .locals 19
    .param p1, "source"    # Lcom/leidong/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
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

    add-long v6, v1, p2

    iput-wide v6, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 84
    .local v1, "curTime":J
    iget-wide v6, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->lastRefreshUiTime:J

    sub-long v8, v1, v6

    sget v6, Lcom/leidong/open/http/okgo/OkGo;->REFRESH_TIME:I

    int-to-long v6, v6

    cmp-long v10, v8, v6

    if-gez v10, :cond_1

    iget-wide v6, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    iget-wide v8, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->contentLength:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_4

    .line 86
    :cond_1
    iget-wide v6, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->lastRefreshUiTime:J

    sub-long v8, v1, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v8, v6

    .line 87
    .local v8, "diffTime":J
    cmp-long v6, v8, v3

    if-nez v6, :cond_2

    const-wide/16 v3, 0x1

    add-long v6, v8, v3

    .line 87
    .end local v8    # "diffTime":J
    .local v6, "diffTime":J
    goto :goto_0

    .line 88
    .end local v6    # "diffTime":J
    .restart local v8    # "diffTime":J
    :cond_2
    move-wide v6, v8

    .line 88
    .end local v8    # "diffTime":J
    .restart local v6    # "diffTime":J
    :goto_0
    iget-wide v3, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    iget-wide v8, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->lastWriteBytes:J

    sub-long v10, v3, v8

    .line 89
    .local v10, "diffBytes":J
    div-long v3, v10, v6

    .line 90
    .local v3, "networkSpeed":J
    iget-object v8, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->this$0:Lcom/leidong/open/http/okgo/request/ProgressRequestBody;

    iget-object v8, v8, Lcom/leidong/open/http/okgo/request/ProgressRequestBody;->listener:Lcom/leidong/open/http/okgo/request/ProgressRequestBody$Listener;

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->this$0:Lcom/leidong/open/http/okgo/request/ProgressRequestBody;

    iget-object v12, v8, Lcom/leidong/open/http/okgo/request/ProgressRequestBody;->listener:Lcom/leidong/open/http/okgo/request/ProgressRequestBody$Listener;

    iget-wide v13, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    iget-wide v8, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->contentLength:J

    move-wide v15, v8

    move-wide/from16 v17, v3

    invoke-interface/range {v12 .. v18}, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$Listener;->onRequestProgress(JJJ)V

    .line 92
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->lastRefreshUiTime:J

    .line 93
    iget-wide v8, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    iput-wide v8, v0, Lcom/leidong/open/http/okgo/request/ProgressRequestBody$CountingSink;->lastWriteBytes:J

    .line 95
    .end local v3    # "networkSpeed":J
    .end local v6    # "diffTime":J
    .end local v10    # "diffBytes":J
    :cond_4
    return-void
.end method
