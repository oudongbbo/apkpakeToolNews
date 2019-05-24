.class Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;
.super Ljava/lang/Object;
.source "MaterialDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Builder"
.end annotation


# instance fields
.field private mAlertDialogWindow:Landroid/view/Window;

.field private mButtonLayout:Landroid/widget/LinearLayout;

.field private mMessageContentRoot:Landroid/view/ViewGroup;

.field private mMessageView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;


# direct methods
.method private constructor <init>(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)V
    .locals 6

    .line 237
    iput-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$102(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 239
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$100(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 241
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$100(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20008

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 243
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$100(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 245
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$100(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    .line 246
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 249
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "leidong_layout_material_dialog"

    const-string v4, "layout"

    invoke-static {v1, v3, v4}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 250
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 251
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 253
    iget-object v1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "leidong_material_bg_dialog_window"

    const-string v5, "drawable"

    invoke-static {v3, v4, v5}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 255
    iget-object v1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 258
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 260
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const v1, 0x3f59999a    # 0.85f

    .line 265
    :goto_0
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 267
    iget-object v1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    const/4 v3, -0x2

    invoke-virtual {v1, v0, v3}, Landroid/view/Window;->setLayout(II)V

    .line 269
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "title"

    const-string v4, "id"

    invoke-static {v1, v3, v4}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mTitleView:Landroid/widget/TextView;

    .line 270
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "message"

    const-string v4, "id"

    invoke-static {v1, v3, v4}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mMessageView:Landroid/widget/TextView;

    .line 271
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "buttonLayout"

    const-string v4, "id"

    invoke-static {v1, v3, v4}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    .line 272
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "btn_p"

    const-string v4, "id"

    invoke-static {v1, v3, v4}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$302(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Landroid/widget/Button;)Landroid/widget/Button;

    .line 273
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "btn_n"

    const-string v4, "id"

    invoke-static {v1, v3, v4}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$402(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Landroid/widget/Button;)Landroid/widget/Button;

    .line 274
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "message_content_root"

    const-string v4, "id"

    invoke-static {v1, v3, v4}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mMessageContentRoot:Landroid/view/ViewGroup;

    .line 277
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$500(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "contentView"

    const-string v4, "id"

    invoke-static {v1, v3, v4}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 279
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 280
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$500(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    :cond_1
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$600(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$600(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->setTitle(I)V

    .line 285
    :cond_2
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$700(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 286
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$700(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->setTitle(Ljava/lang/CharSequence;)V

    .line 288
    :cond_3
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$700(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$600(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v0

    if-nez v0, :cond_4

    .line 289
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    :cond_4
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$800(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 292
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$800(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->setMessage(I)V

    .line 294
    :cond_5
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$900(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 295
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$900(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->setMessage(Ljava/lang/CharSequence;)V

    .line 297
    :cond_6
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1000(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_7

    .line 298
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$300(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 299
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$300(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1000(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 300
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$300(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v4, p1, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->pListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    :cond_7
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1100(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v0

    if-eq v0, v3, :cond_8

    .line 303
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$400(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 304
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$400(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1100(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 305
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$400(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v4, p1, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->nListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    :cond_8
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1300(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 308
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$300(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 309
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$300(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 310
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$300(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v4, p1, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->pListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    :cond_9
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1400(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1300(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 314
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$400(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 315
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$400(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1400(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 316
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$400(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p1, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->nListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    :cond_a
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1300(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1000(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v0

    if-ne v0, v3, :cond_b

    .line 319
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$300(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 321
    :cond_b
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1400(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1300(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1100(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v0

    if-ne v0, v3, :cond_c

    .line 322
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$400(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 324
    :cond_c
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1500(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v0

    if-eq v0, v3, :cond_d

    .line 325
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "material_background"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 326
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1500(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 328
    :cond_d
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1600(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 329
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "material_background"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 330
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1600(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 333
    :cond_e
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1700(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 334
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1700(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 335
    :cond_f
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1800(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 336
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1800(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->setContentView(I)V

    .line 338
    :cond_10
    :goto_1
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$100(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$1900(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 339
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$100(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$2000(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 340
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$2100(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 341
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$100(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$2100(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 343
    :cond_11
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$2200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 344
    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$100(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$2200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_12
    return-void
.end method

.method synthetic constructor <init>(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$1;)V
    .locals 0

    .line 229
    invoke-direct {p0, p1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;-><init>(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;)Landroid/view/Window;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    return-object p0
.end method


# virtual methods
.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 497
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-static {v1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "material_background"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 498
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 4

    .line 502
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-static {v1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "material_background"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 503
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-static {v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$100(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-static {v0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$100(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mMessageContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 493
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mMessageContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mMessageContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 4

    .line 461
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 463
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    invoke-static {v0, v1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$2500(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;Landroid/widget/ListView;)V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-static {v1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "message_content_view"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 469
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 470
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 472
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    .line 473
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/AutoCompleteTextView;

    if-eqz v2, :cond_3

    .line 474
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AutoCompleteTextView;

    const/4 v3, 0x1

    .line 475
    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 476
    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 477
    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setMessage(I)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 5

    .line 396
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-static {v1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 397
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 399
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    iget-object v2, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-static {v2}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "leidong_material_bg_card"

    const-string v4, "drawable"

    invoke-static {v2, v3, v4}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 401
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    const/16 v2, 0xde

    .line 402
    invoke-static {v2, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 403
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v2, 0x11

    .line 404
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setGravity(I)V

    .line 405
    iget-object v2, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$2300(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;F)I

    move-result v2

    invoke-virtual {v0, p1, p1, p1, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 406
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object p2, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    if-lez p2, :cond_0

    const/16 p2, 0x14

    const/16 v2, 0xa

    .line 408
    iget-object v3, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    const/high16 v4, 0x41100000    # 9.0f

    invoke-static {v3, v4}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$2300(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;F)I

    move-result v3

    invoke-virtual {v1, p2, p1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 409
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    iget-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 412
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    iget-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 5

    .line 375
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-static {v1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 376
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 378
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    iget-object v1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-static {v1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "leidong_material_bg_card"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/16 v1, 0xff

    const/16 v2, 0x23

    const/16 v3, 0x9f

    const/16 v4, 0xf2

    .line 380
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 381
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x11

    .line 382
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setGravity(I)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 383
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 384
    iget-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p1, v1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$2300(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;F)I

    move-result p1

    iget-object v1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v1, v2}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$2300(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;F)I

    move-result v1

    iget-object v2, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v2, v3}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$2300(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 385
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object p1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 4

    .line 418
    iget-object v0, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;

    invoke-static {v1}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "contentView"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 419
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 420
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 422
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    new-instance v1, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder$1;

    invoke-direct {v1, p0}, Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder$1;-><init>(Lcom/leidong/sdk/framework/view/dialog/MaterialDialog$Builder;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 435
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 437
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 439
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 441
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 442
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 443
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 444
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 445
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 446
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 450
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_2

    .line 451
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    .line 452
    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 453
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 454
    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
