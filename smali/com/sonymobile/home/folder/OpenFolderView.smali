.class public Lcom/sonymobile/home/folder/OpenFolderView;
.super Lcom/sonymobile/flix/components/Component;
.source "OpenFolderView.java"

# interfaces
.implements Lcom/sonymobile/flix/components/Scene$LifeCycleListener;
.implements Lcom/sonymobile/home/folder/OpenFolderAdapter$FolderDataObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/folder/OpenFolderView$FolderView;,
        Lcom/sonymobile/home/folder/OpenFolderView$Position;,
        Lcom/sonymobile/home/folder/OpenFolderView$DimAnimation;,
        Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;,
        Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;,
        Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;
    }
.end annotation


# static fields
.field protected static final DIM_ALPHA:I


# instance fields
.field private mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

.field private final mCloseAnim:Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;

.field private mClosedFolderView:Lcom/sonymobile/flix/components/Component;

.field private mDelayedLocateItem:Lcom/sonymobile/home/data/Item;

.field private mDimColor:I

.field private final mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

.field private final mGridView:Lcom/sonymobile/home/folder/GridView;

.field private final mHeaderView:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

.field private mIsClosed:Z

.field private final mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

.field private mLabel:Ljava/lang/String;

.field private mListener:Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;

.field private final mOpenAnim:Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;

.field private mOpenAnimRunning:Z

.field private final mPos:Lcom/sonymobile/home/folder/OpenFolderView$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/high16 v0, 0x43190000    # 153.0f

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/sonymobile/home/folder/OpenFolderView;->DIM_ALPHA:I

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;)V
    .locals 6
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "keyboardFocusManager"    # Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 106
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 71
    new-instance v0, Lcom/sonymobile/home/folder/OpenFolderView$Position;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderView$Position;-><init>(Lcom/sonymobile/home/folder/OpenFolderView$1;)V

    iput-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mPos:Lcom/sonymobile/home/folder/OpenFolderView$Position;

    .line 73
    iput-boolean v2, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mIsClosed:Z

    .line 107
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderView;->prepareForDrawing()V

    .line 109
    iput-object p2, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    .line 112
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderView;->getListeners()Lcom/sonymobile/flix/components/ComponentListeners;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/home/folder/OpenFolderView$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/folder/OpenFolderView$1;-><init>(Lcom/sonymobile/home/folder/OpenFolderView;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/ComponentListeners;->addListener(Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;)V

    .line 130
    invoke-virtual {p0, v3}, Lcom/sonymobile/home/folder/OpenFolderView;->setVisible(Z)V

    .line 132
    new-instance v0, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;-><init>(Lcom/sonymobile/home/folder/OpenFolderView;Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->setClippingEnabled(Z)V

    .line 135
    new-instance v0, Lcom/sonymobile/home/folder/GridView;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/home/folder/GridView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;)V

    iput-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    .line 136
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    invoke-virtual {v0, v3}, Lcom/sonymobile/home/folder/GridView;->setScrollDirection(I)V

    .line 137
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/folder/GridView;->setClippingEnabled(Z)V

    .line 139
    new-instance v0, Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    invoke-direct {v0, p1}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mHeaderView:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    .line 140
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mHeaderView:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    new-instance v1, Lcom/sonymobile/home/folder/OpenFolderView$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/folder/OpenFolderView$2;-><init>(Lcom/sonymobile/home/folder/OpenFolderView;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->setOnClickListener(Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;)V

    .line 157
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mHeaderView:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 158
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 159
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 161
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->setPivotPoint(FF)V

    .line 163
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderView;->setCameraProjection(I)V

    .line 165
    new-instance v0, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;-><init>(Lcom/sonymobile/home/folder/OpenFolderView;Lcom/sonymobile/flix/components/Component;J)V

    iput-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mOpenAnim:Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;

    .line 166
    new-instance v0, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;-><init>(Lcom/sonymobile/home/folder/OpenFolderView;Lcom/sonymobile/flix/components/Component;J)V

    iput-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mCloseAnim:Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;

    .line 167
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/folder/OpenFolderView;)Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mListener:Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sonymobile/home/folder/OpenFolderView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderView;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mOpenAnimRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sonymobile/home/folder/OpenFolderView;)Lcom/sonymobile/home/data/Item;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mDelayedLocateItem:Lcom/sonymobile/home/data/Item;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonymobile/home/folder/OpenFolderView;Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/data/Item;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderView;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mDelayedLocateItem:Lcom/sonymobile/home/data/Item;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonymobile/home/folder/OpenFolderView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderView;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sonymobile/home/folder/OpenFolderView;->closeAnimationCallback()V

    return-void
