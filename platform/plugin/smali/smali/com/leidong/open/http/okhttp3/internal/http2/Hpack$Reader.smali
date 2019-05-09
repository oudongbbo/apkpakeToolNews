.class final Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okhttp3/internal/http2/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

.field dynamicTableByteCount:I

.field headerCount:I

.field private final headerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final headerTableSizeSetting:I

.field private maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private final source:Lcom/leidong/open/http/okio/BufferedSource;


# direct methods
.method constructor <init>(IILcom/leidong/open/http/okio/Source;)V
    .locals 1
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "maxDynamicTableByteCount"    # I
    .param p3, "source"    # Lcom/leidong/open/http/okio/Source;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    .line 126
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    .line 128
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 130
    iput v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 137
    iput p1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->headerTableSizeSetting:I

    .line 138
    iput p2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 139
    invoke-static {p3}, Lcom/leidong/open/http/okio/Okio;->buffer(Lcom/leidong/open/http/okio/Source;)Lcom/leidong/open/http/okio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    .line 140
    return-void
.end method

.method constructor <init>(ILcom/leidong/open/http/okio/Source;)V
    .locals 0
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "source"    # Lcom/leidong/open/http/okio/Source;

    .line 133
    invoke-direct {p0, p1, p1, p2}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;-><init>(IILcom/leidong/open/http/okio/Source;)V

    .line 134
    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .locals 2

    .line 147
    iget v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    iget v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_1

    .line 148
    iget v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    if-nez v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->clearDynamicTable()V

    goto :goto_0

    .line 151
    :cond_0
    iget v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    iget v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->evictToRecoverBytes(I)I

    .line 154
    :cond_1
    :goto_0
    return-void
.end method

.method private clearDynamicTable()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 160
    iput v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 161
    return-void
.end method

.method private dynamicTableIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 235
    iget v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private evictToRecoverBytes(I)I
    .locals 6
    .param p1, "bytesToRecover"    # I

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "entriesToEvict":I
    if-lez p1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 168
    .local v1, "j":I
    :goto_0
    iget v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 169
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr p1, v2

    .line 170
    iget v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 171
    iget v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 172
    add-int/lit8 v0, v0, 0x1

    .line 168
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 174
    .end local v1    # "j":I
    :cond_0
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    iget v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    iget v4, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v0

    iget v5, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iget v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 178
    :cond_1
    return v0
.end method

