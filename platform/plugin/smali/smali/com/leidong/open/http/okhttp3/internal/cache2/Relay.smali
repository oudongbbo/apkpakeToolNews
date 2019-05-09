.class final Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;
.super Ljava/lang/Object;
.source "Relay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;
    }
.end annotation


# static fields
.field private static final FILE_HEADER_SIZE:J = 0x20L

.field static final PREFIX_CLEAN:Lcom/leidong/open/http/okio/ByteString;

.field static final PREFIX_DIRTY:Lcom/leidong/open/http/okio/ByteString;

.field private static final SOURCE_FILE:I = 0x2

.field private static final SOURCE_UPSTREAM:I = 0x1


# instance fields
.field final buffer:Lcom/leidong/open/http/okio/Buffer;

.field final bufferMaxSize:J

.field complete:Z

.field file:Ljava/io/RandomAccessFile;

.field private final metadata:Lcom/leidong/open/http/okio/ByteString;

.field sourceCount:I

.field upstream:Lcom/leidong/open/http/okio/Source;

.field final upstreamBuffer:Lcom/leidong/open/http/okio/Buffer;

.field upstreamPos:J

.field upstreamReader:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "OkHttp cache v1\n"

    invoke-static {v0}, Lcom/leidong/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lcom/leidong/open/http/okio/ByteString;

    .line 47
    const-string v0, "OkHttp DIRTY :(\n"

    invoke-static {v0}, Lcom/leidong/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Lcom/leidong/open/http/okio/ByteString;

    return-void
.end method

.method private constructor <init>(Ljava/io/RandomAccessFile;Lcom/leidong/open/http/okio/Source;JLcom/leidong/open/http/okio/ByteString;J)V
    .locals 1
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "upstream"    # Lcom/leidong/open/http/okio/Source;
    .param p3, "upstreamPos"    # J
    .param p5, "metadata"    # Lcom/leidong/open/http/okio/ByteString;
    .param p6, "bufferMaxSize"    # J

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/leidong/open/http/okio/Buffer;

    invoke-direct {v0}, Lcom/leidong/open/http/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->upstreamBuffer:Lcom/leidong/open/http/okio/Buffer;

    .line 95
    new-instance v0, Lcom/leidong/open/http/okio/Buffer;

    invoke-direct {v0}, Lcom/leidong/open/http/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->buffer:Lcom/leidong/open/http/okio/Buffer;

    .line 109
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 110
    iput-object p2, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->upstream:Lcom/leidong/open/http/okio/Source;

    .line 111
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->complete:Z

    .line 112
    iput-wide p3, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->upstreamPos:J

    .line 113
    iput-object p5, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->metadata:Lcom/leidong/open/http/okio/ByteString;

    .line 114
    iput-wide p6, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->bufferMaxSize:J

    .line 115
    return-void
.end method

.method public static edit(Ljava/io/File;Lcom/leidong/open/http/okio/Source;Lcom/leidong/open/http/okio/ByteString;J)Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;
    .locals 14
    .param p0, "file"    # Ljava/io/File;
    .param p1, "upstream"    # Lcom/leidong/open/http/okio/Source;
    .param p2, "metadata"    # Lcom/leidong/open/http/okio/ByteString;
    .param p3, "bufferMaxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    move-object v2, p0

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    .local v0, "randomAccessFile":Ljava/io/RandomAccessFile;
    new-instance v1, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    const-wide/16 v6, 0x0

    move-object v3, v1

    move-object v4, v0

    move-object v5, p1

    move-object/from16 v8, p2

    move-wide/from16 v9, p3

    invoke-direct/range {v3 .. v10}, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lcom/leidong/open/http/okio/Source;JLcom/leidong/open/http/okio/ByteString;J)V

    .line 131
    .local v1, "result":Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 132
    sget-object v9, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Lcom/leidong/open/http/okio/ByteString;

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->writeHeader(Lcom/leidong/open/http/okio/ByteString;JJ)V

    .line 134
    return-object v1
.end method

.method public static read(Ljava/io/File;)Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;
    .locals 22
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 146
    .local v0, "randomAccessFile":Ljava/io/RandomAccessFile;
    new-instance v11, Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    .line 149
    .local v11, "fileOperator":Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;
    new-instance v1, Lcom/leidong/open/http/okio/Buffer;

    invoke-direct {v1}, Lcom/leidong/open/http/okio/Buffer;-><init>()V

    .line 150
    .local v1, "header":Lcom/leidong/open/http/okio/Buffer;
    const-wide/16 v12, 0x0

    const-wide/16 v15, 0x20

    move-object v14, v1

    invoke-virtual/range {v11 .. v16}, Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;->read(JLcom/leidong/open/http/okio/Buffer;J)V

    .line 151
    sget-object v3, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lcom/leidong/open/http/okio/ByteString;

    invoke-virtual {v3}, Lcom/leidong/open/http/okio/ByteString;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lcom/leidong/open/http/okio/Buffer;->readByteString(J)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v12

    .line 152
    .local v12, "prefix":Lcom/leidong/open/http/okio/ByteString;
    sget-object v3, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lcom/leidong/open/http/okio/ByteString;

    invoke-virtual {v12, v3}, Lcom/leidong/open/http/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "unreadable cache file"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 153
    :cond_0
    invoke-virtual {v1}, Lcom/leidong/open/http/okio/Buffer;->readLong()J

    move-result-wide v13

    .line 154
    .local v13, "upstreamSize":J
    invoke-virtual {v1}, Lcom/leidong/open/http/okio/Buffer;->readLong()J

    move-result-wide v15

    .line 157
    .local v15, "metadataSize":J
    new-instance v3, Lcom/leidong/open/http/okio/Buffer;

    invoke-direct {v3}, Lcom/leidong/open/http/okio/Buffer;-><init>()V

    move-object v9, v3

    .line 158
    .local v9, "metadataBuffer":Lcom/leidong/open/http/okio/Buffer;
    const-wide/16 v3, 0x20

    add-long v5, v13, v3

    move-object v3, v11

    move-wide v4, v5

    move-object v6, v9

    move-wide v7, v15

    invoke-virtual/range {v3 .. v8}, Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;->read(JLcom/leidong/open/http/okio/Buffer;J)V

    .line 159
    invoke-virtual {v9}, Lcom/leidong/open/http/okio/Buffer;->readByteString()Lcom/leidong/open/http/okio/ByteString;

    move-result-object v17

    .line 162
    .local v17, "metadata":Lcom/leidong/open/http/okio/ByteString;
    new-instance v18, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;

    const/4 v5, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v3, v18

    move-object v4, v0

    move-wide v6, v13

    move-object/from16 v8, v17

    move-object/from16 v21, v9

    move-wide/from16 v9, v19

    .line 162
    .end local v9    # "metadataBuffer":Lcom/leidong/open/http/okio/Buffer;
    .local v21, "metadataBuffer":Lcom/leidong/open/http/okio/Buffer;
    invoke-direct/range {v3 .. v10}, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lcom/leidong/open/http/okio/Source;JLcom/leidong/open/http/okio/ByteString;J)V

    return-object v18
