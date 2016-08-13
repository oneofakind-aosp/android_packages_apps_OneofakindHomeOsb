.class public Lcom/sonymobile/home/presenter/view/TipItemView;
.super Lcom/sonymobile/home/ui/pageview/PageItemView;
.source "TipItemView.java"


# instance fields
.field private mAllowCloseDown:Z

.field private mBgBottomBitmap:Landroid/graphics/Bitmap;

.field private final mBgBottomImage:Lcom/sonymobile/flix/components/Image;

.field private mBgTopBitmapLandscape:Landroid/graphics/Bitmap;

.field private mBgTopBitmapPortrait:Landroid/graphics/Bitmap;

.field private final mBgTopImage:Lcom/sonymobile/flix/components/Image;

.field private final mCloseButtonView:Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;

.field private final mContainer:Lcom/sonymobile/flix/components/Component;

.field private mFadeInAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

.field private mInfoLabelBitmapLandscape:Landroid/graphics/Bitmap;

.field private mInfoLabelBitmapPortrait:Landroid/graphics/Bitmap;

.field private final mInfoLabelImage:Lcom/sonymobile/flix/components/Image;

.field private mInfoString:Ljava/lang/String;

.field private final mInfoTextColor:I

.field private final mInfoTextSize:I

.field private final mPadding:I

.field private mTitleLabelBitmapLandscape:Landroid/graphics/Bitmap;

.field private mTitleLabelBitmapPortrait:Landroid/graphics/Bitmap;

.field private final mTitleLabelImage:Lcom/sonymobile/flix/components/Image;

.field private mTitleString:Ljava/lang/String;

.field private final mTitleTextColor:I

.field private final mTitleTextSize:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)V
    .locals 6
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .prologue
    const/4 v5, 0x0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/ui/pageview/PageItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)V

    .line 76
    const-string v2, ""

    iput-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleString:Ljava/lang/String;

    .line 78
    const-string v2, ""

    iput-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mInfoString:Ljava/lang/String;

    .line 96
    iput-boolean v5, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mAllowCloseDown:Z

    .line 107
    invoke-virtual {p0, v5}, Lcom/sonymobile/home/presenter/view/TipItemView;->setAnimateClick(Z)V

    .line 109
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 110
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 111
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0b00c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mPadding:I

    .line 112
    const v2, 0x7f0b004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleTextSize:I

    .line 113
    const v2, 0x7f0b004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mInfoTextSize:I

    .line 114
    const v2, 0x7f0e002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleTextColor:I

    .line 115
    const v2, 0x7f0e002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mInfoTextColor:I

    .line 117
    new-instance v2, Lcom/sonymobile/flix/components/Component;

    invoke-direct {v2, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mContainer:Lcom/sonymobile/flix/components/Component;

    .line 119
    new-instance v2, Lcom/sonymobile/flix/components/Image;

    invoke-direct {v2, p1}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgTopImage:Lcom/sonymobile/flix/components/Image;

    .line 120
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mContainer:Lcom/sonymobile/flix/components/Component;

    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgTopImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 122
    new-instance v2, Lcom/sonymobile/flix/components/Image;

    invoke-direct {v2, p1}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgBottomImage:Lcom/sonymobile/flix/components/Image;

    .line 123
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mContainer:Lcom/sonymobile/flix/components/Component;

    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgBottomImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 125
    new-instance v2, Lcom/sonymobile/flix/components/Image;

    invoke-direct {v2, p1}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleLabelImage:Lcom/sonymobile/flix/components/Image;

    .line 126
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgTopImage:Lcom/sonymobile/flix/components/Image;

    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleLabelImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Image;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 128
    new-instance v2, Lcom/sonymobile/flix/components/Image;

    invoke-direct {v2, p1}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mInfoLabelImage:Lcom/sonymobile/flix/components/Image;

    .line 129
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgTopImage:Lcom/sonymobile/flix/components/Image;

    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mInfoLabelImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Image;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 131
    new-instance v2, Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;

    const v3, 0x7f020050

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4}, Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;-><init>(Lcom/sonymobile/flix/components/Scene;ILandroid/graphics/BitmapFactory$Options;)V

    iput-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mCloseButtonView:Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;

    .line 132
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgTopImage:Lcom/sonymobile/flix/components/Image;

    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mCloseButtonView:Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Image;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 133
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mCloseButtonView:Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;

    iget v3, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mPadding:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;->setPadding(F)V

    .line 134
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mCloseButtonView:Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;

    new-instance v3, Lcom/sonymobile/home/presenter/view/TipItemView$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/home/presenter/view/TipItemView$1;-><init>(Lcom/sonymobile/home/presenter/view/TipItemView;)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;->addButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V

    .line 143
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/presenter/view/TipItemView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 144
    invoke-virtual {p0, v5}, Lcom/sonymobile/home/presenter/view/TipItemView;->setVisible(Z)V

    .line 145
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/presenter/view/TipItemView;->setDescendantAlpha(F)V

    .line 146
    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/home/presenter/view/TipItemView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/presenter/view/TipItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mAllowCloseDown:Z

    return p1
.end method

