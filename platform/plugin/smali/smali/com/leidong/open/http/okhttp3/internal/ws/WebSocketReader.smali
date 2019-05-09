.class final Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;
.super Ljava/lang/Object;
.source "WebSocketReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader$FrameCallback;
    }
.end annotation


# instance fields
.field closed:Z

.field frameBytesRead:J

.field final frameCallback:Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader$FrameCallback;

.field frameLength:J

.field final isClient:Z

.field isControlFrame:Z

.field isFinalFrame:Z

.field isMasked:Z

.field final maskBuffer:[B

.field final maskKey:[B

.field opcode:I

.field final source:Lcom/leidong/open/http/okio/BufferedSource;


# direct methods
.method constructor <init>(ZLcom/leidong/open/http/okio/BufferedSource;Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader$FrameCallback;)V
    .locals 2
    .param p1, "isClient"    # Z
    .param p2, "source"    # Lcom/leidong/open/http/okio/BufferedSource;
    .param p3, "frameCallback"    # Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->maskKey:[B

    .line 77
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    .line 80
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "frameCallback == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    iput-boolean p1, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->isClient:Z

    .line 83
    iput-object p2, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    .line 84
    iput-object p3, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameCallback:Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 85
    return-void
.end method

.method private readControlFrame()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    new-instance v0, Lcom/leidong/open/http/okio/Buffer;

    invoke-direct {v0}, Lcom/leidong/open/http/okio/Buffer;-><init>()V

    .line 171
    .local v0, "buffer":Lcom/leidong/open/http/okio/Buffer;
    iget-wide v1, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    iget-wide v3, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    .line 172
    iget-boolean v1, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    iget-wide v2, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    invoke-interface {v1, v0, v2, v3}, Lcom/leidong/open/http/okio/BufferedSource;->readFully(Lcom/leidong/open/http/okio/Buffer;J)V

    goto :goto_1

    .line 175
    :cond_0
    :goto_0
    iget-wide v1, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    iget-wide v3, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    .line 176
    iget-wide v1, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    iget-wide v3, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    sub-long v5, v1, v3

    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 177
    .local v1, "toRead":I
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Lcom/leidong/open/http/okio/BufferedSource;->read([BII)I

    move-result v2

    .line 178
    .local v2, "read":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 179
    :cond_1
    iget-object v5, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    int-to-long v6, v2

    iget-object v8, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->maskKey:[B

    iget-wide v9, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    invoke-static/range {v5 .. v10}, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 180
    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    invoke-virtual {v0, v3, v4, v2}, Lcom/leidong/open/http/okio/Buffer;->write([BII)Lcom/leidong/open/http/okio/Buffer;

    .line 181
    iget-wide v3, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    int-to-long v5, v2

    add-long v7, v3, v5

    iput-wide v7, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    .line 182
    .end local v1    # "toRead":I
    .end local v2    # "read":I
    goto :goto_0

    .line 186
    :cond_2
    :goto_1
    iget v1, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->opcode:I

    packed-switch v1, :pswitch_data_0

    .line 209
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown control opcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :pswitch_0
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameCallback:Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Buffer;->readByteString()Lcom/leidong/open/http/okio/ByteString;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPong(Lcom/leidong/open/http/okio/ByteString;)V

    .line 192
    goto :goto_2

    .line 188
    :pswitch_1
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameCallback:Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Buffer;->readByteString()Lcom/leidong/open/http/okio/ByteString;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPing(Lcom/leidong/open/http/okio/ByteString;)V

    .line 189
    goto :goto_2

    .line 194
    :pswitch_2
    const/16 v1, 0x3ed

    .line 195
    .local v1, "code":I
    const-string v2, ""

    .line 196
    .local v2, "reason":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Buffer;->size()J

    move-result-wide v3

    .line 197
    .local v3, "bufferSize":J
    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    .line 198
    new-instance v5, Ljava/net/ProtocolException;

    const-string v6, "Malformed close payload length of 1."

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 199
    :cond_3
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    .line 200
    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Buffer;->readShort()S

    move-result v1

    .line 201
    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-static {v1}, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketProtocol;->closeCodeExceptionMessage(I)Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "codeExceptionMessage":Ljava/lang/String;
    if-eqz v5, :cond_4

    new-instance v6, Ljava/net/ProtocolException;

    invoke-direct {v6, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 205
    .end local v5    # "codeExceptionMessage":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameCallback:Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v5, v1, v2}, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadClose(ILjava/lang/String;)V

    .line 206
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->closed:Z

    .line 207
    nop

    .line 211
    .end local v1    # "code":I
    .end local v2    # "reason":Ljava/lang/String;
    .end local v3    # "bufferSize":J
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readHeader()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-boolean v0, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->timeout()Lcom/leidong/open/http/okio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Timeout;->timeoutNanos()J

    move-result-wide v0

    .line 112
    .local v0, "timeoutBefore":J
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v2}, Lcom/leidong/open/http/okio/BufferedSource;->timeout()Lcom/leidong/open/http/okio/Timeout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/leidong/open/http/okio/Timeout;->clearTimeout()Lcom/leidong/open/http/okio/Timeout;

    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v2}, Lcom/leidong/open/http/okio/BufferedSource;->readByte()B

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v2, v2, 0xff

    .line 116
    .local v2, "b0":I
    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v3}, Lcom/leidong/open/http/okio/BufferedSource;->timeout()Lcom/leidong/open/http/okio/Timeout;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v4}, Lcom/leidong/open/http/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/leidong/open/http/okio/Timeout;

    .line 117
    nop

    .line 116
    nop

    .line 119
    and-int/lit8 v3, v2, 0xf

    iput v3, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->opcode:I

    .line 120
    and-int/lit16 v3, v2, 0x80

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    .line 121
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    .line 124
    iget-boolean v3, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-nez v3, :cond_3

    .line 125
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "Control frames must be final."

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    :cond_3
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 129
    .local v3, "reservedFlag1":Z
    :goto_2
    and-int/lit8 v6, v2, 0x20

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    .line 130
    .local v6, "reservedFlag2":Z
    :goto_3
    and-int/lit8 v7, v2, 0x10

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    .line 131
    .local v7, "reservedFlag3":Z
    :goto_4
    if-nez v3, :cond_f

    if-nez v6, :cond_f

    if-eqz v7, :cond_7

    goto/16 :goto_7

    .line 136
    :cond_7
    iget-object v8, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v8}, Lcom/leidong/open/http/okio/BufferedSource;->readByte()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    .line 138
    .local v8, "b1":I
    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_8

    const/4 v4, 0x1

    nop

    :cond_8
    iput-boolean v4, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->isMasked:Z

    .line 139
    iget-boolean v4, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->isMasked:Z

    iget-boolean v5, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-ne v4, v5, :cond_a

    .line 141
    new-instance v4, Ljava/net/ProtocolException;

    iget-boolean v5, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-eqz v5, :cond_9

    const-string v5, "Server-sent frames must not be masked."

    goto :goto_5

    :cond_9
    const-string v5, "Client-sent frames must be masked."

    :goto_5
    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 147
    :cond_a
    and-int/lit8 v4, v8, 0x7f

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 148
    iget-wide v4, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v9, 0x7e

    cmp-long v11, v4, v9

    const-wide/16 v4, 0x0

    if-nez v11, :cond_b

    .line 149
    iget-object v9, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v9}, Lcom/leidong/open/http/okio/BufferedSource;->readShort()S

    move-result v9

    int-to-long v9, v9

    const-wide/32 v11, 0xffff

    and-long v13, v9, v11

    iput-wide v13, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    goto :goto_6

    .line 150
    :cond_b
    iget-wide v9, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v11, 0x7f

    cmp-long v13, v9, v11

    if-nez v13, :cond_c

    .line 151
    iget-object v9, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v9}, Lcom/leidong/open/http/okio/BufferedSource;->readLong()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 152
    iget-wide v9, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v11, v9, v4

    if-gez v11, :cond_c

    .line 153
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Frame length 0x"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 154
    invoke-static {v9, v10}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " > 0x7FFFFFFFFFFFFFFF"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 157
    :cond_c
    :goto_6
    iput-wide v4, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    .line 159
    iget-boolean v4, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v4, :cond_d

    iget-wide v4, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v9, 0x7d

    cmp-long v11, v4, v9

    if-lez v11, :cond_d

    .line 160
    new-instance v4, Ljava/net/ProtocolException;

    const-string v5, "Control frame must be less than 125B."

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 163
    :cond_d
    iget-boolean v4, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->isMasked:Z

    if-eqz v4, :cond_e

    .line 165
    iget-object v4, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    iget-object v5, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->maskKey:[B

    invoke-interface {v4, v5}, Lcom/leidong/open/http/okio/BufferedSource;->readFully([B)V

    .line 167
    :cond_e
    return-void

    .line 133
    .end local v8    # "b1":I
    :cond_f
    :goto_7
    new-instance v4, Ljava/net/ProtocolException;

    const-string v5, "Reserved flags are unsupported."

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    .end local v2    # "b0":I
    .end local v3    # "reservedFlag1":Z
    .end local v6    # "reservedFlag2":Z
    .end local v7    # "reservedFlag3":Z
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v3}, Lcom/leidong/open/http/okio/BufferedSource;->timeout()Lcom/leidong/open/http/okio/Timeout;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v4}, Lcom/leidong/open/http/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/leidong/open/http/okio/Timeout;

    throw v2
