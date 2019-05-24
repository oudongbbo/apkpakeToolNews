.class public Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;
.super Landroid/widget/PopupWindow;
.source "RelativePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$HorizontalPosition;,
        Lcom/leidong/sdk/framework/view/common/RelativePopupWindow$VerticalPosition;
    }
.end annotation


# static fields
.field public static final HorizontalPosition_ALIGN_LEFT:I = 0x3

.field public static final HorizontalPosition_ALIGN_RIGHT:I = 0x4

.field public static final HorizontalPosition_CENTER:I = 0x0

.field public static final HorizontalPosition_LEFT:I = 0x1

.field public static final HorizontalPosition_RIGHT:I = 0x2

.field public static final VerticalPosition_ABOVE:I = 0x1

.field public static final VerticalPosition_ALIGN_BOTTOM:I = 0x4

.field public static final VerticalPosition_ALIGN_TOP:I = 0x3

.field public static final VerticalPosition_BELOW:I = 0x2

.field public static final VerticalPosition_CENTER:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/PopupWindow;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method

.method private static getDropDownMeasureSpecMode(I)I
    .locals 1

    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    const/high16 p0, 0x40000000    # 2.0f

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static makeDropDownMeasureSpec(I)I
    .locals 1

    .line 171
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->getDropDownMeasureSpecMode(I)I

    move-result p0

    invoke-static {v0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public showOnAnchor(Landroid/view/View;II)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 81
    invoke-virtual/range {v0 .. v5}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->showOnAnchor(Landroid/view/View;IIII)V

    return-void
.end method

.method public showOnAnchor(Landroid/view/View;IIII)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 104
    invoke-virtual/range {v0 .. v6}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->showOnAnchor(Landroid/view/View;IIIIZ)V

    return-void
.end method

.method public showOnAnchor(Landroid/view/View;IIIIZ)V
    .locals 6

    .line 117
    invoke-virtual {p0, p6}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->setClippingEnabled(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->getWidth()I

    move-result v1

    invoke-static {v1}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->makeDropDownMeasureSpec(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->getHeight()I

    move-result v2

    invoke-static {v2}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->makeDropDownMeasureSpec(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez p6, :cond_0

    .line 123
    new-array v4, v3, [I

    .line 124
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 125
    aget v5, v4, v2

    add-int/2addr p4, v5

    const/4 v5, 0x1

    .line 126
    aget v4, v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr p5, v4

    :cond_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    sub-int/2addr p5, v0

    goto :goto_0

    .line 139
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int/2addr p5, p2

    goto :goto_0

    .line 130
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr v0, p2

    sub-int/2addr p5, v0

    goto :goto_0

    .line 136
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/2addr p2, v3

    div-int/2addr v0, v3

    add-int/2addr p2, v0

    sub-int/2addr p5, p2

    :goto_0
    packed-switch p3, :pswitch_data_1

    goto :goto_1

    .line 150
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int/2addr v1, p2

    sub-int/2addr p4, v1

    goto :goto_1

    .line 159
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr p4, p2

    goto :goto_1

    :pswitch_7
    sub-int/2addr p4, v1

    goto :goto_1

    .line 153
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/2addr p2, v3

    div-int/2addr v1, v3

    sub-int/2addr p2, v1

    add-int/2addr p4, p2

    :goto_1
    :pswitch_9
    if-eqz p6, :cond_1

    goto :goto_2

    .line 165
    :cond_1
    invoke-virtual {p0, p1, v2, p4, p5}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public showOnAnchor(Landroid/view/View;IIZ)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    .line 92
    invoke-virtual/range {v0 .. v6}, Lcom/leidong/sdk/framework/view/common/RelativePopupWindow;->showOnAnchor(Landroid/view/View;IIIIZ)V

    return-void
.end method