.end method

.method static synthetic access$602(Lcom/sonymobile/home/folder/OpenFolderView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderView;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mDimColor:I

    return p1
.end method

.method static synthetic access$700(Lcom/sonymobile/home/folder/OpenFolderView;)Lcom/sonymobile/home/folder/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    return-object v0
.end method

.method private closeAnimationCallback()V
    .locals 2

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderView;->setVisible(Z)V

    .line 259
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mClosedFolderView:Lcom/sonymobile/flix/components/Component;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mClosedFolderView:Lcom/sonymobile/flix/components/Component;

    .line 262
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mListener:Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mListener:Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;

    invoke-interface {v0}, Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;->onClose()V

    .line 265
    :cond_0
    return-void
.end method

.method private getGridLocationClamped(FFFFFFF)F
    .locals 4
    .param p1, "sceneLength"    # F
    .param p2, "defaultClosedFolderPosition"    # F
    .param p3, "gridLength"    # F
    .param p4, "screenMargin"    # F
    .param p5, "headerViewModifier"    # F
    .param p6, "maxOffset"    # F
    .param p7, "minOffset"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 420
    sub-float v2, p1, p4

    sub-float v2, p3, v2

    div-float/2addr v2, v3

    add-float/2addr v2, p5

    add-float v1, v2, p7

    .line 423
    .local v1, "min":F
    sub-float v2, p1, p4

    sub-float/2addr v2, p3

    div-float/2addr v2, v3

    sub-float v0, v2, p6

    .line 424
    .local v0, "max":F
    invoke-static {p2, v1, v0}, Lcom/sonymobile/home/util/MathUtil;->clamp(FFF)F

    move-result v2

    return v2
.end method

.method private getRelativePosition(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/home/folder/OpenFolderView$Position;)V
    .locals 2
    .param p1, "refComponent"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "worldX"    # F
    .param p3, "worldY"    # F
    .param p4, "outPosition"    # Lcom/sonymobile/home/folder/OpenFolderView$Position;

    .prologue
    .line 429
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getX()F

    move-result v0

    add-float/2addr v0, p2

    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getWorldX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p4, Lcom/sonymobile/home/folder/OpenFolderView$Position;->x:F

    .line 430
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getY()F

    move-result v0

    add-float/2addr v0, p3

    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getWorldY()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p4, Lcom/sonymobile/home/folder/OpenFolderView$Position;->y:F

    .line 431
    return-void
.end method

.method private updateOpenFolderSizeAndPosition(Z)V
    .locals 30
    .param p1, "resetScrollPosition"    # Z

    .prologue
    .line 319
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v28

    .line 320
    .local v28, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v2

    .line 321
    .local v2, "sceneWidth":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v29

    .line 322
    .local v29, "sceneHeight":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mHeaderView:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    invoke-virtual {v1}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->getHeight()F

    move-result v25

    .line 323
    .local v25, "headerHeight":F
    cmpl-float v1, v29, v2

    if-lez v1, :cond_1

    const/16 v27, 0x1

    .line 324
    .local v27, "portrait":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/folder/OpenFolderView;->getZ()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_2

    const/16 v26, 0x1

    .line 325
    .local v26, "isZoomedOut":Z
    :goto_1
    if-eqz v26, :cond_3

    const/4 v5, 0x0

    .line 327
    .local v5, "screenMargin":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mClosedFolderView:Lcom/sonymobile/flix/components/Component;

    if-nez v1, :cond_4

    .line 414
    :cond_0
    :goto_3
    return-void

    .line 323
    .end local v5    # "screenMargin":F
    .end local v26    # "isZoomedOut":Z
    .end local v27    # "portrait":Z
    :cond_1
    const/16 v27, 0x0

    goto :goto_0

    .line 324
    .restart local v27    # "portrait":Z
    :cond_2
    const/16 v26, 0x0

    goto :goto_1

    .line 325
    .restart local v26    # "isZoomedOut":Z
    :cond_3
    const v1, 0x7f0b003a

    move-object/from16 v0, v28

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v5, v1

    goto :goto_2

    .line 332
    .restart local v5    # "screenMargin":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mClosedFolderView:Lcom/sonymobile/flix/components/Component;

    instance-of v1, v1, Lcom/sonymobile/home/presenter/view/IconLabelView;

    if-eqz v1, :cond_6

    .line 333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mClosedFolderView:Lcom/sonymobile/flix/components/Component;

    check-cast v1, Lcom/sonymobile/home/presenter/view/IconLabelView;

    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getImage()Lcom/sonymobile/flix/components/Image;

    move-result-object v18

    .line 338
    .local v18, "closedIcon":Lcom/sonymobile/flix/components/Component;
    :goto_4
    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v19

    .line 341
    .local v19, "closedIconHeight":F
    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getBottomOffset()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v29, v1

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getTopOffset()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    sub-float v1, v1, v25

    sub-float v14, v1, v5

    .line 344
    .local v14, "availableGridHeight":F
    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getRightOffset()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v2, v1

    sub-float v15, v1, v5

    .line 347
    .local v15, "availableGridWidth":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    invoke-virtual {v3}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->getItemCount()I

    move-result v3

    move/from16 v0, v27

    invoke-virtual {v1, v14, v15, v3, v0}, Lcom/sonymobile/home/folder/GridView;->updateGridSize(FFIZ)I

    .line 350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    invoke-virtual {v3}, Lcom/sonymobile/home/folder/GridView;->getWidth()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    invoke-virtual {v4}, Lcom/sonymobile/home/folder/GridView;->getHeight()F

    move-result v4

    add-float v4, v4, v25

    invoke-virtual {v1, v3, v4}, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->setSize(FF)V

    .line 353
    if-eqz v27, :cond_7

    const/4 v7, 0x0

    .line 355
    .local v7, "rightOffset":F
    :goto_5
    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/flix/components/Component;->getWorldX()F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    sub-float v3, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    invoke-virtual {v1}, Lcom/sonymobile/home/folder/GridView;->getWidth()F

    move-result v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/sonymobile/home/folder/OpenFolderView;->getGridLocationClamped(FFFFFFF)F

    move-result v23

    .line 360
    .local v23, "gridViewX":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->getWorldY(Lcom/sonymobile/flix/components/Component;)F

    move-result v1

    const v3, 0x3dcccccd    # 0.1f

    mul-float v3, v3, v19

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v19, v3

    sub-float v20, v1, v3

    .line 365
    .local v20, "defaultGridViewLocationAboveClosedIcon":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->getWorldY(Lcom/sonymobile/flix/components/Component;)F

    move-result v1

    const v3, 0x3e99999a    # 0.3f

    mul-float v3, v3, v19

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v19, v3

    add-float v21, v1, v3

    .line 370
    .local v21, "defaultGridViewLocationBelowClosedIcon":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v29, v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    invoke-virtual {v3}, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->getHeight()F

    move-result v3

    sub-float/2addr v1, v3

    sub-float v22, v1, v5

    .line 374
    .local v22, "defaultSpaceRequirement":F
    add-float v1, v22, v20

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getTopOffset()I

    move-result v3

    int-to-float v3, v3

    sub-float v16, v1, v3

    .line 378
    .local v16, "availableSpaceAboveDefaultLocation":F
    sub-float v1, v22, v21

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getBottomOffset()I

    move-result v3

    int-to-float v3, v3

    sub-float v17, v1, v3

    .line 385
    .local v17, "availableSpaceBelowDefaultLocation":F
    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getTopOffset()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v5

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v29, v3

    sub-float v24, v1, v3

    .line 388
    .local v24, "gridViewY":F
    const/4 v1, 0x0

    cmpl-float v1, v16, v1

    if-lez v1, :cond_8

    .line 389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    invoke-virtual {v1}, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->getHeight()F

    move-result v1

    sub-float v24, v20, v1

    .line 398
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mHeaderView:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    invoke-virtual {v3}, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->getWidth()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->setWidth(F)V

    .line 401
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    move/from16 v0, v23

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->setX(F)V

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    move/from16 v0, v24

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->setY(F)V

    .line 404
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mHeaderView:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 405
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mHeaderView:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static/range {v8 .. v13}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mHeaderView:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v1, v3, v4}, Lcom/sonymobile/flix/components/util/Layouter;->snapToPixel(Lcom/sonymobile/flix/components/Component;FF)V

    .line 409
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v1, v3, v4}, Lcom/sonymobile/flix/components/util/Layouter;->snapToPixel(Lcom/sonymobile/flix/components/Component;FF)V

    .line 411
    if-eqz p1, :cond_0

    .line 412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    invoke-virtual {v1}, Lcom/sonymobile/home/folder/GridView;->resetScrollPosition()V

    goto/16 :goto_3

    .line 335
    .end local v7    # "rightOffset":F
    .end local v14    # "availableGridHeight":F
    .end local v15    # "availableGridWidth":F
    .end local v16    # "availableSpaceAboveDefaultLocation":F
    .end local v17    # "availableSpaceBelowDefaultLocation":F
    .end local v18    # "closedIcon":Lcom/sonymobile/flix/components/Component;
    .end local v19    # "closedIconHeight":F
    .end local v20    # "defaultGridViewLocationAboveClosedIcon":F
    .end local v21    # "defaultGridViewLocationBelowClosedIcon":F
    .end local v22    # "defaultSpaceRequirement":F
    .end local v23    # "gridViewX":F
    .end local v24    # "gridViewY":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/folder/OpenFolderView;->mClosedFolderView:Lcom/sonymobile/flix/components/Component;

    move-object/from16 v18, v0

    .restart local v18    # "closedIcon":Lcom/sonymobile/flix/components/Component;
    goto/16 :goto_4

    .line 353
    .restart local v14    # "availableGridHeight":F
    .restart local v15    # "availableGridWidth":F
    .restart local v19    # "closedIconHeight":F
    :cond_7
    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getRightOffset()I

    move-result v1

    int-to-float v7, v1

    goto/16 :goto_5

    .line 393
    .restart local v7    # "rightOffset":F
    .restart local v16    # "availableSpaceAboveDefaultLocation":F
    .restart local v17    # "availableSpaceBelowDefaultLocation":F
    .restart local v20    # "defaultGridViewLocationAboveClosedIcon":F
    .restart local v21    # "defaultGridViewLocationBelowClosedIcon":F
    .restart local v22    # "defaultSpaceRequirement":F
    .restart local v23    # "gridViewX":F
    .restart local v24    # "gridViewY":F
    :cond_8
    const/4 v1, 0x0

    cmpl-float v1, v17, v1

    if-lez v1, :cond_5

    .line 394
    move/from16 v24, v21

    goto :goto_6
