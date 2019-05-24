.class public Lcom/leidong/sdk/framework/web/webview/WebviewHandler;
.super Ljava/lang/Object;
.source "WebviewHandler.java"


# static fields
.field private static handler:Landroid/os/Handler;

.field private static handlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/leidong/sdk/framework/web/webview/WebviewHandler;->handlerThread:Landroid/os/HandlerThread;

    .line 13
    invoke-static {}, Lcom/leidong/sdk/framework/web/webview/WebviewHandler;->init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy()V
    .locals 1

    .line 18
    sget-object v0, Lcom/leidong/sdk/framework/web/webview/WebviewHandler;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lcom/leidong/sdk/framework/web/webview/WebviewHandler;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/leidong/sdk/framework/web/webview/WebviewHandler;->handlerThread:Landroid/os/HandlerThread;

    .line 21
    sput-object v0, Lcom/leidong/sdk/framework/web/webview/WebviewHandler;->handler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public static init()V
    .locals 3

    .line 30
    sget-object v0, Lcom/leidong/sdk/framework/web/webview/WebviewHandler;->handlerThread:Landroid/os/HandlerThread;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/leidong/sdk/framework/web/webview/WebviewHandler;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :try_start_1
    sget-object v1, Lcom/leidong/sdk/framework/web/webview/WebviewHandler;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 34
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/leidong/sdk/framework/web/webview/WebviewHandler;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/leidong/sdk/framework/web/webview/WebviewHandler;->handler:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :try_start_2
    monitor-exit v0

    return-void

    .line 38
    :catch_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1

    .line 42
    sget-object v0, Lcom/leidong/sdk/framework/web/webview/WebviewHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/leidong/sdk/framework/web/webview/WebviewHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 47
    sget-object v0, Lcom/leidong/sdk/framework/web/webview/WebviewHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/leidong/sdk/framework/web/webview/WebviewHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    .line 52
    sget-object v0, Lcom/leidong/sdk/framework/web/webview/WebviewHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/leidong/sdk/framework/web/webview/WebviewHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
