.class Lcom/leidong/open/http/okserver/task/PriorityAsyncTask$2;
.super Ljava/util/concurrent/FutureTask;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/open/http/okserver/task/PriorityAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/open/http/okserver/task/PriorityAsyncTask;


# direct methods
.method constructor <init>(Lcom/leidong/open/http/okserver/task/PriorityAsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/leidong/open/http/okserver/task/PriorityAsyncTask;

    .line 74
    .local p0, "this":Lcom/leidong/open/http/okserver/task/PriorityAsyncTask$2;, "Lcom/leidong/open/http/okserver/task/PriorityAsyncTask$2;"
    .local p2, "x0":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Lcom/leidong/open/http/okserver/task/PriorityAsyncTask$2;->this$0:Lcom/leidong/open/http/okserver/task/PriorityAsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 4

    .line 78
    .local p0, "this":Lcom/leidong/open/http/okserver/task/PriorityAsyncTask$2;, "Lcom/leidong/open/http/okserver/task/PriorityAsyncTask$2;"
    :try_start_0
    iget-object v0, p0, Lcom/leidong/open/http/okserver/task/PriorityAsyncTask$2;->this$0:Lcom/leidong/open/http/okserver/task/PriorityAsyncTask;

    invoke-virtual {p0}, Lcom/leidong/open/http/okserver/task/PriorityAsyncTask$2;->get()Ljava/lang/Object;

    move-result-object v1

    # invokes: Lcom/leidong/open/http/okserver/task/PriorityAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/leidong/open/http/okserver/task/PriorityAsyncTask;->access$400(Lcom/leidong/open/http/okserver/task/PriorityAsyncTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    iget-object v1, p0, Lcom/leidong/open/http/okserver/task/PriorityAsyncTask$2;->this$0:Lcom/leidong/open/http/okserver/task/PriorityAsyncTask;

    const/4 v2, 0x0

    # invokes: Lcom/leidong/open/http/okserver/task/PriorityAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/leidong/open/http/okserver/task/PriorityAsyncTask;->access$400(Lcom/leidong/open/http/okserver/task/PriorityAsyncTask;Ljava/lang/Object;)V

    .line 84
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    goto :goto_1

    .line 81
    :catch_1
    move-exception v0

    .line 82
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 79
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "AsyncTask"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    nop

    .line 86
    :goto_1
    return-void
.end method