.class public Lcom/sonymobile/home/presenter/view/IconLabelView;
.super Lcom/sonymobile/home/ui/pageview/PageItemView;
.source "IconLabelView.java"

# interfaces
.implements Lcom/sonymobile/flix/components/Component$TextComponent;


# static fields
.field private static sFont:Landroid/graphics/Typeface;

.field private static sFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;


# instance fields
.field protected mBadgeText:Ljava/lang/String;

.field protected mBadgeView:Lcom/sonymobile/home/presenter/view/BadgeView;

.field private mCenterVertically:Z

.field protected mDefaultContentDescription:Ljava/lang/String;

.field protected mDeleteBadgeView:Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

.field private mHasUnavailableBadge:Z

.field private mHasUninstallOption:Z

.field protected mIcon:Landroid/graphics/Bitmap;

.field private mIconOffsetX:F

.field private mIconOffsetY:F

.field protected mIconView:Lcom/sonymobile/flix/components/Image;

.field protected mLabel:Ljava/lang/String;

.field protected mLabelBitmapLandscape:Landroid/graphics/Bitmap;

.field protected mLabelBitmapPortrait:Landroid/graphics/Bitmap;

.field protected mLabelView:Lcom/sonymobile/flix/components/Image;

.field private mLabelVisibility:I

.field private mMaxIconHeight:F

.field private mMaxIconWidth:F

.field private mMaxTextHeightLand:I

.field private mMaxTextHeightPort:I

.field private mMaxTextSize:I

.field private mNumberOfLines:I

.field private mShowUninstallOption:Z

.field private mTextIconMargin:F

.field private mTextMarginLand:F

.field private mTextMarginPort:F

.field private mTextSize:I

.field protected mTextView:Landroid/widget/TextView;

.field protected mUnavailableBadgeView:Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