.end method

.method private writeHeader(Lcom/leidong/open/http/okio/ByteString;JJ)V
    .locals 7
    .param p1, "prefix"    # Lcom/leidong/open/http/okio/ByteString;
    .param p2, "upstreamSize"    # J
    .param p4, "metadataSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/leidong/open/http/okio/Buffer;

    invoke-direct {v0}, Lcom/leidong/open/http/okio/Buffer;-><init>()V

    .line 168
    .local v0, "header":Lcom/leidong/open/http/okio/Buffer;
    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okio/Buffer;->write(Lcom/leidong/open/http/okio/ByteString;)Lcom/leidong/open/http/okio/Buffer;

    .line 169
    invoke-virtual {v0, p2, p3}, Lcom/leidong/open/http/okio/Buffer;->writeLong(J)Lcom/leidong/open/http/okio/Buffer;

    .line 170
    invoke-virtual {v0, p4, p5}, Lcom/leidong/open/http/okio/Buffer;->writeLong(J)Lcom/leidong/open/http/okio/Buffer;

    .line 171
    invoke-virtual {v0}, Lcom/leidong/open/http/okio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x20

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 173
    :cond_0
    new-instance v1, Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;

    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    .line 174
    .local v1, "fileOperator":Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;
    const-wide/16 v2, 0x0

    const-wide/16 v5, 0x20

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;->write(JLcom/leidong/open/http/okio/Buffer;J)V

    .line 175
    return-void
.end method

.method private writeMetadata(J)V
    .locals 8
    .param p1, "upstreamSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    new-instance v0, Lcom/leidong/open/http/okio/Buffer;

    invoke-direct {v0}, Lcom/leidong/open/http/okio/Buffer;-><init>()V

    .line 179
    .local v0, "metadataBuffer":Lcom/leidong/open/http/okio/Buffer;
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->metadata:Lcom/leidong/open/http/okio/ByteString;

    invoke-virtual {v0, v1}, Lcom/leidong/open/http/okio/Buffer;->write(Lcom/leidong/open/http/okio/ByteString;)Lcom/leidong/open/http/okio/Buffer;

    .line 181
    new-instance v1, Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;

    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    .line 182
    .local v1, "fileOperator":Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;
    const-wide/16 v2, 0x20

    add-long v4, p1, v2

    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->metadata:Lcom/leidong/open/http/okio/ByteString;

    invoke-virtual {v2}, Lcom/leidong/open/http/okio/ByteString;->size()I

    move-result v2

    int-to-long v6, v2

    move-wide v2, v4

    move-object v4, v0

    move-wide v5, v6

    invoke-virtual/range {v1 .. v6}, Lcom/leidong/open/http/okhttp3/internal/cache2/FileOperator;->write(JLcom/leidong/open/http/okio/Buffer;J)V

    .line 183
    return-void
.end method


# virtual methods
.method commit(J)V
    .locals 8
    .param p1, "upstreamSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->writeMetadata(J)V

    .line 188
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 191
    sget-object v3, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lcom/leidong/open/http/okio/ByteString;

    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->metadata:Lcom/leidong/open/http/okio/ByteString;

    invoke-virtual {v0}, Lcom/leidong/open/http/okio/ByteString;->size()I

    move-result v0

    int-to-long v6, v0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->writeHeader(Lcom/leidong/open/http/okio/ByteString;JJ)V

    .line 192
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 195
    monitor-enter p0

    .line 196
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->complete:Z

    .line 197
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->upstream:Lcom/leidong/open/http/okio/Source;

    invoke-static {v0}, Lcom/leidong/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->upstream:Lcom/leidong/open/http/okio/Source;

    .line 201
    return-void

    .line 197
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method isClosed()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public metadata()Lcom/leidong/open/http/okio/ByteString;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->metadata:Lcom/leidong/open/http/okio/ByteString;

    return-object v0
.end method

.method public newSource()Lcom/leidong/open/http/okio/Source;
    .locals 1

    .line 217
    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 219
    :cond_0
    iget v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->sourceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;->sourceCount:I

    .line 220
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    new-instance v0, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;

    invoke-direct {v0, p0}, Lcom/leidong/open/http/okhttp3/internal/cache2/Relay$RelaySource;-><init>(Lcom/leidong/open/http/okhttp3/internal/cache2/Relay;)V

    return-object v0

    .line 220
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