.method private getName(I)Lcom/leidong/open/http/okio/ByteString;
    .locals 2
    .param p1, "index"    # I

    .line 264
    invoke-direct {p0, p1}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    sget-object v0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->name:Lcom/leidong/open/http/okio/ByteString;

    return-object v0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    sget-object v1, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    array-length v1, v1

    sub-int v1, p1, v1

    invoke-direct {p0, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->name:Lcom/leidong/open/http/okio/ByteString;

    return-object v0
.end method

.method private insertIntoDynamicTable(ILcom/leidong/open/http/okhttp3/internal/http2/Header;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "entry"    # Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    .line 277
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget v0, p2, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->hpackSize:I

    .line 280
    .local v0, "delta":I
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 281
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    invoke-direct {p0, p1}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/leidong/open/http/okhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v0, v2

    .line 285
    :cond_0
    iget v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    if-le v0, v2, :cond_1

    .line 286
    invoke-direct {p0}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->clearDynamicTable()V

    .line 287
    return-void

    .line 291
    :cond_1
    iget v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    sub-int/2addr v2, v3

    .line 292
    .local v2, "bytesToRecover":I
    invoke-direct {p0, v2}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->evictToRecoverBytes(I)I

    move-result v3

    .line 294
    .local v3, "entriesEvicted":I
    if-ne p1, v1, :cond_3

    .line 295
    iget v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    array-length v4, v4

    if-le v1, v4, :cond_2

    .line 296
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    .line 297
    .local v1, "doubled":[Lcom/leidong/open/http/okhttp3/internal/http2/Header;
    iget-object v4, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    array-length v6, v6

    iget-object v7, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    array-length v7, v7

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    iget-object v4, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 299
    iput-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    .line 301
    .end local v1    # "doubled":[Lcom/leidong/open/http/okhttp3/internal/http2/Header;
    :cond_2
    iget v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v4, v1, -0x1

    iput v4, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    move p1, v1

    .line 302
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    aput-object p2, v1, p1

    .line 303
    iget v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    goto :goto_0

    .line 305
    :cond_3
    invoke-direct {p0, p1}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr p1, v1

    .line 306
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    aput-object p2, v1, p1

    .line 308
    :goto_0
    iget v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 309
    return-void
.end method

.method private isStaticHeader(I)Z
    .locals 2
    .param p1, "index"    # I

    .line 272
    const/4 v0, 0x1

    if-ltz p1, :cond_0

    sget-object v1, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    array-length v1, v1

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private readIndexedHeader(I)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-direct {p0, p1}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    sget-object v0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    aget-object v0, v0, p1

    .line 223
    .local v0, "staticEntry":Lcom/leidong/open/http/okhttp3/internal/http2/Header;
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v0    # "staticEntry":Lcom/leidong/open/http/okhttp3/internal/http2/Header;
    goto :goto_0

    .line 225
    :cond_0
    sget-object v0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v0

    .line 226
    .local v0, "dynamicTableIndex":I
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    goto :goto_1

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    .end local v0    # "dynamicTableIndex":I
    :goto_0
    return-void

    .line 227
    .restart local v0    # "dynamicTableIndex":I
    :cond_2
    :goto_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Header index too large "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readLiteralHeaderWithIncrementalIndexingIndexedName(I)V
    .locals 4
    .param p1, "nameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-direct {p0, p1}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->getName(I)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    .line 253
    .local v0, "name":Lcom/leidong/open/http/okio/ByteString;
    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->readByteString()Lcom/leidong/open/http/okio/ByteString;

    move-result-object v1

    .line 254
    .local v1, "value":Lcom/leidong/open/http/okio/ByteString;
    new-instance v2, Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    invoke-direct {v2, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Header;-><init>(Lcom/leidong/open/http/okio/ByteString;Lcom/leidong/open/http/okio/ByteString;)V

    const/4 v3, -0x1

    invoke-direct {p0, v3, v2}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->insertIntoDynamicTable(ILcom/leidong/open/http/okhttp3/internal/http2/Header;)V

    .line 255
    return-void
.end method

.method private readLiteralHeaderWithIncrementalIndexingNewName()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->readByteString()Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack;->checkLowercase(Lcom/leidong/open/http/okio/ByteString;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    .line 259
    .local v0, "name":Lcom/leidong/open/http/okio/ByteString;
    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->readByteString()Lcom/leidong/open/http/okio/ByteString;

    move-result-object v1

    .line 260
    .local v1, "value":Lcom/leidong/open/http/okio/ByteString;
    new-instance v2, Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    invoke-direct {v2, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Header;-><init>(Lcom/leidong/open/http/okio/ByteString;Lcom/leidong/open/http/okio/ByteString;)V

    const/4 v3, -0x1

    invoke-direct {p0, v3, v2}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->insertIntoDynamicTable(ILcom/leidong/open/http/okhttp3/internal/http2/Header;)V

    .line 261
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingIndexedName(I)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-direct {p0, p1}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->getName(I)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    .line 240
    .local v0, "name":Lcom/leidong/open/http/okio/ByteString;
    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->readByteString()Lcom/leidong/open/http/okio/ByteString;

    move-result-object v1

    .line 241
    .local v1, "value":Lcom/leidong/open/http/okio/ByteString;
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v3, Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    invoke-direct {v3, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Header;-><init>(Lcom/leidong/open/http/okio/ByteString;Lcom/leidong/open/http/okio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingNewName()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->readByteString()Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack;->checkLowercase(Lcom/leidong/open/http/okio/ByteString;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    .line 246
    .local v0, "name":Lcom/leidong/open/http/okio/ByteString;
    invoke-virtual {p0}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->readByteString()Lcom/leidong/open/http/okio/ByteString;

    move-result-object v1

    .line 247
    .local v1, "value":Lcom/leidong/open/http/okio/ByteString;
    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v3, Lcom/leidong/open/http/okhttp3/internal/http2/Header;

    invoke-direct {v3, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Header;-><init>(Lcom/leidong/open/http/okio/ByteString;Lcom/leidong/open/http/okio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method


# virtual methods
.method public getAndResetHeaderList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/leidong/open/http/okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 216
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/leidong/open/http/okhttp3/internal/http2/Header;>;"
    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 217
    return-object v0
.end method

.method maxDynamicTableByteCount()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    return v0
.end method

.method readByteString()Lcom/leidong/open/http/okio/ByteString;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    invoke-direct {p0}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->readByte()I

    move-result v0

    .line 340
    .local v0, "firstByte":I
    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 341
    .local v1, "huffmanDecode":Z
    :goto_0
    const/16 v2, 0x7f

    invoke-virtual {p0, v0, v2}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v2

    .line 343
    .local v2, "length":I
    if-eqz v1, :cond_1

    .line 344
    invoke-static {}, Lcom/leidong/open/http/okhttp3/internal/http2/Huffman;->get()Lcom/leidong/open/http/okhttp3/internal/http2/Huffman;

    move-result-object v3

    iget-object v4, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    int-to-long v5, v2

    invoke-interface {v4, v5, v6}, Lcom/leidong/open/http/okio/BufferedSource;->readByteArray(J)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/leidong/open/http/okhttp3/internal/http2/Huffman;->decode([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/leidong/open/http/okio/ByteString;->of([B)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v3

    return-object v3

    .line 346
    :cond_1
    iget-object v3, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lcom/leidong/open/http/okio/BufferedSource;->readByteString(J)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v3

    return-object v3
.end method

.method readHeaders()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_9

    .line 187
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->source:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/leidong/open/http/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 188
    .local v0, "b":I
    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 189
    new-instance v1, Ljava/io/IOException;

    const-string v2, "index == 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_0
    and-int/lit16 v2, v0, 0x80

    if-ne v2, v1, :cond_1

    .line 191
    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v1

    .line 192
    .local v1, "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->readIndexedHeader(I)V

    .line 193
    .end local v1    # "index":I
    goto :goto_3

    :cond_1
    const/16 v1, 0x40

    if-ne v0, v1, :cond_2

    .line 194
    invoke-direct {p0}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingNewName()V

    goto :goto_3

    .line 195
    :cond_2
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v1, :cond_3

    .line 196
    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v1

    .line 197
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingIndexedName(I)V

    .line 198
    .end local v1    # "index":I
    goto :goto_3

    :cond_3
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 199
    const/16 v1, 0x1f

    invoke-virtual {p0, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v1

    iput v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 200
    iget v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    if-ltz v1, :cond_5

    iget v1, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    iget v2, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->headerTableSizeSetting:I

    if-le v1, v2, :cond_4

    goto :goto_1

    .line 204
    :cond_4
    invoke-direct {p0}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->adjustDynamicTableByteCount()V

    goto :goto_3

    .line 202
    :cond_5
    :goto_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dynamic table size update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_6
    const/16 v1, 0x10

    if-eq v0, v1, :cond_8

    if-nez v0, :cond_7

    goto :goto_2

    .line 208
    :cond_7
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v1

    .line 209
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithoutIndexingIndexedName(I)V

    .line 209
    .end local v0    # "b":I
    .end local v1    # "index":I
    goto :goto_3

    .line 206
    .restart local v0    # "b":I
    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithoutIndexingNewName()V

    .line 211
    .end local v0    # "b":I
    :goto_3
    goto/16 :goto_0

    .line 212
    :cond_9
    return-void
.end method

.method readInt(II)I
    .locals 5
    .param p1, "firstByte"    # I
    .param p2, "prefixMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    and-int v0, p1, p2

    .line 317
    .local v0, "prefix":I
    if-ge v0, p2, :cond_0

    .line 318
    return v0

    .line 322
    :cond_0
    move v1, p2

    .line 323
    .local v1, "result":I
    const/4 v2, 0x0

    .line 325
    .local v2, "shift":I
    :goto_0
    invoke-direct {p0}, Lcom/leidong/open/http/okhttp3/internal/http2/Hpack$Reader;->readByte()I

    move-result v3

    .line 326
    .local v3, "b":I
    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_1

    .line 327
    and-int/lit8 v4, v3, 0x7f

    shl-int/2addr v4, v2

    add-int/2addr v1, v4

    .line 328
    add-int/lit8 v2, v2, 0x7

    .line 333
    .end local v3    # "b":I
    goto :goto_0

    .line 330
    .restart local v3    # "b":I
    :cond_1
    shl-int v4, v3, v2

    add-int/2addr v1, v4

    .line 331
    nop

    .line 334
    .end local v3    # "b":I
    return v1
.end method
