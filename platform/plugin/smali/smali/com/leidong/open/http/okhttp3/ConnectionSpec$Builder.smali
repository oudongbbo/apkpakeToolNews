.class public final Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/open/http/okhttp3/ConnectionSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field cipherSuites:[Ljava/lang/String;

.field supportsTlsExtensions:Z

.field tls:Z

.field tlsVersions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/leidong/open/http/okhttp3/ConnectionSpec;)V
    .locals 1
    .param p1, "connectionSpec"    # Lcom/leidong/open/http/okhttp3/ConnectionSpec;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iget-boolean v0, p1, Lcom/leidong/open/http/okhttp3/ConnectionSpec;->tls:Z

    iput-boolean v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;->tls:Z

    .line 266
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 267
    iget-object v0, p1, Lcom/leidong/open/http/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 268
    iget-boolean v0, p1, Lcom/leidong/open/http/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    iput-boolean v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 269
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0
    .param p1, "tls"    # Z

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-boolean p1, p0, Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;->tls:Z

    .line 262
    return-void
.end method


# virtual methods
.method public allEnabledCipherSuites()Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;
    .locals 2

    .line 272
    iget-boolean v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 274
    return-object p0
.end method

.method public allEnabledTlsVersions()Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;
    .locals 2

    .line 299
    iget-boolean v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 301
    return-object p0
.end method

.method public build()Lcom/leidong/open/http/okhttp3/ConnectionSpec;
    .locals 1

    .line 333
    new-instance v0, Lcom/leidong/open/http/okhttp3/ConnectionSpec;

    invoke-direct {v0, p0}, Lcom/leidong/open/http/okhttp3/ConnectionSpec;-><init>(Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;)V

    return-object v0
.end method

.method public varargs cipherSuites([Lcom/leidong/open/http/okhttp3/CipherSuite;)Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;
    .locals 3
    .param p1, "cipherSuites"    # [Lcom/leidong/open/http/okhttp3/CipherSuite;

    .line 278
    iget-boolean v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 281
    .local v0, "strings":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 281
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 282
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/leidong/open/http/okhttp3/CipherSuite;->javaName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;

    move-result-object v1

    return-object v1
.end method

.method public varargs cipherSuites([Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;
    .locals 2
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .line 288
    iget-boolean v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one cipher suite is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 295
    return-object p0
.end method

.method public supportsTlsExtensions(Z)Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;
    .locals 2
    .param p1, "supportsTlsExtensions"    # Z

    .line 327
    iget-boolean v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS extensions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    iput-boolean p1, p0, Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 329
    return-object p0
.end method

.method public varargs tlsVersions([Lcom/leidong/open/http/okhttp3/TlsVersion;)Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;
    .locals 3
    .param p1, "tlsVersions"    # [Lcom/leidong/open/http/okhttp3/TlsVersion;

    .line 305
    iget-boolean v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 308
    .local v0, "strings":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 308
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 309
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/leidong/open/http/okhttp3/TlsVersion;->javaName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;

    move-result-object v1

    return-object v1
.end method

.method public varargs tlsVersions([Ljava/lang/String;)Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;
    .locals 2
    .param p1, "tlsVersions"    # [Ljava/lang/String;

    .line 316
    iget-boolean v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one TLS version is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/leidong/open/http/okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 323
    return-object p0
.end method