.method private cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 241
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->stopAnimationsIfNeeded()Z

    .line 242
    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleLabelBitmapLandscape:Landroid/graphics/Bitmap;

    .line 243
    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mInfoLabelBitmapLandscape:Landroid/graphics/Bitmap;

    .line 244
    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleLabelBitmapPortrait:Landroid/graphics/Bitmap;

    .line 245
    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mInfoLabelBitmapPortrait:Landroid/graphics/Bitmap;

    .line 246
    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgTopBitmapLandscape:Landroid/graphics/Bitmap;

    .line 247
    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgTopBitmapPortrait:Landroid/graphics/Bitmap;

    .line 248
    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgBottomBitmap:Landroid/graphics/Bitmap;

    .line 249
    return-void
.end method

.method private createBgTopBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 375
    iget-object v5, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleLabelImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v5}, Lcom/sonymobile/flix/components/Image;->getWidth()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v7, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mCloseButtonView:Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;

    invoke-virtual {v7}, Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;->getWidth()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mInfoLabelImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/Image;->getWidth()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v4, v5

    .line 377
    .local v4, "width":I
    iget-object v5, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleLabelImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v5}, Lcom/sonymobile/flix/components/Image;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mInfoLabelImage:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/Image;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v2, v5

    .line 378
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 379
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 380
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f02004e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 382
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v4, v2, v1}, Lcom/sonymobile/home/bitmap/IconUtilities;->createIconBitmap(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5
.end method

.method private static createBitmapFromLabel(Landroid/content/Context;Ljava/lang/String;FIILandroid/graphics/Rect;Landroid/graphics/Typeface;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "numberOfRows"    # I
    .param p4, "textColor"    # I
    .param p5, "padding"    # Landroid/graphics/Rect;
    .param p6, "typeFace"    # Landroid/graphics/Typeface;
    .param p7, "maxWidth"    # I

    .prologue
    .line 362
    const/16 v8, 0x11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v8}, Lcom/sonymobile/home/textview/TextViewUtilities;->createTextView(Landroid/content/Context;Ljava/lang/String;FIILandroid/graphics/Rect;Landroid/graphics/Typeface;I)Landroid/widget/TextView;

    move-result-object v9

    .line 365
    .local v9, "textView":Landroid/widget/TextView;
    const/4 v1, -0x1

    const/4 v2, 0x1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p7

    invoke-static {v9, v0, v1, v2, v3}, Lcom/sonymobile/flix/util/Utils;->createBitmapFromView(Landroid/view/View;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private createFadeInAnimation()Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .locals 6

    .prologue
    .line 391
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;JJ)V

    .line 393
    .local v0, "fadeInAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 394
    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getDecelerateInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 395
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setVisibleOnStart(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 396
    return-object v0
.end method

.method private createInfoLabelBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 339
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->getWidth()F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    mul-float/2addr v0, v1

    float-to-int v7, v0

    .line 340
    .local v7, "maxWidth":I
    new-instance v5, Landroid/graphics/Rect;

    iget v0, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mPadding:I

    iget v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mPadding:I

    iget v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mPadding:I

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v5, v0, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 341
    .local v5, "paddingRect":Landroid/graphics/Rect;
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    .line 343
    .local v6, "infoTypeFace":Landroid/graphics/Typeface;
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mInfoString:Ljava/lang/String;

    iget v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mInfoTextSize:I

    int-to-float v2, v2

    const/4 v3, 0x4

    iget v4, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mInfoTextColor:I

    invoke-static/range {v0 .. v7}, Lcom/sonymobile/home/presenter/view/TipItemView;->createBitmapFromLabel(Landroid/content/Context;Ljava/lang/String;FIILandroid/graphics/Rect;Landroid/graphics/Typeface;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private createTitleLabelBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->getWidth()F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mCloseButtonView:Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;->getWidth()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v7, v0

    .line 326
    .local v7, "maxWidth":I
    new-instance v5, Landroid/graphics/Rect;

    iget v0, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mPadding:I

    iget v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mPadding:I

    iget v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mPadding:I

    const/4 v3, 0x0

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 327
    .local v5, "paddingRect":Landroid/graphics/Rect;
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    .line 329
    .local v6, "titleTypeFace":Landroid/graphics/Typeface;
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleString:Ljava/lang/String;

    iget v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleTextSize:I

    int-to-float v2, v2

    const/4 v3, 0x2

    iget v4, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleTextColor:I

    invoke-static/range {v0 .. v7}, Lcom/sonymobile/home/presenter/view/TipItemView;->createBitmapFromLabel(Landroid/content/Context;Ljava/lang/String;FIILandroid/graphics/Rect;Landroid/graphics/Typeface;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private hide()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/TipItemView;->setVisible(Z)V

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/TipItemView;->setDescendantAlpha(F)V

    .line 223
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 224
    return-void
.end method

.method private setBitmaps()V
    .locals 4

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    const/4 v0, 0x1

    .line 269
    .local v0, "isLandscape":Z
    :goto_0
    if-eqz v0, :cond_5

    .line 272
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleLabelBitmapLandscape:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->createTitleLabelBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleLabelBitmapLandscape:Landroid/graphics/Bitmap;

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleLabelImage:Lcom/sonymobile/flix/components/Image;

    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleLabelBitmapLandscape:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 278
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mInfoLabelBitmapLandscape:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->createInfoLabelBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mInfoLabelBitmapLandscape:Landroid/graphics/Bitmap;

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mInfoLabelImage:Lcom/sonymobile/flix/components/Image;

    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mInfoLabelBitmapLandscape:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 284
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgTopBitmapLandscape:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 285
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->createBgTopBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgTopBitmapLandscape:Landroid/graphics/Bitmap;

    .line 287
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgTopImage:Lcom/sonymobile/flix/components/Image;

    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgTopBitmapLandscape:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 312
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgBottomBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 313
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgBottomBitmap:Landroid/graphics/Bitmap;

    .line 316
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgBottomImage:Lcom/sonymobile/flix/components/Image;

    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 317
    return-void

    .line 267
    .end local v0    # "isLandscape":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 292
    .restart local v0    # "isLandscape":Z
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleLabelBitmapPortrait:Landroid/graphics/Bitmap;

    if-nez v1, :cond_6

    .line 293
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->createTitleLabelBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleLabelBitmapPortrait:Landroid/graphics/Bitmap;

    .line 295
    :cond_6
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleLabelImage:Lcom/sonymobile/flix/components/Image;

    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleLabelBitmapPortrait:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 298
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mInfoLabelBitmapPortrait:Landroid/graphics/Bitmap;

    if-nez v1, :cond_7

    .line 299
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->createInfoLabelBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mInfoLabelBitmapPortrait:Landroid/graphics/Bitmap;

    .line 301
    :cond_7
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mInfoLabelImage:Lcom/sonymobile/flix/components/Image;

    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mInfoLabelBitmapPortrait:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 304
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgTopBitmapPortrait:Landroid/graphics/Bitmap;

    if-nez v1, :cond_8

    .line 305
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->createBgTopBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgTopBitmapPortrait:Landroid/graphics/Bitmap;

    .line 307
    :cond_8
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgTopImage:Lcom/sonymobile/flix/components/Image;

    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgTopBitmapPortrait:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private show()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/TipItemView;->setVisible(Z)V

    .line 213
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/TipItemView;->setDescendantAlpha(F)V

    .line 214
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 215
    return-void
.end method

.method private stopAnimationsIfNeeded()Z
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mFadeInAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mFadeInAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mFadeInAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 408
    const/4 v0, 0x1

    .line 410
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected doClick()V
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mAllowCloseDown:Z

    if-eqz v0, :cond_0

    .line 259
    invoke-super {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->doClick()V

    .line 261
    :cond_0
    return-void
.end method

.method public isDraggable()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public onDefocus()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->onDefocus()V

    .line 194
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->stopAnimationsIfNeeded()Z

    move-result v0

    .line 195
    .local v0, "stopped":Z
    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->show()V

    .line 198
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 228
    invoke-super {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->onDestroy()V

    .line 229
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->cleanup()V

    .line 230
    return-void
.end method

.method public onFocus()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->onFocus()V

    .line 183
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->stopAnimationsIfNeeded()Z

    .line 185
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->createFadeInAnimation()Lcom/sonymobile/flix/components/util/ComponentAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mFadeInAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 186
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mFadeInAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 188
    :cond_0
    return-void
.end method

.method public onLayout(II)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 168
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->setBitmaps()V

    .line 169
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgTopImage:Lcom/sonymobile/flix/components/Image;

    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mContainer:Lcom/sonymobile/flix/components/Component;

    move v4, v1

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 170
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleLabelImage:Lcom/sonymobile/flix/components/Image;

    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgTopImage:Lcom/sonymobile/flix/components/Image;

    move v4, v1

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 171
    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mCloseButtonView:Lcom/sonymobile/flix/components/accessibility/AccessibleImageButton;

    iget-object v6, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgTopImage:Lcom/sonymobile/flix/components/Image;

    move v4, v9

    move v5, v2

    move v7, v9

    move v8, v2

    invoke-static/range {v3 .. v8}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 172
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mInfoLabelImage:Lcom/sonymobile/flix/components/Image;

    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleLabelImage:Lcom/sonymobile/flix/components/Image;

    move v4, v1

    move v5, v9

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 173
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgBottomImage:Lcom/sonymobile/flix/components/Image;

    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mBgTopImage:Lcom/sonymobile/flix/components/Image;

    move v4, v1

    move v5, v9

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 174
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-static {v0}, Lcom/sonymobile/flix/components/util/Layouter;->envelopDescendants(Lcom/sonymobile/flix/components/Component;)V

    .line 175
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mContainer:Lcom/sonymobile/flix/components/Component;

    move v2, v1

    move-object v3, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 176
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 177
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->cleanup()V

    .line 235
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->onStop()V

    .line 204
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->stopAnimationsIfNeeded()Z

    .line 205
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/TipItemView;->hide()V

    .line 206
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mInfoString:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/sonymobile/home/presenter/view/TipItemView;->mTitleString:Ljava/lang/String;

    .line 155
    return-void
.end method