.end method

.method private readMessage(Lcom/leidong/open/http/okio/Buffer;)V
    .locals 16
    .param p1, "sink"    # Lcom/leidong/open/http/okio/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 247
    move-object/from16 v1, p1

    :goto_0
    iget-boolean v2, v0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->closed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 249
    :cond_0
    iget-wide v2, v0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    iget-wide v4, v0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    .line 250
    iget-boolean v2, v0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-eqz v2, :cond_1

    return-void

    .line 252
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->readUntilNonControlFrame()V

    .line 253
    iget v2, v0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->opcode:I

    if-eqz v2, :cond_2

    .line 254
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected continuation opcode. Got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 256
    :cond_2
    iget-boolean v2, v0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-eqz v2, :cond_3

    iget-wide v2, v0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    .line 257
    return-void

    .line 261
    :cond_3
    iget-wide v2, v0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    iget-wide v4, v0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    sub-long v6, v2, v4

    .line 264
    .local v6, "toRead":J
    iget-boolean v2, v0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->isMasked:Z

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_5

    .line 265
    iget-object v2, v0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    array-length v2, v2

    int-to-long v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 266
    iget-object v2, v0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    iget-object v5, v0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    long-to-int v8, v6

    const/4 v9, 0x0

    invoke-interface {v2, v5, v9, v8}, Lcom/leidong/open/http/okio/BufferedSource;->read([BII)I

    move-result v2

    int-to-long v14, v2

    .line 267
    .local v14, "read":J
    cmp-long v2, v14, v3

    if-nez v2, :cond_4

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 268
    :cond_4
    iget-object v10, v0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    iget-object v13, v0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->maskKey:[B

    iget-wide v2, v0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    move-wide v11, v14

    move-wide v4, v14

    move-wide v14, v2

    .line 268
    .end local v14    # "read":J
    .local v4, "read":J
    invoke-static/range {v10 .. v15}, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 269
    iget-object v2, v0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    long-to-int v3, v4

    invoke-virtual {v1, v2, v9, v3}, Lcom/leidong/open/http/okio/Buffer;->write([BII)Lcom/leidong/open/http/okio/Buffer;

    .line 275
    move-wide v14, v4

    goto :goto_1

    .line 271
    .end local v4    # "read":J
    :cond_5
    iget-object v2, v0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v2, v1, v6, v7}, Lcom/leidong/open/http/okio/BufferedSource;->read(Lcom/leidong/open/http/okio/Buffer;J)J

    move-result-wide v14

    .line 272
    .restart local v14    # "read":J
    cmp-long v2, v14, v3

    if-nez v2, :cond_6

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 275
    :cond_6
    :goto_1
    iget-wide v2, v0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    add-long v4, v2, v14

    iput-wide v4, v0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    .line 276
    .end local v6    # "toRead":J
    .end local v14    # "read":J
    goto/16 :goto_0
.end method

.method private readMessageFrame()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    iget v0, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->opcode:I

    .line 215
    .local v0, "opcode":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 216
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown opcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_0
    new-instance v2, Lcom/leidong/open/http/okio/Buffer;

    invoke-direct {v2}, Lcom/leidong/open/http/okio/Buffer;-><init>()V

    .line 220
    .local v2, "message":Lcom/leidong/open/http/okio/Buffer;
    invoke-direct {p0, v2}, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->readMessage(Lcom/leidong/open/http/okio/Buffer;)V

    .line 222
    if-ne v0, v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameCallback:Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-virtual {v2}, Lcom/leidong/open/http/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->frameCallback:Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-virtual {v2}, Lcom/leidong/open/http/okio/Buffer;->readByteString()Lcom/leidong/open/http/okio/ByteString;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Lcom/leidong/open/http/okio/ByteString;)V

    .line 227
    :goto_0
    return-void
.end method


# virtual methods
.method processNextFrame()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->readHeader()V

    .line 99
    iget-boolean v0, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    goto :goto_0

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->readMessageFrame()V

    .line 104
    :goto_0
    return-void
.end method

.method readUntilNonControlFrame()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    :goto_0
    iget-boolean v0, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->closed:Z

    if-nez v0, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->readHeader()V

    .line 233
    iget-boolean v0, p0, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-nez v0, :cond_0

    .line 234
    goto :goto_1

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/leidong/open/http/okhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    goto :goto_0

    .line 238
    :cond_1
    :goto_1
    return-void
.end method