.field protected mUninstallModeAccessibilityText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;Landroid/graphics/Bitmap;Ljava/lang/String;ZILcom/sonymobile/home/ui/pageview/PageItemViewListener;)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "icon"    # Landroid/graphics/Bitmap;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "labelVisible"    # Z
    .param p6, "numberOfLines"    # I
    .param p7, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .prologue
    const/4 v0, 0x3

    .line 164
    invoke-direct {p0, p1, p2, p7}, Lcom/sonymobile/home/ui/pageview/PageItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)V

    .line 85
    const-string v1, ""

    iput-object v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mDefaultContentDescription:Ljava/lang/String;

    .line 102
    iput v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelVisibility:I

    .line 104
    const/4 v1, 0x1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mNumberOfLines:I

    .line 165
    iput-object p3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIcon:Landroid/graphics/Bitmap;

    .line 166
    iput-object p4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabel:Ljava/lang/String;

    .line 167
    iput-object p4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mDefaultContentDescription:Ljava/lang/String;

    .line 168
    iput p6, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mNumberOfLines:I

    .line 169
    if-eqz p5, :cond_0

    :goto_0
    iput v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelVisibility:I

    .line 171
    invoke-virtual {p0, p4}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setName(Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->init(Lcom/sonymobile/flix/components/Scene;)V

    .line 173
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;ZLcom/sonymobile/home/ui/pageview/PageItemViewListener;)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "includeLabel"    # Z
    .param p4, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .prologue
    const/4 v0, 0x3

    .line 144
    invoke-direct {p0, p1, p2, p4}, Lcom/sonymobile/home/ui/pageview/PageItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)V

    .line 85
    const-string v1, ""

    iput-object v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mDefaultContentDescription:Ljava/lang/String;

    .line 102
    iput v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelVisibility:I

    .line 104
    const/4 v1, 0x1

    iput v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mNumberOfLines:I

    .line 145
    if-eqz p3, :cond_0

    :goto_0
    iput v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelVisibility:I

    .line 147
    invoke-direct {p0, p1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->init(Lcom/sonymobile/flix/components/Scene;)V

    .line 148
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private calculateMaxTextHeight(Landroid/widget/TextView;)I
    .locals 6
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 727
    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 728
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    .line 737
    .local v1, "textHeight":I
    :goto_0
    return v1

    .line 730
    .end local v1    # "textHeight":I
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/home/presenter/view/IconLabelView;->sFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 731
    sget-object v3, Lcom/sonymobile/home/presenter/view/IconLabelView;->sFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sget-object v4, Lcom/sonymobile/home/presenter/view/IconLabelView;->sFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v2, v3, v4

    .line 732
    .local v2, "topPadding":I
    sget-object v3, Lcom/sonymobile/home/presenter/view/IconLabelView;->sFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sget-object v4, Lcom/sonymobile/home/presenter/view/IconLabelView;->sFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v0, v3, v4

    .line 734
    .local v0, "bottomPadding":I
    neg-int v3, v2

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    iget v5, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mNumberOfLines:I

    mul-int/2addr v4, v5

    add-int v1, v3, v4

    .restart local v1    # "textHeight":I
    goto :goto_0
.end method

.method private createLabelBitmap()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const v7, 0x3f733333    # 0.95f

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 679
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/home/util/LayoutUtils;->isLandscape(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v1

    .line 680
    .local v1, "isLandscape":Z
    invoke-direct {p0, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->isVisibleForOrientation(Z)Z

    move-result v2

    .line 682
    .local v2, "labelVisible":Z
    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabel:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 686
    if-eqz v1, :cond_2

    .line 687
    if-nez v2, :cond_1

    .line 688
    iput-object v6, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelBitmapLandscape:Landroid/graphics/Bitmap;

    .line 689
    iput v5, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mMaxTextHeightLand:I

    .line 699
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelBitmapLandscape:Landroid/graphics/Bitmap;

    .line 715
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v3, v0}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 716
    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v3, v2}, Lcom/sonymobile/flix/components/Image;->setVisible(Z)V

    .line 722
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v3, v4}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 723
    return-void

    .line 690
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelBitmapLandscape:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 693
    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getWidth()F

    move-result v4

    mul-float/2addr v4, v7

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v8, v9, v5}, Lcom/sonymobile/flix/util/Utils;->createBitmapFromView(Landroid/view/View;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelBitmapLandscape:Landroid/graphics/Bitmap;

    .line 697
    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/sonymobile/home/presenter/view/IconLabelView;->calculateMaxTextHeight(Landroid/widget/TextView;)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mMaxTextHeightLand:I

    goto :goto_0

    .line 701
    :cond_2
    if-nez v2, :cond_4

    .line 702
    iput-object v6, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelBitmapPortrait:Landroid/graphics/Bitmap;

    .line 703
    iput v5, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mMaxTextHeightPort:I

    .line 713
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelBitmapPortrait:Landroid/graphics/Bitmap;

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 704
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelBitmapPortrait:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    .line 707
    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getWidth()F

    move-result v4

    mul-float/2addr v4, v7

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v8, v9, v5}, Lcom/sonymobile/flix/util/Utils;->createBitmapFromView(Landroid/view/View;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelBitmapPortrait:Landroid/graphics/Bitmap;

    .line 711
    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/sonymobile/home/presenter/view/IconLabelView;->calculateMaxTextHeight(Landroid/widget/TextView;)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mMaxTextHeightPort:I

    goto :goto_3

    .line 718
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v3, v6}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 719
    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v3, v5}, Lcom/sonymobile/flix/components/Image;->setVisible(Z)V

    goto :goto_2
.end method

.method private hasNotificationBadge()Z
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mBadgeView:Lcom/sonymobile/home/presenter/view/BadgeView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasUnavailableBadge()Z
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mUnavailableBadgeView:Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasUninstallBadge()Z
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mDeleteBadgeView:Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideNotificationBadge()V
    .locals 1

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->hasNotificationBadge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mBadgeView:Lcom/sonymobile/home/presenter/view/BadgeView;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/BadgeView;->hide()V

    .line 610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mBadgeView:Lcom/sonymobile/home/presenter/view/BadgeView;

    .line 612
    :cond_0
    return-void
