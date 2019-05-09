.class public Lcom/leidong/open/http/okhttp3/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leidong/open/http/okhttp3/EventListener$Factory;
    }
.end annotation


# static fields
.field public static final NULL_EVENT_LISTENER:Lcom/leidong/open/http/okhttp3/EventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/leidong/open/http/okhttp3/EventListener$1;

    invoke-direct {v0}, Lcom/leidong/open/http/okhttp3/EventListener$1;-><init>()V

    sput-object v0, Lcom/leidong/open/http/okhttp3/EventListener;->NULL_EVENT_LISTENER:Lcom/leidong/open/http/okhttp3/EventListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectEnd(Lcom/leidong/open/http/okhttp3/Call;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "call"    # Lcom/leidong/open/http/okhttp3/Call;
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .param p4, "protocol"    # Ljava/lang/String;
    .param p5, "throwable"    # Ljava/lang/Throwable;

    .line 55
    return-void
.end method

.method public connectStart(Lcom/leidong/open/http/okhttp3/Call;Ljava/net/InetAddress;I)V
    .locals 0
    .param p1, "call"    # Lcom/leidong/open/http/okhttp3/Call;
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I

    .line 44
    return-void
.end method

.method public dnsEnd(Lcom/leidong/open/http/okhttp3/Call;Ljava/lang/String;Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "call"    # Lcom/leidong/open/http/okhttp3/Call;
    .param p2, "domainName"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/leidong/open/http/okhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 41
    .local p3, "inetAddressList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    return-void
.end method

.method public dnsStart(Lcom/leidong/open/http/okhttp3/Call;Ljava/lang/String;)V
    .locals 0
    .param p1, "call"    # Lcom/leidong/open/http/okhttp3/Call;
    .param p2, "domainName"    # Ljava/lang/String;

    .line 37
    return-void
.end method

.method public fetchEnd(Lcom/leidong/open/http/okhttp3/Call;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "call"    # Lcom/leidong/open/http/okhttp3/Call;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 82
    return-void
.end method

.method public fetchStart(Lcom/leidong/open/http/okhttp3/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/leidong/open/http/okhttp3/Call;

    .line 34
    return-void
.end method

.method public requestBodyEnd(Lcom/leidong/open/http/okhttp3/Call;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "call"    # Lcom/leidong/open/http/okhttp3/Call;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 67
    return-void
.end method

.method public requestBodyStart(Lcom/leidong/open/http/okhttp3/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/leidong/open/http/okhttp3/Call;

    .line 64
    return-void
.end method

.method public requestHeadersEnd(Lcom/leidong/open/http/okhttp3/Call;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "call"    # Lcom/leidong/open/http/okhttp3/Call;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 61
    return-void
.end method

.method public requestHeadersStart(Lcom/leidong/open/http/okhttp3/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/leidong/open/http/okhttp3/Call;

    .line 58
    return-void
.end method

.method public responseBodyEnd(Lcom/leidong/open/http/okhttp3/Call;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "call"    # Lcom/leidong/open/http/okhttp3/Call;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 79
    return-void
.end method

.method public responseBodyStart(Lcom/leidong/open/http/okhttp3/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/leidong/open/http/okhttp3/Call;

    .line 76
    return-void
.end method

.method public responseHeadersEnd(Lcom/leidong/open/http/okhttp3/Call;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "call"    # Lcom/leidong/open/http/okhttp3/Call;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 73
    return-void
.end method

.method public responseHeadersStart(Lcom/leidong/open/http/okhttp3/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/leidong/open/http/okhttp3/Call;

    .line 70
    return-void
.end method

.method public secureConnectEnd(Lcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Handshake;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "call"    # Lcom/leidong/open/http/okhttp3/Call;
    .param p2, "handshake"    # Lcom/leidong/open/http/okhttp3/Handshake;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 51
    return-void
.end method

.method public secureConnectStart(Lcom/leidong/open/http/okhttp3/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/leidong/open/http/okhttp3/Call;

    .line 47
    return-void
.end method
