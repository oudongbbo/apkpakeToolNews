.class public Lcom/leidong/open/http/okgo/adapter/DefaultCallAdapter;
.super Ljava/lang/Object;
.source "DefaultCallAdapter.java"

# interfaces
.implements Lcom/leidong/open/http/okgo/adapter/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/leidong/open/http/okgo/adapter/CallAdapter<",
        "Lcom/leidong/open/http/okgo/adapter/Call<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/leidong/open/http/okgo/adapter/DefaultCallAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/leidong/open/http/okgo/adapter/DefaultCallAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/leidong/open/http/okgo/adapter/DefaultCallAdapter;

    invoke-direct {v0}, Lcom/leidong/open/http/okgo/adapter/DefaultCallAdapter;-><init>()V

    return-object v0
.end method


# virtual methods
.method public adapt(Lcom/leidong/open/http/okgo/adapter/Call;)Lcom/leidong/open/http/okgo/adapter/Call;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/leidong/open/http/okgo/adapter/Call<",
            "TR;>;)",
            "Lcom/leidong/open/http/okgo/adapter/Call<",
            "TT;>;"
        }
    .end annotation

    return-object p1
.end method

.method public bridge synthetic adapt(Lcom/leidong/open/http/okgo/adapter/Call;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/leidong/open/http/okgo/adapter/DefaultCallAdapter;->adapt(Lcom/leidong/open/http/okgo/adapter/Call;)Lcom/leidong/open/http/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method