.end method

.method private hideUnavailableBadge()V
    .locals 1

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->hasUnavailableBadge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mUnavailableBadgeView:Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->hide()V

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mUnavailableBadgeView:Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

    .line 584
    :cond_0
    return-void
.end method

.method private hideUninstallBadge()V
    .locals 1

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->hasUninstallBadge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mDeleteBadgeView:Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->hide()V

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mDeleteBadgeView:Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

    .line 560
    :cond_0
    return-void
.end method

.method private init(Lcom/sonymobile/flix/components/Scene;)V
    .locals 8
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 177
    new-instance v4, Lcom/sonymobile/flix/components/Image;

    invoke-direct {v4, p1}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIconView:Lcom/sonymobile/flix/components/Image;

    .line 178
    iget-object v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIconView:Lcom/sonymobile/flix/components/Image;

    const-string v5, "Icon view"

    invoke-virtual {v4, v5}, Lcom/sonymobile/flix/components/Image;->setName(Ljava/lang/String;)V

    .line 179
    iget-object v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIconView:Lcom/sonymobile/flix/components/Image;

    iget-object v5, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 180
    iget-object v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIconView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0, v4}, Lcom/sonymobile/home/presenter/view/IconLabelView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 182
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 183
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v2

    .line 185
    .local v2, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 186
    .local v3, "value":Landroid/util/TypedValue;
    const v4, 0x7f070014

    invoke-virtual {v2, v4, v3, v7}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 187
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextMarginLand:F

    .line 189
    const v4, 0x7f070017

    invoke-virtual {v2, v4, v3, v7}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 190
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextMarginPort:F

    .line 194
    const v4, 0x7f0b0035

    invoke-virtual {v2, v4}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextSize:I

    .line 195
    iget v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextSize:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mNumberOfLines:I

    invoke-static {v0, v4, v5, v6}, Lcom/sonymobile/home/textview/TextViewUtilities;->createTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextView:Landroid/widget/TextView;

    .line 196
    sget-object v4, Lcom/sonymobile/home/presenter/view/IconLabelView;->sFont:Landroid/graphics/Typeface;

    if-nez v4, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080110

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "fontName":Ljava/lang/String;
    invoke-static {v1, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Lcom/sonymobile/home/presenter/view/IconLabelView;->sFont:Landroid/graphics/Typeface;

    .line 200
    .end local v1    # "fontName":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/sonymobile/home/presenter/view/IconLabelView;->sFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    if-nez v4, :cond_1

    .line 201
    new-instance v4, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v4}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    sput-object v4, Lcom/sonymobile/home/presenter/view/IconLabelView;->sFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 203
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextView:Landroid/widget/TextView;

    sget-object v5, Lcom/sonymobile/home/presenter/view/IconLabelView;->sFont:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 205
    new-instance v4, Lcom/sonymobile/flix/components/Image;

    invoke-direct {v4, p1}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    .line 206
    iget-object v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    const-string v5, "Label view"

    invoke-virtual {v4, v5}, Lcom/sonymobile/flix/components/Image;->setName(Ljava/lang/String;)V

    .line 207
    iget-object v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0, v4}, Lcom/sonymobile/home/presenter/view/IconLabelView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 208
    return-void
.end method

