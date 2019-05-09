.class public abstract Lcom/leidong/open/http/okhttp3/WebSocketListener;
.super Ljava/lang/Object;
.source "WebSocketListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/leidong/open/http/okhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0
    .param p1, "webSocket"    # Lcom/leidong/open/http/okhttp3/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 47
    return-void
.end method

.method public onClosing(Lcom/leidong/open/http/okhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0
    .param p1, "webSocket"    # Lcom/leidong/open/http/okhttp3/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 40
    return-void
.end method

.method public onFailure(Lcom/leidong/open/http/okhttp3/WebSocket;Ljava/lang/Throwable;Lcom/leidong/open/http/okhttp3/Response;)V
    .locals 0
    .param p1, "webSocket"    # Lcom/leidong/open/http/okhttp3/WebSocket;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "response"    # Lcom/leidong/open/http/okhttp3/Response;

    .line 55
    return-void
.end method

.method public onMessage(Lcom/leidong/open/http/okhttp3/WebSocket;Lcom/leidong/open/http/okio/ByteString;)V
    .locals 0
    .param p1, "webSocket"    # Lcom/leidong/open/http/okhttp3/WebSocket;
    .param p2, "bytes"    # Lcom/leidong/open/http/okio/ByteString;

    .line 36
    return-void
.end method

.method public onMessage(Lcom/leidong/open/http/okhttp3/WebSocket;Ljava/lang/String;)V
    .locals 0
    .param p1, "webSocket"    # Lcom/leidong/open/http/okhttp3/WebSocket;
    .param p2, "text"    # Ljava/lang/String;

    .line 32
    return-void
.end method

.method public onOpen(Lcom/leidong/open/http/okhttp3/WebSocket;Lcom/leidong/open/http/okhttp3/Response;)V
    .locals 0
    .param p1, "webSocket"    # Lcom/leidong/open/http/okhttp3/WebSocket;
    .param p2, "response"    # Lcom/leidong/open/http/okhttp3/Response;

    .line 28
    return-void
.end method
