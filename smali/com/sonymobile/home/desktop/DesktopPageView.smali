.class public Lcom/sonymobile/home/desktop/DesktopPageView;
.super Lcom/sonymobile/home/desktop/BackplatePageView;
.source "DesktopPageView.java"


# instance fields
.field protected final mDeletePageButton:Lcom/sonymobile/home/desktop/DeletePageButton;

.field protected final mEmptyPageViewFocusHolder:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

.field private mScrollBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

.field private mScrollBackplateAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

.field private mScrollBackplateAnimationRunning:Z

.field protected final mSelectHomePageView:Lcom/sonymobile/home/desktop/SelectHomePageView;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;IFFFF)V
    .locals 8
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "pageIndex"    # I
    .param p3, "pageWidth"    # F
    .param p4, "pageHeight"    # F
    .param p5, "scaleFactor"    # F
    .param p6, "backplateTopOffset"    # F

    .prologue
    .line 75
    const v1, 0x7f020063

    invoke-static {p1, v1}, Lcom/sonymobile/home/desktop/DesktopPageView;->createNinePatchImage(Lcom/sonymobile/flix/components/Scene;I)Lcom/sonymobile/flix/components/NinePatchImage;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/sonymobile/home/desktop/BackplatePageView;-><init>(Lcom/sonymobile/flix/components/Scene;ILcom/sonymobile/flix/components/NinePatchImage;)V

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplateAnimationRunning:Z

    .line 76
    const-string v1, "Desktop page view"

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/DesktopPageView;->setName(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPageView;->getBackplate()Lcom/sonymobile/flix/components/NinePatchImage;

    move-result-object v0

    .line 79
    .local v0, "backplate":Lcom/sonymobile/flix/components/NinePatchImage;
    mul-float v7, p4, p5

    .line 80
    .local v7, "backplateHeight":F
    invoke-virtual {v0, p3, v7}, Lcom/sonymobile/flix/components/NinePatchImage;->setContentSize(FF)V

    .line 81
    const-string v1, "Desktop page view backplate"

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/NinePatchImage;->setName(Ljava/lang/String;)V

    .line 82
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 83
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p6}, Lcom/sonymobile/flix/components/NinePatchImage;->move(FF)V

    .line 87
    new-instance v1, Lcom/sonymobile/home/desktop/SelectHomePageView;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/sonymobile/home/desktop/SelectHomePageView;-><init>(Lcom/sonymobile/flix/components/Scene;Z)V

    iput-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mSelectHomePageView:Lcom/sonymobile/home/desktop/SelectHomePageView;

    .line 88
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mSelectHomePageView:Lcom/sonymobile/home/desktop/SelectHomePageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/desktop/SelectHomePageView;->setVisible(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPageView;->getContent()Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mSelectHomePageView:Lcom/sonymobile/home/desktop/SelectHomePageView;

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 90
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mSelectHomePageView:Lcom/sonymobile/home/desktop/SelectHomePageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 92
    new-instance v1, Lcom/sonymobile/home/desktop/DeletePageButton;

    invoke-direct {v1, p1}, Lcom/sonymobile/home/desktop/DeletePageButton;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mDeletePageButton:Lcom/sonymobile/home/desktop/DeletePageButton;

    .line 93
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mDeletePageButton:Lcom/sonymobile/home/desktop/DeletePageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/desktop/DeletePageButton;->setVisible(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPageView;->getContent()Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mDeletePageButton:Lcom/sonymobile/home/desktop/DeletePageButton;

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 97
    new-instance v1, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-direct {v1, p1, p3, p4}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;-><init>(Lcom/sonymobile/flix/components/Scene;FF)V

    iput-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mEmptyPageViewFocusHolder:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    .line 100
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mEmptyPageViewFocusHolder:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setTouchEnabled(Z)V

    .line 102
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPageView;->updateEmptyPageViewHolderVisibility()V

    .line 103
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mEmptyPageViewFocusHolder:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    const-string v2, "Empty page view focus holder"

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setName(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPageView;->getContent()Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mEmptyPageViewFocusHolder:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 106
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mDeletePageButton:Lcom/sonymobile/home/desktop/DeletePageButton;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 107
    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/home/desktop/DesktopPageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPageView;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplateAnimationRunning:Z

    return p1
.end method

.method private static createNinePatchImage(Lcom/sonymobile/flix/components/Scene;I)Lcom/sonymobile/flix/components/NinePatchImage;
    .locals 4
    .param p0, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p1, "resId"    # I

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v1

    .line 223
    .local v1, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 224
    .local v0, "desktopPageRect":Landroid/graphics/Rect;
    new-instance v2, Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-static {v1, p1, v0}, Lcom/sonymobile/home/bitmap/StaticBitmaps;->getNinePatchBitmap(Lcom/sonymobile/home/resources/ResourceManager;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/sonymobile/flix/components/NinePatchImage;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-object v2
.end method

.method private createScrollBackplate()V
    .locals 6

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 113
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScene:Lcom/sonymobile/flix/components/Scene;

    const v2, 0x7f020064

    invoke-static {v0, v2}, Lcom/sonymobile/home/desktop/DesktopPageView;->createNinePatchImage(Lcom/sonymobile/flix/components/Scene;I)Lcom/sonymobile/flix/components/NinePatchImage;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    .line 114
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPageView;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPageView;->getHeight()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/components/NinePatchImage;->setContentSize(FF)V

    .line 115
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/components/NinePatchImage;->setAlpha(F)V

    .line 116
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPageView;->getContent()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPageView;->getBackplate()Lcom/sonymobile/flix/components/NinePatchImage;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/components/Component;->addChildAfter(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)Z

    .line 117
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    move v2, v1

    move-object v3, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 119
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-direct {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplateAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 120
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplateAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    new-instance v1, Lcom/sonymobile/home/desktop/DesktopPageView$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/desktop/DesktopPageView$1;-><init>(Lcom/sonymobile/home/desktop/DesktopPageView;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 126
    return-void
.end method

.method private isPageViewEmpty()Z
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPageView;->getNumberOfPageViewItems()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateEmptyPageViewHolderVisibility()V
    .locals 2

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPageView;->isPageViewEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mEmptyPageViewFocusHolder:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setVisible(Z)V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mEmptyPageViewFocusHolder:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setVisible(Z)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 0
    .param p1, "pageItem"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 250
    invoke-super {p0, p1}, Lcom/sonymobile/home/desktop/BackplatePageView;->add(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 251
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPageView;->updateEmptyPageViewHolderVisibility()V

    .line 252
    return-void
.end method

.method public addChild(Lcom/sonymobile/flix/components/Component;)V
    .locals 3
    .param p1, "child"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 234
    instance-of v1, p1, Lcom/sonymobile/home/desktop/ResizableFrame;

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPageView;->getContent()Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mSelectHomePageView:Lcom/sonymobile/home/desktop/SelectHomePageView;

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/SelectHomePageView;->getIndexInParent()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/sonymobile/flix/components/Component;->addChildAt(ILcom/sonymobile/flix/components/Component;)V

    move-object v0, p1

    .line 240
    check-cast v0, Lcom/sonymobile/home/desktop/ResizableFrame;

    .line 241
    .local v0, "frame":Lcom/sonymobile/home/desktop/ResizableFrame;
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mSelectHomePageView:Lcom/sonymobile/home/desktop/SelectHomePageView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/ResizableFrame;->addTouchOverride(Lcom/sonymobile/flix/components/Component;)V

    .line 242
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mDeletePageButton:Lcom/sonymobile/home/desktop/DeletePageButton;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/ResizableFrame;->addTouchOverride(Lcom/sonymobile/flix/components/Component;)V

    .line 246
    .end local v0    # "frame":Lcom/sonymobile/home/desktop/ResizableFrame;
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-super {p0, p1}, Lcom/sonymobile/home/desktop/BackplatePageView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    goto :goto_0
.end method

.method public hideScrollBackplate(J)V
    .locals 5
    .param p1, "fadeDuration"    # J

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-boolean v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplateAnimationRunning:Z

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplateAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/NinePatchImage;->getAlpha()F

    move-result v0

    .line 157
    .local v0, "scrollBackplateAlpha":F
    cmpl-float v1, v0, v3

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplateAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->reset()V

    .line 159
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplateAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v1, p1, p2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 160
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplateAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v1, v0, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 161
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplateAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 162
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplateAnimationRunning:Z

    .line 165
    .end local v0    # "scrollBackplateAlpha":F
    :cond_1
    return-void
.end method

.method public removeAllItems()V
    .locals 0

    .prologue
    .line 256
    invoke-super {p0}, Lcom/sonymobile/home/desktop/BackplatePageView;->removeAllItems()V

    .line 257
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPageView;->updateEmptyPageViewHolderVisibility()V

    .line 258
    return-void
.end method

.method public setBackplateAlpha(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/sonymobile/home/desktop/BackplatePageView;->setBackplateAlpha(F)V

    .line 217
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mSelectHomePageView:Lcom/sonymobile/home/desktop/SelectHomePageView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/desktop/SelectHomePageView;->setDescendantAlpha(F)V

    .line 218
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mDeletePageButton:Lcom/sonymobile/home/desktop/DeletePageButton;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/desktop/DeletePageButton;->setDescendantAlpha(F)V

    .line 219
    return-void
.end method

.method public setButtonsAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mSelectHomePageView:Lcom/sonymobile/home/desktop/SelectHomePageView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/desktop/SelectHomePageView;->setAlpha(F)V

    .line 210
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mDeletePageButton:Lcom/sonymobile/home/desktop/DeletePageButton;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/desktop/DeletePageButton;->setAlpha(F)V

    .line 211
    return-void
.end method

.method public showScrollBackplate()V
    .locals 4

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplateAnimationRunning:Z

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplateAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 138
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplateAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->reset()V

    .line 139
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplateAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 140
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplateAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/NinePatchImage;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 141
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplateAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplateAnimationRunning:Z

    .line 143
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    if-nez v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPageView;->createScrollBackplate()V

    goto :goto_0
.end method

.method public updatePageSize(FFFF)V
    .locals 10
    .param p1, "pageWidth"    # F
    .param p2, "pageHeight"    # F
    .param p3, "scaleFactor"    # F
    .param p4, "backplateTopOffset"    # F

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPageView;->getBackplate()Lcom/sonymobile/flix/components/NinePatchImage;

    move-result-object v0

    .line 178
    .local v0, "backplate":Lcom/sonymobile/flix/components/NinePatchImage;
    mul-float v2, p2, p3

    invoke-virtual {v0, p1, v2}, Lcom/sonymobile/flix/components/NinePatchImage;->setContentSize(FF)V

    move v2, v1

    move-object v3, p0

    move v4, v1

    move v5, v1

    .line 179
    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 180
    invoke-virtual {v0, v8, p4}, Lcom/sonymobile/flix/components/NinePatchImage;->move(FF)V

    .line 181
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mEmptyPageViewFocusHolder:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    invoke-virtual {v2, p1, p2}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setSize(FF)V

    .line 182
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mSelectHomePageView:Lcom/sonymobile/home/desktop/SelectHomePageView;

    move v3, v8

    move v4, v8

    move-object v5, v0

    move v6, v8

    move v7, v8

    invoke-static/range {v2 .. v7}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 183
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mDeletePageButton:Lcom/sonymobile/home/desktop/DeletePageButton;

    move v3, v9

    move v4, v8

    move-object v5, v0

    move v6, v9

    move v7, v8

    invoke-static/range {v2 .. v7}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 185
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v2, p1, p2}, Lcom/sonymobile/flix/components/NinePatchImage;->setContentSize(FF)V

    .line 187
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    invoke-virtual {v2, v8}, Lcom/sonymobile/flix/components/NinePatchImage;->setAlpha(F)V

    .line 188
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplate:Lcom/sonymobile/flix/components/NinePatchImage;

    move v3, v1

    move v4, v1

    move-object v5, p0

    move v6, v1

    move v7, v1

    invoke-static/range {v2 .. v7}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 190
    :cond_0
    return-void
.end method
