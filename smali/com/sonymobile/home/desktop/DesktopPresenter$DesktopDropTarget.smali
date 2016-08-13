.class Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;
.super Ljava/lang/Object;
.source "DesktopPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/transfer/DropTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DesktopDropTarget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$DesktopFolderHintManager;
    }
.end annotation


# instance fields
.field private final mCoordsOver:[F

.field private mCurrentPageSwitchDuration:I

.field private final mDropHintHelper:Lcom/sonymobile/home/presenter/DropHintHelper;

.field private mFirstPageSwitchLongWaitDuration:I

.field private mFirstPageSwitchShortWaitDuration:I

.field private final mFolderHintManager:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$DesktopFolderHintManager;

.field mFolderHintView:Lcom/sonymobile/flix/components/Image;

.field mHiddenItemId:J

.field mHiddenView:Lcom/sonymobile/home/ui/pageview/PageItemView;

.field private mIsItemDraggedOutsideOriginalLocation:Z

.field private mLatestPageSwitchForward:Z

.field private mLeftMostPageAddedOnPageSwitch:I

.field private mLocation:Lcom/sonymobile/home/data/ItemLocation;

.field private mMinPageSwitchDuration:I

.field private mOverlappedFolderId:J

.field private mPageSwitchMarginLeft:I

.field private mPageSwitchMarginRight:I

.field private mPageSwitchMarginRightCui:I

.field private mPageSwitchNudgeOffset:I

.field private final mPageSwitcher:Ljava/lang/Runnable;

.field private final mPostman:Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;

.field private mRightMostPageAddedOnPageSwitch:I

.field private final mSearchLocation:Lcom/sonymobile/home/data/ItemLocation;

.field private mSearcher:Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;

.field private final mTouchLocation:Lcom/sonymobile/home/data/ItemLocation;

.field private mUseLongDurationOnFirstPageSwitch:Z

.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/flix/components/Scene;)V
    .locals 5
    .param p2, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    const/4 v4, -0x1

    const v2, 0x7fffffff

    const/4 v3, 0x0

    .line 623
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    .line 439
    iput v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLeftMostPageAddedOnPageSwitch:I

    .line 441
    iput v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mRightMostPageAddedOnPageSwitch:I

    .line 447
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mOverlappedFolderId:J

    .line 451
    iput-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mFolderHintView:Lcom/sonymobile/flix/components/Image;

    .line 453
    iput-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mHiddenView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 460
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mHiddenItemId:J

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mUseLongDurationOnFirstPageSwitch:Z

    .line 470
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mCoordsOver:[F

    .line 472
    iput-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mSearcher:Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;

    .line 474
    new-instance v0, Lcom/sonymobile/home/data/ItemLocation;

    invoke-direct {v0, v2, v4}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mSearchLocation:Lcom/sonymobile/home/data/ItemLocation;

    .line 481
    new-instance v0, Lcom/sonymobile/home/data/ItemLocation;

    invoke-direct {v0, v2, v4}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mTouchLocation:Lcom/sonymobile/home/data/ItemLocation;

    .line 543
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPageSwitcher:Ljava/lang/Runnable;

    .line 624
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;-><init>(Landroid/os/Handler;Lcom/sonymobile/home/desktop/DesktopPresenter$1;)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPostman:Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;

    .line 626
    new-instance v0, Lcom/sonymobile/home/presenter/DropHintHelper;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v1

    invoke-static {}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->getFactory()Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    move-result-object v2

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopModel;->getPageViewName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/home/presenter/DropHintHelper;-><init>(Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mDropHintHelper:Lcom/sonymobile/home/presenter/DropHintHelper;

    .line 629
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$DesktopFolderHintManager;

    invoke-direct {v0, p0, p2}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$DesktopFolderHintManager;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mFolderHintManager:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$DesktopFolderHintManager;

    .line 630
    return-void
.end method

.method static synthetic access$1200(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->hideNudge()V

    return-void
.end method

.method static synthetic access$1802(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;
    .param p1, "x1"    # I

    .prologue
    .line 420
    iput p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mCurrentPageSwitchDuration:I

    return p1
.end method

.method static synthetic access$1900(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    .prologue
    .line 420
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mMinPageSwitchDuration:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLatestPageSwitchForward:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;
    .param p1, "x1"    # I

    .prologue
    .line 420
    iput p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mRightMostPageAddedOnPageSwitch:I

    return p1
.end method

.method static synthetic access$2402(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;
    .param p1, "x1"    # I

    .prologue
    .line 420
    iput p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLeftMostPageAddedOnPageSwitch:I

    return p1
.end method

.method static synthetic access$2700(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 420
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->cleanup(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;)Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPostman:Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;I)Lcom/sonymobile/home/ui/pageview/PageView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;
    .param p1, "x1"    # I

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->getEmptyPageViewAddedOnPageSwitch(I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6800(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->deleteEmptyPagesAddedOnPageSwitchIfNeeded()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;
    .param p1, "x1"    # Z

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->resetFolderHint(Z)V

    return-void
.end method

.method static synthetic access$802(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;J)J
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;
    .param p1, "x1"    # J

    .prologue
    .line 420
    iput-wide p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mOverlappedFolderId:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->moveHintViewToCurrentPage()V

    return-void
.end method

.method private cleanup(ZZ)V
    .locals 4
    .param p1, "restore"    # Z
    .param p2, "restoreHiddenItem"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1409
    if-eqz p1, :cond_0

    .line 1410
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3900(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->restoreLocationsIfNeeded(Z)V

    .line 1413
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3900(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->hasMovedItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1419
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->writeModelToStorage()V

    .line 1421
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3900(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->reset()V

    .line 1422
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->hideNudge()V

    .line 1424
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPostman:Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;

    if-eqz v0, :cond_2

    .line 1425
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPostman:Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPageSwitcher:Ljava/lang/Runnable;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->removeCallbacks(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->access$500(Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;Ljava/lang/Runnable;)V

    .line 1428
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mDropHintHelper:Lcom/sonymobile/home/presenter/DropHintHelper;

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/presenter/DropHintHelper;->stopHinting(Z)V

    .line 1430
    iput-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    .line 1432
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mFirstPageSwitchShortWaitDuration:I

    iput v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mCurrentPageSwitchDuration:I

    .line 1433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mUseLongDurationOnFirstPageSwitch:Z

    .line 1435
    iput-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mSearcher:Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;

    .line 1436
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mOverlappedFolderId:J

    .line 1437
    invoke-direct {p0, p2}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->resetFolderHint(Z)V

    .line 1438
    return-void
.end method

.method private deleteEmptyPagesAddedOnPageSwitchIfNeeded()V
    .locals 7

    .prologue
    const v6, 0x7fffffff

    .line 1346
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLeftMostPageAddedOnPageSwitch:I

    .line 1347
    .local v0, "leftPage":I
    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mRightMostPageAddedOnPageSwitch:I

    .line 1348
    .local v2, "rightPage":I
    invoke-direct {p0, v2}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->getEmptyPageViewAddedOnPageSwitch(I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v3

    .line 1350
    .local v3, "rightPageView":Lcom/sonymobile/home/ui/pageview/PageView;
    if-eqz v3, :cond_1

    .line 1351
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    new-instance v5, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$7;

    invoke-direct {v5, p0, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$7;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;I)V

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->deletePage(Lcom/sonymobile/home/ui/pageview/PageView;Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;)V
    invoke-static {v4, v3, v5}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4900(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/ui/pageview/PageView;Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;)V

    .line 1374
    :cond_0
    :goto_0
    iput v6, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLeftMostPageAddedOnPageSwitch:I

    .line 1375
    iput v6, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mRightMostPageAddedOnPageSwitch:I

    .line 1376
    return-void

    .line 1368
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->getEmptyPageViewAddedOnPageSwitch(I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v1

    .line 1369
    .local v1, "leftPageView":Lcom/sonymobile/home/ui/pageview/PageView;
    if-eqz v1, :cond_0

    .line 1370
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->deletePage(Lcom/sonymobile/home/ui/pageview/PageView;)V
    invoke-static {v4, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4700(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/ui/pageview/PageView;)V

    goto :goto_0
.end method

.method private getCol(F)F
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/grid/Grid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    return v0
.end method

.method private getEmptyPageViewAddedOnPageSwitch(I)Lcom/sonymobile/home/ui/pageview/PageView;
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 1385
    const/4 v0, 0x0

    .line 1386
    .local v0, "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    const v1, 0x7fffffff

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->isPageEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1387
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/desktop/DesktopView;->findPage(I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v0

    .line 1389
    :cond_0
    return-object v0
.end method

.method private getRow(F)F
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/grid/Grid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    return v0
.end method

.method private hideNudge()V
    .locals 4

    .prologue
    .line 1263
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopView;->getLeftmostPage()I

    move-result v1

    .local v1, "index":I
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopView;->getRightmostPage()I

    move-result v3

    if-gt v1, v3, :cond_1

    .line 1264
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/home/desktop/DesktopView;->findPage(I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v2

    .line 1266
    .local v2, "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    if-eqz v2, :cond_0

    move-object v0, v2

    .line 1267
    check-cast v0, Lcom/sonymobile/home/desktop/BackplatePageView;

    .line 1268
    .local v0, "backplatePageView":Lcom/sonymobile/home/desktop/BackplatePageView;
    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/BackplatePageView;->resetNudgeColor()V

    .line 1263
    .end local v0    # "backplatePageView":Lcom/sonymobile/home/desktop/BackplatePageView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1272
    .end local v2    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4400(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->hidePageIndicatorIfAutoHidingIsEnabled()V

    .line 1273
    return-void
.end method

.method private isPageSwitchAllowed(ZZI)Z
    .locals 2
    .param p1, "isInsideLeftNudgeArea"    # Z
    .param p2, "isInsideRightNudgeArea"    # Z
    .param p3, "currentPage"    # I

    .prologue
    .line 1159
    if-eqz p1, :cond_2

    .line 1160
    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLeftMostPageAddedOnPageSwitch:I

    if-ne p3, v1, :cond_0

    .line 1162
    const/4 v0, 0x0

    .line 1184
    .local v0, "allow":Z
    :goto_0
    return v0

    .line 1163
    .end local v0    # "allow":Z
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopView;->getLeftmostPage()I

    move-result v1

    if-ne p3, v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->canAddNewPage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1165
    const/4 v0, 0x0

    .restart local v0    # "allow":Z
    goto :goto_0

    .line 1167
    .end local v0    # "allow":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "allow":Z
    goto :goto_0

    .line 1169
    .end local v0    # "allow":Z
    :cond_2
    if-eqz p2, :cond_5

    .line 1170
    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mRightMostPageAddedOnPageSwitch:I

    if-ne p3, v1, :cond_3

    .line 1172
    const/4 v0, 0x0

    .restart local v0    # "allow":Z
    goto :goto_0

    .line 1173
    .end local v0    # "allow":Z
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopView;->getRightmostPage()I

    move-result v1

    if-ne p3, v1, :cond_4

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->canAddNewPage()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1175
    const/4 v0, 0x0

    .restart local v0    # "allow":Z
    goto :goto_0

    .line 1177
    .end local v0    # "allow":Z
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "allow":Z
    goto :goto_0

    .line 1181
    .end local v0    # "allow":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "allow":Z
    goto :goto_0
.end method

.method private isThresholdForShowingLeftSideNudgeExceeded(I)Z
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 1282
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPageSwitchMarginLeft:I

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPageSwitchNudgeOffset:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThresholdForShowingRightSideNudgeExceeded(I)Z
    .locals 4
    .param p1, "x"    # I

    .prologue
    .line 1293
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopView;->getZoomLevel()Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->HIGH:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    if-ne v1, v2, :cond_0

    .line 1294
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPageSwitchMarginRightCui:I

    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPageSwitchNudgeOffset:I

    add-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 1300
    .local v0, "showNudgeThresholdRight":I
    :goto_0
    if-le p1, v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 1297
    .end local v0    # "showNudgeThresholdRight":I
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPageSwitchMarginRight:I

    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPageSwitchNudgeOffset:I

    add-int/2addr v2, v3

    sub-int v0, v1, v2

    .restart local v0    # "showNudgeThresholdRight":I
    goto :goto_0

    .line 1300
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private moveHintViewToCurrentPage()V
    .locals 3

    .prologue
    .line 1188
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPageView()Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v0

    .line 1190
    .local v0, "currentPageView":Lcom/sonymobile/home/ui/pageview/PageView;
    if-nez v0, :cond_0

    .line 1191
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 1194
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mFolderHintView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Image;->getParent()Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    .line 1196
    .local v1, "folderHintViewParent":Lcom/sonymobile/flix/components/Component;
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mHiddenView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getParent()Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 1197
    if-eqz v1, :cond_1

    .line 1198
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mFolderHintView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Component;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 1200
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mFolderHintView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/ui/pageview/PageView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 1202
    :cond_2
    return-void
.end method

.method private resetFolderHint(Z)V
    .locals 4
    .param p1, "restoreHidden"    # Z

    .prologue
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 1210
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mFolderHintManager:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$DesktopFolderHintManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$DesktopFolderHintManager;->cancel()V

    .line 1211
    iget-wide v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mHiddenItemId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1212
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mFolderHintView:Lcom/sonymobile/flix/components/Image;

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mFolderHintView:Lcom/sonymobile/flix/components/Image;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Image;->setVisible(Z)V

    .line 1214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mFolderHintView:Lcom/sonymobile/flix/components/Image;

    .line 1216
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mHiddenView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    if-eqz v0, :cond_1

    .line 1217
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mHiddenView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setVisible(Z)V

    .line 1219
    :cond_1
    iput-wide v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mHiddenItemId:J

    .line 1221
    :cond_2
    return-void
.end method

.method private showLeftAreaNudgeIfNeeded()V
    .locals 3

    .prologue
    .line 1227
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v0

    .line 1228
    .local v0, "currentPage":I
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopView;->getLeftmostPage()I

    move-result v1

    .line 1229
    .local v1, "leftMostPageIndex":I
    if-le v0, v1, :cond_0

    .line 1230
    add-int/lit8 v2, v0, -0x1

    invoke-direct {p0, v2}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->showNudge(I)V

    .line 1232
    :cond_0
    return-void
.end method

.method private showNudge(I)V
    .locals 3
    .param p1, "nudgePage"    # I

    .prologue
    .line 1251
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/home/desktop/DesktopView;->findPage(I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v1

    .line 1253
    .local v1, "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 1254
    check-cast v0, Lcom/sonymobile/home/desktop/BackplatePageView;

    .line 1255
    .local v0, "backplatePageView":Lcom/sonymobile/home/desktop/BackplatePageView;
    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/BackplatePageView;->setNudgeColor()V

    .line 1257
    .end local v0    # "backplatePageView":Lcom/sonymobile/home/desktop/BackplatePageView;
    :cond_0
    return-void
.end method

.method private showRightAreaNudgeIfNeeded()V
    .locals 3

    .prologue
    .line 1238
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v0

    .line 1239
    .local v0, "currentPage":I
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopView;->getRightmostPage()I

    move-result v1

    .line 1240
    .local v1, "rightMostPageIndex":I
    if-ge v0, v1, :cond_0

    .line 1241
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->showNudge(I)V

    .line 1243
    :cond_0
    return-void
.end method

.method private switchPageIfNeeded(I)Z
    .locals 8
    .param p1, "x"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1310
    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPageSwitchMarginLeft:I

    .line 1312
    .local v1, "switchThresholdLeft":I
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v5}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/home/desktop/DesktopView;->getZoomLevel()Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->HIGH:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    if-ne v5, v6, :cond_1

    .line 1313
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v5}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/home/desktop/DesktopView;->getWidth()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPageSwitchMarginRightCui:I

    sub-int v2, v5, v6

    .line 1317
    .local v2, "switchThresholdRight":I
    :goto_0
    const/4 v0, 0x0

    .line 1319
    .local v0, "switchPage":Z
    if-ge p1, v1, :cond_2

    .line 1320
    iput-boolean v4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLatestPageSwitchForward:Z

    .line 1321
    const/4 v0, 0x1

    .line 1327
    :cond_0
    :goto_1
    if-eqz v0, :cond_4

    .line 1328
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPostman:Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->hasCallback()Z
    invoke-static {v5}, Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->access$4500(Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1329
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPostman:Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;

    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPageSwitcher:Ljava/lang/Runnable;

    iget v6, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mCurrentPageSwitchDuration:I

    int-to-long v6, v6

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->postDelayed(Ljava/lang/Runnable;J)Z
    invoke-static {v4, v5, v6, v7}, Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->access$600(Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;Ljava/lang/Runnable;J)Z

    .line 1339
    :goto_2
    return v3

    .line 1315
    .end local v0    # "switchPage":Z
    .end local v2    # "switchThresholdRight":I
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v5}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/home/desktop/DesktopView;->getWidth()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPageSwitchMarginRight:I

    sub-int v2, v5, v6

    .restart local v2    # "switchThresholdRight":I
    goto :goto_0

    .line 1322
    .restart local v0    # "switchPage":Z
    :cond_2
    if-le p1, v2, :cond_0

    .line 1323
    iput-boolean v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLatestPageSwitchForward:Z

    .line 1324
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    .line 1333
    goto :goto_2

    .line 1336
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPostman:Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;

    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPageSwitcher:Ljava/lang/Runnable;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->removeCallbacks(Ljava/lang/Runnable;)V
    invoke-static {v3, v5}, Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->access$500(Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;Ljava/lang/Runnable;)V

    move v3, v4

    .line 1339
    goto :goto_2
.end method


# virtual methods
.method public drop(Lcom/sonymobile/home/transfer/Transferable;ILcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V
    .locals 26
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "actionSet"    # I
    .param p3, "transferImage"    # Lcom/sonymobile/flix/components/Image;
    .param p4, "dropCallback"    # Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    .prologue
    .line 671
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/desktop/DesktopView;->enableItemAnimations(Z)V

    .line 674
    invoke-interface/range {p1 .. p1}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v5

    .line 675
    .local v5, "item":Lcom/sonymobile/home/data/Item;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    iget v3, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/desktop/DesktopModel;->getItemAtLocation(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/Item;

    move-result-object v6

    .line 678
    .local v6, "overlappedItem":Lcom/sonymobile/home/data/Item;
    :goto_0
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mHiddenItemId:J

    move-wide/from16 v24, v0

    cmp-long v3, v10, v24

    if-nez v3, :cond_3

    const/16 v17, 0x1

    .line 680
    .local v17, "hasVisibleHint":Z
    :goto_1
    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Lcom/sonymobile/home/desktop/DesktopModel;->canCreateContainer(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v16, 0x1

    .line 682
    .local v16, "createContainer":Z
    :goto_2
    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v3

    invoke-virtual {v3, v6, v5}, Lcom/sonymobile/home/desktop/DesktopModel;->acceptItem(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v18, 0x1

    .line 687
    .local v18, "intoContainer":Z
    :goto_3
    if-nez v16, :cond_6

    if-nez v18, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    iget v3, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/desktop/DesktopModel;->isVacant(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v19, 0x1

    .line 690
    .local v19, "intoFreeSlot":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDragItem:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v3

    if-eqz v3, :cond_7

    const/4 v7, 0x1

    .line 692
    .local v7, "isLocal":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mAdapter:Lcom/sonymobile/home/desktop/DesktopAdapter;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$000(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopAdapter;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sonymobile/home/desktop/DesktopAdapter;->dropItem(Lcom/sonymobile/home/data/Item;)V

    .line 710
    if-nez v5, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    iget v3, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_8

    .line 713
    :cond_0
    const/4 v3, 0x1

    new-instance v4, Lcom/sonymobile/home/transfer/DropEvent;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {v4, v10, v11}, Lcom/sonymobile/home/transfer/DropEvent;-><init>(ZI)V

    move-object/from16 v0, p4

    invoke-interface {v0, v3, v4}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 920
    :cond_1
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mDropHintHelper:Lcom/sonymobile/home/presenter/DropHintHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/presenter/DropHintHelper;->stopHinting(Z)V

    .line 921
    return-void

    .line 675
    .end local v6    # "overlappedItem":Lcom/sonymobile/home/data/Item;
    .end local v7    # "isLocal":Z
    .end local v16    # "createContainer":Z
    .end local v17    # "hasVisibleHint":Z
    .end local v18    # "intoContainer":Z
    .end local v19    # "intoFreeSlot":Z
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 678
    .restart local v6    # "overlappedItem":Lcom/sonymobile/home/data/Item;
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 680
    .restart local v17    # "hasVisibleHint":Z
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 682
    .restart local v16    # "createContainer":Z
    :cond_5
    const/16 v18, 0x0

    goto :goto_3

    .line 687
    .restart local v18    # "intoContainer":Z
    :cond_6
    const/16 v19, 0x0

    goto :goto_4

    .line 690
    .restart local v19    # "intoFreeSlot":Z
    :cond_7
    const/4 v7, 0x0

    goto :goto_5

    .line 715
    .restart local v7    # "isLocal":Z
    :cond_8
    if-eqz v16, :cond_a

    .line 719
    new-instance v8, Lcom/sonymobile/home/transfer/DropEvent;

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-direct {v8, v3, v4, v7}, Lcom/sonymobile/home/transfer/DropEvent;-><init>(ZIZ)V

    .line 720
    .local v8, "dropEvent":Lcom/sonymobile/home/transfer/DropEvent;
    new-instance v2, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    invoke-direct/range {v2 .. v8}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$2;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;ZLcom/sonymobile/home/transfer/DropEvent;)V

    .line 764
    .local v2, "resultCallback":Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;
    const/16 v3, 0x10

    move/from16 v0, p2

    if-ne v0, v3, :cond_9

    .line 765
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3000(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/data/ItemCreator;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1, v6, v2}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$3;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/os/Handler;

    move-result-object v10

    invoke-interface {v3, v5, v4, v10}, Lcom/sonymobile/home/data/ItemCreator;->create(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z

    .line 783
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3300(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v15

    .line 784
    .local v15, "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    invoke-virtual {v15}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 786
    const/16 v3, 0x4000

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3400(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/content/Context;

    move-result-object v4

    const v10, 0x7f080062

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->sendEvent(ILjava/lang/String;)V

    goto :goto_6

    .line 776
    .end local v15    # "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    :cond_9
    new-instance v20, Ljava/util/ArrayList;

    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 778
    .local v20, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3000(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/data/ItemCreator;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-interface {v3, v0, v2, v4}, Lcom/sonymobile/home/data/ItemCreator;->createFolder(Ljava/util/List;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z

    goto :goto_7

    .line 789
    .end local v2    # "resultCallback":Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;
    .end local v8    # "dropEvent":Lcom/sonymobile/home/transfer/DropEvent;
    .end local v20    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    :cond_a
    if-eqz v18, :cond_c

    .line 790
    new-instance v8, Lcom/sonymobile/home/transfer/DropEvent;

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-direct {v8, v3, v4, v7}, Lcom/sonymobile/home/transfer/DropEvent;-><init>(ZIZ)V

    .line 791
    .restart local v8    # "dropEvent":Lcom/sonymobile/home/transfer/DropEvent;
    new-instance v2, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;

    move-object v9, v2

    move-object/from16 v10, p0

    move-object/from16 v11, p4

    move v12, v7

    move-object v13, v5

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$4;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;ZLcom/sonymobile/home/data/Item;Lcom/sonymobile/home/transfer/DropEvent;)V

    .line 832
    .restart local v2    # "resultCallback":Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;
    const/16 v3, 0x10

    move/from16 v0, p2

    if-ne v0, v3, :cond_b

    .line 833
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3000(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/data/ItemCreator;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1, v6, v2}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$5;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3600(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/os/Handler;

    move-result-object v10

    invoke-interface {v3, v5, v4, v10}, Lcom/sonymobile/home/data/ItemCreator;->create(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z

    goto/16 :goto_6

    .line 841
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3000(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/data/ItemCreator;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3700(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/os/Handler;

    move-result-object v4

    invoke-interface {v3, v6, v5, v2, v4}, Lcom/sonymobile/home/data/ItemCreator;->addItemToFolder(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z

    goto/16 :goto_6

    .line 844
    .end local v2    # "resultCallback":Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;
    .end local v8    # "dropEvent":Lcom/sonymobile/home/transfer/DropEvent;
    :cond_c
    if-eqz v19, :cond_12

    if-eqz v5, :cond_12

    .line 845
    const/16 v22, 0x4

    .line 846
    .local v22, "response":I
    new-instance v8, Lcom/sonymobile/home/transfer/DropEvent;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-direct {v8, v3, v4, v7}, Lcom/sonymobile/home/transfer/DropEvent;-><init>(ZIZ)V

    .line 847
    .restart local v8    # "dropEvent":Lcom/sonymobile/home/transfer/DropEvent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-static {v3}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v12

    .line 849
    .local v12, "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v7, :cond_10

    .line 850
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDragItem:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setVisible(Z)V

    .line 852
    invoke-virtual {v5}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/sonymobile/home/data/ItemLocation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const/16 v21, 0x1

    .line 853
    .local v21, "moved":Z
    :goto_8
    if-nez v21, :cond_d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mIsItemDraggedOutsideOriginalLocation:Z

    if-nez v3, :cond_d

    .line 856
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInNormalState()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 857
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    sget-object v4, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->EDIT:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V

    .line 861
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/desktop/DesktopView;->enableItemAnimations(Z)V

    .line 862
    invoke-virtual {v5, v12}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 863
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    const/4 v4, 0x1

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->addItemToDesktop(Lcom/sonymobile/home/data/Item;Z)V
    invoke-static {v3, v5, v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3800(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/data/Item;Z)V

    .line 864
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3900(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->handleItemOverflow()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 865
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopView;->onContentChanged()V

    .line 868
    :cond_e
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->cleanup(ZZ)V

    .line 871
    const/4 v3, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v3, v8}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 873
    if-eqz v21, :cond_1

    .line 874
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->getTrackingCategory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ItemMoved"

    invoke-static {v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->getTrackingName(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v10

    iget v11, v12, Lcom/sonymobile/home/data/ItemLocation;->page:I

    int-to-long v0, v11

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-static {v3, v4, v10, v0, v1}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_6

    .line 852
    .end local v21    # "moved":Z
    :cond_f
    const/16 v21, 0x0

    goto :goto_8

    .line 880
    :cond_10
    new-instance v9, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$6;

    move-object/from16 v10, p0

    move-object/from16 v11, p4

    move-object v13, v5

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$6;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/transfer/DropEvent;)V

    .line 907
    .local v9, "result":Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;
    const/16 v3, 0x10

    move/from16 v0, p2

    if-ne v0, v3, :cond_11

    .line 908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3000(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/data/ItemCreator;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4000(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/os/Handler;

    move-result-object v4

    invoke-interface {v3, v5, v9, v4}, Lcom/sonymobile/home/data/ItemCreator;->create(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z

    goto/16 :goto_6

    .line 910
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3000(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/data/ItemCreator;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/os/Handler;

    move-result-object v4

    invoke-interface {v3, v5, v9, v4}, Lcom/sonymobile/home/data/ItemCreator;->copy(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z

    goto/16 :goto_6

    .line 914
    .end local v8    # "dropEvent":Lcom/sonymobile/home/transfer/DropEvent;
    .end local v9    # "result":Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;
    .end local v12    # "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    .end local v22    # "response":I
    :cond_12
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->cleanup(ZZ)V

    .line 915
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v3, v4}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    goto/16 :goto_6
.end method

.method public enableLongWaitDurationOnFirstPageSwitch()V
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mFirstPageSwitchLongWaitDuration:I

    iput v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mCurrentPageSwitchDuration:I

    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mUseLongDurationOnFirstPageSwitch:Z

    .line 663
    return-void
.end method

.method public enter(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;)Z
    .locals 10
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "transferImage"    # Lcom/sonymobile/flix/components/Image;
    .param p3, "event"    # Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 925
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->supportsHinting()Z

    move-result v5

    if-nez v5, :cond_0

    .line 958
    :goto_0
    return v9

    .line 930
    :cond_0
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getColSpan()I

    move-result v5

    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v6}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/grid/Grid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v6

    mul-int v2, v5, v6

    .line 931
    .local v2, "hintWidth":I
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getRowSpan()I

    move-result v5

    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v6}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/grid/Grid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v6

    mul-int v1, v5, v6

    .line 932
    .local v1, "hintHeight":I
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mDropHintHelper:Lcom/sonymobile/home/presenter/DropHintHelper;

    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v6}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/home/presenter/DropHintHelper;->setView(Lcom/sonymobile/home/ui/pageview/PageViewGroup;)V

    .line 933
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mDropHintHelper:Lcom/sonymobile/home/presenter/DropHintHelper;

    invoke-virtual {v5, p1, v2, v1}, Lcom/sonymobile/home/presenter/DropHintHelper;->setupHint(Lcom/sonymobile/home/transfer/Transferable;II)V

    .line 935
    new-instance v5, Lcom/sonymobile/home/data/ItemLocation;

    const v6, 0x7fffffff

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    iput-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    .line 937
    iput-boolean v8, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mIsItemDraggedOutsideOriginalLocation:Z

    .line 939
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->hideNudge()V

    .line 941
    iget-boolean v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mUseLongDurationOnFirstPageSwitch:Z

    if-eqz v5, :cond_1

    .line 942
    iget v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mFirstPageSwitchLongWaitDuration:I

    iput v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mCurrentPageSwitchDuration:I

    .line 943
    iput-boolean v8, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mUseLongDurationOnFirstPageSwitch:Z

    .line 948
    :goto_1
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPostman:Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;

    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPageSwitcher:Ljava/lang/Runnable;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->removeCallbacks(Ljava/lang/Runnable;)V
    invoke-static {v5, v6}, Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->access$500(Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;Ljava/lang/Runnable;)V

    .line 951
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v5}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v0

    .line 952
    .local v0, "currentPage":I
    iget v5, p3, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->xLocalItemPosition:F

    float-to-int v3, v5

    .line 953
    .local v3, "x":I
    iget v5, p3, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->yLocalItemPosition:F

    float-to-int v4, v5

    .line 954
    .local v4, "y":I
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;
    invoke-static {v5}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3900(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    move-result-object v5

    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v6

    invoke-virtual {v5, v3, v4, v0, v6}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->onItemDragStarted(IIILcom/sonymobile/home/data/Item;)V

    .line 956
    const-wide/high16 v6, -0x8000000000000000L

    iput-wide v6, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mOverlappedFolderId:J

    goto :goto_0

    .line 945
    .end local v0    # "currentPage":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_1
    iget v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mFirstPageSwitchShortWaitDuration:I

    iput v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mCurrentPageSwitchDuration:I

    goto :goto_1
.end method

.method public exit(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/flix/components/Image;)V
    .locals 1
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "transferImage"    # Lcom/sonymobile/flix/components/Image;

    .prologue
    const/4 v0, 0x1

    .line 1143
    invoke-direct {p0, v0, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->cleanup(ZZ)V

    .line 1144
    return-void
.end method

.method public over(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/home/transfer/TransferView;Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;)V
    .locals 45
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "transferView"    # Lcom/sonymobile/home/transfer/TransferView;
    .param p3, "event"    # Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    .prologue
    .line 963
    invoke-interface/range {p1 .. p1}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v34

    .line 965
    .local v34, "item":Lcom/sonymobile/home/data/Item;
    invoke-interface/range {p1 .. p1}, Lcom/sonymobile/home/transfer/Transferable;->supportsHinting()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lcom/sonymobile/home/desktop/DesktopModel;->acceptItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1138
    :cond_0
    :goto_0
    return-void

    .line 969
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/DesktopView;->isInteracting()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 970
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPostman:Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPageSwitcher:Ljava/lang/Runnable;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->removeCallbacks(Ljava/lang/Runnable;)V
    invoke-static {v4, v6}, Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->access$500(Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;Ljava/lang/Runnable;)V

    .line 971
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mDropHintHelper:Lcom/sonymobile/home/presenter/DropHintHelper;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v4, v6}, Lcom/sonymobile/home/presenter/DropHintHelper;->hideHint(Lcom/sonymobile/home/data/ItemLocation;)V

    goto :goto_0

    .line 976
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v5

    .line 979
    .local v5, "currentPage":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/DesktopView;->isExpandBoundsPagesEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 980
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->isLeftExpandBoundsPage(I)Z
    invoke-static {v4, v5}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1300(Lcom/sonymobile/home/desktop/DesktopPresenter;I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 981
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->prependPage()I
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$2300(Lcom/sonymobile/home/desktop/DesktopPresenter;)I

    .line 986
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->removeExpandBoundsPagesIfNeeded()V
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1700(Lcom/sonymobile/home/desktop/DesktopPresenter;)V

    .line 989
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/desktop/DesktopView;->findPage(I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v41

    .line 991
    .local v41, "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    if-eqz v41, :cond_0

    .line 996
    move-object/from16 v0, p3

    iget v4, v0, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->xScreenItemPosition:F

    move-object/from16 v0, p3

    iget v6, v0, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->yScreenItemPosition:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mCoordsOver:[F

    move-object/from16 v0, v41

    invoke-static {v0, v4, v6, v7}, Lcom/sonymobile/flix/components/ComponentTransform;->projectScreenPointOnComponent(Lcom/sonymobile/flix/components/Component;FF[F)Z

    .line 1002
    invoke-interface/range {p1 .. p1}, Lcom/sonymobile/home/transfer/Transferable;->getColSpan()I

    move-result v9

    .line 1003
    .local v9, "colSpan":I
    invoke-interface/range {p1 .. p1}, Lcom/sonymobile/home/transfer/Transferable;->getRowSpan()I

    move-result v10

    .line 1004
    .local v10, "rowSpan":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mCoordsOver:[F

    const/4 v6, 0x0

    aget v4, v4, v6

    add-int/lit8 v6, v9, -0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v7}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/grid/Grid;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v7

    mul-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    sub-float v36, v4, v6

    .line 1005
    .local v36, "leftmost":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mCoordsOver:[F

    const/4 v6, 0x1

    aget v4, v4, v6

    add-int/lit8 v6, v10, -0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v7}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/grid/Grid;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v7

    mul-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    sub-float v43, v4, v6

    .line 1006
    .local v43, "topmost":F
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->getCol(F)F

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v7}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/grid/Grid;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4, v6, v7}, Lcom/sonymobile/home/util/MathUtil;->clamp(FFF)F

    move-result v26

    .line 1007
    .local v26, "col":F
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->getRow(F)F

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v7}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/grid/Grid;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4, v6, v7}, Lcom/sonymobile/home/util/MathUtil;->clamp(FFF)F

    move-result v42

    .line 1010
    .local v42, "row":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mTouchLocation:Lcom/sonymobile/home/data/ItemLocation;

    const/4 v6, -0x1

    move/from16 v0, v26

    float-to-int v7, v0

    move/from16 v0, v42

    float-to-int v8, v0

    invoke-virtual/range {v4 .. v10}, Lcom/sonymobile/home/data/ItemLocation;->set(IIIIII)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mTouchLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v4, v6}, Lcom/sonymobile/home/desktop/DesktopModel;->getItemAtLocation(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/Item;

    move-result-object v37

    .line 1014
    .local v37, "overlappedItem":Lcom/sonymobile/home/data/Item;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mIsItemDraggedOutsideOriginalLocation:Z

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mTouchLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-interface/range {p1 .. p1}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sonymobile/home/data/ItemLocation;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1016
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mIsItemDraggedOutsideOriginalLocation:Z

    .line 1019
    :cond_5
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageView;->getItem(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v40

    .line 1021
    .local v40, "pageItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    const/16 v27, 0x0

    .line 1022
    .local v27, "createContainer":Z
    const/16 v24, 0x0

    .line 1023
    .local v24, "addToContainer":Z
    move-object/from16 v0, v37

    move/from16 v1, v26

    move/from16 v2, v42

    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/itemorganizer/ItemOverlap;->intersectWithItemOverlap(Lcom/sonymobile/home/data/Item;FF)I

    move-result v35

    .line 1025
    .local v35, "itemOverlap":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->isAutoPackEnabled()Z
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$2800(Lcom/sonymobile/home/desktop/DesktopPresenter;)Z

    move-result v25

    .line 1026
    .local v25, "autoPackEnabled":Z
    if-eqz v37, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/DesktopModel;->getPreferences()Lcom/sonymobile/home/desktop/DesktopPreferences;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonymobile/home/desktop/DesktopPreferences;->allowPushingAroundItems()Z

    move-result v4

    if-eqz v4, :cond_6

    move/from16 v0, v35

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/sonymobile/home/itemorganizer/ItemOverlap;->isItemOverlapValidForFolderCreation(IZ)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1028
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v4

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v4, v0, v1}, Lcom/sonymobile/home/desktop/DesktopModel;->canCreateContainer(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)Z

    move-result v27

    .line 1029
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v4

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Lcom/sonymobile/home/desktop/DesktopModel;->acceptItem(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)Z

    move-result v24

    .line 1032
    :cond_7
    if-nez v27, :cond_8

    if-eqz v24, :cond_12

    .line 1033
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3900(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->cancelAutoMove()V

    .line 1035
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mTouchLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v4, v6}, Lcom/sonymobile/home/data/ItemLocation;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1037
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mDropHintHelper:Lcom/sonymobile/home/presenter/DropHintHelper;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v4, v6}, Lcom/sonymobile/home/presenter/DropHintHelper;->hideHint(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 1039
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mTouchLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v4, v6}, Lcom/sonymobile/home/data/ItemLocation;->set(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3900(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->onItemFolderOverlapped()V

    .line 1042
    if-eqz v27, :cond_10

    .line 1043
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mFolderHintManager:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$DesktopFolderHintManager;

    move-object/from16 v0, v40

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$DesktopFolderHintManager;->createHint(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/transfer/TransferView;)V

    .line 1070
    :cond_a
    :goto_2
    if-nez v27, :cond_d

    if-nez v24, :cond_d

    .line 1073
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mSearcher:Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mSearcher:Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->searchPage(I)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mSearcher:Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;

    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->getItemCount()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v6}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/home/desktop/DesktopModel;->getCount()I

    move-result v6

    if-eq v4, v6, :cond_c

    .line 1075
    :cond_b
    new-instance v11, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;

    const/4 v4, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v5, v6, v7

    const/4 v7, -0x1

    invoke-direct {v11, v4, v6, v7}, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;-><init>(I[II)V

    .line 1079
    .local v11, "pageIterator":Lcom/sonymobile/home/desktop/search/PageIterator;
    new-instance v6, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/grid/Grid;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/DesktopModel;->getItems()Ljava/util/List;

    move-result-object v8

    invoke-direct/range {v6 .. v11}, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;-><init>(Lcom/sonymobile/grid/Grid;Ljava/util/List;IILcom/sonymobile/home/desktop/search/PageIterator;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mSearcher:Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;

    .line 1085
    .end local v11    # "pageIterator":Lcom/sonymobile/home/desktop/search/PageIterator;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->isAutoPackEnabled()Z
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$2800(Lcom/sonymobile/home/desktop/DesktopPresenter;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mTouchLocation:Lcom/sonymobile/home/data/ItemLocation;

    iget-object v4, v4, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v4, v4, Lcom/sonymobile/grid/GridRect;->colSpan:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mTouchLocation:Lcom/sonymobile/home/data/ItemLocation;

    iget-object v4, v4, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v4, v4, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_13

    if-eqz v35, :cond_13

    .line 1088
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mSearcher:Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mTouchLocation:Lcom/sonymobile/home/data/ItemLocation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mSearchLocation:Lcom/sonymobile/home/data/ItemLocation;

    move/from16 v0, v35

    invoke-virtual {v4, v6, v7, v0}, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->getVacantLocationLinearSearch(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;I)Z

    move-result v30

    .line 1095
    .local v30, "foundLocation":Z
    :goto_3
    if-eqz v30, :cond_14

    .line 1096
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mSearchLocation:Lcom/sonymobile/home/data/ItemLocation;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v4, v6}, Lcom/sonymobile/home/data/ItemLocation;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1098
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/grid/Grid;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mSearchLocation:Lcom/sonymobile/home/data/ItemLocation;

    iget-object v6, v6, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v6, v6, Lcom/sonymobile/grid/GridRect;->col:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v7}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/grid/Grid;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float v14, v4, v6

    .line 1102
    .local v14, "xPos":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/grid/Grid;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mSearchLocation:Lcom/sonymobile/home/data/ItemLocation;

    iget-object v6, v6, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v6, v6, Lcom/sonymobile/grid/GridRect;->row:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v7}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/grid/Grid;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float v15, v4, v6

    .line 1105
    .local v15, "yPos":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mDropHintHelper:Lcom/sonymobile/home/presenter/DropHintHelper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mSearchLocation:Lcom/sonymobile/home/data/ItemLocation;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Lcom/sonymobile/home/presenter/DropHintHelper;->hint(Lcom/sonymobile/home/data/ItemLocation;FFFF)V

    .line 1107
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mSearchLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v4, v6}, Lcom/sonymobile/home/data/ItemLocation;->set(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 1116
    .end local v14    # "xPos":F
    .end local v15    # "yPos":F
    .end local v30    # "foundLocation":Z
    :cond_d
    :goto_4
    move-object/from16 v0, p3

    iget v4, v0, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->xScreenTouchPosition:F

    float-to-int v0, v4

    move/from16 v44, v0

    .line 1117
    .local v44, "x":I
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->isThresholdForShowingLeftSideNudgeExceeded(I)Z

    move-result v31

    .line 1118
    .local v31, "isInsideLeftNudgeArea":Z
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->isThresholdForShowingRightSideNudgeExceeded(I)Z

    move-result v32

    .line 1119
    .local v32, "isInsideRightNudgeArea":Z
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2, v5}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->isPageSwitchAllowed(ZZI)Z

    move-result v33

    .line 1122
    .local v33, "isPageSwitchAllowed":Z
    if-eqz v33, :cond_17

    .line 1123
    if-eqz v31, :cond_15

    .line 1124
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->showLeftAreaNudgeIfNeeded()V

    .line 1128
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->switchPageIfNeeded(I)Z

    move-result v28

    .line 1129
    .local v28, "didPost":Z
    if-eqz v28, :cond_16

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mMinPageSwitchDuration:I

    :goto_6
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mCurrentPageSwitchDuration:I

    .line 1135
    .end local v28    # "didPost":Z
    :goto_7
    if-nez v31, :cond_e

    if-eqz v32, :cond_0

    .line 1136
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4400(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->showPageIndicatorIfAutoHidingIsEnabled()V

    goto/16 :goto_0

    .line 982
    .end local v9    # "colSpan":I
    .end local v10    # "rowSpan":I
    .end local v24    # "addToContainer":Z
    .end local v25    # "autoPackEnabled":Z
    .end local v26    # "col":F
    .end local v27    # "createContainer":Z
    .end local v31    # "isInsideLeftNudgeArea":Z
    .end local v32    # "isInsideRightNudgeArea":Z
    .end local v33    # "isPageSwitchAllowed":Z
    .end local v35    # "itemOverlap":I
    .end local v36    # "leftmost":F
    .end local v37    # "overlappedItem":Lcom/sonymobile/home/data/Item;
    .end local v40    # "pageItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    .end local v41    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    .end local v42    # "row":F
    .end local v43    # "topmost":F
    .end local v44    # "x":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->isRightExpandBoundsPage(I)Z
    invoke-static {v4, v5}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1500(Lcom/sonymobile/home/desktop/DesktopPresenter;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 983
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->appendPage()I
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$2100(Lcom/sonymobile/home/desktop/DesktopPresenter;)I

    goto/16 :goto_1

    .line 1045
    .restart local v9    # "colSpan":I
    .restart local v10    # "rowSpan":I
    .restart local v24    # "addToContainer":Z
    .restart local v25    # "autoPackEnabled":Z
    .restart local v26    # "col":F
    .restart local v27    # "createContainer":Z
    .restart local v35    # "itemOverlap":I
    .restart local v36    # "leftmost":F
    .restart local v37    # "overlappedItem":Lcom/sonymobile/home/data/Item;
    .restart local v40    # "pageItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    .restart local v41    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    .restart local v42    # "row":F
    .restart local v43    # "topmost":F
    :cond_10
    invoke-virtual/range {v37 .. v37}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v38

    .line 1046
    .local v38, "overlappedId":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mOverlappedFolderId:J

    cmp-long v4, v6, v38

    if-eqz v4, :cond_a

    .line 1047
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->resetFolderHint(Z)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4300(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v23

    .line 1049
    .local v23, "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v4

    move-wide/from16 v0, v38

    invoke-virtual {v4, v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->getPageItem(J)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v29

    .line 1051
    .local v29, "folderView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    if-eqz v29, :cond_11

    .line 1052
    const/16 v4, 0x4000

    invoke-virtual/range {v29 .. v29}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getButton()Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->getDescription()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->sendEvent(ILjava/lang/String;)V

    .line 1056
    .end local v29    # "folderView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_11
    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mOverlappedFolderId:J

    .line 1057
    if-eqz v40, :cond_a

    .line 1058
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mFolderHintManager:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$DesktopFolderHintManager;

    move-object/from16 v0, v40

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$DesktopFolderHintManager;->animateFolder(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/transfer/TransferView;)V

    goto/16 :goto_2

    .line 1063
    .end local v23    # "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    .end local v38    # "overlappedId":J
    :cond_12
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->resetFolderHint(Z)V

    .line 1064
    const-wide/high16 v6, -0x8000000000000000L

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mOverlappedFolderId:J

    .line 1066
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3900(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    move-result-object v4

    move-object/from16 v0, p3

    iget v6, v0, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->xLocalItemPosition:F

    float-to-int v6, v6

    move-object/from16 v0, p3

    iget v7, v0, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->yLocalItemPosition:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mTouchLocation:Lcom/sonymobile/home/data/ItemLocation;

    move/from16 v0, v35

    invoke-virtual {v4, v6, v7, v8, v0}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->onItemDragged(IILcom/sonymobile/home/data/ItemLocation;I)V

    goto/16 :goto_2

    .line 1091
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mSearcher:Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mCoordsOver:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mCoordsOver:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mSearchLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v4, v6, v7, v8}, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->getClosestVacantLocation(IILcom/sonymobile/home/data/ItemLocation;)Z

    move-result v30

    .restart local v30    # "foundLocation":Z
    goto/16 :goto_3

    .line 1110
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mDropHintHelper:Lcom/sonymobile/home/presenter/DropHintHelper;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v4, v6}, Lcom/sonymobile/home/presenter/DropHintHelper;->hideHint(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    move-object/from16 v16, v0

    const v17, 0x7fffffff

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    invoke-virtual/range {v16 .. v22}, Lcom/sonymobile/home/data/ItemLocation;->set(IIIIII)V

    goto/16 :goto_4

    .line 1126
    .end local v30    # "foundLocation":Z
    .restart local v31    # "isInsideLeftNudgeArea":Z
    .restart local v32    # "isInsideRightNudgeArea":Z
    .restart local v33    # "isPageSwitchAllowed":Z
    .restart local v44    # "x":I
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->showRightAreaNudgeIfNeeded()V

    goto/16 :goto_5

    .line 1129
    .restart local v28    # "didPost":Z
    :cond_16
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mFirstPageSwitchShortWaitDuration:I

    goto/16 :goto_6

    .line 1131
    .end local v28    # "didPost":Z
    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mFirstPageSwitchShortWaitDuration:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mCurrentPageSwitchDuration:I

    .line 1132
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->hideNudge()V

    goto/16 :goto_7
.end method

.method public updateConfiguration(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 639
    const v0, 0x7f0b0046

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPageSwitchMarginLeft:I

    .line 641
    const v0, 0x7f0b001b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPageSwitchMarginRight:I

    .line 643
    const v0, 0x7f0b0045

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPageSwitchMarginRightCui:I

    .line 645
    const v0, 0x7f0b001c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPageSwitchNudgeOffset:I

    .line 648
    const v0, 0x7f0d002e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mMinPageSwitchDuration:I

    .line 649
    const v0, 0x7f0d002b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mFirstPageSwitchShortWaitDuration:I

    .line 651
    const v0, 0x7f0d002a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mFirstPageSwitchLongWaitDuration:I

    .line 654
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mFirstPageSwitchShortWaitDuration:I

    iput v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mCurrentPageSwitchDuration:I

    .line 655
    return-void
.end method
