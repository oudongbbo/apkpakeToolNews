.class public final Lcom/leidong/open/http/okio/Options;
.super Ljava/util/AbstractList;
.source "Options.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/leidong/open/http/okio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final byteStrings:[Lcom/leidong/open/http/okio/ByteString;


# direct methods
.method private constructor <init>([Lcom/leidong/open/http/okio/ByteString;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/leidong/open/http/okio/Options;->byteStrings:[Lcom/leidong/open/http/okio/ByteString;

    return-void
.end method

.method public static varargs of([Lcom/leidong/open/http/okio/ByteString;)Lcom/leidong/open/http/okio/Options;
    .locals 1

    .line 34
    new-instance v0, Lcom/leidong/open/http/okio/Options;

    invoke-virtual {p0}, [Lcom/leidong/open/http/okio/ByteString;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/leidong/open/http/okio/ByteString;

    invoke-direct {v0, p0}, Lcom/leidong/open/http/okio/Options;-><init>([Lcom/leidong/open/http/okio/ByteString;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Lcom/leidong/open/http/okio/ByteString;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/leidong/open/http/okio/Options;->byteStrings:[Lcom/leidong/open/http/okio/ByteString;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okio/Options;->get(I)Lcom/leidong/open/http/okio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/leidong/open/http/okio/Options;->byteStrings:[Lcom/leidong/open/http/okio/ByteString;

    array-length v0, v0

    return v0
.end method