.method private isVisibleForOrientation(Z)Z
    .locals 3
    .param p1, "landscape"    # Z

    .prologue
    const/4 v1, 0x1

    .line 673
    if-eqz p1, :cond_0

    move v0, v1

    .line 675
    .local v0, "orientation":I
    :goto_0
    iget v2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelVisibility:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    :goto_1
    return v1

    .line 673
    .end local v0    # "orientation":I
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 675
    .restart local v0    # "orientation":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private layoutBadge(Lcom/sonymobile/flix/components/Component;)V
    .locals 13
    .param p1, "badgeView"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 780
    if-eqz p1, :cond_0

    .line 785
    const/4 v6, 0x2

    move-object v0, p1

    move-object v3, p0

    move v4, v1

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FFI)V

    .line 787
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getX()F

    move-result v11

    .line 788
    .local v11, "itemX":F
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getY()F

    move-result v12

    .line 790
    .local v12, "itemY":F
    const v4, 0x3f333333    # 0.7f

    const v5, 0x3e99999a    # 0.3f

    iget-object v6, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIconView:Lcom/sonymobile/flix/components/Image;

    move-object v3, p1

    move v7, v1

    move v8, v2

    invoke-static/range {v3 .. v8}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 792
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getX()F

    move-result v9

    .line 793
    .local v9, "iconX":F
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getY()F

    move-result v10

    .line 795
    .local v10, "iconY":F
    invoke-static {v11, v9}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/components/Component;->setX(F)V

    .line 796
    invoke-static {v12, v10}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/components/Component;->setY(F)V

    .line 798
    .end local v9    # "iconX":F
    .end local v10    # "iconY":F
    .end local v11    # "itemX":F
    .end local v12    # "itemY":F
    :cond_0
    return-void
.end method

.method private placeLabelAndIcon()V
    .locals 26

    .prologue
    .line 741
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/home/util/LayoutUtils;->isLandscape(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v20

    .line 742
    .local v20, "isLandscape":Z
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->isVisibleForOrientation(Z)Z

    move-result v21

    .line 746
    .local v21, "labelVisible":Z
    if-eqz v21, :cond_3

    .line 747
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mCenterVertically:Z

    if-eqz v2, :cond_1

    .line 748
    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mMaxTextHeightLand:I

    move/from16 v22, v0

    .line 749
    .local v22, "maxTextHeight":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getHeight()F

    move-result v25

    .line 750
    .local v25, "viewHeight":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mMaxIconHeight:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextIconMargin:F

    mul-float v23, v2, v3

    .line 752
    .local v23, "textIconMargin":F
    const/high16 v2, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mMaxIconHeight:F

    add-float v3, v3, v23

    move/from16 v0, v22

    int-to-float v4, v0

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v25

    div-float/2addr v3, v4

    add-float v7, v2, v3

    .line 753
    .local v7, "labelOffsetY":F
    const/high16 v2, 0x3f000000    # 0.5f

    move/from16 v0, v22

    int-to-float v3, v0

    add-float v3, v3, v23

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v25

    div-float/2addr v3, v4

    sub-float v13, v2, v3

    .line 755
    .local v13, "iconOffsetY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    move-object/from16 v5, p0

    invoke-static/range {v2 .. v7}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 756
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIconView:Lcom/sonymobile/flix/components/Image;

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f000000    # 0.5f

    move-object/from16 v11, p0

    invoke-static/range {v8 .. v13}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 772
    .end local v7    # "labelOffsetY":F
    .end local v13    # "iconOffsetY":F
    .end local v22    # "maxTextHeight":I
    .end local v23    # "textIconMargin":F
    .end local v25    # "viewHeight":F
    :goto_1
    return-void

    .line 748
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mMaxTextHeightPort:I

    move/from16 v22, v0

    goto :goto_0

    .line 758
    :cond_1
    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextMarginLand:F

    move/from16 v24, v0

    .line 761
    .local v24, "textMargin":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    const/high16 v15, 0x3f000000    # 0.5f

    const/16 v16, 0x0

    const/high16 v18, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v19, v2, v24

    move-object/from16 v17, p0

    invoke-static/range {v14 .. v19}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 764
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIconView:Lcom/sonymobile/flix/components/Image;

    const/high16 v15, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextIconMargin:F

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIconView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Image;->getScalingY()F

    move-result v4

    mul-float/2addr v3, v4

    add-float v16, v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f000000    # 0.5f

    const/16 v19, 0x0

    invoke-static/range {v14 .. v19}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIconView:Lcom/sonymobile/flix/components/Image;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIconOffsetX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIconOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/flix/components/Image;->move(FF)V

    goto :goto_1

    .line 758
    .end local v24    # "textMargin":F
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextMarginPort:F

    move/from16 v24, v0

    goto :goto_2

    .line 770
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIconView:Lcom/sonymobile/flix/components/Image;

    const/high16 v15, 0x3f000000    # 0.5f

    const/high16 v16, 0x3f000000    # 0.5f

    const/high16 v18, 0x3f000000    # 0.5f

    const/high16 v19, 0x3f000000    # 0.5f

    move-object/from16 v17, p0

    invoke-static/range {v14 .. v19}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    goto :goto_1
.end method

.method private scaleIconToMaxSize()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 317
    iget-object v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIconView:Lcom/sonymobile/flix/components/Image;

    if-eqz v4, :cond_2

    .line 318
    const/high16 v2, 0x3f800000    # 1.0f

    .line 320
    .local v2, "scaling":F
    iget v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mMaxIconWidth:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mMaxIconHeight:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 321
    iget-object v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIconView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 322
    .local v1, "icon":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mMaxIconWidth:F

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mMaxIconHeight:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 323
    :cond_0
    iget v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mMaxIconWidth:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 324
    .local v3, "widthScaling":F
    iget v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mMaxIconHeight:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 325
    .local v0, "heightScaling":F
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 329
    .end local v0    # "heightScaling":F
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    .end local v3    # "widthScaling":F
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIconView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v4, v2}, Lcom/sonymobile/flix/components/Image;->setScaling(F)V

    .line 331
    .end local v2    # "scaling":F
    :cond_2
    return-void
