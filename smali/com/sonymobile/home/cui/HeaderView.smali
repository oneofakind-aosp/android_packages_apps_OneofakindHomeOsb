.class public Lcom/sonymobile/home/cui/HeaderView;
.super Lcom/sonymobile/flix/components/Component;
.source "HeaderView.java"

# interfaces
.implements Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$Focusable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/cui/HeaderView$CuiHeaderViewEventListener;
    }
.end annotation


# static fields
.field private static final ACCELERATE:Landroid/view/animation/Interpolator;

.field private static final DECELERATE:Landroid/view/animation/Interpolator;


# instance fields
.field private final mBackIcon:Landroid/graphics/Bitmap;

.field protected mBackView:Lcom/sonymobile/flix/components/Image;

.field protected mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

.field protected final mCurrentLevelIcon:Landroid/graphics/Bitmap;

.field protected mCurrentLevelView:Lcom/sonymobile/flix/components/Image;

.field private final mDividerColor:I

.field private final mDividerSize:I

.field protected final mHeaderViewEventListener:Lcom/sonymobile/home/cui/HeaderView$CuiHeaderViewEventListener;

.field protected mIconsContainer:Lcom/sonymobile/flix/components/Component;

.field protected final mLabel:Ljava/lang/String;

.field protected mLabelView:Lcom/sonymobile/flix/components/Image;

.field private final mTextSize:I

.field protected mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getDecelerateInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/cui/HeaderView;->DECELERATE:Landroid/view/animation/Interpolator;

    .line 40
    invoke-static {}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->getAccelerateInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/cui/HeaderView;->ACCELERATE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/HeaderView$CuiHeaderViewEventListener;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "headerViewEventListener"    # Lcom/sonymobile/home/cui/HeaderView$CuiHeaderViewEventListener;
    .param p3, "previousLevel"    # Landroid/graphics/Bitmap;
    .param p4, "backIcon"    # Landroid/graphics/Bitmap;
    .param p5, "label"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 75
    iput-object p2, p0, Lcom/sonymobile/home/cui/HeaderView;->mHeaderViewEventListener:Lcom/sonymobile/home/cui/HeaderView$CuiHeaderViewEventListener;

    .line 76
    iput-object p3, p0, Lcom/sonymobile/home/cui/HeaderView;->mCurrentLevelIcon:Landroid/graphics/Bitmap;

    .line 77
    iput-object p4, p0, Lcom/sonymobile/home/cui/HeaderView;->mBackIcon:Landroid/graphics/Bitmap;

    .line 78
    iput-object p5, p0, Lcom/sonymobile/home/cui/HeaderView;->mLabel:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/sonymobile/home/cui/HeaderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/cui/HeaderView;->mTextSize:I

    .line 81
    const v1, 0x7f0b006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/cui/HeaderView;->mDividerSize:I

    .line 82
    const v1, 0x7f0e001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/cui/HeaderView;->mDividerColor:I

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/cui/HeaderView;->setCullingEnabled(Z)V

    .line 84
    return-void
.end method

