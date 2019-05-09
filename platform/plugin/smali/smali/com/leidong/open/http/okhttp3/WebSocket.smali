.class public interface abstract Lcom/leidong/open/http/okhttp3/WebSocket;
.super Ljava/lang/Object;
.source "WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leidong/open/http/okhttp3/WebSocket$Factory;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract close(ILjava/lang/String;)Z
.end method

.method public abstract queueSize()J
.end method

.method public abstract request()Lcom/leidong/open/http/okhttp3/Request;
.end method

.method public abstract send(Lcom/leidong/open/http/okio/ByteString;)Z
.end method

.method public abstract send(Ljava/lang/String;)Z
.end method
