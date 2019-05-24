.class public Lcom/leidong/sdk/framework/web/webview/WebViewBase;
.super Landroid/webkit/WebView;
.source "WebViewBase.java"


# instance fields
.field private isUseGPU:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->isUseGPU:Z

    .line 25
    const-class p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->setTag(Ljava/lang/Object;)V

    .line 26
    invoke-direct {p0}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->isUseGPU:Z

    .line 36
    invoke-direct {p0}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->isUseGPU:Z

    .line 31
    invoke-direct {p0}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->init()V

    return-void
.end method

.method private static clearCacheFolder(Ljava/io/File;I)I
    .locals 12

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 174
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 177
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 178
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_2

    .line 181
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 182
    array-length v3, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    .line 184
    :try_start_1
    aget-object v5, p0, v0

    .line 185
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 186
    invoke-static {v5, p1}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->clearCacheFolder(Ljava/io/File;I)I

    move-result v6

    add-int/2addr v4, v6

    .line 187
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    int-to-long v10, p1

    mul-long v10, v10, v8

    sub-long v8, v1, v10

    cmp-long v10, v6, v8

    if-gez v10, :cond_2

    .line 188
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_3

    :catch_1
    move-exception p0

    .line 194
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_4
    :goto_2
    return v0

    :cond_5
    :goto_3
    return v0
.end method

.method public static clearWebviewCache(Landroid/content/Context;)V
    .locals 3

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->clearCacheFolder(Ljava/io/File;I)I

    .line 146
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "webview.db"

    .line 147
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const-string v0, "webviewCache.db"

    .line 148
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    return-void
.end method

.method private disableGPU(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, p1, v0}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    return-void
.end method

.method private getAppCachePath()Ljava/lang/String;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataBasePath()Ljava/lang/String;
    .locals 3

    .line 167
    invoke-virtual {p0}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "database"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->setInitialScale(I)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->setVerticalScrollBarEnabled(Z)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->setHorizontalScrollBarEnabled(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->requestFocusFromTouch()Z

    .line 45
    invoke-virtual {p0}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->requestFocus()Z

    const/4 v1, 0x1

    .line 46
    invoke-virtual {p0, v1}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->setFocusable(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const-string v3, "utf-8"

    .line 48
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 50
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 51
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 52
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 54
    new-array v3, v1, [Ljava/lang/Object;

    .line 55
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "setPluginsEnabled"

    .line 56
    invoke-static {v2, v4, v3}, Lcom/leidong/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 60
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 61
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 62
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v3, 0x2

    .line 63
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 64
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 66
    new-array v3, v1, [Ljava/lang/Object;

    .line 67
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    const-string v4, "setDomStorageEnabled"

    .line 68
    invoke-static {v2, v4, v3}, Lcom/leidong/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    .line 72
    new-array v3, v1, [Ljava/lang/Object;

    .line 73
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    const-string v4, "setNavDump"

    .line 74
    invoke-static {v2, v4, v3}, Lcom/leidong/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 79
    new-array v3, v1, [Ljava/lang/Object;

    const/16 v4, 0x14

    .line 80
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "setPageCacheCapacity"

    .line 81
    invoke-static {v2, v4, v3}, Lcom/leidong/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_1
    new-array v3, v1, [Ljava/lang/Object;

    .line 86
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    const-string v4, "setDatabaseEnabled"

    .line 87
    invoke-static {v2, v4, v3}, Lcom/leidong/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-array v3, v1, [Ljava/lang/Object;

    .line 91
    invoke-direct {p0}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->getDataBasePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "setDatabasePath"

    .line 92
    invoke-static {v2, v4, v3}, Lcom/leidong/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-array v3, v1, [Ljava/lang/Object;

    const-wide/32 v4, 0x800000

    .line 96
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "setAppCacheMaxSize"

    .line 97
    invoke-static {v2, v4, v3}, Lcom/leidong/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-array v3, v1, [Ljava/lang/Object;

    .line 101
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    const-string v4, "setAppCacheEnabled"

    .line 102
    invoke-static {v2, v4, v3}, Lcom/leidong/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-direct {p0}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->getAppCachePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "setAppCachePath"

    .line 106
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-static {v2, v4, v1}, Lcom/leidong/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v0, Lcom/leidong/sdk/framework/web/webview/WebViewBase$1;

    invoke-direct {v0, p0}, Lcom/leidong/sdk/framework/web/webview/WebViewBase$1;-><init>(Lcom/leidong/sdk/framework/web/webview/WebViewBase;)V

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 133
    iget-boolean v0, p0, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->isUseGPU:Z

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0, p1}, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->disableGPU(Landroid/graphics/Canvas;)V

    .line 136
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setEnableHardwareAccelerated(Z)V
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->isUseGPU:Z

    if-eq v0, p1, :cond_0

    .line 141
    iput-boolean p1, p0, Lcom/leidong/sdk/framework/web/webview/WebViewBase;->isUseGPU:Z

    :cond_0
    return-void
.end method