.end method

.method private showNotificationBadge()V
    .locals 4

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    .line 592
    .local v1, "scene":Lcom/sonymobile/flix/components/Scene;
    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 594
    .local v0, "badgeMargin":I
    int-to-float v2, v0

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setInnerMargin(F)V

    .line 596
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mBadgeView:Lcom/sonymobile/home/presenter/view/BadgeView;

    if-nez v2, :cond_0

    .line 597
    new-instance v2, Lcom/sonymobile/home/presenter/view/BadgeView;

    invoke-direct {v2, v1}, Lcom/sonymobile/home/presenter/view/BadgeView;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mBadgeView:Lcom/sonymobile/home/presenter/view/BadgeView;

    .line 598
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mBadgeView:Lcom/sonymobile/home/presenter/view/BadgeView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/presenter/view/BadgeView;->setVisible(Z)V

    .line 599
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mBadgeView:Lcom/sonymobile/home/presenter/view/BadgeView;

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/presenter/view/IconLabelView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 601
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mBadgeView:Lcom/sonymobile/home/presenter/view/BadgeView;

    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/presenter/view/BadgeView;->setBadgeText(Ljava/lang/String;)V

    .line 602
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mBadgeView:Lcom/sonymobile/home/presenter/view/BadgeView;

    invoke-direct {p0, v2}, Lcom/sonymobile/home/presenter/view/IconLabelView;->layoutBadge(Lcom/sonymobile/flix/components/Component;)V

    .line 603
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mBadgeView:Lcom/sonymobile/home/presenter/view/BadgeView;

    invoke-virtual {v2}, Lcom/sonymobile/home/presenter/view/BadgeView;->show()V

    .line 604
    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 605
    return-void
.end method

