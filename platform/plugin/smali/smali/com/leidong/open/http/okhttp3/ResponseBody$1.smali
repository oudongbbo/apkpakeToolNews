.class final Lcom/leidong/open/http/okhttp3/ResponseBody$1;
.super Lcom/leidong/open/http/okhttp3/ResponseBody;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/open/http/okhttp3/ResponseBody;->create(Lcom/leidong/open/http/okhttp3/MediaType;JLcom/leidong/open/http/okio/BufferedSource;)Lcom/leidong/open/http/okhttp3/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lcom/leidong/open/http/okio/BufferedSource;

.field final synthetic val$contentLength:J

.field final synthetic val$contentType:Lcom/leidong/open/http/okhttp3/MediaType;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okhttp3/MediaType;JLcom/leidong/open/http/okio/BufferedSource;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/ResponseBody$1;->val$contentType:Lcom/leidong/open/http/okhttp3/MediaType;

    iput-wide p2, p0, Lcom/leidong/open/http/okhttp3/ResponseBody$1;->val$contentLength:J

    iput-object p4, p0, Lcom/leidong/open/http/okhttp3/ResponseBody$1;->val$content:Lcom/leidong/open/http/okio/BufferedSource;

    invoke-direct {p0}, Lcom/leidong/open/http/okhttp3/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 228
    iget-wide v0, p0, Lcom/leidong/open/http/okhttp3/ResponseBody$1;->val$contentLength:J

    return-wide v0
.end method

.method public contentType()Lcom/leidong/open/http/okhttp3/MediaType;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/ResponseBody$1;->val$contentType:Lcom/leidong/open/http/okhttp3/MediaType;

    return-object v0
.end method

.method public source()Lcom/leidong/open/http/okio/BufferedSource;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/ResponseBody$1;->val$content:Lcom/leidong/open/http/okio/BufferedSource;

    return-object v0
.end method