.end method


# virtual methods
.method public cancelItemPressed()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/Scene;->cancelTouch(Lcom/sonymobile/flix/components/Component;)V

    .line 606
    return-void
.end method

.method public close(Z)V
    .locals 10
    .param p1, "animate"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 482
    iget-boolean v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mIsClosed:Z

    if-eqz v1, :cond_0

    .line 523
    :goto_0
    return-void

    .line 486
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mIsClosed:Z

    .line 488
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mClosedFolderView:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v1, v4}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->focus(Lcom/sonymobile/flix/components/Component;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    invoke-virtual {v1, v9}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->setLastFocused(Lcom/sonymobile/flix/components/Component;)V

    .line 495
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mOpenAnim:Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;

    invoke-virtual {v1, v4}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 496
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mOpenAnimRunning:Z

    .line 498
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mClosedFolderView:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Component;->getWorldX()F

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mClosedFolderView:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v5}, Lcom/sonymobile/flix/components/Component;->getWorldY()F

    move-result v5

    iget-object v6, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mPos:Lcom/sonymobile/home/folder/OpenFolderView$Position;

    invoke-direct {p0, v1, v4, v5, v6}, Lcom/sonymobile/home/folder/OpenFolderView;->getRelativePosition(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/home/folder/OpenFolderView$Position;)V

    .line 501
    if-eqz p1, :cond_2

    .line 502
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    invoke-virtual {v1}, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->getAlpha()F

    move-result v0

    .line 504
    .local v0, "alpha":F
    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v2, v1

    .line 506
    .local v2, "duration":J
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mCloseAnim:Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;

    invoke-virtual {v1}, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;->reset()V

    .line 509
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mCloseAnim:Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;

    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    invoke-virtual {v4}, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    invoke-virtual {v5}, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mPos:Lcom/sonymobile/home/folder/OpenFolderView$Position;

    iget v6, v6, Lcom/sonymobile/home/folder/OpenFolderView$Position;->x:F

    iget-object v7, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mPos:Lcom/sonymobile/home/folder/OpenFolderView$Position;

    iget v7, v7, Lcom/sonymobile/home/folder/OpenFolderView$Position;->y:F

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;->setPosition(FFFF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 510
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mCloseAnim:Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;

    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    invoke-virtual {v4}, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->getScalingX()F

    move-result v4

    invoke-virtual {v1, v4, v8}, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;->setScaling(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 511
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mCloseAnim:Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;

    invoke-virtual {v1, v0, v8}, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;->setAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 512
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mCloseAnim:Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;

    iget v4, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mDimColor:I

    ushr-int/lit8 v4, v4, 0x18

    int-to-float v4, v4

    sget v5, Lcom/sonymobile/home/folder/OpenFolderView;->DIM_ALPHA:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v1, v4, v8}, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;->setDim(FF)V

    .line 513
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mCloseAnim:Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 515
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mCloseAnim:Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;

    invoke-virtual {v1, v4}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 520
    .end local v0    # "alpha":F
    .end local v2    # "duration":J
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1, p0}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 522
    iput-object v9, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mDelayedLocateItem:Lcom/sonymobile/home/data/Item;

    goto/16 :goto_0

    .line 517
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/home/folder/OpenFolderView;->closeAnimationCallback()V

    goto :goto_1