.method private showUnavailableBadge()V
    .locals 3

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->hasUnavailableBadge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    :goto_0
    return-void

    .line 571
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    .line 572
    .local v0, "scene":Lcom/sonymobile/flix/components/Scene;
    new-instance v1, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

    const v2, 0x7f020086

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mUnavailableBadgeView:Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

    .line 573
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mUnavailableBadgeView:Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->setVisible(Z)V

    .line 574
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mUnavailableBadgeView:Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 575
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mUnavailableBadgeView:Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

    invoke-direct {p0, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->layoutBadge(Lcom/sonymobile/flix/components/Component;)V

    .line 576
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mUnavailableBadgeView:Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->show()V

    goto :goto_0
.end method

.method private showUninstallBadge()V
    .locals 3

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->hasUninstallBadge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    :goto_0
    return-void

    .line 547
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    .line 548
    .local v0, "scene":Lcom/sonymobile/flix/components/Scene;
    new-instance v1, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

    const v2, 0x7f02005c

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mDeleteBadgeView:Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

    .line 549
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mDeleteBadgeView:Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->setVisible(Z)V

    .line 550
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mDeleteBadgeView:Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 551
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mDeleteBadgeView:Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

    invoke-direct {p0, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->layoutBadge(Lcom/sonymobile/flix/components/Component;)V

    .line 552
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mDeleteBadgeView:Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->show()V

    goto :goto_0
.end method

.method private updateBadges()V
    .locals 1

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mShowUninstallOption:Z

    if-eqz v0, :cond_1

    .line 499
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->hideNotificationBadge()V

    .line 500
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->hideUnavailableBadge()V

    .line 501
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mHasUninstallOption:Z

    if-eqz v0, :cond_0

    .line 502
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->showUninstallBadge()V

    .line 519
    :goto_0
    return-void

    .line 504
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->hideUninstallBadge()V

    goto :goto_0

    .line 507
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->hideUninstallBadge()V

    .line 508
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mHasUnavailableBadge:Z

    if-eqz v0, :cond_2

    .line 509
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->showUnavailableBadge()V

    .line 510
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->hideNotificationBadge()V

    goto :goto_0

    .line 511
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mBadgeText:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 512
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->showNotificationBadge()V

    .line 513
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->hideUnavailableBadge()V

    goto :goto_0

    .line 515
    :cond_3
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->hideUnavailableBadge()V

    .line 516
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->hideNotificationBadge()V

    goto :goto_0
.end method

.method private updateContentDescription()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 523
    iget-boolean v2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mShowUninstallOption:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mHasUninstallOption:Z

    if-eqz v2, :cond_1

    .line 524
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mUninstallModeAccessibilityText:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08006c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mDefaultContentDescription:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mUninstallModeAccessibilityText:Ljava/lang/String;

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mUninstallModeAccessibilityText:Ljava/lang/String;

    .line 539
    .local v0, "newContentDescription":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getButton()Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setDescription(Ljava/lang/String;)V

    .line 540
    return-void

    .line 530
    .end local v0    # "newContentDescription":Ljava/lang/String;
    :cond_1
    iget-boolean v2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mShowUninstallOption:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mBadgeText:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 531
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mBadgeText:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v1, 0x7f080059

    .line 534
    .local v1, "resId":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mBadgeText:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 536
    .restart local v0    # "newContentDescription":Ljava/lang/String;
    goto :goto_0

    .line 531
    .end local v0    # "newContentDescription":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_2
    const v1, 0x7f080058

    goto :goto_1

    .line 537
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mDefaultContentDescription:Ljava/lang/String;

    .restart local v0    # "newContentDescription":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateNumberOfTextViewLines(I)Z
    .locals 4
    .param p1, "numberOfLines"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 411
    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMaxLines()I

    move-result v3

    if-eq p1, v3, :cond_1

    move v0, v1

    .line 413
    .local v0, "hasNbrOfLinesChanged":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 414
    if-le p1, v1, :cond_2

    .line 415
    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 416
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 417
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 424
    :cond_0
    :goto_1
    return v0

    .end local v0    # "hasNbrOfLinesChanged":Z
    :cond_1
    move v0, v2

    .line 411
    goto :goto_0

    .line 419
    .restart local v0    # "hasNbrOfLinesChanged":Z
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 420
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1
.end method


# virtual methods
.method public getImage()Lcom/sonymobile/flix/components/Image;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIconView:Lcom/sonymobile/flix/components/Image;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasUninstallOption()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mHasUninstallOption:Z

    return v0
.end method

.method public onLayout(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setIcon(Landroid/graphics/Bitmap;)V

    .line 216
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->createLabelBitmap()V

    .line 219
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->placeLabelAndIcon()V

    .line 221
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->hasUninstallBadge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mDeleteBadgeView:Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

    invoke-direct {p0, v0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->layoutBadge(Lcom/sonymobile/flix/components/Component;)V

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->hasUnavailableBadge()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mUnavailableBadgeView:Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

    invoke-direct {p0, v0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->layoutBadge(Lcom/sonymobile/flix/components/Component;)V

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mBadgeView:Lcom/sonymobile/home/presenter/view/BadgeView;

    invoke-direct {p0, v0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->layoutBadge(Lcom/sonymobile/flix/components/Component;)V

    .line 232
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 643
    return-void
.end method

.method public setCenterVertically(Z)V
    .locals 0
    .param p1, "center"    # Z

    .prologue
    .line 655
    iput-boolean p1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mCenterVertically:Z

    .line 656
    return-void
.end method

.method public setClickColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 620
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIconView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Image;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 621
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mBadgeView:Lcom/sonymobile/home/presenter/view/BadgeView;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mBadgeView:Lcom/sonymobile/home/presenter/view/BadgeView;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/BadgeView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mDeleteBadgeView:Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mDeleteBadgeView:Lcom/sonymobile/home/presenter/view/SimpleBadgeView;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/SimpleBadgeView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 627
    :cond_1
    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mDefaultContentDescription:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    iput-object p1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mDefaultContentDescription:Ljava/lang/String;

    .line 435
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->updateContentDescription()V

    .line 437
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 235
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIcon:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_2

    .line 237
    :cond_1
    iput-object p1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIcon:Landroid/graphics/Bitmap;

    .line 238
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIconView:Lcom/sonymobile/flix/components/Image;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 239
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->scaleIconToMaxSize()V

    .line 241
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->placeLabelAndIcon()V

    .line 242
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIconView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 244
    :cond_2
    return-void
.end method

.method public setIconOffset(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 659
    iput p1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIconOffsetX:F

    .line 660
    iput p2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mIconOffsetY:F

    .line 661
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 362
    iget v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mNumberOfLines:I

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setLabel(Ljava/lang/String;I)V

    .line 363
    return-void
.end method

.method public setLabel(Ljava/lang/String;I)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "numberOfLines"    # I

    .prologue
    const/4 v2, 0x0

    .line 374
    if-eqz p1, :cond_0

    .line 375
    iput-object p1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabel:Ljava/lang/String;

    .line 376
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabel:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setName(Ljava/lang/String;)V

    .line 379
    :cond_0
    invoke-direct {p0, p2}, Lcom/sonymobile/home/presenter/view/IconLabelView;->updateNumberOfTextViewLines(I)Z

    move-result v0

    .line 381
    .local v0, "hasNbrOfLinesChanged":Z
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    .line 387
    :cond_1
    iput-object v2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelBitmapLandscape:Landroid/graphics/Bitmap;

    .line 388
    iput-object v2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelBitmapPortrait:Landroid/graphics/Bitmap;

    .line 390
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->invalidate()V

    .line 391
    iput p2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mNumberOfLines:I

    .line 392
    return-void
.end method

.method public setLabelVisibility(I)V
    .locals 0
    .param p1, "labelVisibility"    # I

    .prologue
    .line 353
    iput p1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelVisibility:I

    .line 354
    return-void
.end method

.method public setMaxIconSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 268
    invoke-virtual {p0, p1, p1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setMaxIconSize(FF)V

    .line 269
    return-void
.end method

.method public setMaxIconSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 256
    iput p1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mMaxIconWidth:F

    .line 257
    iput p2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mMaxIconHeight:F

    .line 259
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->scaleIconToMaxSize()V

    .line 260
    return-void
.end method

.method public setMaxTextSize(I)V
    .locals 5
    .param p1, "maxTextSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 272
    iget v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mMaxTextSize:I

    if-eq p1, v1, :cond_0

    .line 273
    iput p1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mMaxTextSize:I

    .line 274
    iget v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mMaxTextSize:I

    iget v2, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 275
    .local v0, "textSize":I
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    int-to-float v2, v0

    invoke-static {v1, v2}, Lcom/sonymobile/flix/util/Utils;->equals(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 277
    iput-object v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelBitmapLandscape:Landroid/graphics/Bitmap;

    .line 278
    iput-object v4, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelBitmapPortrait:Landroid/graphics/Bitmap;

    .line 281
    .end local v0    # "textSize":I
    :cond_0
    return-void
.end method

.method public setNotificationBadge(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mBadgeText:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    iput-object p1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mBadgeText:Ljava/lang/String;

    .line 492
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->updateBadges()V

    .line 493
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->updateContentDescription()V

    .line 495
    :cond_0
    return-void
.end method

.method public setNumberOfTextLines(I)V
    .locals 2
    .param p1, "numberOfLines"    # I

    .prologue
    const/4 v1, 0x0

    .line 400
    invoke-direct {p0, p1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->updateNumberOfTextViewLines(I)Z

    move-result v0

    .line 402
    .local v0, "hasNbrOfLinesChanged":Z
    if-eqz v0, :cond_0

    .line 403
    iput-object v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelBitmapLandscape:Landroid/graphics/Bitmap;

    .line 404
    iput-object v1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelBitmapPortrait:Landroid/graphics/Bitmap;

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->invalidate()V

    .line 407
    iput p1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mNumberOfLines:I

    .line 408
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    return-void
.end method

.method public setTextIconMargin(F)V
    .locals 0
    .param p1, "margin"    # F

    .prologue
    .line 669
    iput p1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextIconMargin:F

    .line 670
    return-void
.end method

.method public setTextShadowLayer(FFFI)V
    .locals 1
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 314
    return-void
.end method

.method public setTextSize(I)V
    .locals 4
    .param p1, "textSize"    # I

    .prologue
    const/4 v3, 0x0

    .line 284
    iget v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextSize:I

    if-eq p1, v0, :cond_0

    .line 285
    iput p1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextSize:I

    .line 286
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/sonymobile/flix/util/Utils;->equals(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 288
    iput-object v3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelBitmapLandscape:Landroid/graphics/Bitmap;

    .line 289
    iput-object v3, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mLabelBitmapPortrait:Landroid/graphics/Bitmap;

    .line 292
    :cond_0
    return-void
.end method

.method public setUnavailableBadge(Z)V
    .locals 1
    .param p1, "hasUnavailableBadge"    # Z

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mHasUnavailableBadge:Z

    if-eq v0, p1, :cond_0

    .line 478
    iput-boolean p1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mHasUnavailableBadge:Z

    .line 479
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->updateBadges()V

    .line 480
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->updateContentDescription()V

    .line 482
    :cond_0
    return-void
.end method

.method public setUninstallOption(Z)V
    .locals 1
    .param p1, "hasUninstallOption"    # Z

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mHasUninstallOption:Z

    if-eq v0, p1, :cond_0

    .line 460
    iput-boolean p1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mHasUninstallOption:Z

    .line 461
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->updateBadges()V

    .line 462
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->updateContentDescription()V

    .line 464
    :cond_0
    return-void
.end method

.method public showUninstallOption(Z)V
    .locals 1
    .param p1, "showUninstallOption"    # Z

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mShowUninstallOption:Z

    if-eq v0, p1, :cond_0

    .line 446
    iput-boolean p1, p0, Lcom/sonymobile/home/presenter/view/IconLabelView;->mShowUninstallOption:Z

    .line 447
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->updateBadges()V

    .line 448
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->updateContentDescription()V

    .line 450
    :cond_0
    return-void
.end method
