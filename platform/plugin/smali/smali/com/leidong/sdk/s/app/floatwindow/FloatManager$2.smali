.class Lcom/leidong/sdk/s/app/floatwindow/FloatManager$2;
.super Ljava/lang/Object;
.source "FloatManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->AnimationScale_In()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;


# direct methods
.method constructor <init>(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$2;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 630
    iget-object p1, p0, Lcom/leidong/sdk/s/app/floatwindow/FloatManager$2;->this$0:Lcom/leidong/sdk/s/app/floatwindow/FloatManager;

    invoke-static {p1}, Lcom/leidong/sdk/s/app/floatwindow/FloatManager;->access$1800(Lcom/leidong/sdk/s/app/floatwindow/FloatManager;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