.end method

.method public enableItemAnimations(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 628
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/folder/GridView;->enableItemAnimations(Z)V

    .line 629
    return-void
.end method

.method public getGridHeight()F
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/GridView;->getHeight()F

    move-result v0

    return v0
.end method

.method public getItemIndexAtScreenLocation([F)I
    .locals 4
    .param p1, "coords"    # [F

    .prologue
    .line 579
    array-length v2, p1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 580
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Coordinates must be of size == 2"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 582
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    const/4 v3, 0x0

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/folder/GridView;->getCol(F)I

    move-result v0

    .line 583
    .local v0, "col":I
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    const/4 v3, 0x1

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/folder/GridView;->getRow(F)I

    move-result v1

    .line 585
    .local v1, "row":I
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/home/folder/GridView;->getItemIndex(II)I

    move-result v2

    return v2
.end method

.method public getItemViewFraction([F)F
    .locals 2
    .param p1, "coords"    # [F

    .prologue
    .line 590
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 591
    const/high16 v0, -0x40800000    # -1.0f

    .line 593
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/GridView;->getcolumnFraction(F)F

    move-result v0

    goto :goto_0
.end method

.method public getNumberOfColumns()I
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/GridView;->getNumberOfColumns()I

    move-result v0

    return v0
.end method

.method public layout(Z)V
    .locals 0
    .param p1, "resetScrollPosition"    # Z

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/OpenFolderView;->updateOpenFolderSizeAndPosition(Z)V

    .line 444
    return-void
.end method

.method public locateItem(Lcom/sonymobile/home/data/Item;)V
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 609
    iget-boolean v2, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mOpenAnimRunning:Z

    if-eqz v2, :cond_1

    .line 610
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mDelayedLocateItem:Lcom/sonymobile/home/data/Item;

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    invoke-virtual {v2, p1}, Lcom/sonymobile/home/folder/GridView;->getItemView(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v0

    .line 613
    .local v0, "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    if-eqz v0, :cond_0

    .line 614
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/folder/GridView;->scrollTo(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 615
    new-instance v1, Lcom/sonymobile/home/ui/pageview/WiggleAnimation;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/home/ui/pageview/WiggleAnimation;-><init>(Lcom/sonymobile/flix/components/Component;F)V

    .line 616
    .local v1, "locateAnimation":Lcom/sonymobile/home/ui/pageview/WiggleAnimation;
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    goto :goto_0
.end method

.method public onBelowMinimumNumberOfFolderItems()V
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderView;->close(Z)V

    .line 563
    return-void
.end method

.method public onConfigurationChanged(Lcom/sonymobile/flix/components/Scene;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 462
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 470
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Component;->onDraw(Landroid/graphics/Canvas;)V

    .line 471
    iget v2, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mDimColor:I

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 472
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mClosedFolderView:Lcom/sonymobile/flix/components/Component;

    if-eqz v2, :cond_0

    .line 473
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mClosedFolderView:Lcom/sonymobile/flix/components/Component;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 474
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mClosedFolderView:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Component;->getWorldX()F

    move-result v0

    .line 475
    .local v0, "x":F
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mClosedFolderView:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Component;->getWorldY()F

    move-result v1

    .line 476
    .local v1, "y":F
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mClosedFolderView:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v2, p1, v0, v1}, Lcom/sonymobile/flix/components/Component;->drawAt(Landroid/graphics/Canvas;FF)V

    .line 477
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mClosedFolderView:Lcom/sonymobile/flix/components/Component;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 479
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    return-void
.end method

.method public onFolderNameChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->getFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderView;->setLabel(Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method public onSceneCreated(Lcom/sonymobile/flix/components/Scene;II)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 466
    return-void
.end method

.method public onSceneDraw(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "components"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 458
    return-void
.end method

.method public onSceneSizeChanged(Lcom/sonymobile/flix/components/Scene;IIII)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "prevWidth"    # I
    .param p3, "prevHeight"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 450
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderView;->enableItemAnimations(Z)V

    .line 451
    int-to-float v0, p4

    int-to-float v1, p5

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/folder/OpenFolderView;->setSize(FF)V

    .line 452
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderView;->enableItemAnimations(Z)V

    .line 453
    return-void
.end method

.method public open(Lcom/sonymobile/flix/components/Component;)V
    .locals 6
    .param p1, "closedFolderView"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 282
    iput-boolean v2, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mIsClosed:Z

    .line 284
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mClosedFolderView:Lcom/sonymobile/flix/components/Component;

    .line 285
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mClosedFolderView:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 287
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mHeaderView:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->resetState()V

    .line 289
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->setScaling(F)V

    .line 290
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->setDescendantAlpha(F)V

    .line 292
    invoke-virtual {p0, v2}, Lcom/sonymobile/home/folder/OpenFolderView;->enableItemAnimations(Z)V

    .line 293
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/folder/OpenFolderView;->setSize(FF)V

    .line 294
    invoke-virtual {p0, v5}, Lcom/sonymobile/home/folder/OpenFolderView;->enableItemAnimations(Z)V

    .line 295
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->setVisible(Z)V

    .line 296
    invoke-virtual {p0, v5}, Lcom/sonymobile/home/folder/OpenFolderView;->setVisible(Z)V

    .line 298
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mCloseAnim:Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 300
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mClosedFolderView:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Component;->getWorldX()F

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mClosedFolderView:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Component;->getWorldY()F

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mPos:Lcom/sonymobile/home/folder/OpenFolderView$Position;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/home/folder/OpenFolderView;->getRelativePosition(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/home/folder/OpenFolderView$Position;)V

    .line 303
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mOpenAnim:Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;->reset()V

    .line 304
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mOpenAnim:Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mPos:Lcom/sonymobile/home/folder/OpenFolderView$Position;

    iget v1, v1, Lcom/sonymobile/home/folder/OpenFolderView$Position;->x:F

    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mPos:Lcom/sonymobile/home/folder/OpenFolderView$Position;

    iget v2, v2, Lcom/sonymobile/home/folder/OpenFolderView$Position;->y:F

    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    invoke-virtual {v3}, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mFolderView:Lcom/sonymobile/home/folder/OpenFolderView$FolderView;

    invoke-virtual {v4}, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->getY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;->setPosition(FFFF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 306
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mOpenAnim:Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 307
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 308
    iput-boolean v5, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mOpenAnimRunning:Z

    .line 309
    return-void
.end method

.method public reloadViewContent()V
    .locals 0

    .prologue
    .line 625
    return-void
.end method

.method public scrollContent(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 268
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    sget-object v1, Lcom/sonymobile/home/folder/GridView$ScrollDirection;->SCROLL_DIRECTION_UP:Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/GridView;->scrollContent(Lcom/sonymobile/home/folder/GridView$ScrollDirection;)V

    .line 275
    :goto_0
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    sget-object v1, Lcom/sonymobile/home/folder/GridView$ScrollDirection;->SCROLL_DIRECTION_DOWN:Lcom/sonymobile/home/folder/GridView$ScrollDirection;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/GridView;->scrollContent(Lcom/sonymobile/home/folder/GridView$ScrollDirection;)V

    goto :goto_0

    .line 273
    :cond_1
    const-string v0, "OpenFolderView"

    const-string v1, "Invalid scroll direction. Ignoring request."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAdapter(Lcom/sonymobile/home/folder/OpenFolderAdapter;)V
    .locals 1
    .param p1, "folderAdapter"    # Lcom/sonymobile/home/folder/OpenFolderAdapter;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->unregisterFolderDataObserver(Lcom/sonymobile/home/folder/OpenFolderAdapter$FolderDataObserver;)V

    .line 529
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    .line 530
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/folder/GridView;->setAdapter(Lcom/sonymobile/home/folder/OpenFolderAdapter;)V

    .line 532
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    if-eqz v0, :cond_1

    .line 533
    invoke-virtual {p1}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->getFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderView;->setLabel(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->registerFolderDataObserver(Lcom/sonymobile/home/folder/OpenFolderAdapter$FolderDataObserver;)V

    .line 536
    :cond_1
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 6
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 539
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mLabel:Ljava/lang/String;

    .line 541
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mHeaderView:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->setLabel(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mHeaderView:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;

    const/4 v5, 0x0

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 544
    :cond_0
    return-void
.end method

.method public setListener(Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mListener:Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;

    .line 279
    return-void
.end method

.method public setShowDeleteButton(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 566
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mHeaderView:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->setShowDeleteButton(Z)V

    .line 567
    return-void
.end method

.method public setShowEditIcon(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 575
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mHeaderView:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->setShowEditIcon(Z)V

    .line 576
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 435
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/components/Component;->setSize(FF)V

    .line 436
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderView;->updateOpenFolderSizeAndPosition(Z)V

    .line 437
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 440
    :cond_0
    return-void
.end method
