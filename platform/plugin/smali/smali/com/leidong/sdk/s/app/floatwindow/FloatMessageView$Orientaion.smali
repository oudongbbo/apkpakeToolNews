.class public final enum Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;
.super Ljava/lang/Enum;
.source "FloatMessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientaion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;

.field public static final enum LEFT:Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;

.field public static final enum RIGHT:Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;->LEFT:Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;

    new-instance v0, Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;

    const-string v1, "RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;->RIGHT:Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;

    const/4 v0, 0x2

    .line 33
    new-array v0, v0, [Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;

    sget-object v1, Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;->LEFT:Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;->RIGHT:Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;

    aput-object v1, v0, v3

    sput-object v0, Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;->$VALUES:[Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;
    .locals 1

    .line 33
    const-class v0, Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;

    return-object p0
.end method

.method public static values()[Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;
    .locals 1

    .line 33
    sget-object v0, Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;->$VALUES:[Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;

    invoke-virtual {v0}, [Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/leidong/sdk/s/app/floatwindow/FloatMessageView$Orientaion;

    return-object v0
.end method
