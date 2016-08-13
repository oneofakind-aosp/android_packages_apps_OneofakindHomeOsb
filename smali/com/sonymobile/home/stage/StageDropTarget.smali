.class public Lcom/sonymobile/home/stage/StageDropTarget;
.super Lcom/sonymobile/flix/components/Component;
.source "StageDropTarget.java"

# interfaces
.implements Lcom/sonymobile/home/transfer/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/sonymobile/home/stage/StageAdapter;

.field private final mCoordsOver:[F

.field private final mDropHintHelper:Lcom/sonymobile/home/presenter/DropHintHelper;

.field private final mFolderHintManager:Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;

.field private mFolderHintView:Lcom/sonymobile/flix/components/Image;

.field private mHiddenItemId:J

.field private mHiddenView:Lcom/sonymobile/home/ui/pageview/PageItemView;

.field private mIsItemDraggedOutsideOriginalLocation:Z

.field private final mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

.field private final mLocation:Lcom/sonymobile/home/data/ItemLocation;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mMovementBoundsCalculator:Lcom/sonymobile/home/stage/MovementBoundsCalculator;

.field private mOverlappedFolderId:J

.field private mStageHintPositionCalculator:Lcom/sonymobile/home/stage/StageHintPositionCalculator;

.field private final mStageModel:Lcom/sonymobile/home/stage/StageModel;

.field private final mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

.field private mStageView:Lcom/sonymobile/home/stage/StageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/sonymobile/home/stage/StageDropTarget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/stage/StageDropTarget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/stage/StageModel;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/stage/StagePresenter;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 8
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "model"    # Lcom/sonymobile/home/stage/StageModel;
    .param p3, "itemCreator"    # Lcom/sonymobile/home/data/ItemCreator;
    .param p4, "presenter"    # Lcom/sonymobile/home/stage/StagePresenter;
    .param p5, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v2, -0x1

    .line 190
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 59
    new-instance v0, Lcom/sonymobile/home/data/ItemLocation;

    const v1, 0x7fffffff

    move v3, v2

    move v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mCoordsOver:[F

    .line 65
    iput-object v7, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mFolderHintView:Lcom/sonymobile/flix/components/Image;

    .line 67
    iput-object v7, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mHiddenView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 73
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mOverlappedFolderId:J

    .line 80
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mHiddenItemId:J

    .line 191
    const v0, 0x7f0f003b

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/stage/StageDropTarget;->setId(I)V

    .line 192
    iput-object p3, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    .line 193
    iput-object p4, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    .line 194
    iput-object p2, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    .line 195
    new-instance v0, Lcom/sonymobile/home/presenter/DropHintHelper;

    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-static {}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->getFactory()Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v3}, Lcom/sonymobile/home/stage/StageModel;->getPageViewName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/home/presenter/DropHintHelper;-><init>(Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mDropHintHelper:Lcom/sonymobile/home/presenter/DropHintHelper;

    .line 198
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mMainThreadHandler:Landroid/os/Handler;

    .line 199
    new-instance v0, Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;

    invoke-direct {v0, p0, p1, p5}, Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;-><init>(Lcom/sonymobile/home/stage/StageDropTarget;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/settings/UserSettings;)V

    iput-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mFolderHintManager:Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;

    .line 200
    new-instance v0, Lcom/sonymobile/home/stage/MovementBoundsCalculator;

    invoke-direct {v0}, Lcom/sonymobile/home/stage/MovementBoundsCalculator;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mMovementBoundsCalculator:Lcom/sonymobile/home/stage/MovementBoundsCalculator;

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/stage/StageDropTarget;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StageDropTarget;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/stage/StageDropTarget;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StageDropTarget;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sonymobile/home/stage/StageDropTarget;->resetFolderHint(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StageDropTarget;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mAdapter:Lcom/sonymobile/home/stage/StageAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonymobile/home/stage/StageDropTarget;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StageDropTarget;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sonymobile/home/stage/StageDropTarget;->cleanup(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StageView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StageDropTarget;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageView:Lcom/sonymobile/home/stage/StageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/data/ItemCreator;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StageDropTarget;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonymobile/home/stage/StageDropTarget;Lcom/sonymobile/flix/components/Image;)Lcom/sonymobile/flix/components/Image;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StageDropTarget;
    .param p1, "x1"    # Lcom/sonymobile/flix/components/Image;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mFolderHintView:Lcom/sonymobile/flix/components/Image;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sonymobile/home/stage/StageDropTarget;Lcom/sonymobile/home/ui/pageview/PageItemView;)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StageDropTarget;
    .param p1, "x1"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mHiddenView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonymobile/home/stage/StageDropTarget;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StageDropTarget;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mHiddenItemId:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/sonymobile/home/stage/StageDropTarget;J)J
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StageDropTarget;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mHiddenItemId:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/sonymobile/home/stage/StageDropTarget;J)J
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StageDropTarget;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mOverlappedFolderId:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/sonymobile/home/stage/StageDropTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StageDropTarget;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sonymobile/home/stage/StageDropTarget;->moveFolderHintViewToCurrentPage()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StageHintPositionCalculator;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StageDropTarget;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageHintPositionCalculator:Lcom/sonymobile/home/stage/StageHintPositionCalculator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StageModel;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StageDropTarget;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StagePresenter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StageDropTarget;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    return-object v0
.end method

.method private cleanup(Z)V
    .locals 8
    .param p1, "restore"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v2, -0x1

    .line 627
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mDropHintHelper:Lcom/sonymobile/home/presenter/DropHintHelper;

    invoke-virtual {v0, v7}, Lcom/sonymobile/home/presenter/DropHintHelper;->stopHinting(Z)V

    .line 628
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    const v1, 0x7fffffff

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/home/data/ItemLocation;->set(IIIIII)V

    .line 629
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mOverlappedFolderId:J

    .line 631
    invoke-direct {p0, p1}, Lcom/sonymobile/home/stage/StageDropTarget;->resetFolderHint(Z)V

    .line 632
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageView:Lcom/sonymobile/home/stage/StageView;

    invoke-virtual {v0, v7}, Lcom/sonymobile/home/stage/StageView;->setPendingItemCount(I)V

    .line 633
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StageModel;->packItems()V

    .line 634
    return-void
.end method

.method private displayHint(Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/data/ItemLocation;II)V
    .locals 7
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p2, "location"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p3, "col"    # I
    .param p4, "row"    # I

    .prologue
    .line 670
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/home/stage/StageDropTarget;->resetFolderHint(Z)V

    .line 671
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageHintPositionCalculator:Lcom/sonymobile/home/stage/StageHintPositionCalculator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mDropHintHelper:Lcom/sonymobile/home/presenter/DropHintHelper;

    invoke-virtual {v0, p2}, Lcom/sonymobile/home/presenter/DropHintHelper;->isHintingAtLocation(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StagePresenter;->isLandscape()Z

    move-result v6

    .line 677
    .local v6, "landscape":Z
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageHintPositionCalculator:Lcom/sonymobile/home/stage/StageHintPositionCalculator;

    invoke-interface {v0, p1, p2, p3, v6}, Lcom/sonymobile/home/stage/StageHintPositionCalculator;->getHintLocationX(Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/data/ItemLocation;IZ)F

    move-result v2

    .line 680
    .local v2, "xPos":F
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageHintPositionCalculator:Lcom/sonymobile/home/stage/StageHintPositionCalculator;

    invoke-interface {v0, p1, p2, p4, v6}, Lcom/sonymobile/home/stage/StageHintPositionCalculator;->getHintLocationY(Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/data/ItemLocation;IZ)F

    move-result v3

    .line 682
    .local v3, "yPos":F
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mDropHintHelper:Lcom/sonymobile/home/presenter/DropHintHelper;

    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageView:Lcom/sonymobile/home/stage/StageView;

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/StageView;->getHintPivotX()F

    move-result v4

    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageView:Lcom/sonymobile/home/stage/StageView;

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/StageView;->getHintPivotY()F

    move-result v5

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/home/presenter/DropHintHelper;->hint(Lcom/sonymobile/home/data/ItemLocation;FFFF)V

    .line 685
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v0, p2}, Lcom/sonymobile/home/data/ItemLocation;->set(Lcom/sonymobile/home/data/ItemLocation;)V

    goto :goto_0
.end method

.method private handleItemMovement(Lcom/sonymobile/home/data/Item;FF[F)Z
    .locals 6
    .param p1, "overlappedItem"    # Lcom/sonymobile/home/data/Item;
    .param p2, "xScreenPosition"    # F
    .param p3, "yScreenPosition"    # F
    .param p4, "previousCoords"    # [F

    .prologue
    .line 690
    iget-object v3, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    invoke-virtual {v3}, Lcom/sonymobile/home/stage/StagePresenter;->isDragLocal()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mAdapter:Lcom/sonymobile/home/stage/StageAdapter;

    invoke-virtual {v3}, Lcom/sonymobile/home/stage/StageAdapter;->isFull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 693
    const/4 v0, 0x0

    .line 716
    :cond_0
    :goto_0
    return v0

    .line 696
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    invoke-virtual {v3}, Lcom/sonymobile/home/stage/StagePresenter;->isLandscape()Z

    move-result v1

    .line 697
    .local v1, "landscape":Z
    iget-object v3, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageView:Lcom/sonymobile/home/stage/StageView;

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/home/stage/StageView;->getPageItem(J)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v2

    .line 698
    .local v2, "pageItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    iget-object v3, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mMovementBoundsCalculator:Lcom/sonymobile/home/stage/MovementBoundsCalculator;

    invoke-virtual {v3, v1, v2, p2, p3}, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->calculateBoundsForItem(ZLcom/sonymobile/home/ui/pageview/PageItemView;FF)V

    .line 700
    const/4 v0, 0x0

    .line 702
    .local v0, "didMove":Z
    iget-object v3, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mMovementBoundsCalculator:Lcom/sonymobile/home/stage/MovementBoundsCalculator;

    iget-object v4, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mCoordsOver:[F

    invoke-virtual {v3, p4, v4}, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->isOverCloseBound([F[F)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 703
    if-eqz v1, :cond_2

    .line 704
    sget-object v3, Lcom/sonymobile/home/stage/StageItemMover;->DOWN:Lcom/sonymobile/home/stage/StageItemMover;

    iget-object v4, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v3, p1, v4}, Lcom/sonymobile/home/stage/StageItemMover;->move(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/stage/StageModel;)Z

    move-result v0

    goto :goto_0

    .line 706
    :cond_2
    sget-object v3, Lcom/sonymobile/home/stage/StageItemMover;->RIGHT:Lcom/sonymobile/home/stage/StageItemMover;

    iget-object v4, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v3, p1, v4}, Lcom/sonymobile/home/stage/StageItemMover;->move(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/stage/StageModel;)Z

    move-result v0

    goto :goto_0

    .line 708
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mMovementBoundsCalculator:Lcom/sonymobile/home/stage/MovementBoundsCalculator;

    iget-object v4, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mCoordsOver:[F

    invoke-virtual {v3, p4, v4}, Lcom/sonymobile/home/stage/MovementBoundsCalculator;->isOverFarBound([F[F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 709
    if-eqz v1, :cond_4

    .line 710
    sget-object v3, Lcom/sonymobile/home/stage/StageItemMover;->UP:Lcom/sonymobile/home/stage/StageItemMover;

    iget-object v4, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v3, p1, v4}, Lcom/sonymobile/home/stage/StageItemMover;->move(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/stage/StageModel;)Z

    move-result v0

    goto :goto_0

    .line 712
    :cond_4
    sget-object v3, Lcom/sonymobile/home/stage/StageItemMover;->LEFT:Lcom/sonymobile/home/stage/StageItemMover;

    iget-object v4, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v3, p1, v4}, Lcom/sonymobile/home/stage/StageItemMover;->move(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/stage/StageModel;)Z

    move-result v0

    goto :goto_0
.end method

.method private moveFolderHintViewToCurrentPage()V
    .locals 3

    .prologue
    .line 637
    iget-object v2, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageView:Lcom/sonymobile/home/stage/StageView;

    invoke-virtual {v2}, Lcom/sonymobile/home/stage/StageView;->getPageView()Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v0

    .line 639
    .local v0, "currentPageView":Lcom/sonymobile/home/ui/pageview/PageView;
    iget-object v2, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mFolderHintView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Image;->getParent()Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    .line 641
    .local v1, "folderHintViewParent":Lcom/sonymobile/flix/components/Component;
    iget-object v2, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mHiddenView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getParent()Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 642
    if-eqz v1, :cond_0

    .line 643
    iget-object v2, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mFolderHintView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Component;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 645
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mFolderHintView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/ui/pageview/PageView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 647
    :cond_1
    return-void
.end method

.method private resetFolderHint(Z)V
    .locals 4
    .param p1, "restoreHidden"    # Z

    .prologue
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 655
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mFolderHintManager:Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;->cancel()V

    .line 656
    iget-wide v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mHiddenItemId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 657
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mFolderHintView:Lcom/sonymobile/flix/components/Image;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mFolderHintView:Lcom/sonymobile/flix/components/Image;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Image;->setVisible(Z)V

    .line 659
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mFolderHintView:Lcom/sonymobile/flix/components/Image;

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mHiddenView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mHiddenView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setVisible(Z)V

    .line 664
    :cond_1
    iput-wide v2, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mHiddenItemId:J

    .line 666
    :cond_2
    return-void
.end method


# virtual methods
.method public drop(Lcom/sonymobile/home/transfer/Transferable;ILcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V
    .locals 28
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "actionSet"    # I
    .param p3, "transferImage"    # Lcom/sonymobile/flix/components/Image;
    .param p4, "dropCallback"    # Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    .prologue
    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-static {v3}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v12

    .line 217
    .local v12, "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-interface/range {p1 .. p1}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/stage/StageModel;->acceptItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v12, :cond_0

    iget v3, v12, Lcom/sonymobile/home/data/ItemLocation;->position:I

    if-gez v3, :cond_1

    .line 219
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v3, v4}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 221
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sonymobile/home/stage/StageDropTarget;->cleanup(Z)V

    .line 461
    .end local v12    # "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    :goto_0
    return-void

    .line 226
    .restart local v12    # "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageView:Lcom/sonymobile/home/stage/StageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/stage/StageView;->enableItemAnimations(Z)V

    .line 228
    invoke-interface/range {p1 .. p1}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v7

    .line 229
    .local v7, "item":Lcom/sonymobile/home/data/Item;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v3, v12}, Lcom/sonymobile/home/stage/StageModel;->getItemAtLocation(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/Item;

    move-result-object v5

    .line 231
    .local v5, "overlappedItem":Lcom/sonymobile/home/data/Item;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mHiddenItemId:J

    move-wide/from16 v26, v0

    cmp-long v3, v10, v26

    if-nez v3, :cond_3

    const/16 v18, 0x1

    .line 235
    .local v18, "hasVisibleHint":Z
    :goto_1
    if-eqz v18, :cond_4

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v3, v7, v5}, Lcom/sonymobile/home/stage/StageModel;->canCreateContainer(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v16, 0x1

    .line 239
    .local v16, "createContainer":Z
    :goto_2
    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v3, v5, v7}, Lcom/sonymobile/home/stage/StageModel;->acceptItem(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v19, 0x1

    .line 243
    .local v19, "intoContainer":Z
    :goto_3
    if-nez v5, :cond_6

    const/16 v20, 0x1

    .line 245
    .local v20, "intoFreeSlot":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    invoke-virtual {v3}, Lcom/sonymobile/home/stage/StagePresenter;->isDragLocal()Z

    move-result v6

    .line 263
    .local v6, "localDrag":Z
    if-eqz v16, :cond_8

    .line 267
    new-instance v8, Lcom/sonymobile/home/transfer/DropEvent;

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-direct {v8, v3, v4, v6}, Lcom/sonymobile/home/transfer/DropEvent;-><init>(ZIZ)V

    .line 268
    .local v8, "dropEvent":Lcom/sonymobile/home/transfer/DropEvent;
    new-instance v2, Lcom/sonymobile/home/stage/StageDropTarget$1;

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    invoke-direct/range {v2 .. v8}, Lcom/sonymobile/home/stage/StageDropTarget$1;-><init>(Lcom/sonymobile/home/stage/StageDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/home/data/Item;ZLcom/sonymobile/home/data/Item;Lcom/sonymobile/home/transfer/DropEvent;)V

    .line 305
    .local v2, "resultCallback":Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;
    const/16 v3, 0x10

    move/from16 v0, p2

    if-ne v0, v3, :cond_7

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    new-instance v4, Lcom/sonymobile/home/stage/StageDropTarget$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1, v5, v2}, Lcom/sonymobile/home/stage/StageDropTarget$2;-><init>(Lcom/sonymobile/home/stage/StageDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mMainThreadHandler:Landroid/os/Handler;

    invoke-interface {v3, v7, v4, v10}, Lcom/sonymobile/home/data/ItemCreator;->create(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z

    .line 324
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v15

    .line 325
    .local v15, "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    invoke-virtual {v15}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 327
    const/16 v3, 0x4000

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    invoke-virtual {v4}, Lcom/sonymobile/home/stage/StagePresenter;->getContext()Landroid/content/Context;

    move-result-object v4

    const v10, 0x7f080062

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->sendEvent(ILjava/lang/String;)V

    .line 460
    .end local v2    # "resultCallback":Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;
    .end local v8    # "dropEvent":Lcom/sonymobile/home/transfer/DropEvent;
    .end local v12    # "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    .end local v15    # "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    :cond_2
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mDropHintHelper:Lcom/sonymobile/home/presenter/DropHintHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/presenter/DropHintHelper;->stopHinting(Z)V

    goto/16 :goto_0

    .line 231
    .end local v6    # "localDrag":Z
    .end local v16    # "createContainer":Z
    .end local v18    # "hasVisibleHint":Z
    .end local v19    # "intoContainer":Z
    .end local v20    # "intoFreeSlot":Z
    .restart local v12    # "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 235
    .restart local v18    # "hasVisibleHint":Z
    :cond_4
    const/16 v16, 0x0

    goto :goto_2

    .line 239
    .restart local v16    # "createContainer":Z
    :cond_5
    const/16 v19, 0x0

    goto :goto_3

    .line 243
    .restart local v19    # "intoContainer":Z
    :cond_6
    const/16 v20, 0x0

    goto :goto_4

    .line 317
    .restart local v2    # "resultCallback":Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;
    .restart local v6    # "localDrag":Z
    .restart local v8    # "dropEvent":Lcom/sonymobile/home/transfer/DropEvent;
    .restart local v20    # "intoFreeSlot":Z
    :cond_7
    new-instance v22, Ljava/util/ArrayList;

    const/4 v3, 0x2

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 319
    .local v22, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mMainThreadHandler:Landroid/os/Handler;

    move-object/from16 v0, v22

    invoke-interface {v3, v0, v2, v4}, Lcom/sonymobile/home/data/ItemCreator;->createFolder(Ljava/util/List;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z

    goto :goto_5

    .line 330
    .end local v2    # "resultCallback":Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;
    .end local v8    # "dropEvent":Lcom/sonymobile/home/transfer/DropEvent;
    .end local v22    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_8
    if-eqz v19, :cond_a

    .line 331
    new-instance v8, Lcom/sonymobile/home/transfer/DropEvent;

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-direct {v8, v3, v4, v6}, Lcom/sonymobile/home/transfer/DropEvent;-><init>(ZIZ)V

    .line 332
    .restart local v8    # "dropEvent":Lcom/sonymobile/home/transfer/DropEvent;
    new-instance v2, Lcom/sonymobile/home/stage/StageDropTarget$3;

    move-object v9, v2

    move-object/from16 v10, p0

    move-object/from16 v11, p4

    move v12, v6

    move-object v13, v7

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/sonymobile/home/stage/StageDropTarget$3;-><init>(Lcom/sonymobile/home/stage/StageDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;ZLcom/sonymobile/home/data/Item;Lcom/sonymobile/home/transfer/DropEvent;)V

    .line 370
    .end local v12    # "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    .restart local v2    # "resultCallback":Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;
    const/16 v3, 0x10

    move/from16 v0, p2

    if-ne v0, v3, :cond_9

    .line 371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    new-instance v4, Lcom/sonymobile/home/stage/StageDropTarget$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1, v5, v2}, Lcom/sonymobile/home/stage/StageDropTarget$4;-><init>(Lcom/sonymobile/home/stage/StageDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mMainThreadHandler:Landroid/os/Handler;

    invoke-interface {v3, v7, v4, v10}, Lcom/sonymobile/home/data/ItemCreator;->create(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z

    goto :goto_6

    .line 379
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mMainThreadHandler:Landroid/os/Handler;

    invoke-interface {v3, v5, v7, v2, v4}, Lcom/sonymobile/home/data/ItemCreator;->addItemToFolder(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z

    goto :goto_6

    .line 382
    .end local v2    # "resultCallback":Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;
    .end local v8    # "dropEvent":Lcom/sonymobile/home/transfer/DropEvent;
    .restart local v12    # "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    :cond_a
    if-eqz v20, :cond_12

    .line 383
    const/16 v24, 0x4

    .line 384
    .local v24, "response":I
    new-instance v8, Lcom/sonymobile/home/transfer/DropEvent;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-direct {v8, v3, v4, v6}, Lcom/sonymobile/home/transfer/DropEvent;-><init>(ZIZ)V

    .line 386
    .restart local v8    # "dropEvent":Lcom/sonymobile/home/transfer/DropEvent;
    if-eqz v6, :cond_10

    .line 388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    invoke-virtual {v3}, Lcom/sonymobile/home/stage/StagePresenter;->getCurrentDragItem()Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v17

    .line 389
    .local v17, "currentDragItem":Lcom/sonymobile/home/ui/pageview/PageItemView;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setVisible(Z)V

    .line 391
    invoke-virtual {v7}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/sonymobile/home/data/ItemLocation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const/16 v23, 0x1

    .line 392
    .local v23, "moved":Z
    :goto_7
    if-nez v23, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mIsItemDraggedOutsideOriginalLocation:Z

    if-nez v3, :cond_b

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    invoke-virtual {v3}, Lcom/sonymobile/home/stage/StagePresenter;->enterEditMode()V

    .line 398
    :cond_b
    invoke-virtual {v7, v12}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 402
    invoke-virtual {v7}, Lcom/sonymobile/home/data/Item;->getPageViewName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v4}, Lcom/sonymobile/home/stage/StageModel;->getPageViewName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v3, v7}, Lcom/sonymobile/home/stage/StageModel;->addItemToStage(Lcom/sonymobile/home/data/Item;)Z

    move-result v21

    .line 404
    .local v21, "itemAdded":Z
    if-eqz v21, :cond_e

    .line 405
    if-eqz v23, :cond_c

    .line 406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    invoke-virtual {v3}, Lcom/sonymobile/home/stage/StagePresenter;->getTrackingCategory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ItemMoved"

    const-string v10, ""

    iget v11, v12, Lcom/sonymobile/home/data/ItemLocation;->position:I

    int-to-long v0, v11

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-static {v3, v4, v10, v0, v1}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 411
    :cond_c
    const/4 v3, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v3, v8}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 419
    .end local v21    # "itemAdded":Z
    :goto_8
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sonymobile/home/stage/StageDropTarget;->cleanup(Z)V

    goto/16 :goto_6

    .line 391
    .end local v23    # "moved":Z
    :cond_d
    const/16 v23, 0x0

    goto :goto_7

    .line 413
    .restart local v21    # "itemAdded":Z
    .restart local v23    # "moved":Z
    :cond_e
    sget-object v3, Lcom/sonymobile/home/stage/StageDropTarget;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Item "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " not added to the stage."

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 416
    .end local v21    # "itemAdded":Z
    :cond_f
    sget-object v3, Lcom/sonymobile/home/stage/StageDropTarget;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Item "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " to move not part of the stage context"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 422
    .end local v17    # "currentDragItem":Lcom/sonymobile/home/ui/pageview/PageItemView;
    .end local v23    # "moved":Z
    :cond_10
    new-instance v9, Lcom/sonymobile/home/stage/StageDropTarget$5;

    move-object/from16 v10, p0

    move-object/from16 v11, p4

    move-object v13, v7

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/sonymobile/home/stage/StageDropTarget$5;-><init>(Lcom/sonymobile/home/stage/StageDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/transfer/DropEvent;)V

    .line 444
    .local v9, "result":Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;
    const/16 v3, 0x10

    move/from16 v0, p2

    if-ne v0, v3, :cond_11

    .line 445
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mMainThreadHandler:Landroid/os/Handler;

    invoke-interface {v3, v7, v9, v4}, Lcom/sonymobile/home/data/ItemCreator;->create(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z

    goto/16 :goto_6

    .line 449
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mMainThreadHandler:Landroid/os/Handler;

    invoke-interface {v3, v7, v9, v4}, Lcom/sonymobile/home/data/ItemCreator;->copy(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z

    goto/16 :goto_6

    .line 454
    .end local v8    # "dropEvent":Lcom/sonymobile/home/transfer/DropEvent;
    .end local v9    # "result":Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;
    .end local v24    # "response":I
    :cond_12
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v3, v4}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 457
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sonymobile/home/stage/StageDropTarget;->cleanup(Z)V

    goto/16 :goto_6
.end method

.method public enter(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;)Z
    .locals 12
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "transferImage"    # Lcom/sonymobile/flix/components/Image;
    .param p3, "event"    # Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    .prologue
    .line 466
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->supportsHinting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/stage/StageModel;->acceptItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
    :cond_0
    const/4 v0, 0x1

    .line 500
    :goto_0
    return v0

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StagePresenter;->getGrid()Lcom/sonymobile/grid/Grid;

    move-result-object v9

    .line 472
    .local v9, "grid":Lcom/sonymobile/grid/Grid;
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getComponent()Lcom/sonymobile/flix/components/Component;

    move-result-object v8

    .line 473
    .local v8, "comp":Lcom/sonymobile/flix/components/Component;
    if-eqz v8, :cond_2

    if-eqz p2, :cond_2

    .line 475
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mDropHintHelper:Lcom/sonymobile/home/presenter/DropHintHelper;

    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageView:Lcom/sonymobile/home/stage/StageView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/DropHintHelper;->setView(Lcom/sonymobile/home/ui/pageview/PageViewGroup;)V

    .line 476
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mDropHintHelper:Lcom/sonymobile/home/presenter/DropHintHelper;

    invoke-virtual {v9}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v1

    invoke-virtual {v9}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sonymobile/home/presenter/DropHintHelper;->setupHint(Lcom/sonymobile/home/transfer/Transferable;II)V

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    const v1, 0x7fffffff

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/home/data/ItemLocation;->set(IIIIII)V

    .line 480
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StageModel;->isFull()Z

    move-result v0

    if-nez v0, :cond_3

    .line 481
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageView:Lcom/sonymobile/home/stage/StageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/stage/StageView;->setPendingItemCount(I)V

    .line 482
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageView:Lcom/sonymobile/home/stage/StageView;

    iget v1, p3, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->xScreenItemPosition:F

    iget v2, p3, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->yScreenItemPosition:F

    iget-object v3, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mCoordsOver:[F

    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/flix/components/ComponentTransform;->projectScreenPointOnComponent(Lcom/sonymobile/flix/components/Component;FF[F)Z

    .line 484
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mCoordsOver:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/stage/StagePresenter;->getCol(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v9}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/util/MathUtil;->clamp(III)I

    move-result v7

    .line 486
    .local v7, "col":I
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mCoordsOver:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/stage/StagePresenter;->getRow(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v9}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/util/MathUtil;->clamp(III)I

    move-result v11

    .line 488
    .local v11, "row":I
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mAdapter:Lcom/sonymobile/home/stage/StageAdapter;

    invoke-virtual {v0, v7, v11}, Lcom/sonymobile/home/stage/StageAdapter;->getLocationForColRow(II)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v10

    .line 489
    .local v10, "location":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v10, :cond_3

    .line 490
    invoke-direct {p0, v9, v10, v7, v11}, Lcom/sonymobile/home/stage/StageDropTarget;->displayHint(Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/data/ItemLocation;II)V

    .line 491
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StageModel;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 494
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    iget v1, v10, Lcom/sonymobile/home/data/ItemLocation;->position:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/stage/StageModel;->packItems(I)V

    .line 500
    .end local v7    # "col":I
    .end local v10    # "location":Lcom/sonymobile/home/data/ItemLocation;
    .end local v11    # "row":I
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public exit(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/flix/components/Image;)V
    .locals 1
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "transferImage"    # Lcom/sonymobile/flix/components/Image;

    .prologue
    const/4 v0, 0x1

    .line 607
    iput-boolean v0, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mIsItemDraggedOutsideOriginalLocation:Z

    .line 608
    invoke-direct {p0, v0}, Lcom/sonymobile/home/stage/StageDropTarget;->cleanup(Z)V

    .line 609
    return-void
.end method

.method public over(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/home/transfer/TransferView;Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;)V
    .locals 25
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "transferView"    # Lcom/sonymobile/home/transfer/TransferView;
    .param p3, "event"    # Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    .prologue
    .line 506
    invoke-interface/range {p1 .. p1}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v17

    .line 507
    .local v17, "item":Lcom/sonymobile/home/data/Item;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    invoke-virtual {v4}, Lcom/sonymobile/home/stage/StagePresenter;->getGrid()Lcom/sonymobile/grid/Grid;

    move-result-object v16

    .line 509
    .local v16, "grid":Lcom/sonymobile/grid/Grid;
    invoke-interface/range {p1 .. p1}, Lcom/sonymobile/home/transfer/Transferable;->supportsHinting()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sonymobile/home/stage/StageModel;->acceptItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mCoordsOver:[F

    invoke-virtual {v4}, [F->clone()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [F

    .line 514
    .local v23, "previousCoords":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageView:Lcom/sonymobile/home/stage/StageView;

    move-object/from16 v0, p3

    iget v5, v0, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->xScreenItemPosition:F

    move-object/from16 v0, p3

    iget v6, v0, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->yScreenItemPosition:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mCoordsOver:[F

    invoke-static {v4, v5, v6, v7}, Lcom/sonymobile/flix/components/ComponentTransform;->projectScreenPointOnComponent(Lcom/sonymobile/flix/components/Component;FF[F)Z

    .line 518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mCoordsOver:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/stage/StagePresenter;->getCol(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v5, v6}, Lcom/sonymobile/home/util/MathUtil;->clamp(III)I

    move-result v13

    .line 520
    .local v13, "col":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mCoordsOver:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/stage/StagePresenter;->getRow(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v5, v6}, Lcom/sonymobile/home/util/MathUtil;->clamp(III)I

    move-result v24

    .line 524
    .local v24, "row":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mAdapter:Lcom/sonymobile/home/stage/StageAdapter;

    move/from16 v0, v24

    invoke-virtual {v4, v13, v0}, Lcom/sonymobile/home/stage/StageAdapter;->getLocationForColRow(II)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v18

    .line 526
    .local v18, "location":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v18, :cond_b

    .line 528
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mIsItemDraggedOutsideOriginalLocation:Z

    if-nez v4, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/sonymobile/home/data/ItemLocation;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 530
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mIsItemDraggedOutsideOriginalLocation:Z

    .line 533
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/sonymobile/home/stage/StageModel;->getItemAtLocation(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/Item;

    move-result-object v19

    .line 534
    .local v19, "overlappedItem":Lcom/sonymobile/home/data/Item;
    if-nez v19, :cond_4

    const/4 v15, 0x1

    .line 535
    .local v15, "displayDefaultHint":Z
    :goto_1
    if-eqz v19, :cond_3

    .line 536
    move-object/from16 v0, p3

    iget v4, v0, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->xScreenItemPosition:F

    move-object/from16 v0, p3

    iget v5, v0, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->yScreenItemPosition:F

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/sonymobile/home/stage/StageDropTarget;->handleItemMovement(Lcom/sonymobile/home/data/Item;FF[F)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 538
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/sonymobile/home/stage/StageDropTarget;->displayHint(Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/data/ItemLocation;II)V

    .line 539
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v4}, Lcom/sonymobile/home/stage/StageModel;->notifyOrderChanged()V

    .line 592
    :cond_3
    :goto_2
    if-eqz v15, :cond_0

    .line 593
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/sonymobile/home/stage/StageDropTarget;->displayHint(Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/data/ItemLocation;II)V

    goto/16 :goto_0

    .line 534
    .end local v15    # "displayDefaultHint":Z
    :cond_4
    const/4 v15, 0x0

    goto :goto_1

    .line 542
    .restart local v15    # "displayDefaultHint":Z
    :cond_5
    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v20

    .line 543
    .local v20, "overlappedId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/sonymobile/home/stage/StageModel;->canCreateContainer(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)Z

    move-result v14

    .line 545
    .local v14, "createContainer":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lcom/sonymobile/home/stage/StageModel;->acceptItem(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)Z

    move-result v12

    .line 547
    .local v12, "addToContainer":Z
    if-eqz v14, :cond_7

    .line 548
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageView:Lcom/sonymobile/home/stage/StageView;

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Lcom/sonymobile/home/stage/StageView;->getPageItem(J)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v22

    .line 550
    .local v22, "overlappedItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/sonymobile/home/data/ItemLocation;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 553
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mDropHintHelper:Lcom/sonymobile/home/presenter/DropHintHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/presenter/DropHintHelper;->hideHint(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/sonymobile/home/data/ItemLocation;->set(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 557
    :cond_6
    if-eqz v22, :cond_3

    .line 558
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mDropHintHelper:Lcom/sonymobile/home/presenter/DropHintHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/presenter/DropHintHelper;->hideHint(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mFolderHintManager:Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;->createHint(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/transfer/TransferView;)V

    goto :goto_2

    .line 561
    .end local v22    # "overlappedItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_7
    if-eqz v12, :cond_a

    .line 563
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageView:Lcom/sonymobile/home/stage/StageView;

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Lcom/sonymobile/home/stage/StageView;->getPageItem(J)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v22

    .line 565
    .restart local v22    # "overlappedItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/sonymobile/home/data/ItemLocation;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 568
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mDropHintHelper:Lcom/sonymobile/home/presenter/DropHintHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/presenter/DropHintHelper;->hideHint(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/sonymobile/home/data/ItemLocation;->set(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 572
    :cond_8
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mOverlappedFolderId:J

    cmp-long v4, v4, v20

    if-eqz v4, :cond_3

    .line 573
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sonymobile/home/stage/StageDropTarget;->resetFolderHint(Z)V

    .line 574
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v11

    .line 575
    .local v11, "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    invoke-virtual {v11}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 576
    if-eqz v22, :cond_9

    .line 577
    const/16 v4, 0x4000

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getButton()Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->sendEvent(ILjava/lang/String;)V

    .line 581
    :cond_9
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/home/stage/StageDropTarget;->mOverlappedFolderId:J

    .line 582
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mFolderHintManager:Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;->animateFolder(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/transfer/TransferView;)V

    goto/16 :goto_2

    .line 585
    .end local v11    # "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    .end local v22    # "overlappedItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_a
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sonymobile/home/stage/StageDropTarget;->resetFolderHint(Z)V

    .line 586
    const-wide/high16 v4, -0x8000000000000000L

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mOverlappedFolderId:J

    goto/16 :goto_2

    .line 597
    .end local v12    # "addToContainer":Z
    .end local v14    # "createContainer":Z
    .end local v15    # "displayDefaultHint":Z
    .end local v19    # "overlappedItem":Lcom/sonymobile/home/data/Item;
    .end local v20    # "overlappedId":J
    :cond_b
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sonymobile/home/stage/StageDropTarget;->resetFolderHint(Z)V

    .line 598
    const-wide/high16 v4, -0x8000000000000000L

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mOverlappedFolderId:J

    .line 599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mDropHintHelper:Lcom/sonymobile/home/presenter/DropHintHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/presenter/DropHintHelper;->hideHint(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    const v5, 0x7fffffff

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-virtual/range {v4 .. v10}, Lcom/sonymobile/home/data/ItemLocation;->set(IIIIII)V

    .line 601
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sonymobile/home/stage/StageDropTarget;->mIsItemDraggedOutsideOriginalLocation:Z

    goto/16 :goto_0
.end method

.method public setAdapter(Lcom/sonymobile/home/stage/StageAdapter;)V
    .locals 0
    .param p1, "stageAdapter"    # Lcom/sonymobile/home/stage/StageAdapter;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mAdapter:Lcom/sonymobile/home/stage/StageAdapter;

    .line 205
    return-void
.end method

.method public setItemDraggedOutsideOriginalLocation(Z)V
    .locals 0
    .param p1, "outside"    # Z

    .prologue
    .line 617
    iput-boolean p1, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mIsItemDraggedOutsideOriginalLocation:Z

    .line 618
    return-void
.end method

.method public setStageHintPositionCalculator(Lcom/sonymobile/home/stage/StageHintPositionCalculator;)V
    .locals 0
    .param p1, "stageHintPositionCalculator"    # Lcom/sonymobile/home/stage/StageHintPositionCalculator;

    .prologue
    .line 721
    iput-object p1, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageHintPositionCalculator:Lcom/sonymobile/home/stage/StageHintPositionCalculator;

    .line 722
    return-void
.end method

.method public setView(Lcom/sonymobile/home/stage/StageView;)V
    .locals 0
    .param p1, "view"    # Lcom/sonymobile/home/stage/StageView;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sonymobile/home/stage/StageDropTarget;->mStageView:Lcom/sonymobile/home/stage/StageView;

    .line 209
    return-void
.end method
