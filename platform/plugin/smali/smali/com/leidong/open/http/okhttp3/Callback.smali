.class public interface abstract Lcom/leidong/open/http/okhttp3/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# virtual methods
.method public abstract onFailure(Lcom/leidong/open/http/okhttp3/Call;Ljava/io/IOException;)V
.end method

.method public abstract onResponse(Lcom/leidong/open/http/okhttp3/Call;Lcom/leidong/open/http/okhttp3/Response;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
