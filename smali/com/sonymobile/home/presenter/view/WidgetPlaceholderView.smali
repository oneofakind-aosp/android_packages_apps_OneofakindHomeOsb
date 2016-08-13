.class public Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;
.super Lcom/sonymobile/flix/components/Component;
.source "WidgetPlaceholderView.java"


# instance fields
.field private final mCornerRadius:I

.field private final mLabel:Ljava/lang/String;

.field private final mLabelView:Lcom/sonymobile/flix/components/Image;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Ljava/lang/String;)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 42
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->prepareForDrawing()V

    .line 45
    new-instance v0, Lcom/sonymobile/flix/components/Image;

    invoke-direct {v0, p1}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 47
    iput-object p2, p0, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->mLabel:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const v1, -0x6699999a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->mCornerRadius:I

    .line 51
    return-void
.end method

.method private createTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 87
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, "textView":Landroid/widget/TextView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 92
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 94
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 95
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-object v0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->getWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->getHeight()F

    move-result v4

    iget v0, p0, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->mCornerRadius:I

    int-to-float v5, v0

    iget v0, p0, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->mCornerRadius:I

    int-to-float v6, v0

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 82
    return-void
.end method

.method public setSize(FF)V
    .locals 12
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v5

    .line 58
    .local v5, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    const v7, 0x7f0b0108

    invoke-virtual {v5, v7}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v4

    .line 59
    .local v4, "placeholderMargin":I
    const v7, 0x7f0b0109

    invoke-virtual {v5, v7}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v3

    .line 60
    .local v3, "padding":I
    int-to-float v7, v4

    sub-float v7, p2, v7

    float-to-int v1, v7

    .line 61
    .local v1, "newHeight":I
    int-to-float v7, v4

    sub-float v7, p1, v7

    float-to-int v2, v7

    .line 65
    .local v2, "newWidth":I
    int-to-float v7, v2

    int-to-float v8, v1

    invoke-super {p0, v7, v8}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 68
    invoke-direct {p0, v0}, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->createTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v6

    .line 71
    .local v6, "textView":Landroid/widget/TextView;
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 72
    invoke-virtual {v6, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 75
    iget-object v7, p0, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->getWidth()F

    move-result v8

    float-to-int v8, v8

    const/4 v9, -0x1

    const/4 v10, 0x1

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v8, v9, v10, v11}, Lcom/sonymobile/flix/util/Utils;->createBitmapFromView(Landroid/view/View;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 77
    return-void
.end method