.method static synthetic access$000()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/sonymobile/home/cui/HeaderView;->DECELERATE:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$100()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/sonymobile/home/cui/HeaderView;->ACCELERATE:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private setUpClickArea()V
    .locals 4

    .prologue
    .line 157
    new-instance v0, Lcom/sonymobile/home/cui/HeaderView$1;

    invoke-virtual {p0}, Lcom/sonymobile/home/cui/HeaderView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/home/cui/HeaderView;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/sonymobile/home/cui/HeaderView;->getHeight()F

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sonymobile/home/cui/HeaderView$1;-><init>(Lcom/sonymobile/home/cui/HeaderView;Lcom/sonymobile/flix/components/Scene;FF)V

    iput-object v0, p0, Lcom/sonymobile/home/cui/HeaderView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    .line 177
    iget-object v0, p0, Lcom/sonymobile/home/cui/HeaderView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    iget-object v1, p0, Lcom/sonymobile/home/cui/HeaderView;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setDescription(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/sonymobile/home/cui/HeaderView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    const-string v1, "KeyboardFocusManager.NotFocusable"

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setProperty(Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/sonymobile/home/cui/HeaderView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/cui/HeaderView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 180
    return-void
.end method


# virtual methods
.method public onKeyboardFocusEvent(Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;ILcom/sonymobile/flix/components/Component;I)Z
    .locals 1
    .param p1, "source"    # Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
    .param p2, "event"    # I
    .param p3, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p4, "direction"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonymobile/home/cui/HeaderView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/sonymobile/home/cui/HeaderView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->onKeyboardFocusEvent(Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;ILcom/sonymobile/flix/components/Component;I)Z

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 7
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 88
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 90
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/HeaderView;->setUpViews()V

    .line 91
    invoke-direct {p0}, Lcom/sonymobile/home/cui/HeaderView;->setUpClickArea()V

    .line 93
    iget-object v0, p0, Lcom/sonymobile/home/cui/HeaderView;->mIconsContainer:Lcom/sonymobile/flix/components/Component;

    move-object v3, p0

    move v4, v1

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 94
    iget-object v0, p0, Lcom/sonymobile/home/cui/HeaderView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    move-object v3, p0

    move v4, v1

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/cui/HeaderView;->mBackView:Lcom/sonymobile/flix/components/Image;

    iget-object v3, p0, Lcom/sonymobile/home/cui/HeaderView;->mIconsContainer:Lcom/sonymobile/flix/components/Component;

    move v4, v1

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 98
    iget-object v0, p0, Lcom/sonymobile/home/cui/HeaderView;->mCurrentLevelView:Lcom/sonymobile/flix/components/Image;

    iget-object v3, p0, Lcom/sonymobile/home/cui/HeaderView;->mBackView:Lcom/sonymobile/flix/components/Image;

    move v4, v6

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 100
    iget-object v0, p0, Lcom/sonymobile/home/cui/HeaderView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    iget-object v3, p0, Lcom/sonymobile/home/cui/HeaderView;->mIconsContainer:Lcom/sonymobile/flix/components/Component;

    move v4, v6

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 103
    new-instance v0, Lcom/sonymobile/flix/components/Rectangle;

    iget-object v2, p0, Lcom/sonymobile/home/cui/HeaderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v0, v2}, Lcom/sonymobile/flix/components/Rectangle;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 104
    .local v0, "divider":Lcom/sonymobile/flix/components/Rectangle;
    iget v2, p0, Lcom/sonymobile/home/cui/HeaderView;->mDividerSize:I

    int-to-float v2, v2

    invoke-virtual {v0, p1, v2}, Lcom/sonymobile/flix/components/Rectangle;->setSize(FF)V

    .line 105
    iget v2, p0, Lcom/sonymobile/home/cui/HeaderView;->mDividerColor:I

    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/components/Rectangle;->setColor(I)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/cui/HeaderView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    move v2, v6

    move-object v3, p0

    move v4, v1

    move v5, v6

    .line 107
    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 108
    return-void
.end method

.method protected setUpViews()V
    .locals 8

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/HeaderView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    .line 112
    .local v1, "scene":Lcom/sonymobile/flix/components/Scene;
    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    .local v0, "context":Landroid/content/Context;
    iget v2, p0, Lcom/sonymobile/home/cui/HeaderView;->mTextSize:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/sonymobile/home/textview/TextViewUtilities;->createTextView(Landroid/content/Context;F)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/home/cui/HeaderView;->mTextView:Landroid/widget/TextView;

    .line 119
    new-instance v2, Lcom/sonymobile/flix/components/Component;

    iget-object v3, p0, Lcom/sonymobile/home/cui/HeaderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v2, v3}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v2, p0, Lcom/sonymobile/home/cui/HeaderView;->mIconsContainer:Lcom/sonymobile/flix/components/Component;

    .line 120
    iget-object v2, p0, Lcom/sonymobile/home/cui/HeaderView;->mIconsContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/cui/HeaderView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 123
    new-instance v2, Lcom/sonymobile/flix/components/Image;

    invoke-direct {v2, v1}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v2, p0, Lcom/sonymobile/home/cui/HeaderView;->mCurrentLevelView:Lcom/sonymobile/flix/components/Image;

    .line 124
    iget-object v2, p0, Lcom/sonymobile/home/cui/HeaderView;->mIconsContainer:Lcom/sonymobile/flix/components/Component;

    iget-object v3, p0, Lcom/sonymobile/home/cui/HeaderView;->mCurrentLevelView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 125
    iget-object v2, p0, Lcom/sonymobile/home/cui/HeaderView;->mCurrentLevelView:Lcom/sonymobile/flix/components/Image;

    iget-object v3, p0, Lcom/sonymobile/home/cui/HeaderView;->mCurrentLevelIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    new-instance v2, Lcom/sonymobile/flix/components/Image;

    invoke-direct {v2, v1}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v2, p0, Lcom/sonymobile/home/cui/HeaderView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    .line 129
    iget-object v2, p0, Lcom/sonymobile/home/cui/HeaderView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/cui/HeaderView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 130
    iget-object v2, p0, Lcom/sonymobile/home/cui/HeaderView;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sonymobile/home/cui/HeaderView;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v2, p0, Lcom/sonymobile/home/cui/HeaderView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    iget-object v3, p0, Lcom/sonymobile/home/cui/HeaderView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonymobile/home/cui/HeaderView;->getWidth()F

    move-result v4

    float-to-int v4, v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sonymobile/flix/util/Utils;->createBitmapFromView(Landroid/view/View;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    iget-object v2, p0, Lcom/sonymobile/home/cui/HeaderView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/sonymobile/home/cui/HeaderView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    iget-object v3, p0, Lcom/sonymobile/home/cui/HeaderView;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setDescription(Ljava/lang/String;)V

    .line 139
    :cond_0
    new-instance v2, Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0}, Lcom/sonymobile/home/cui/HeaderView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v2, p0, Lcom/sonymobile/home/cui/HeaderView;->mBackView:Lcom/sonymobile/flix/components/Image;

    .line 140
    iget-object v2, p0, Lcom/sonymobile/home/cui/HeaderView;->mIconsContainer:Lcom/sonymobile/flix/components/Component;

    iget-object v3, p0, Lcom/sonymobile/home/cui/HeaderView;->mBackView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 141
    iget-object v2, p0, Lcom/sonymobile/home/cui/HeaderView;->mBackView:Lcom/sonymobile/flix/components/Image;

    iget-object v3, p0, Lcom/sonymobile/home/cui/HeaderView;->mBackIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    iget-object v2, p0, Lcom/sonymobile/home/cui/HeaderView;->mIconsContainer:Lcom/sonymobile/flix/components/Component;

    iget-object v3, p0, Lcom/sonymobile/home/cui/HeaderView;->mBackView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Image;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/home/cui/HeaderView;->mCurrentLevelView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Image;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/sonymobile/home/cui/HeaderView;->getHeight()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 144
    return-void
.end method
