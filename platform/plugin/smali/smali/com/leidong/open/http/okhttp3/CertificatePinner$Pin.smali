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
    .locals 2

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->pattern:Ljava/lang/String;

    const-string v0, "*."

    .line 271
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

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/leidong/open/http/okhttp3/HttpUrl;->parse(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-static {p1}, Lcom/leidong/open/http/okhttp3/HttpUrl;->parse(Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leidong/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->canonicalHostname:Ljava/lang/String;

    const-string p1, "sha1/"

    .line 274
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "sha1/"

    .line 275
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    const-string p1, "sha1/"

    .line 276
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/leidong/open/http/okio/ByteString;->decodeBase64(Ljava/lang/String;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hash:Lcom/leidong/open/http/okio/ByteString;

    goto :goto_1

    :cond_1
    const-string p1, "sha256/"

    .line 277
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "sha256/"

    .line 278
    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    const-string p1, "sha256/"

    .line 279
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/leidong/open/http/okio/ByteString;->decodeBase64(Ljava/lang/String;)Lcom/leidong/open/http/okio/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hash:Lcom/leidong/open/http/okio/ByteString;

    .line 284
    :goto_1
    iget-object p1, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hash:Lcom/leidong/open/http/okio/ByteString;

    if-nez p1, :cond_2

    .line 285
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pins must be base64: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void

    .line 281
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pins must start with \'sha256/\' or \'sha1/\': "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 300
    instance-of v0, p1, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->pattern:Ljava/lang/String;

    check-cast p1, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;

    iget-object v1, p1, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->pattern:Ljava/lang/String;

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    iget-object v1, p1, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hash:Lcom/leidong/open/http/okio/ByteString;

    iget-object p1, p1, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hash:Lcom/leidong/open/http/okio/ByteString;

    .line 303
    invoke-virtual {v0, p1}, Lcom/leidong/open/http/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 309
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 310
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->hash:Lcom/leidong/open/http/okio/ByteString;

    invoke-virtual {v0}, Lcom/leidong/open/http/okio/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method matches(Ljava/lang/String;)Z
    .locals 7

    .line 290
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->pattern:Ljava/lang/String;

    const-string v1, "*."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    .line 292
    iget-object v4, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->canonicalHostname:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->canonicalHostname:Ljava/lang/String;

    .line 293
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p1

    .line 292
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/leidong/open/http/okhttp3/CertificatePinner$Pin;->canonicalHostname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
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
