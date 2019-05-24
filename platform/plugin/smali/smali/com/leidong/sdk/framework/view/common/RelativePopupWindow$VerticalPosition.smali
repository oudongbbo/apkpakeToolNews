.class final enum Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;
.super Ljava/lang/Enum;
.source "RelativePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VerticalPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

.field public static final enum ABOVE:Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

.field public static final enum ALIGN_BOTTOM:Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

.field public static final enum ALIGN_TOP:Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

.field public static final enum BELOW:Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

.field public static final enum CENTER:Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 17
    new-instance v0, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

    const-string v1, "CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;->CENTER:Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

    new-instance v0, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

    const-string v1, "ABOVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;->ABOVE:Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

    new-instance v0, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

    const-string v1, "BELOW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;->BELOW:Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

    new-instance v0, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

    const-string v1, "ALIGN_TOP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;->ALIGN_TOP:Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

    new-instance v0, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

    const-string v1, "ALIGN_BOTTOM"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;->ALIGN_BOTTOM:Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

    const/4 v0, 0x5

    .line 16
    new-array v0, v0, [Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

    sget-object v1, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;->CENTER:Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;->ABOVE:Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;->BELOW:Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;->ALIGN_TOP:Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;->ALIGN_BOTTOM:Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

    aput-object v1, v0, v6

    sput-object v0, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;->$VALUES:[Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;
    .locals 1

    .line 16
    const-class v0, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

    return-object p0
.end method

.method public static values()[Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;
    .locals 1

    .line 16
    sget-object v0, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;->$VALUES:[Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

    invoke-virtual {v0}, [Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;

    return-object v0
.end method
