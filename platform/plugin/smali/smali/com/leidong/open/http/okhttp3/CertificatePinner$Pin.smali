.class final Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okhttp3/CertificatePinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pin"
.end annotation


# static fields
.field private static final WILDCARD:Ljava/lang/String; = "*."


# instance fields
.field final canonicalHostname:Ljava/lang/String;

.field final hash:Lcom/leidong/open/http/okio/ByteString;

.field final hashAlgorithm:Ljava/lang/String;

.field final pattern:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->pattern:Ljava/lang/String;

    .line 271
    const-string v0, "*."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*."

    .line 272
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/open/http/okhttp3/HttpUrl;->parse(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v0}, Lcom/leidong/open/http/okhttp3/HttpUrl;->parse(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leidong/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->canonicalHostname:Ljava/lang/String;

    .line 274
    const-string v0, "sha1/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    const-string v0, "sha1/"

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    .line 276
    const-string v0, "sha1/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/open/http/okio/ByteString;->decodeBase64(Ljava/lang/String;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hash:Lcom/leidong/open/http/okio/ByteString;

    goto :goto_1

    .line 277
    :cond_1
    const-string v0, "sha256/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    const-string v0, "sha256/"

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    .line 279
    const-string v0, "sha256/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/leidong/open/http/okio/ByteString;->decodeBase64(Ljava/lang/String;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hash:Lcom/leidong/open/http/okio/ByteString;

    .line 284
    :goto_1
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hash:Lcom/leidong/open/http/okio/ByteString;

    if-nez v0, :cond_2

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pins must be base64: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_2
    return-void

    .line 281
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pins must start with \'sha256/\' or \'sha1/\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 300
    instance-of v0, p1, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->pattern:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;

    iget-object v1, v1, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->pattern:Ljava/lang/String;

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;

    iget-object v1, v1, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hash:Lcom/leidong/open/http/okio/ByteString;

    move-object v1, p1

    check-cast v1, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;

    iget-object v1, v1, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hash:Lcom/leidong/open/http/okio/ByteString;

    .line 303
    invoke-virtual {v0, v1}, Lcom/leidong/open/http/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 307
    const/16 v0, 0x11

    .line 308
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->pattern:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 309
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 310
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hash:Lcom/leidong/open/http/okio/ByteString;

    invoke-virtual {v2}, Lcom/leidong/open/http/okio/ByteString;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 311
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method matches(Ljava/lang/String;)Z
    .locals 7
    .param p1, "hostname"    # Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->pattern:Ljava/lang/String;

    const-string v1, "*."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 292
    .local v0, "firstDot":I
    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->canonicalHostname:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->canonicalHostname:Ljava/lang/String;

    .line 293
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    .line 292
    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    return v1

    .line 296
    .end local v0    # "firstDot":I
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->canonicalHostname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hash:Lcom/leidong/open/http/okio/ByteString;

    invoke-virtual {v1}, Lcom/leidong/open/http/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
