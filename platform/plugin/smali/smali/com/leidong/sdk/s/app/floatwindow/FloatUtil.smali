.class public Lcom/leidong/sdk/s/app/floatwindow/FloatUtil;
.super Ljava/lang/Object;
.source "FloatUtil.java"


# static fields
.field public static final HAS_AUTHOR:I = 0x1

.field private static final INPUT_METHOD_SPECIAL_MODELS:[Ljava/lang/String;

.field private static final NOT_AUTHOR:I = 0x2

.field private static final NOT_SUPPORT_AUTHOR:I = 0x3

.field public static final SPECIAL_MODELS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FloatWinEnter"

.field private static specialVersions:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "MI"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "XIAOMI"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "HUAWEI"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "OPPO"

    const/4 v4, 0x3

    aput-object v1, v0, v4

    sput-object v0, Lcom/leidong/sdk/s/app/floatwindow/FloatUtil;->SPECIAL_MODELS:[Ljava/lang/String;

    .line 27
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "SAMSUNG"

    aput-object v1, v0, v2

    sput-object v0, Lcom/leidong/sdk/s/app/floatwindow/FloatUtil;->INPUT_METHOD_SPECIAL_MODELS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static askType(Landroid/content/Context;)I
    .locals 4

    const-string v0, "FloatWinEnter"

    const-string v1, "SharedStaticField.HOST_VISIBLE = false;"

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Lcom/leidong/sdk/s/app/floatwindow/FloatUtil;->isSpecialVersion()Z

    move-result v0

    const/16 v1, 0x7d2

    if-eqz v0, :cond_0

    goto :goto_2

    .line 125
    :cond_0
    invoke-static {}, Lcom/leidong/sdk/s/app/floatwindow/FloatUtil;->isSpecialDevice()Z

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x7d5

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/leidong/sdk/s/app/floatwindow/FloatUtil;->hasAuthorFloatWin(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 128
    :cond_1
    invoke-static {}, Lcom/leidong/sdk/s/app/floatwindow/FloatUtil;->isSpecialDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/leidong/sdk/s/app/floatwindow/FloatUtil;->hasAuthorFloatWin(Landroid/content/Context;)I

    move-result p0

    if-eq p0, v2, :cond_2

    goto :goto_0

    .line 131
    :cond_2
    invoke-static {}, Lcom/leidong/sdk/s/app/floatwindow/FloatUtil;->isInputMethodSpecialDevice()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "FloatWinEnter"

    const-string v0, "\u6ce8\u610f\u6d6e\u7a97\u5bf9\u8f93\u5165\u6cd5\u652f\u6301\u4e0d\u53cb\u597d"

    .line 133
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    const/16 v1, 0x7d5

    :goto_1
    const-string p0, "FloatWinEnter"

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u542f\u52a8"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u65b9\u5f0f\u7684\u6d6e\u7a97"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v1
.end method

.method public static getBuildModel()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOSversion()I
    .locals 1

    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private static getSpecialDevices()[Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/leidong/sdk/s/app/floatwindow/FloatUtil;->SPECIAL_MODELS:[Ljava/lang/String;

    return-object v0
.end method

.method public static hasAuthorFloatWin(Landroid/content/Context;)I
    .locals 8

    .line 80
    invoke-static {}, Lcom/leidong/sdk/s/app/floatwindow/FloatUtil;->getOSversion()I

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x13

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "appops"

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 86
    new-array v3, v1, [Ljava/lang/Class;

    .line 87
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 88
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 89
    const-class v4, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-string v4, "checkOp"

    .line 90
    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 91
    new-array v3, v1, [Ljava/lang/Object;

    const/16 v4, 0x18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v7

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    return v6

    :cond_1
    return v7

    :catch_0
    return v1
.end method

.method private static isInputMethodSpecialDevice()Z
    .locals 6

    .line 144
    sget-object v0, Lcom/leidong/sdk/s/app/floatwindow/FloatUtil;->INPUT_METHOD_SPECIAL_MODELS:[Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/leidong/sdk/s/app/floatwindow/FloatUtil;->getBuildModel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 149
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 150
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static isSpecialDevice()Z
    .locals 6

    .line 36
    invoke-static {}, Lcom/leidong/sdk/s/app/floatwindow/FloatUtil;->getSpecialDevices()[Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/leidong/sdk/s/app/floatwindow/FloatUtil;->getBuildModel()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 41
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 42
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 43
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isSpecialVersion()Z
    .locals 3

    .line 60
    invoke-static {}, Lcom/leidong/sdk/s/app/floatwindow/FloatUtil;->getOSversion()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x19

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    const/16 v2, 0x12

    if-gt v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
