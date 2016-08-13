.class public Lcom/sonymobile/home/desktop/DesktopView;
.super Lcom/sonymobile/home/ui/pageview/PageViewGroup;
.source "DesktopView.java"

# interfaces
.implements Lcom/sonymobile/flix/components/Scene$Touchable$Dispatcher;
.implements Lcom/sonymobile/flix/util/GestureDetector$GestureEventListener;
.implements Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector$DownSwipeListener;
.implements Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/desktop/DesktopView$9;,
        Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;,
        Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;,
        Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;,
        Lcom/sonymobile/home/desktop/DesktopView$DesktopItemViewChangeListener;,
        Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;
    }
.end annotation


# instance fields
.field private final mAllowDeletionOfPagesContainingItems:Z

.field private mAnimateBackgroundAlphaWhenZooming:Z

.field private mBackgroundAlpha:F

.field private final mBackgroundColor:I

.field private final mBackgroundDimmingEnabled:Z

.field private mBackplateHeightScaleFactor:F

.field private mBackplateTopOffset:I

.field private mCurrentPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

.field private mCurrentZoomLevel:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

.field private mDeletePageListener:Lcom/sonymobile/home/desktop/DeletePageListener;

.field private final mDownSwipeGestureDetector:Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;

.field private mDragEnabled:Z

.field private mEnableEditButtons:Z

.field private mEnableExpandBoundsPages:Z

.field private final mFadePageButtons:Z

.field private mHighZoomDepth:F

.field private mHighZoomHorizontalPosition:F

.field private mHighZoomVerticalPosition:F

.field private mItemViewChangeListenId:J

.field private mItemViewChangeListener:Lcom/sonymobile/home/desktop/DesktopView$DesktopItemViewChangeListener;

.field private mLandscapeZoomLevel:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

.field private mLowZoomDepth:F

.field private mLowZoomHorizontalPosition:F

.field private mLowZoomVerticalPosition:F

.field private mNoZoomGridHorizontalPosition:F

.field private mNoZoomGridVerticalPosition:F

.field private mPageIndicatorOffset:F

.field protected mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

.field private mPageViewToDelete:Lcom/sonymobile/home/ui/pageview/PageView;

.field private final mPageViewTouchArea:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;

.field private mPortraitZoomLevel:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

.field private mProgressBarView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

.field private final mResizableFrame:Lcom/sonymobile/home/desktop/ResizableFrame;

.field protected mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

.field private mScreenFractionPerPageModifier:F

.field private mScrollBackplateVisible:Z

.field private mSelectHomePageListener:Lcom/sonymobile/home/desktop/SelectHomePageListener;

.field private final mSelectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldZoomAnimateBackplateAlpha:Z

.field private mStageView:Lcom/sonymobile/home/stage/StageView;

.field private final mTouchConsumedHandler:Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;

.field private mTouchEnabled:Z

.field private final mTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/desktop/DesktopViewTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

.field private mVisibleDistancePerPageModifier:F

.field private mZoomAnimDepthLowerBound:F

.field private mZoomAnimDepthUpperBound:F

.field private mZoomAnimHorizontalPositionLowerBound:F

.field private mZoomAnimHorizontalPositionUpperBound:F

.field private mZoomAnimVerticalPositionLowerBound:F

.field private mZoomAnimVerticalPositionUpperBound:F

.field private mZoomedScreenFractionPerPageModifier:F

.field private mZoomedVisibleDistancePerPageModifier:F


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/desktop/DesktopPreferences;Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;)V
    .locals 9
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p3, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p4, "desktopPreferences"    # Lcom/sonymobile/home/desktop/DesktopPreferences;
    .param p5, "touchConsumedHandler"    # Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;

    .prologue
    const/high16 v8, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v7, 0x0

    const/high16 v6, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 287
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mTouchListeners:Ljava/util/ArrayList;

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mSelectionListeners:Ljava/util/List;

    .line 142
    iput-boolean v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableExpandBoundsPages:Z

    .line 145
    iput-boolean v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableEditButtons:Z

    .line 184
    sget-object v2, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->NONE:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    iput-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mCurrentZoomLevel:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    .line 186
    sget-object v2, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->NONE:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    iput-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPortraitZoomLevel:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    .line 188
    sget-object v2, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->NONE:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    iput-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLandscapeZoomLevel:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    .line 231
    iput-boolean v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollBackplateVisible:Z

    .line 289
    const v2, 0x7f0f001b

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/desktop/DesktopView;->setId(I)V

    .line 290
    const-string v2, "DesktopView"

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/desktop/DesktopView;->setName(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->prepareForDrawing()V

    .line 293
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 294
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 296
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0e0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mBackgroundColor:I

    .line 297
    const v2, 0x7f0a0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mBackgroundDimmingEnabled:Z

    .line 298
    invoke-interface {p4}, Lcom/sonymobile/home/desktop/DesktopPreferences;->allowDeletionOfPageContainingItems()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mAllowDeletionOfPagesContainingItems:Z

    .line 299
    iput-boolean v5, p0, Lcom/sonymobile/home/desktop/DesktopView;->mTouchEnabled:Z

    .line 300
    iput-boolean v5, p0, Lcom/sonymobile/home/desktop/DesktopView;->mDragEnabled:Z

    .line 303
    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mFadePageButtons:Z

    .line 310
    new-instance v2, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v3

    invoke-direct {v2, v3, v7, v7}, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;-><init>(Lcom/sonymobile/flix/components/Scene;FF)V

    iput-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPageViewTouchArea:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;

    .line 311
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPageViewTouchArea:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;

    new-instance v3, Lcom/sonymobile/home/desktop/DesktopView$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/home/desktop/DesktopView$1;-><init>(Lcom/sonymobile/home/desktop/DesktopView;)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->setTouchListener(Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;)V

    .line 329
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPageViewTouchArea:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;

    const-string v3, "Page view backplate"

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->setName(Ljava/lang/String;)V

    .line 330
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPageViewTouchArea:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;

    invoke-virtual {v2, v5}, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->setTrackTouchFromOutside(Z)V

    .line 333
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPageViewTouchArea:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/desktop/DesktopView;->addChildFirst(Lcom/sonymobile/flix/components/Component;)V

    .line 337
    new-instance v2, Lcom/sonymobile/home/desktop/ResizableFrame;

    invoke-direct {v2, p1, p2}, Lcom/sonymobile/home/desktop/ResizableFrame;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;)V

    iput-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mResizableFrame:Lcom/sonymobile/home/desktop/ResizableFrame;

    .line 338
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mResizableFrame:Lcom/sonymobile/home/desktop/ResizableFrame;

    invoke-virtual {v2, v4}, Lcom/sonymobile/home/desktop/ResizableFrame;->setVisible(Z)V

    .line 341
    new-instance v2, Lcom/sonymobile/flix/util/GestureDetector;

    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/flix/util/GestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    .line 342
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    invoke-virtual {v2, v4}, Lcom/sonymobile/flix/util/GestureDetector;->setVerticalDraggingEnabled(Z)V

    .line 343
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    invoke-virtual {v2, p0}, Lcom/sonymobile/flix/util/GestureDetector;->setGestureEventListener(Lcom/sonymobile/flix/util/GestureDetector$GestureEventListener;)V

    .line 345
    new-instance v2, Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Scene;->getScheduler()Lcom/sonymobile/flix/util/Scheduler;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/flix/util/ListTouchHelper;-><init>(Landroid/content/Context;Lcom/sonymobile/flix/util/Scheduler;)V

    iput-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    .line 346
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/desktop/DesktopView;->setupHorizontalScrollController(Lcom/sonymobile/flix/util/ListTouchHelper;)V

    .line 348
    new-instance v2, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;-><init>(Lcom/sonymobile/home/desktop/DesktopView;Lcom/sonymobile/home/desktop/DesktopView$1;)V

    iput-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollListener:Lcom/sonymobile/flix/util/ListTouchHelper$Listener;

    .line 349
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollListener:Lcom/sonymobile/flix/util/ListTouchHelper$Listener;

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->addListener(Lcom/sonymobile/flix/util/ListTouchHelper$Listener;)V

    .line 351
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/util/GestureDetector;->addGestureListener(Lcom/sonymobile/flix/util/GestureDetector$GestureListener;)V

    .line 353
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v2, v6, v6, v8, v8}, Lcom/sonymobile/flix/components/Component;->setCullingArea(FFFF)V

    .line 356
    new-instance v2, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;

    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mDownSwipeGestureDetector:Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;

    .line 357
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mDownSwipeGestureDetector:Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;

    invoke-virtual {v2, p0}, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->setListener(Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector$DownSwipeListener;)V

    .line 358
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mDownSwipeGestureDetector:Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;

    const v3, 0x7f0b00f0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getTopOffset()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->setTopMargin(I)V

    .line 360
    iput-object p5, p0, Lcom/sonymobile/home/desktop/DesktopView;->mTouchConsumedHandler:Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;

    .line 362
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopView;->updateResourceValues()V

    .line 363
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopView;->setUpGridPositions()V

    .line 365
    new-instance v2, Lcom/sonymobile/home/desktop/DesktopView$2;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/desktop/DesktopView$2;-><init>(Lcom/sonymobile/home/desktop/DesktopView;)V

    iput-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 372
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {p3, v2}, Lcom/sonymobile/home/settings/UserSettings;->addUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 374
    invoke-virtual {p3}, Lcom/sonymobile/home/settings/UserSettings;->getCurrentPageTransition()Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mCurrentPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    .line 375
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/desktop/DesktopView;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/desktop/DesktopView;->notifySecondaryClick(FF)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/desktop/DesktopView;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/desktop/DesktopView;->notifyLongPress(FF)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/home/ui/pageview/PageView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPageViewToDelete:Lcom/sonymobile/home/ui/pageview/PageView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sonymobile/home/desktop/DesktopView;Lcom/sonymobile/home/ui/pageview/PageView;)Lcom/sonymobile/home/ui/pageview/PageView;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;
    .param p1, "x1"    # Lcom/sonymobile/home/ui/pageview/PageView;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPageViewToDelete:Lcom/sonymobile/home/ui/pageview/PageView;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonymobile/home/desktop/DesktopView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mRightmostAdapterPage:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sonymobile/home/desktop/DesktopView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLeftmostAdapterPage:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/flix/components/Typed$Group;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonymobile/home/desktop/DesktopView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->updateFromTouch()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/flix/components/Typed$Group;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonymobile/home/desktop/DesktopView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mRightmostAdapterPage:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sonymobile/home/desktop/DesktopView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mRightmostAdapterPage:I

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/desktop/DesktopView;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/desktop/DesktopView;->notifyClick(FF)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonymobile/home/desktop/DesktopView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLeftmostAdapterPage:I

    return v0
.end method

.method static synthetic access$2100(Lcom/sonymobile/home/desktop/DesktopView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLeftmostAdapterPage:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sonymobile/home/desktop/DesktopView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLeftmostAdapterPage:I

    return v0
.end method

.method static synthetic access$2300(Lcom/sonymobile/home/desktop/DesktopView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->notifyInteractionStart()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/flix/components/Component;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mCurrentZoomLevel:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sonymobile/home/desktop/DesktopView;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollPosition:F

    return v0
.end method

.method static synthetic access$2800(Lcom/sonymobile/home/desktop/DesktopView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->updateFromTouch()V

    return-void
.end method

.method static synthetic access$2900(Lcom/sonymobile/home/desktop/DesktopView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollBackplateVisible:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sonymobile/home/desktop/DesktopView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLeftmostAdapterPage:I

    return v0
.end method

.method static synthetic access$3200(Lcom/sonymobile/home/desktop/DesktopView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mRightmostAdapterPage:I

    return v0
.end method

.method static synthetic access$3300(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sonymobile/home/desktop/DesktopView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLeftmostAdapterPage:I

    return v0
.end method

.method static synthetic access$3500(Lcom/sonymobile/home/desktop/DesktopView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableExpandBoundsPages:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sonymobile/home/desktop/DesktopView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->notifyInteractionEnd()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/home/desktop/DesktopView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopView;->resetPageTransition()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mCurrentPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonymobile/home/desktop/DesktopView;Lcom/sonymobile/home/settings/UserSettings$PageTransition;)Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;
    .param p1, "x1"    # Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mCurrentPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sonymobile/home/desktop/DesktopView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopView;->notifySelectHomePageClicked(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/home/desktop/DesktopView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopView;->notifyDeletePageClicked(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/home/desktop/DesktopView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->updateFromTouch()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonymobile/home/desktop/DesktopView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->updateFromTouch()V

    return-void
.end method

.method private createDesktopPageView(Lcom/sonymobile/flix/components/Scene;IFFFF)Lcom/sonymobile/home/desktop/DesktopPageView;
    .locals 9
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "index"    # I
    .param p3, "pageParentWidth"    # F
    .param p4, "pageParentHeight"    # F
    .param p5, "width"    # F
    .param p6, "height"    # F

    .prologue
    .line 832
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopPageView;

    iget v5, p0, Lcom/sonymobile/home/desktop/DesktopView;->mBackplateHeightScaleFactor:F

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mBackplateTopOffset:I

    int-to-float v6, v1

    move-object v1, p1

    move v2, p2

    move v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/desktop/DesktopPageView;-><init>(Lcom/sonymobile/flix/components/Scene;IFFFF)V

    .line 835
    .local v0, "desktopPageView":Lcom/sonymobile/home/desktop/DesktopPageView;
    invoke-virtual {v0, p5, p6}, Lcom/sonymobile/home/desktop/DesktopPageView;->setSize(FF)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .line 837
    invoke-virtual/range {v1 .. v8}, Lcom/sonymobile/home/desktop/DesktopView;->updatePage(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageView;IFFFF)Lcom/sonymobile/home/ui/pageview/PageView;

    .line 838
    return-object v0
.end method

.method private createExpandBoundsPageView(Lcom/sonymobile/flix/components/Scene;IFFFF)Lcom/sonymobile/home/desktop/ExpandBoundsPageView;
    .locals 6
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "index"    # I
    .param p3, "pageParentWidth"    # F
    .param p4, "pageParentHeight"    # F
    .param p5, "width"    # F
    .param p6, "height"    # F

    .prologue
    .line 843
    new-instance v0, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mBackplateHeightScaleFactor:F

    mul-float v4, p6, v1

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mBackplateTopOffset:I

    int-to-float v5, v1

    move-object v1, p1

    move v2, p2

    move v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;-><init>(Lcom/sonymobile/flix/components/Scene;IFFF)V

    .line 846
    .local v0, "expandPageView":Lcom/sonymobile/home/desktop/ExpandBoundsPageView;
    invoke-virtual {v0, p5, p6}, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->setSize(FF)V

    .line 847
    invoke-virtual {v0, p0}, Lcom/sonymobile/home/desktop/ExpandBoundsPageView;->setPageViewSelectionListener(Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;)V

    .line 849
    return-object v0
.end method

.method private layoutPageIndicator()V
    .locals 7

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 537
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-static {v0}, Lcom/sonymobile/home/util/LayoutUtils;->useLandscapeLayout(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPageIndicatorOffset:F

    add-float/2addr v2, v5

    move-object v3, p0

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 548
    :goto_0
    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPageIndicatorOffset:F

    add-float/2addr v2, v5

    const/4 v6, 0x2

    move-object v3, p0

    move v4, v1

    invoke-static/range {v0 .. v6}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FFI)V

    .line 546
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mStageView:Lcom/sonymobile/home/stage/StageView;

    invoke-virtual {v2}, Lcom/sonymobile/home/stage/StageView;->getHeight()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->move(FF)V

    goto :goto_0
.end method

.method private notifyClick(FF)V
    .locals 3
    .param p1, "rawX"    # F
    .param p2, "rawY"    # F

    .prologue
    .line 1721
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/desktop/DesktopViewTouchListener;

    .line 1722
    .local v1, "listener":Lcom/sonymobile/home/desktop/DesktopViewTouchListener;
    invoke-interface {v1, p1, p2}, Lcom/sonymobile/home/desktop/DesktopViewTouchListener;->onClick(FF)V

    goto :goto_0

    .line 1724
    .end local v1    # "listener":Lcom/sonymobile/home/desktop/DesktopViewTouchListener;
    :cond_0
    return-void
.end method

.method private notifyDeletePageClicked(I)V
    .locals 2
    .param p1, "clickedPage"    # I

    .prologue
    .line 869
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mDeletePageListener:Lcom/sonymobile/home/desktop/DeletePageListener;

    if-eqz v1, :cond_0

    .line 870
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/DesktopView;->findPage(I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v0

    .line 871
    .local v0, "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    if-eqz v0, :cond_0

    .line 872
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mDeletePageListener:Lcom/sonymobile/home/desktop/DeletePageListener;

    invoke-interface {v1, v0}, Lcom/sonymobile/home/desktop/DeletePageListener;->onDeletePageClicked(Lcom/sonymobile/home/ui/pageview/PageView;)V

    .line 875
    .end local v0    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_0
    return-void
.end method

.method private notifyLongPress(FF)V
    .locals 3
    .param p1, "rawX"    # F
    .param p2, "rawY"    # F

    .prologue
    .line 1709
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/desktop/DesktopViewTouchListener;

    .line 1710
    .local v1, "listener":Lcom/sonymobile/home/desktop/DesktopViewTouchListener;
    invoke-interface {v1, p1, p2}, Lcom/sonymobile/home/desktop/DesktopViewTouchListener;->onLongPress(FF)Z

    goto :goto_0

    .line 1712
    .end local v1    # "listener":Lcom/sonymobile/home/desktop/DesktopViewTouchListener;
    :cond_0
    return-void
.end method

.method private notifySecondaryClick(FF)V
    .locals 3
    .param p1, "rawX"    # F
    .param p2, "rawY"    # F

    .prologue
    .line 1733
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/desktop/DesktopViewTouchListener;

    .line 1734
    .local v1, "listener":Lcom/sonymobile/home/desktop/DesktopViewTouchListener;
    invoke-interface {v1, p1, p2}, Lcom/sonymobile/home/desktop/DesktopViewTouchListener;->onSecondaryClick(FF)V

    goto :goto_0

    .line 1736
    .end local v1    # "listener":Lcom/sonymobile/home/desktop/DesktopViewTouchListener;
    :cond_0
    return-void
.end method

.method private notifySelectHomePageClicked(I)V
    .locals 1
    .param p1, "clickedPage"    # I

    .prologue
    .line 858
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mSelectHomePageListener:Lcom/sonymobile/home/desktop/SelectHomePageListener;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mSelectHomePageListener:Lcom/sonymobile/home/desktop/SelectHomePageListener;

    invoke-interface {v0, p1}, Lcom/sonymobile/home/desktop/SelectHomePageListener;->onSelectAsHomePageClicked(I)V

    .line 861
    :cond_0
    return-void
.end method

.method private pageTransitionConcave()V
    .locals 24

    .prologue
    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v16

    .line 1239
    .local v16, "nbrPages":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sonymobile/home/util/LayoutUtils;->isLandscape(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v14

    .line 1244
    .local v14, "landscape":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomPosition:F

    move/from16 v21, v0

    const v22, -0x42b33333    # -0.05f

    cmpg-float v21, v21, v22

    if-gez v21, :cond_3

    const/16 v20, 0x1

    .line 1245
    .local v20, "zoomed":Z
    :goto_0
    if-eqz v14, :cond_5

    .line 1246
    const/high16 v12, 0x41f00000    # 30.0f

    .line 1247
    .local v12, "fadeAngle":F
    if-eqz v20, :cond_4

    const/high16 v15, 0x42480000    # 50.0f

    .line 1252
    .local v15, "maxAngle":F
    :goto_1
    if-lez v16, :cond_a

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v21

    const v22, 0x3fa66666    # 1.3f

    mul-float v8, v21, v22

    .line 1254
    .local v8, "carouselRadius":F
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_a

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v18

    check-cast v18, Lcom/sonymobile/home/ui/pageview/PageView;

    .line 1256
    .local v18, "page":Lcom/sonymobile/home/ui/pageview/PageView;
    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/home/ui/pageview/PageView;->getPagePosition()F

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/desktop/DesktopView;->getScrollPosition()F

    move-result v22

    sub-float v10, v21, v22

    .line 1257
    .local v10, "distance":F
    const/high16 v21, 0x43340000    # 180.0f

    mul-float v21, v21, v10

    const/high16 v22, 0x40800000    # 4.0f

    div-float v6, v21, v22

    .line 1258
    .local v6, "angleDeg":F
    const/high16 v21, -0x3da40000    # -55.0f

    cmpl-float v21, v6, v21

    if-lez v21, :cond_8

    const/high16 v21, 0x425c0000    # 55.0f

    cmpg-float v21, v6, v21

    if-gez v21, :cond_8

    const/16 v17, 0x1

    .line 1260
    .local v17, "onScreen":Z
    :goto_3
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageView;->setOnScreen(Z)V

    .line 1261
    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/home/desktop/DesktopView;->mFadePageButtons:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1262
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1264
    .local v4, "absAngleDeg":F
    cmpl-float v21, v4, v12

    if-lez v21, :cond_9

    .line 1265
    sub-float v11, v4, v12

    .line 1266
    .local v11, "fade":F
    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v22, v15, v12

    div-float v22, v11, v22

    sub-float v5, v21, v22

    .line 1267
    .local v5, "alpha":F
    const/high16 v21, 0x40400000    # 3.0f

    const/high16 v22, 0x3f800000    # 1.0f

    div-float v22, v22, v5

    sub-float v21, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/desktop/DesktopView;->updateEditButtonsTransparency(Lcom/sonymobile/home/ui/pageview/PageView;F)V

    .line 1273
    .end local v4    # "absAngleDeg":F
    .end local v5    # "alpha":F
    .end local v11    # "fade":F
    :cond_0
    :goto_4
    if-nez v17, :cond_1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v21

    const/high16 v22, 0x40000000    # 2.0f

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_2

    .line 1274
    :cond_1
    const v21, 0x3c8efa35

    mul-float v7, v6, v21

    .line 1275
    .local v7, "angleRad":F
    float-to-double v0, v7

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v9, v0

    .line 1276
    .local v9, "cosDistance":F
    float-to-double v0, v7

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v19, v0

    .line 1277
    .local v19, "sinDistance":F
    mul-float v21, v19, v8

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageView;->setX(F)V

    .line 1278
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageView;->setY(F)V

    .line 1279
    neg-float v0, v9

    move/from16 v21, v0

    mul-float v21, v21, v8

    add-float v21, v21, v8

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageView;->setZ(F)V

    .line 1280
    const/16 v21, 0x0

    neg-float v0, v6

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/home/ui/pageview/PageView;->setRotation(FFF)V

    .line 1254
    .end local v7    # "angleRad":F
    .end local v9    # "cosDistance":F
    .end local v19    # "sinDistance":F
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 1244
    .end local v6    # "angleDeg":F
    .end local v8    # "carouselRadius":F
    .end local v10    # "distance":F
    .end local v12    # "fadeAngle":F
    .end local v13    # "i":I
    .end local v15    # "maxAngle":F
    .end local v17    # "onScreen":Z
    .end local v18    # "page":Lcom/sonymobile/home/ui/pageview/PageView;
    .end local v20    # "zoomed":Z
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 1247
    .restart local v12    # "fadeAngle":F
    .restart local v20    # "zoomed":Z
    :cond_4
    const/high16 v15, 0x42300000    # 44.0f

    goto/16 :goto_1

    .line 1249
    .end local v12    # "fadeAngle":F
    :cond_5
    if-eqz v20, :cond_6

    const/high16 v12, 0x425c0000    # 55.0f

    .line 1250
    .restart local v12    # "fadeAngle":F
    :goto_5
    if-eqz v20, :cond_7

    const/high16 v15, 0x425c0000    # 55.0f

    .restart local v15    # "maxAngle":F
    :goto_6
    goto/16 :goto_1

    .line 1249
    .end local v12    # "fadeAngle":F
    .end local v15    # "maxAngle":F
    :cond_6
    const/high16 v12, 0x42300000    # 44.0f

    goto :goto_5

    .line 1250
    .restart local v12    # "fadeAngle":F
    :cond_7
    const/high16 v15, 0x42300000    # 44.0f

    goto :goto_6

    .line 1258
    .restart local v6    # "angleDeg":F
    .restart local v8    # "carouselRadius":F
    .restart local v10    # "distance":F
    .restart local v13    # "i":I
    .restart local v15    # "maxAngle":F
    .restart local v18    # "page":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 1270
    .restart local v4    # "absAngleDeg":F
    .restart local v17    # "onScreen":Z
    :cond_9
    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/desktop/DesktopView;->updateEditButtonsTransparency(Lcom/sonymobile/home/ui/pageview/PageView;F)V

    goto/16 :goto_4

    .line 1284
    .end local v4    # "absAngleDeg":F
    .end local v6    # "angleDeg":F
    .end local v8    # "carouselRadius":F
    .end local v10    # "distance":F
    .end local v13    # "i":I
    .end local v17    # "onScreen":Z
    .end local v18    # "page":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_a
    return-void
.end method

.method private pageTransitionConvex()V
    .locals 24

    .prologue
    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v16

    .line 1172
    .local v16, "nbrPages":I
    if-lez v16, :cond_9

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v21

    const v22, 0x3fa66666    # 1.3f

    mul-float v8, v21, v22

    .line 1174
    .local v8, "carouselRadius":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sonymobile/home/util/LayoutUtils;->isLandscape(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v14

    .line 1179
    .local v14, "landscape":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomPosition:F

    move/from16 v21, v0

    const v22, -0x42b33333    # -0.05f

    cmpg-float v21, v21, v22

    if-gez v21, :cond_1

    const/16 v20, 0x1

    .line 1180
    .local v20, "zoomed":Z
    :goto_0
    if-eqz v14, :cond_3

    .line 1181
    const/high16 v12, 0x41f00000    # 30.0f

    .line 1182
    .local v12, "fadeAngle":F
    if-eqz v20, :cond_2

    const/high16 v15, 0x42480000    # 50.0f

    .line 1187
    .local v15, "maxAngle":F
    :goto_1
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_9

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v18

    check-cast v18, Lcom/sonymobile/home/ui/pageview/PageView;

    .line 1189
    .local v18, "page":Lcom/sonymobile/home/ui/pageview/PageView;
    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/home/ui/pageview/PageView;->getPagePosition()F

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/desktop/DesktopView;->getScrollPosition()F

    move-result v22

    sub-float v10, v21, v22

    .line 1190
    .local v10, "distance":F
    const/high16 v21, 0x42340000    # 45.0f

    mul-float v6, v10, v21

    .line 1192
    .local v6, "angleDeg":F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1193
    .local v4, "absAngleDeg":F
    cmpg-float v21, v4, v15

    if-gez v21, :cond_6

    const/16 v17, 0x1

    .line 1194
    .local v17, "onScreen":Z
    :goto_3
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageView;->setOnScreen(Z)V

    .line 1195
    if-eqz v17, :cond_8

    .line 1196
    const v21, 0x3c8efa35

    mul-float v7, v6, v21

    .line 1197
    .local v7, "angleRad":F
    float-to-double v0, v7

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v9, v0

    .line 1198
    .local v9, "cosDistance":F
    float-to-double v0, v7

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v19, v0

    .line 1199
    .local v19, "sinDistance":F
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageView;->setY(F)V

    .line 1200
    mul-float v21, v9, v8

    sub-float v21, v21, v8

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageView;->setZ(F)V

    .line 1201
    mul-float v21, v19, v8

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageView;->setX(F)V

    .line 1202
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v6, v2}, Lcom/sonymobile/home/ui/pageview/PageView;->setRotation(FFF)V

    .line 1203
    cmpl-float v21, v4, v12

    if-lez v21, :cond_7

    .line 1204
    sub-float v11, v4, v12

    .line 1205
    .local v11, "fade":F
    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v22, v15, v12

    div-float v22, v11, v22

    sub-float v5, v21, v22

    .line 1206
    .local v5, "alpha":F
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/sonymobile/home/ui/pageview/PageView;->setDescendantAlpha(F)V

    .line 1207
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/home/desktop/DesktopView;->mFadePageButtons:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1208
    const/high16 v21, 0x40400000    # 3.0f

    const/high16 v22, 0x3f800000    # 1.0f

    div-float v22, v22, v5

    sub-float v21, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/desktop/DesktopView;->updateEditButtonsTransparency(Lcom/sonymobile/home/ui/pageview/PageView;F)V

    .line 1187
    .end local v5    # "alpha":F
    .end local v7    # "angleRad":F
    .end local v9    # "cosDistance":F
    .end local v11    # "fade":F
    .end local v19    # "sinDistance":F
    :cond_0
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 1179
    .end local v4    # "absAngleDeg":F
    .end local v6    # "angleDeg":F
    .end local v10    # "distance":F
    .end local v12    # "fadeAngle":F
    .end local v13    # "i":I
    .end local v15    # "maxAngle":F
    .end local v17    # "onScreen":Z
    .end local v18    # "page":Lcom/sonymobile/home/ui/pageview/PageView;
    .end local v20    # "zoomed":Z
    :cond_1
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 1182
    .restart local v12    # "fadeAngle":F
    .restart local v20    # "zoomed":Z
    :cond_2
    const/high16 v15, 0x42300000    # 44.0f

    goto/16 :goto_1

    .line 1184
    .end local v12    # "fadeAngle":F
    :cond_3
    if-eqz v20, :cond_4

    const/high16 v12, 0x425c0000    # 55.0f

    .line 1185
    .restart local v12    # "fadeAngle":F
    :goto_5
    if-eqz v20, :cond_5

    const/high16 v15, 0x425c0000    # 55.0f

    .restart local v15    # "maxAngle":F
    :goto_6
    goto/16 :goto_1

    .line 1184
    .end local v12    # "fadeAngle":F
    .end local v15    # "maxAngle":F
    :cond_4
    const/high16 v12, 0x42300000    # 44.0f

    goto :goto_5

    .line 1185
    .restart local v12    # "fadeAngle":F
    :cond_5
    const/high16 v15, 0x42300000    # 44.0f

    goto :goto_6

    .line 1193
    .restart local v4    # "absAngleDeg":F
    .restart local v6    # "angleDeg":F
    .restart local v10    # "distance":F
    .restart local v13    # "i":I
    .restart local v15    # "maxAngle":F
    .restart local v18    # "page":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 1212
    .restart local v7    # "angleRad":F
    .restart local v9    # "cosDistance":F
    .restart local v17    # "onScreen":Z
    .restart local v19    # "sinDistance":F
    :cond_7
    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageView;->setDescendantAlpha(F)V

    .line 1213
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/home/desktop/DesktopView;->mFadePageButtons:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1214
    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/desktop/DesktopView;->updateEditButtonsTransparency(Lcom/sonymobile/home/ui/pageview/PageView;F)V

    goto :goto_4

    .line 1217
    .end local v7    # "angleRad":F
    .end local v9    # "cosDistance":F
    .end local v19    # "sinDistance":F
    :cond_8
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v21

    const/high16 v22, 0x40000000    # 2.0f

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_0

    .line 1218
    const v21, 0x3c8efa35

    mul-float v21, v21, v6

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v9, v0

    .line 1222
    .restart local v9    # "cosDistance":F
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageView;->setY(F)V

    .line 1223
    mul-float v21, v9, v8

    sub-float v21, v21, v8

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageView;->setZ(F)V

    .line 1224
    mul-float v21, v10, v8

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageView;->setX(F)V

    .line 1225
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/home/ui/pageview/PageView;->setRotation(FFF)V

    goto/16 :goto_4

    .line 1229
    .end local v4    # "absAngleDeg":F
    .end local v6    # "angleDeg":F
    .end local v8    # "carouselRadius":F
    .end local v9    # "cosDistance":F
    .end local v10    # "distance":F
    .end local v12    # "fadeAngle":F
    .end local v13    # "i":I
    .end local v14    # "landscape":Z
    .end local v15    # "maxAngle":F
    .end local v17    # "onScreen":Z
    .end local v18    # "page":Lcom/sonymobile/home/ui/pageview/PageView;
    .end local v20    # "zoomed":Z
    :cond_9
    return-void
.end method

.method private pageTransitionFlat()V
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    .line 1122
    iget-object v12, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v12}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v4

    .line 1123
    .local v4, "nbrPages":I
    if-lez v4, :cond_6

    .line 1124
    iget v12, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomPosition:F

    const v13, -0x42b33333    # -0.05f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    move v9, v10

    .line 1125
    .local v9, "zoomed":Z
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getWidth()F

    move-result v7

    .line 1130
    .local v7, "scrollableWidthInPixels":F
    if-eqz v9, :cond_3

    .line 1131
    iget v8, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomedVisibleDistancePerPageModifier:F

    .line 1132
    .local v8, "visibleDistancePerPage":F
    iget v12, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomedScreenFractionPerPageModifier:F

    mul-float/2addr v7, v12

    .line 1138
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_6

    .line 1139
    iget-object v12, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v12, v3}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/home/ui/pageview/PageView;

    .line 1140
    .local v6, "page":Lcom/sonymobile/home/ui/pageview/PageView;
    invoke-virtual {v6}, Lcom/sonymobile/home/ui/pageview/PageView;->getPagePosition()F

    move-result v12

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getScrollPosition()F

    move-result v13

    sub-float v2, v12, v13

    .line 1141
    .local v2, "distanceInFractionOfPages":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1143
    .local v1, "distanceAbsoluteNumberOfPages":F
    cmpg-float v12, v1, v8

    if-gez v12, :cond_4

    move v5, v10

    .line 1144
    .local v5, "onScreen":Z
    :goto_3
    invoke-virtual {v6, v5}, Lcom/sonymobile/home/ui/pageview/PageView;->setOnScreen(Z)V

    .line 1145
    if-nez v5, :cond_0

    const/high16 v12, 0x40000000    # 2.0f

    cmpg-float v12, v1, v12

    if-gtz v12, :cond_1

    .line 1146
    :cond_0
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/sonymobile/home/ui/pageview/PageView;->setY(F)V

    .line 1147
    mul-float v12, v2, v7

    invoke-virtual {v6, v12}, Lcom/sonymobile/home/ui/pageview/PageView;->setX(F)V

    .line 1148
    const v12, 0x3fa66666    # 1.3f

    sub-float/2addr v12, v1

    invoke-static {v12, v14}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1149
    .local v0, "alpha":F
    if-eqz v5, :cond_5

    iget-object v12, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-static {v12}, Lcom/sonymobile/home/util/LayoutUtils;->isLandscape(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1150
    invoke-virtual {v6, v0}, Lcom/sonymobile/home/ui/pageview/PageView;->setDescendantAlpha(F)V

    .line 1155
    :goto_4
    iget-boolean v12, p0, Lcom/sonymobile/home/desktop/DesktopView;->mFadePageButtons:Z

    if-eqz v12, :cond_1

    .line 1156
    const/high16 v12, 0x40400000    # 3.0f

    div-float v13, v14, v0

    sub-float/2addr v12, v13

    invoke-virtual {p0, v6, v12}, Lcom/sonymobile/home/desktop/DesktopView;->updateEditButtonsTransparency(Lcom/sonymobile/home/ui/pageview/PageView;F)V

    .line 1138
    .end local v0    # "alpha":F
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1    # "distanceAbsoluteNumberOfPages":F
    .end local v2    # "distanceInFractionOfPages":F
    .end local v3    # "i":I
    .end local v5    # "onScreen":Z
    .end local v6    # "page":Lcom/sonymobile/home/ui/pageview/PageView;
    .end local v7    # "scrollableWidthInPixels":F
    .end local v8    # "visibleDistancePerPage":F
    .end local v9    # "zoomed":Z
    :cond_2
    move v9, v11

    .line 1124
    goto :goto_0

    .line 1134
    .restart local v7    # "scrollableWidthInPixels":F
    .restart local v9    # "zoomed":Z
    :cond_3
    iget v8, p0, Lcom/sonymobile/home/desktop/DesktopView;->mVisibleDistancePerPageModifier:F

    .line 1135
    .restart local v8    # "visibleDistancePerPage":F
    iget v12, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScreenFractionPerPageModifier:F

    mul-float/2addr v7, v12

    goto :goto_1

    .restart local v1    # "distanceAbsoluteNumberOfPages":F
    .restart local v2    # "distanceInFractionOfPages":F
    .restart local v3    # "i":I
    .restart local v6    # "page":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_4
    move v5, v11

    .line 1143
    goto :goto_3

    .line 1152
    .restart local v0    # "alpha":F
    .restart local v5    # "onScreen":Z
    :cond_5
    invoke-virtual {v6, v14}, Lcom/sonymobile/home/ui/pageview/PageView;->setDescendantAlpha(F)V

    goto :goto_4

    .line 1162
    .end local v0    # "alpha":F
    .end local v1    # "distanceAbsoluteNumberOfPages":F
    .end local v2    # "distanceInFractionOfPages":F
    .end local v3    # "i":I
    .end local v5    # "onScreen":Z
    .end local v6    # "page":Lcom/sonymobile/home/ui/pageview/PageView;
    .end local v7    # "scrollableWidthInPixels":F
    .end local v8    # "visibleDistancePerPage":F
    .end local v9    # "zoomed":Z
    :cond_6
    return-void
.end method

.method private pageTransitionFlow()V
    .locals 14

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 1327
    iget-object v10, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v10}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v6

    .line 1328
    .local v6, "nbrPages":I
    if-lez v6, :cond_3

    .line 1329
    iget-object v10, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v10}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v10

    const/high16 v11, 0x3fc00000    # 1.5f

    mul-float v2, v10, v11

    .line 1330
    .local v2, "carouselRadius":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_3

    .line 1331
    iget-object v10, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v10, v5}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/home/ui/pageview/PageView;

    .line 1332
    .local v8, "page":Lcom/sonymobile/home/ui/pageview/PageView;
    invoke-virtual {v8}, Lcom/sonymobile/home/ui/pageview/PageView;->getPagePosition()F

    move-result v10

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getScrollPosition()F

    move-result v11

    sub-float v4, v10, v11

    .line 1333
    .local v4, "distance":F
    const/high16 v10, 0x43340000    # 180.0f

    mul-float/2addr v10, v4

    const/high16 v11, 0x40800000    # 4.0f

    div-float v0, v10, v11

    .line 1335
    .local v0, "angleDeg":F
    const/high16 v10, -0x3dcc0000    # -45.0f

    cmpl-float v10, v0, v10

    if-lez v10, :cond_2

    const/high16 v10, 0x42340000    # 45.0f

    cmpg-float v10, v0, v10

    if-gez v10, :cond_2

    const/4 v7, 0x1

    .line 1336
    .local v7, "onScreen":Z
    :goto_1
    invoke-virtual {v8, v7}, Lcom/sonymobile/home/ui/pageview/PageView;->setOnScreen(Z)V

    .line 1337
    if-nez v7, :cond_0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_1

    .line 1338
    :cond_0
    const v10, 0x3c8efa35

    mul-float v1, v0, v10

    .line 1339
    .local v1, "angleRad":F
    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v3, v10

    .line 1340
    .local v3, "cosDistance":F
    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v9, v10

    .line 1341
    .local v9, "sinDistance":F
    mul-float v10, v9, v2

    invoke-virtual {v8, v10}, Lcom/sonymobile/home/ui/pageview/PageView;->setX(F)V

    .line 1342
    invoke-virtual {v8, v12}, Lcom/sonymobile/home/ui/pageview/PageView;->setY(F)V

    .line 1343
    mul-float v10, v3, v2

    sub-float/2addr v10, v2

    invoke-virtual {v8, v10}, Lcom/sonymobile/home/ui/pageview/PageView;->setZ(F)V

    .line 1344
    neg-float v10, v0

    invoke-virtual {v8, v12, v10, v12}, Lcom/sonymobile/home/ui/pageview/PageView;->setRotation(FFF)V

    .line 1347
    mul-float v10, v0, v0

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x44fd2000    # 2025.0f

    div-float/2addr v10, v11

    sub-float v10, v13, v10

    invoke-virtual {v8, v10}, Lcom/sonymobile/home/ui/pageview/PageView;->setDescendantAlpha(F)V

    .line 1348
    invoke-virtual {p0, v8, v13}, Lcom/sonymobile/home/desktop/DesktopView;->updateEditButtonsTransparency(Lcom/sonymobile/home/ui/pageview/PageView;F)V

    .line 1330
    .end local v1    # "angleRad":F
    .end local v3    # "cosDistance":F
    .end local v9    # "sinDistance":F
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1335
    .end local v7    # "onScreen":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 1352
    .end local v0    # "angleDeg":F
    .end local v2    # "carouselRadius":F
    .end local v4    # "distance":F
    .end local v5    # "i":I
    .end local v8    # "page":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_3
    return-void
.end method

.method private pageTransitionWindmill()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 1293
    iget-object v11, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v11}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v7

    .line 1294
    .local v7, "nbrPages":I
    if-lez v7, :cond_3

    .line 1295
    iget-object v11, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v11}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v11

    const/high16 v12, 0x40400000    # 3.0f

    mul-float v2, v11, v12

    .line 1296
    .local v2, "carouselRadius":F
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getLeftmostPage()I

    move-result v6

    .line 1297
    .local v6, "leftmost":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_3

    .line 1298
    iget-object v11, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v11, v5}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v9

    check-cast v9, Lcom/sonymobile/home/ui/pageview/PageView;

    .line 1299
    .local v9, "page":Lcom/sonymobile/home/ui/pageview/PageView;
    add-int v11, v6, v5

    int-to-float v11, v11

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getScrollPosition()F

    move-result v12

    sub-float v4, v11, v12

    .line 1300
    .local v4, "distance":F
    const/high16 v11, 0x43340000    # 180.0f

    mul-float/2addr v11, v4

    const/high16 v12, 0x40e00000    # 7.0f

    div-float v0, v11, v12

    .line 1302
    .local v0, "angleDeg":F
    const/high16 v11, -0x3da40000    # -55.0f

    cmpl-float v11, v0, v11

    if-lez v11, :cond_2

    const/high16 v11, 0x425c0000    # 55.0f

    cmpg-float v11, v0, v11

    if-gez v11, :cond_2

    const/4 v8, 0x1

    .line 1303
    .local v8, "onScreen":Z
    :goto_1
    invoke-virtual {v9, v8}, Lcom/sonymobile/home/ui/pageview/PageView;->setOnScreen(Z)V

    .line 1304
    if-nez v8, :cond_0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_1

    .line 1305
    :cond_0
    const v11, 0x3c8efa35

    mul-float v1, v0, v11

    .line 1306
    .local v1, "angleRad":F
    float-to-double v12, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v3, v12

    .line 1307
    .local v3, "cosDistance":F
    float-to-double v12, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v10, v12

    .line 1309
    .local v10, "sinDistance":F
    mul-float v11, v10, v2

    invoke-virtual {v9, v11}, Lcom/sonymobile/home/ui/pageview/PageView;->setX(F)V

    .line 1310
    neg-float v11, v3

    mul-float/2addr v11, v2

    add-float/2addr v11, v2

    invoke-virtual {v9, v11}, Lcom/sonymobile/home/ui/pageview/PageView;->setY(F)V

    .line 1311
    invoke-virtual {v9, v14}, Lcom/sonymobile/home/ui/pageview/PageView;->setZ(F)V

    .line 1312
    neg-float v11, v0

    invoke-virtual {v9, v14, v14, v11}, Lcom/sonymobile/home/ui/pageview/PageView;->setRotation(FFF)V

    .line 1313
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {p0, v9, v11}, Lcom/sonymobile/home/desktop/DesktopView;->updateEditButtonsTransparency(Lcom/sonymobile/home/ui/pageview/PageView;F)V

    .line 1297
    .end local v1    # "angleRad":F
    .end local v3    # "cosDistance":F
    .end local v10    # "sinDistance":F
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1302
    .end local v8    # "onScreen":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 1317
    .end local v0    # "angleDeg":F
    .end local v2    # "carouselRadius":F
    .end local v4    # "distance":F
    .end local v5    # "i":I
    .end local v6    # "leftmost":I
    .end local v9    # "page":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_3
    return-void
.end method

.method private resetPageTransition()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 1085
    iget-object v10, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v10}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v2

    .line 1086
    .local v2, "nbrPages":I
    if-lez v2, :cond_3

    .line 1088
    iget v10, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomPosition:F

    const v11, -0x42b33333    # -0.05f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_0

    move v7, v8

    .line 1089
    .local v7, "zoomed":Z
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getWidth()F

    move-result v5

    .line 1093
    .local v5, "scrollableWidthInPixels":F
    if-eqz v7, :cond_1

    .line 1094
    iget v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomedVisibleDistancePerPageModifier:F

    .line 1095
    .local v6, "visibleDistancePerPage":F
    iget v10, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomedScreenFractionPerPageModifier:F

    mul-float/2addr v5, v10

    .line 1101
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 1102
    iget-object v10, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v10, v1}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/ui/pageview/PageView;

    .line 1103
    .local v4, "page":Lcom/sonymobile/home/ui/pageview/PageView;
    invoke-virtual {v4}, Lcom/sonymobile/home/ui/pageview/PageView;->getPagePosition()F

    move-result v10

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getScrollPosition()F

    move-result v11

    sub-float v0, v10, v11

    .line 1104
    .local v0, "distanceInFractionOfPages":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v10, v10, v6

    if-gez v10, :cond_2

    move v3, v8

    .line 1105
    .local v3, "onScreen":Z
    :goto_3
    invoke-virtual {v4, v3}, Lcom/sonymobile/home/ui/pageview/PageView;->setOnScreen(Z)V

    .line 1106
    mul-float v10, v0, v5

    invoke-virtual {v4, v10}, Lcom/sonymobile/home/ui/pageview/PageView;->setX(F)V

    .line 1107
    invoke-virtual {v4, v12}, Lcom/sonymobile/home/ui/pageview/PageView;->setY(F)V

    .line 1108
    invoke-virtual {v4, v12}, Lcom/sonymobile/home/ui/pageview/PageView;->setZ(F)V

    .line 1109
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v4, v10}, Lcom/sonymobile/home/ui/pageview/PageView;->setDescendantAlpha(F)V

    .line 1110
    invoke-virtual {v4, v12, v12, v12}, Lcom/sonymobile/home/ui/pageview/PageView;->setRotation(FFF)V

    .line 1101
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "distanceInFractionOfPages":F
    .end local v1    # "i":I
    .end local v3    # "onScreen":Z
    .end local v4    # "page":Lcom/sonymobile/home/ui/pageview/PageView;
    .end local v5    # "scrollableWidthInPixels":F
    .end local v6    # "visibleDistancePerPage":F
    .end local v7    # "zoomed":Z
    :cond_0
    move v7, v9

    .line 1088
    goto :goto_0

    .line 1097
    .restart local v5    # "scrollableWidthInPixels":F
    .restart local v7    # "zoomed":Z
    :cond_1
    iget v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mVisibleDistancePerPageModifier:F

    .line 1098
    .restart local v6    # "visibleDistancePerPage":F
    iget v10, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScreenFractionPerPageModifier:F

    mul-float/2addr v5, v10

    goto :goto_1

    .restart local v0    # "distanceInFractionOfPages":F
    .restart local v1    # "i":I
    .restart local v4    # "page":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_2
    move v3, v9

    .line 1104
    goto :goto_3

    .line 1113
    .end local v0    # "distanceInFractionOfPages":F
    .end local v1    # "i":I
    .end local v4    # "page":Lcom/sonymobile/home/ui/pageview/PageView;
    .end local v5    # "scrollableWidthInPixels":F
    .end local v6    # "visibleDistancePerPage":F
    .end local v7    # "zoomed":Z
    :cond_3
    return-void
.end method

.method private setUpGridPositions()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 571
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v4

    .line 572
    .local v4, "scene":Lcom/sonymobile/flix/components/Scene;
    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v3

    .line 573
    .local v3, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 575
    .local v5, "value":Landroid/util/TypedValue;
    const v6, 0x7f0b002e

    invoke-virtual {v3, v6}, Lcom/sonymobile/home/resources/ResourceManager;->getDimension(I)F

    move-result v6

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getYoffset()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mNoZoomGridVerticalPosition:F

    .line 576
    const v6, 0x7f0b002d

    invoke-virtual {v3, v6}, Lcom/sonymobile/home/resources/ResourceManager;->getDimension(I)F

    move-result v6

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getXoffset()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mNoZoomGridHorizontalPosition:F

    .line 578
    const v6, 0x7f0b0030

    invoke-virtual {v3, v6}, Lcom/sonymobile/home/resources/ResourceManager;->getDimension(I)F

    move-result v6

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getYoffset()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLowZoomVerticalPosition:F

    .line 579
    const v6, 0x7f0b00c7

    invoke-virtual {v3, v6}, Lcom/sonymobile/home/resources/ResourceManager;->getDimension(I)F

    move-result v6

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getXoffset()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLowZoomHorizontalPosition:F

    .line 581
    const v6, 0x7f07000b

    invoke-virtual {v3, v6, v5, v8}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 582
    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    iput v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLowZoomDepth:F

    .line 584
    const v6, 0x7f070013

    invoke-virtual {v3, v6, v5, v8}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 585
    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    iput v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mHighZoomDepth:F

    .line 588
    const v6, 0x7f07000a

    invoke-virtual {v3, v6, v5, v8}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 589
    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    .line 592
    .local v2, "cuiZoomGridVerticalPositionFactor":F
    const v6, 0x7f070009

    invoke-virtual {v3, v6, v5, v8}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 593
    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    .line 595
    .local v1, "cuiZoomGridHorizontalPositionFactor":F
    const v6, 0x7f0b000f

    invoke-virtual {v3, v6}, Lcom/sonymobile/home/resources/ResourceManager;->getDimension(I)F

    move-result v0

    .line 596
    .local v0, "cuiGridHeightLarge":F
    neg-float v6, v2

    mul-float/2addr v6, v0

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getYoffset()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mHighZoomVerticalPosition:F

    .line 600
    neg-float v6, v1

    mul-float/2addr v6, v0

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getXoffset()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mHighZoomHorizontalPosition:F

    .line 603
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopView;->updateGridPositions()V

    .line 604
    return-void
.end method

.method private setupPageButtons(Lcom/sonymobile/home/desktop/DesktopPageView;)V
    .locals 9
    .param p1, "desktopPageView"    # Lcom/sonymobile/home/desktop/DesktopPageView;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const v8, 0x3e19999a    # 0.15f

    .line 756
    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/DesktopPageView;->getPageIndex()I

    move-result v2

    .line 757
    .local v2, "index":I
    iget v7, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLeftmostAdapterPage:I

    if-gt v7, v2, :cond_1

    iget v7, p0, Lcom/sonymobile/home/desktop/DesktopView;->mRightmostAdapterPage:I

    if-gt v2, v7, :cond_1

    move v0, v5

    .line 760
    .local v0, "adapterPage":Z
    :goto_0
    iget-boolean v7, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableEditButtons:Z

    if-eqz v7, :cond_0

    if-eqz v0, :cond_0

    .line 761
    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopView;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    invoke-interface {v7}, Lcom/sonymobile/home/ui/pageview/PageViewAdapter;->getHomePage()I

    move-result v7

    if-ne v2, v7, :cond_2

    move v3, v5

    .line 762
    .local v3, "isSelectedAsHomePage":Z
    :goto_1
    const v5, 0x7f0f0037

    invoke-virtual {p1, v5}, Lcom/sonymobile/home/desktop/DesktopPageView;->findById(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/desktop/SelectHomePageView;

    .line 764
    .local v4, "selectHomePageView":Lcom/sonymobile/home/desktop/SelectHomePageView;
    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/SelectHomePageView;->getButton()Lcom/sonymobile/flix/components/Button;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SelectHomePage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/flix/components/Button;->setName(Ljava/lang/String;)V

    .line 765
    invoke-virtual {v4, v3}, Lcom/sonymobile/home/desktop/SelectHomePageView;->selectAsHomePage(Z)V

    .line 766
    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/SelectHomePageView;->getWidth()F

    move-result v5

    mul-float/2addr v5, v8

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/desktop/SelectHomePageView;->setTouchPadding(F)V

    .line 768
    new-instance v5, Lcom/sonymobile/home/desktop/DesktopView$3;

    invoke-direct {v5, p0, v2}, Lcom/sonymobile/home/desktop/DesktopView$3;-><init>(Lcom/sonymobile/home/desktop/DesktopView;I)V

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/desktop/SelectHomePageView;->setListener(Lcom/sonymobile/flix/components/ButtonListener;)V

    .line 775
    const v5, 0x7f0f001a

    invoke-virtual {p1, v5}, Lcom/sonymobile/home/desktop/DesktopPageView;->findById(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/desktop/DeletePageButton;

    .line 777
    .local v1, "deletePageButton":Lcom/sonymobile/home/desktop/DeletePageButton;
    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DeletePageButton;->getButton()Lcom/sonymobile/flix/components/Button;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeletePage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/flix/components/Button;->setName(Ljava/lang/String;)V

    .line 778
    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DeletePageButton;->getWidth()F

    move-result v5

    mul-float/2addr v5, v8

    invoke-virtual {v1, v5}, Lcom/sonymobile/home/desktop/DeletePageButton;->setTouchPadding(F)V

    .line 779
    new-instance v5, Lcom/sonymobile/home/desktop/DesktopView$4;

    invoke-direct {v5, p0, v2}, Lcom/sonymobile/home/desktop/DesktopView$4;-><init>(Lcom/sonymobile/home/desktop/DesktopView;I)V

    invoke-virtual {v1, v5}, Lcom/sonymobile/home/desktop/DeletePageButton;->setListener(Lcom/sonymobile/flix/components/ButtonListener;)V

    .line 786
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopView;->updateHomeButtonVisibility(Lcom/sonymobile/home/desktop/DesktopPageView;)V

    .line 787
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopView;->updateDeleteButtonVisibility(Lcom/sonymobile/home/desktop/DesktopPageView;)V

    .line 789
    .end local v1    # "deletePageButton":Lcom/sonymobile/home/desktop/DeletePageButton;
    .end local v3    # "isSelectedAsHomePage":Z
    .end local v4    # "selectHomePageView":Lcom/sonymobile/home/desktop/SelectHomePageView;
    :cond_0
    return-void

    .end local v0    # "adapterPage":Z
    :cond_1
    move v0, v6

    .line 757
    goto :goto_0

    .restart local v0    # "adapterPage":Z
    :cond_2
    move v3, v6

    .line 761
    goto :goto_1
.end method

.method private updateDeleteButtonVisibility(Lcom/sonymobile/home/desktop/DesktopPageView;)V
    .locals 4
    .param p1, "desktopPageView"    # Lcom/sonymobile/home/desktop/DesktopPageView;

    .prologue
    .line 799
    const/4 v1, 0x0

    .line 801
    .local v1, "showDeleteButton":Z
    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mRightmostAdapterPage:I

    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLeftmostAdapterPage:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopView;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    invoke-interface {v3}, Lcom/sonymobile/home/ui/pageview/PageViewAdapter;->getMinimumNumberOfPages()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 803
    iget-boolean v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableEditButtons:Z

    .line 805
    iget-boolean v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mAllowDeletionOfPagesContainingItems:Z

    if-nez v2, :cond_0

    .line 807
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/DesktopPageView;->getPageIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sonymobile/home/ui/pageview/PageViewAdapter;->isPageEmpty(I)Z

    move-result v2

    and-int/2addr v1, v2

    .line 810
    :cond_0
    const v2, 0x7f0f001a

    invoke-virtual {p1, v2}, Lcom/sonymobile/home/desktop/DesktopPageView;->findById(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/desktop/DeletePageButton;

    .line 812
    .local v0, "deletePageButton":Lcom/sonymobile/home/desktop/DeletePageButton;
    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DeletePageButton;->setVisible(Z)V

    .line 813
    return-void
.end method

.method private updateGridPositions()V
    .locals 2

    .prologue
    .line 551
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopView$9;->$SwitchMap$com$sonymobile$home$desktop$DesktopView$DesktopZoomLevel:[I

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mCurrentZoomLevel:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 564
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mNoZoomGridVerticalPosition:F

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopView;->setGridVerticalPosition(F)V

    .line 565
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mNoZoomGridHorizontalPosition:F

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopView;->setGridHorizontalPosition(F)V

    .line 568
    :goto_0
    return-void

    .line 553
    :pswitch_0
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mHighZoomVerticalPosition:F

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopView;->setGridVerticalPosition(F)V

    .line 554
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mHighZoomHorizontalPosition:F

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopView;->setGridHorizontalPosition(F)V

    goto :goto_0

    .line 558
    :pswitch_1
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLowZoomVerticalPosition:F

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopView;->setGridVerticalPosition(F)V

    .line 559
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLowZoomHorizontalPosition:F

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopView;->setGridHorizontalPosition(F)V

    goto :goto_0

    .line 551
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateHomeButtonVisibility(Lcom/sonymobile/home/desktop/DesktopPageView;)V
    .locals 4
    .param p1, "desktopPageView"    # Lcom/sonymobile/home/desktop/DesktopPageView;

    .prologue
    .line 792
    const v2, 0x7f0f0037

    invoke-virtual {p1, v2}, Lcom/sonymobile/home/desktop/DesktopPageView;->findById(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/desktop/SelectHomePageView;

    .line 794
    .local v0, "selectHomePageView":Lcom/sonymobile/home/desktop/SelectHomePageView;
    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mRightmostAdapterPage:I

    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLeftmostAdapterPage:I

    sub-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableEditButtons:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 795
    .local v1, "showHome":Z
    :goto_0
    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/SelectHomePageView;->setVisible(Z)V

    .line 796
    return-void

    .line 794
    .end local v1    # "showHome":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updatePagePosition(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mGridHorizontalPosition:F

    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mGridVerticalPosition:F

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/Component;->setPosition(FF)V

    .line 1048
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomPosition:F

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getDepth()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopView;->setLocationZ(F)V

    .line 1050
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mCurrentPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    if-eqz v0, :cond_0

    .line 1051
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopView$9;->$SwitchMap$com$sonymobile$home$settings$UserSettings$PageTransition:[I

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mCurrentPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    invoke-virtual {v1}, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1067
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopView;->pageTransitionFlat()V

    .line 1072
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 1073
    return-void

    .line 1053
    :pswitch_0
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopView;->pageTransitionFlow()V

    goto :goto_0

    .line 1056
    :pswitch_1
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopView;->pageTransitionConcave()V

    goto :goto_0

    .line 1059
    :pswitch_2
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopView;->pageTransitionConvex()V

    goto :goto_0

    .line 1062
    :pswitch_3
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopView;->pageTransitionWindmill()V

    goto :goto_0

    .line 1051
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateResourceValues()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 407
    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v6

    iput-object v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    .line 409
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 410
    .local v2, "screenFractionPerPageModifier":Landroid/util/TypedValue;
    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    const v7, 0x7f07000c

    invoke-virtual {v6, v7, v2, v8}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 411
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    iput v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScreenFractionPerPageModifier:F

    .line 413
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 414
    .local v4, "zoomedScreenFractionPerPageModifier":Landroid/util/TypedValue;
    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    const v7, 0x7f07000e

    invoke-virtual {v6, v7, v4, v8}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 416
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    iput v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomedScreenFractionPerPageModifier:F

    .line 418
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 419
    .local v3, "visibleDistancePerPageModifier":Landroid/util/TypedValue;
    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    const v7, 0x7f070020

    invoke-virtual {v6, v7, v3, v8}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 420
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    iput v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mVisibleDistancePerPageModifier:F

    .line 422
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 423
    .local v5, "zoomedVisibleDistancePerPageModifier":Landroid/util/TypedValue;
    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    const v7, 0x7f07000f

    invoke-virtual {v6, v7, v5, v8}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 425
    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    iput v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomedVisibleDistancePerPageModifier:F

    .line 427
    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    const v7, 0x7f0b0068

    invoke-virtual {v6, v7}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mBackplateTopOffset:I

    .line 429
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 430
    .local v0, "backplateHeightScaleFactor":Landroid/util/TypedValue;
    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    const v7, 0x7f07001e

    invoke-virtual {v6, v7, v0, v8}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 431
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    iput v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mBackplateHeightScaleFactor:F

    .line 433
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 434
    .local v1, "pageIndicatorOffset":Landroid/util/TypedValue;
    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    const v7, 0x7f070016

    invoke-virtual {v6, v7, v1, v8}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 435
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    iput v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPageIndicatorOffset:F

    .line 436
    return-void
.end method


# virtual methods
.method public addExpandBoundsPages()V
    .locals 1

    .prologue
    .line 970
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableExpandBoundsPages:Z

    if-nez v0, :cond_0

    .line 971
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableExpandBoundsPages:Z

    .line 972
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->onContentChanged()V

    .line 974
    :cond_0
    return-void
.end method

.method public addSelectionListener(Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mSelectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    return-void
.end method

.method public addTouchListener(Lcom/sonymobile/home/desktop/DesktopViewTouchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/desktop/DesktopViewTouchListener;

    .prologue
    .line 682
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    return-void
.end method

.method protected adjustScrollBounds()V
    .locals 4

    .prologue
    .line 1741
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    if-eqz v1, :cond_0

    .line 1742
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getLeftmostPage()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getRightmostPage()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->setBounds(FF)V

    .line 1744
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getDefaultPage()I

    move-result v0

    .line 1745
    .local v0, "defaultPage":I
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1746
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->moveBegin()V

    .line 1747
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/util/ListTouchHelper;->moveTo(F)V

    .line 1748
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->moveEnd()V

    .line 1751
    .end local v0    # "defaultPage":I
    :cond_0
    return-void
.end method

.method protected createPage(Lcom/sonymobile/flix/components/Scene;IFFFF)Lcom/sonymobile/home/ui/pageview/PageView;
    .locals 5
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "index"    # I
    .param p3, "pageParentWidth"    # F
    .param p4, "pageParentHeight"    # F
    .param p5, "width"    # F
    .param p6, "height"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 818
    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLeftmostAdapterPage:I

    if-gt v4, p2, :cond_0

    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mRightmostAdapterPage:I

    if-gt p2, v4, :cond_0

    move v0, v2

    .line 819
    .local v0, "isAdapterPage":Z
    :goto_0
    iget-boolean v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableExpandBoundsPages:Z

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    move v1, v2

    .line 821
    .local v1, "isExpandBoundsPage":Z
    :goto_1
    if-nez v1, :cond_2

    .line 822
    invoke-direct/range {p0 .. p6}, Lcom/sonymobile/home/desktop/DesktopView;->createDesktopPageView(Lcom/sonymobile/flix/components/Scene;IFFFF)Lcom/sonymobile/home/desktop/DesktopPageView;

    move-result-object v2

    .line 825
    :goto_2
    return-object v2

    .end local v0    # "isAdapterPage":Z
    .end local v1    # "isExpandBoundsPage":Z
    :cond_0
    move v0, v3

    .line 818
    goto :goto_0

    .restart local v0    # "isAdapterPage":Z
    :cond_1
    move v1, v3

    .line 819
    goto :goto_1

    .line 825
    .restart local v1    # "isExpandBoundsPage":Z
    :cond_2
    invoke-direct/range {p0 .. p6}, Lcom/sonymobile/home/desktop/DesktopView;->createExpandBoundsPageView(Lcom/sonymobile/flix/components/Scene;IFFFF)Lcom/sonymobile/home/desktop/ExpandBoundsPageView;

    move-result-object v2

    goto :goto_2
.end method

.method public disableEditMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 915
    const/4 v0, 0x0

    .line 917
    .local v0, "update":Z
    iget-boolean v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableEditButtons:Z

    if-eqz v1, :cond_0

    .line 918
    iput-boolean v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableEditButtons:Z

    .line 919
    const/4 v0, 0x1

    .line 921
    :cond_0
    iget-boolean v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableExpandBoundsPages:Z

    if-eqz v1, :cond_1

    .line 922
    iput-boolean v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableExpandBoundsPages:Z

    .line 923
    const/4 v0, 0x1

    .line 926
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->updateEditButtonsVisibility()V

    .line 928
    if-eqz v0, :cond_2

    .line 929
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->onContentChanged()V

    .line 931
    :cond_2
    return-void
.end method

.method public enableEditMode(Z)V
    .locals 3
    .param p1, "enableExpandBoundPages"    # Z

    .prologue
    const/4 v2, 0x1

    .line 897
    const/4 v0, 0x0

    .line 898
    .local v0, "update":Z
    iget-boolean v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableEditButtons:Z

    if-nez v1, :cond_0

    .line 899
    iput-boolean v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableEditButtons:Z

    .line 900
    const/4 v0, 0x1

    .line 902
    :cond_0
    iget-boolean v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableExpandBoundsPages:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 903
    iput-boolean v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableExpandBoundsPages:Z

    .line 904
    const/4 v0, 0x1

    .line 906
    :cond_1
    if-eqz v0, :cond_2

    .line 907
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->onContentChanged()V

    .line 909
    :cond_2
    return-void
.end method

.method public getCurrentPageView()Lcom/sonymobile/home/ui/pageview/PageView;
    .locals 1

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopView;->findPage(I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v0

    return-object v0
.end method

.method public getLeftmostPage()I
    .locals 1

    .prologue
    .line 997
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableExpandBoundsPages:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLeftmostAdapterPage:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLeftmostAdapterPage:I

    goto :goto_0
.end method

.method public getRightmostPage()I
    .locals 1

    .prologue
    .line 1002
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableExpandBoundsPages:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mRightmostAdapterPage:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mRightmostAdapterPage:I

    goto :goto_0
.end method

.method public getZoomLevel()Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;
    .locals 1

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mCurrentZoomLevel:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    return-object v0
.end method

.method public hideProgressBar()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mProgressBarView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mProgressBarView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->invalidateComponent(Lcom/sonymobile/flix/components/Component;)V

    .line 397
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mProgressBarView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->setVisible(Z)V

    .line 398
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mProgressBarView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopView;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mProgressBarView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    .line 401
    :cond_0
    return-void
.end method

.method public hideResizableFrame()V
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mResizableFrame:Lcom/sonymobile/home/desktop/ResizableFrame;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/ResizableFrame;->detach()V

    .line 1038
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 1039
    return-void
.end method

.method hideScrollBackplate(J)V
    .locals 5
    .param p1, "fadeDuration"    # J

    .prologue
    .line 1939
    iget-boolean v3, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollBackplateVisible:Z

    if-eqz v3, :cond_1

    .line 1940
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollBackplateVisible:Z

    .line 1942
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v1

    .line 1943
    .local v1, "nbrPages":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1944
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v3, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageView;

    .line 1945
    .local v2, "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    instance-of v3, v2, Lcom/sonymobile/home/desktop/DesktopPageView;

    if-eqz v3, :cond_0

    .line 1946
    check-cast v2, Lcom/sonymobile/home/desktop/DesktopPageView;

    .end local v2    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    invoke-virtual {v2, p1, p2}, Lcom/sonymobile/home/desktop/DesktopPageView;->hideScrollBackplate(J)V

    .line 1943
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1950
    .end local v0    # "i":I
    .end local v1    # "nbrPages":I
    :cond_1
    return-void
.end method

.method public isDimmingEnabled()Z
    .locals 1

    .prologue
    .line 1977
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mBackgroundDimmingEnabled:Z

    return v0
.end method

.method public isEditModeEnabled()Z
    .locals 1

    .prologue
    .line 939
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableEditButtons:Z

    return v0
.end method

.method public isExpandBoundsPagesEnabled()Z
    .locals 1

    .prologue
    .line 992
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableExpandBoundsPages:Z

    return v0
.end method

.method public isOnHomePage()Z
    .locals 2

    .prologue
    .line 737
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    invoke-interface {v1}, Lcom/sonymobile/home/ui/pageview/PageViewAdapter;->getHomePage()I

    move-result v0

    .line 739
    .local v0, "homePage":I
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public layoutDesktop()V
    .locals 6

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 520
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->setSizeToParent()V

    .line 521
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v0}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v0

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v2}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v2

    mul-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v2}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopView;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v3}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/home/desktop/DesktopView;->setScrollableContentSize(FF)V

    .line 525
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopView;->adjustHorizontalScrollSpeed(Lcom/sonymobile/flix/util/ListTouchHelper;)V

    .line 527
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopView;->updateGridPositions()V

    .line 529
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mProgressBarView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mProgressBarView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    move v2, v1

    move-object v3, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 533
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopView;->layoutPageIndicator()V

    .line 534
    return-void
.end method

.method public onAddedTo(Lcom/sonymobile/flix/components/Component;)V
    .locals 0
    .param p1, "parent"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->layoutDesktop()V

    .line 478
    return-void
.end method

.method protected onContentChangedUpdateFinished()V
    .locals 4

    .prologue
    .line 1786
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v1

    .line 1787
    .local v1, "nbrPages":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1788
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v3, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageView;

    .line 1789
    .local v2, "page":Lcom/sonymobile/home/ui/pageview/PageView;
    instance-of v3, v2, Lcom/sonymobile/home/desktop/DesktopPageView;

    if-eqz v3, :cond_0

    .line 1790
    check-cast v2, Lcom/sonymobile/home/desktop/DesktopPageView;

    .end local v2    # "page":Lcom/sonymobile/home/ui/pageview/PageView;
    invoke-direct {p0, v2}, Lcom/sonymobile/home/desktop/DesktopView;->setupPageButtons(Lcom/sonymobile/home/desktop/DesktopPageView;)V

    .line 1787
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1793
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->clearListeners()V

    .line 449
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/GestureDetector;->setGestureEventListener(Lcom/sonymobile/flix/util/GestureDetector$GestureEventListener;)V

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/settings/UserSettings;->removeUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 454
    invoke-super {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onDestroy()V

    .line 455
    return-void
.end method

.method public onDispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/flix/components/Scene;->dispatchHoverEventToChildren(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 623
    iget-boolean v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mTouchEnabled:Z

    if-eqz v1, :cond_2

    .line 626
    iget-boolean v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mDragEnabled:Z

    if-eqz v1, :cond_0

    .line 627
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    invoke-virtual {v1, p1}, Lcom/sonymobile/flix/util/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 630
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mTouchConsumedHandler:Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;->resetTouchOnScrollableConsumed()V

    .line 632
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1, p0, p1}, Lcom/sonymobile/flix/components/Scene;->dispatchTouchEventToChildren(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 634
    .local v0, "eventConsumed":Z
    iget-boolean v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mDragEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mTouchConsumedHandler:Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;->wasTouchOnScrollableConsumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 635
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mDownSwipeGestureDetector:Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 642
    .end local v0    # "eventConsumed":Z
    :goto_0
    return v0

    .line 637
    .restart local v0    # "eventConsumed":Z
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mDownSwipeGestureDetector:Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;

    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->cancelOngoingTrackingIfNeeded()V

    goto :goto_0

    .line 642
    .end local v0    # "eventConsumed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDownSwipe()V
    .locals 3

    .prologue
    .line 647
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/desktop/DesktopViewTouchListener;

    .line 648
    .local v1, "listener":Lcom/sonymobile/home/desktop/DesktopViewTouchListener;
    invoke-interface {v1}, Lcom/sonymobile/home/desktop/DesktopViewTouchListener;->onDownSwipe()V

    goto :goto_0

    .line 650
    .end local v1    # "listener":Lcom/sonymobile/home/desktop/DesktopViewTouchListener;
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1954
    iget-boolean v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mBackgroundDimmingEnabled:Z

    if-eqz v1, :cond_0

    .line 1955
    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mBackgroundAlpha:F

    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mBackgroundColor:I

    ushr-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1956
    .local v0, "alpha":I
    shl-int/lit8 v1, v0, 0x18

    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mBackgroundColor:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1958
    .end local v0    # "alpha":I
    :cond_0
    invoke-super {p0, p1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1959
    return-void
.end method

.method public onGestureEvent(Lcom/sonymobile/flix/util/GestureDetector;Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;)V
    .locals 2
    .param p1, "gestureDetector"    # Lcom/sonymobile/flix/util/GestureDetector;
    .param p2, "event"    # Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    .prologue
    .line 1836
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopView$9;->$SwitchMap$com$sonymobile$flix$util$GestureDetector$GestureEvent:[I

    invoke-virtual {p2}, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1847
    :goto_0
    return-void

    .line 1839
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->snapToClosestPage()V

    goto :goto_0

    .line 1842
    :pswitch_1
    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->hideScrollBackplate(J)V

    goto :goto_0

    .line 1836
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPageItemViewAdded(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 6
    .param p1, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 1755
    invoke-super {p0, p1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onPageItemViewAdded(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 1757
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mCurrentZoomLevel:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    sget-object v5, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->NONE:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    if-eq v4, v5, :cond_0

    .line 1758
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setTouchable(Z)V

    .line 1761
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mItemViewChangeListener:Lcom/sonymobile/home/desktop/DesktopView$DesktopItemViewChangeListener;

    if-eqz v4, :cond_1

    .line 1762
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v0

    .line 1763
    .local v0, "itemId":J
    iget-wide v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mItemViewChangeListenId:J

    .line 1764
    .local v2, "listenerItemId":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 1765
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mItemViewChangeListener:Lcom/sonymobile/home/desktop/DesktopView$DesktopItemViewChangeListener;

    invoke-interface {v4, p1}, Lcom/sonymobile/home/desktop/DesktopView$DesktopItemViewChangeListener;->onPageItemViewAdded(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 1768
    .end local v0    # "itemId":J
    .end local v2    # "listenerItemId":J
    :cond_1
    return-void
.end method

.method protected onPageItemViewRemoved(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 5
    .param p1, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 1772
    invoke-super {p0, p1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onPageItemViewRemoved(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 1774
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mItemViewChangeListener:Lcom/sonymobile/home/desktop/DesktopView$DesktopItemViewChangeListener;

    if-eqz v4, :cond_0

    .line 1775
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v0

    .line 1776
    .local v0, "itemId":J
    iget-wide v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mItemViewChangeListenId:J

    .line 1778
    .local v2, "listenerItemId":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1779
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mItemViewChangeListener:Lcom/sonymobile/home/desktop/DesktopView$DesktopItemViewChangeListener;

    invoke-interface {v4, p1}, Lcom/sonymobile/home/desktop/DesktopView$DesktopItemViewChangeListener;->onPageItemViewRemoved(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 1782
    .end local v0    # "itemId":J
    .end local v2    # "listenerItemId":J
    :cond_0
    return-void
.end method

.method protected onPageItemViewUpdated(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 5
    .param p1, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 1797
    invoke-super {p0, p1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onPageItemViewUpdated(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 1799
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mItemViewChangeListener:Lcom/sonymobile/home/desktop/DesktopView$DesktopItemViewChangeListener;

    if-eqz v4, :cond_0

    .line 1800
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v0

    .line 1801
    .local v0, "itemId":J
    iget-wide v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mItemViewChangeListenId:J

    .line 1803
    .local v2, "listenerItemId":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1804
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mItemViewChangeListener:Lcom/sonymobile/home/desktop/DesktopView$DesktopItemViewChangeListener;

    invoke-interface {v4, p1}, Lcom/sonymobile/home/desktop/DesktopView$DesktopItemViewChangeListener;->onPageItemViewUpdated(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 1807
    .end local v0    # "itemId":J
    .end local v2    # "listenerItemId":J
    :cond_0
    return-void
.end method

.method public onPageViewSelected(I)V
    .locals 3
    .param p1, "pageIndex"    # I

    .prologue
    .line 608
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mSelectionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;

    .line 609
    .local v1, "listener":Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;->onPageViewSelected(I)V

    goto :goto_0

    .line 611
    .end local v1    # "listener":Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 506
    invoke-super {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onPause()V

    .line 507
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->hideResizableFrame()V

    .line 508
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
    .line 482
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopView;->setUpGridPositions()V

    .line 483
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->layoutDesktop()V

    .line 486
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopView$9;->$SwitchMap$com$sonymobile$home$desktop$DesktopView$DesktopZoomLevel:[I

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mCurrentZoomLevel:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 499
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onSceneSizeChanged(Lcom/sonymobile/flix/components/Scene;IIII)V

    .line 501
    invoke-static {p1}, Lcom/sonymobile/home/util/LayoutUtils;->isLandscape(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLandscapeZoomLevel:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->setZoomLevel(Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;Z)V

    .line 502
    return-void

    .line 488
    :pswitch_0
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mHighZoomDepth:F

    iput v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomPosition:F

    goto :goto_0

    .line 492
    :pswitch_1
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLowZoomDepth:F

    iput v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomPosition:F

    goto :goto_0

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPortraitZoomLevel:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    goto :goto_1

    .line 486
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onZoomUpdated(F)V
    .locals 4
    .param p1, "zoomPosition"    # F

    .prologue
    .line 1683
    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomAnimDepthLowerBound:F

    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomAnimDepthUpperBound:F

    invoke-static {v2, v3, p1}, Lcom/sonymobile/flix/util/Utils;->linear(FFF)F

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomPosition:F

    .line 1684
    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomAnimHorizontalPositionLowerBound:F

    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomAnimHorizontalPositionUpperBound:F

    invoke-static {v2, v3, p1}, Lcom/sonymobile/flix/util/Utils;->linear(FFF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/desktop/DesktopView;->setGridHorizontalPosition(F)V

    .line 1685
    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomAnimVerticalPositionLowerBound:F

    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomAnimVerticalPositionUpperBound:F

    invoke-static {v2, v3, p1}, Lcom/sonymobile/flix/util/Utils;->linear(FFF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/desktop/DesktopView;->setGridVerticalPosition(F)V

    .line 1687
    iget-boolean v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mShouldZoomAnimateBackplateAlpha:Z

    if-eqz v2, :cond_0

    .line 1689
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v1

    .line 1690
    .local v1, "nbrPages":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1691
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/desktop/BackplatePageView;

    invoke-virtual {v2, p1}, Lcom/sonymobile/home/desktop/BackplatePageView;->setBackplateAlpha(F)V

    .line 1690
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1695
    .end local v0    # "i":I
    .end local v1    # "nbrPages":I
    :cond_0
    iget-boolean v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mBackgroundDimmingEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mAnimateBackgroundAlphaWhenZooming:Z

    if-eqz v2, :cond_1

    .line 1696
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p1, v2, v3}, Lcom/sonymobile/home/util/MathUtil;->clamp(FFF)F

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mBackgroundAlpha:F

    .line 1699
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->updateFromTouch()V

    .line 1700
    return-void
.end method

.method public removeExpandBoundsPages()V
    .locals 1

    .prologue
    .line 980
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableExpandBoundsPages:Z

    if-eqz v0, :cond_0

    .line 981
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableExpandBoundsPages:Z

    .line 982
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->onContentChanged()V

    .line 984
    :cond_0
    return-void
.end method

.method public removePageItemViewListener()V
    .locals 1

    .prologue
    .line 1824
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mItemViewChangeListener:Lcom/sonymobile/home/desktop/DesktopView$DesktopItemViewChangeListener;

    .line 1825
    return-void
.end method

.method public removeSelectionListener(Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mSelectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 473
    return-void
.end method

.method public removeTouchListener(Lcom/sonymobile/home/desktop/DesktopViewTouchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/desktop/DesktopViewTouchListener;

    .prologue
    .line 691
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 692
    return-void
.end method

.method public runAddPageAnimation(ILcom/sonymobile/flix/util/Animation$Listener;)V
    .locals 20
    .param p1, "pageIndex"    # I
    .param p2, "listener"    # Lcom/sonymobile/flix/util/Animation$Listener;

    .prologue
    .line 1361
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/desktop/DesktopView;->getLeftmostPage()I

    move-result v2

    sub-int v13, p1, v2

    .line 1362
    .local v13, "childIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2, v13}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v12

    check-cast v12, Lcom/sonymobile/home/ui/pageview/PageView;

    .line 1365
    .local v12, "expandPageView":Lcom/sonymobile/home/ui/pageview/PageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v5

    .line 1366
    .local v5, "pageParentWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v6

    .line 1367
    .local v6, "pageParentHeight":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopView;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v2}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopView;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v3}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v3

    mul-int v18, v2, v3

    .line 1368
    .local v18, "pageWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopView;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v2}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopView;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v3}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v3

    mul-int v17, v2, v3

    .line 1369
    .local v17, "pageHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/desktop/DesktopView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v3

    move/from16 v0, v18

    int-to-float v7, v0

    move/from16 v0, v17

    int-to-float v8, v0

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/sonymobile/home/desktop/DesktopView;->createDesktopPageView(Lcom/sonymobile/flix/components/Scene;IFFFF)Lcom/sonymobile/home/desktop/DesktopPageView;

    move-result-object v15

    .line 1371
    .local v15, "addedPageView":Lcom/sonymobile/home/ui/pageview/PageView;
    const v2, 0x7f0f0037

    invoke-virtual {v15, v2}, Lcom/sonymobile/home/ui/pageview/PageView;->findById(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v19

    check-cast v19, Lcom/sonymobile/home/desktop/SelectHomePageView;

    .line 1373
    .local v19, "selectHomePageView":Lcom/sonymobile/home/desktop/SelectHomePageView;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/desktop/SelectHomePageView;->setVisible(Z)V

    .line 1374
    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/home/desktop/SelectHomePageView;->getButton()Lcom/sonymobile/flix/components/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Button;->setTouchEnabled(Z)V

    .line 1375
    const v2, 0x7f0f001a

    invoke-virtual {v15, v2}, Lcom/sonymobile/home/ui/pageview/PageView;->findById(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v16

    check-cast v16, Lcom/sonymobile/home/desktop/DeletePageButton;

    .line 1377
    .local v16, "deletePageButton":Lcom/sonymobile/home/desktop/DeletePageButton;
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/home/desktop/DeletePageButton;->getButton()Lcom/sonymobile/flix/components/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Button;->setTouchEnabled(Z)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2, v15}, Lcom/sonymobile/flix/components/Typed$Group;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 1383
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/desktop/DesktopView;->getPageCount()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopView;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    invoke-interface {v3}, Lcom/sonymobile/home/ui/pageview/PageViewAdapter;->getMaximumNumberOfPages()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 1385
    new-instance v8, Lcom/sonymobile/home/desktop/DesktopView$5;

    const-wide/16 v10, 0x12c

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/sonymobile/home/desktop/DesktopView$5;-><init>(Lcom/sonymobile/home/desktop/DesktopView;JLcom/sonymobile/home/ui/pageview/PageView;I)V

    .line 1402
    .local v8, "expandPageAnimation":Lcom/sonymobile/flix/util/Animation;
    :goto_0
    sget-object v2, Lcom/sonymobile/home/desktop/DesktopView;->MOVE_ITEM_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v2}, Lcom/sonymobile/flix/util/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/util/Animation;

    .line 1403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2, v8}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 1406
    new-instance v14, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v15}, Lcom/sonymobile/home/ui/pageview/PageView;->getContent()Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    const-wide/16 v10, 0x12c

    invoke-direct {v14, v2, v10, v11}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;J)V

    .line 1408
    .local v14, "addPageAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    const/high16 v2, -0x3bb80000    # -800.0f

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setZ(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1409
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v14, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1410
    sget-object v2, Lcom/sonymobile/home/desktop/DesktopView;->MOVE_ITEM_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1411
    new-instance v2, Lcom/sonymobile/home/desktop/DesktopView$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/sonymobile/home/desktop/DesktopView$7;-><init>(Lcom/sonymobile/home/desktop/DesktopView;Lcom/sonymobile/home/ui/pageview/PageView;)V

    invoke-virtual {v14, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 1422
    if-eqz p2, :cond_0

    .line 1423
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 1425
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2, v14}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 1426
    return-void

    .line 1394
    .end local v8    # "expandPageAnimation":Lcom/sonymobile/flix/util/Animation;
    .end local v14    # "addPageAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    :cond_1
    new-instance v8, Lcom/sonymobile/home/desktop/DesktopView$6;

    const-wide/16 v2, 0x12c

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2, v3, v12}, Lcom/sonymobile/home/desktop/DesktopView$6;-><init>(Lcom/sonymobile/home/desktop/DesktopView;JLcom/sonymobile/home/ui/pageview/PageView;)V

    .restart local v8    # "expandPageAnimation":Lcom/sonymobile/flix/util/Animation;
    goto :goto_0
.end method

.method public runDeletePageAnimation(ILcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;Z)V
    .locals 3
    .param p1, "pageIndex"    # I
    .param p2, "listener"    # Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;
    .param p3, "addExpandBoundsPages"    # Z

    .prologue
    .line 1438
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/DesktopView;->findPage(I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v1

    .line 1439
    .local v1, "pageViewToDelete":Lcom/sonymobile/home/ui/pageview/PageView;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPageViewToDelete:Lcom/sonymobile/home/ui/pageview/PageView;

    if-eqz v2, :cond_1

    .line 1475
    :cond_0
    :goto_0
    return-void

    .line 1445
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->disableTouch()V

    .line 1447
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/desktop/DesktopView;->enableItemAnimations(Z)V

    .line 1449
    iput-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPageViewToDelete:Lcom/sonymobile/home/ui/pageview/PageView;

    .line 1451
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPageViewToDelete:Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;-><init>(Lcom/sonymobile/home/desktop/DesktopView;Lcom/sonymobile/home/ui/pageview/PageView;)V

    .line 1452
    .local v0, "deletePageAnimation":Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;
    new-instance v2, Lcom/sonymobile/home/desktop/DesktopView$8;

    invoke-direct {v2, p0, p2, p3}, Lcom/sonymobile/home/desktop/DesktopView$8;-><init>(Lcom/sonymobile/home/desktop/DesktopView;Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;Z)V

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 1474
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    goto :goto_0
.end method

.method public setBackgroundAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1967
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mAnimateBackgroundAlphaWhenZooming:Z

    .line 1968
    iput p1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mBackgroundAlpha:F

    .line 1969
    return-void
.end method

.method public setDeletePageListener(Lcom/sonymobile/home/desktop/DeletePageListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/home/desktop/DeletePageListener;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mDeletePageListener:Lcom/sonymobile/home/desktop/DeletePageListener;

    .line 674
    return-void
.end method

.method public setDesiredLandscapeZoomLevel(Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;)V
    .locals 0
    .param p1, "zoomLevel"    # Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    .prologue
    .line 1669
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLandscapeZoomLevel:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    .line 1670
    return-void
.end method

.method public setDesiredPortraitZoomLevel(Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;)V
    .locals 0
    .param p1, "zoomLevel"    # Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    .prologue
    .line 1660
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPortraitZoomLevel:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    .line 1661
    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0
    .param p1, "dragEnabled"    # Z

    .prologue
    .line 618
    iput-boolean p1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mDragEnabled:Z

    .line 619
    return-void
.end method

.method public setHomePageIndex(I)V
    .locals 4
    .param p1, "pageIndex"    # I

    .prologue
    .line 719
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLeftmostAdapterPage:I

    .local v0, "page":I
    :goto_0
    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopView;->mRightmostAdapterPage:I

    if-gt v0, v3, :cond_2

    .line 720
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopView;->findPage(I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v1

    .line 722
    .local v1, "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    if-eqz v1, :cond_0

    .line 723
    const v3, 0x7f0f0037

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/ui/pageview/PageView;->findById(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    .line 724
    .local v2, "selectHomePageView":Lcom/sonymobile/flix/components/Component;
    instance-of v3, v2, Lcom/sonymobile/home/desktop/SelectHomePageView;

    if-eqz v3, :cond_0

    .line 725
    check-cast v2, Lcom/sonymobile/home/desktop/SelectHomePageView;

    .end local v2    # "selectHomePageView":Lcom/sonymobile/flix/components/Component;
    if-ne v0, p1, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/sonymobile/home/desktop/SelectHomePageView;->selectAsHomePage(Z)V

    .line 719
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 725
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 729
    .end local v1    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_2
    return-void
.end method

.method public setItemViewsTouchable(Z)V
    .locals 5
    .param p1, "touchable"    # Z

    .prologue
    .line 883
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Typed$Group;->getTypedIterator()Lcom/sonymobile/flix/components/Component$ComponentIterator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Component$ComponentIterator;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/ui/pageview/PageView;

    .line 884
    .local v3, "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    invoke-virtual {v3}, Lcom/sonymobile/home/ui/pageview/PageView;->getAllItemViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 885
    .local v2, "pageItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-virtual {v2, p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setTouchable(Z)V

    goto :goto_0

    .line 888
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pageItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    .end local v3    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_1
    return-void
.end method

.method public setPageIndicatorView(Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;)V
    .locals 0
    .param p1, "pageIndicatorView"    # Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    .line 512
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/DesktopView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 513
    return-void
.end method

.method public setPageItemViewListener(JLcom/sonymobile/home/desktop/DesktopView$DesktopItemViewChangeListener;)V
    .locals 1
    .param p1, "itemId"    # J
    .param p3, "listener"    # Lcom/sonymobile/home/desktop/DesktopView$DesktopItemViewChangeListener;

    .prologue
    .line 1816
    iput-wide p1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mItemViewChangeListenId:J

    .line 1817
    iput-object p3, p0, Lcom/sonymobile/home/desktop/DesktopView;->mItemViewChangeListener:Lcom/sonymobile/home/desktop/DesktopView$DesktopItemViewChangeListener;

    .line 1818
    return-void
.end method

.method public setResizableFrameListener(Lcom/sonymobile/home/desktop/ResizableFrameListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/desktop/ResizableFrameListener;

    .prologue
    .line 700
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mResizableFrame:Lcom/sonymobile/home/desktop/ResizableFrame;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/desktop/ResizableFrame;->setListener(Lcom/sonymobile/home/desktop/ResizableFrameListener;)V

    .line 701
    return-void
.end method

.method public setSelectHomePageListener(Lcom/sonymobile/home/desktop/SelectHomePageListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/home/desktop/SelectHomePageListener;

    .prologue
    .line 664
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mSelectHomePageListener:Lcom/sonymobile/home/desktop/SelectHomePageListener;

    .line 665
    return-void
.end method

.method public setStageView(Lcom/sonymobile/home/stage/StageView;)V
    .locals 0
    .param p1, "stageView"    # Lcom/sonymobile/home/stage/StageView;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mStageView:Lcom/sonymobile/home/stage/StageView;

    .line 517
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0
    .param p1, "touchEnabled"    # Z

    .prologue
    .line 614
    iput-boolean p1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mTouchEnabled:Z

    .line 615
    return-void
.end method

.method public setZoomLevel(Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;Z)V
    .locals 1
    .param p1, "newZoomLevel"    # Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;
    .param p2, "animate"    # Z

    .prologue
    .line 1560
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/home/desktop/DesktopView;->setZoomLevel(Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;ZLcom/sonymobile/flix/util/DynamicsTask$Listener;)V

    .line 1561
    return-void
.end method

.method public setZoomLevel(Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;ZLcom/sonymobile/flix/util/DynamicsTask$Listener;)V
    .locals 10
    .param p1, "newZoomLevel"    # Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;
    .param p2, "animate"    # Z
    .param p3, "listener"    # Lcom/sonymobile/flix/util/DynamicsTask$Listener;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1573
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mCurrentZoomLevel:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    .line 1575
    .local v1, "oldZoomLevel":Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;
    if-ne v1, p1, :cond_0

    .line 1652
    :goto_0
    return-void

    .line 1579
    :cond_0
    sget-object v4, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->NONE:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    if-eq p1, v4, :cond_1

    sget-object v4, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->NONE:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    if-ne v1, v4, :cond_2

    :cond_1
    move v4, v6

    :goto_1
    iput-boolean v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mAnimateBackgroundAlphaWhenZooming:Z

    .line 1585
    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->ordinal()I

    move-result v4

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->ordinal()I

    move-result v7

    if-le v4, v7, :cond_3

    move v3, v6

    .line 1589
    .local v3, "zoomingOut":Z
    :goto_2
    if-eqz v3, :cond_4

    .line 1590
    move-object v0, v1

    .line 1591
    .local v0, "lowerBoundZoomLevel":Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;
    move-object v2, p1

    .line 1597
    .local v2, "upperBoundZoomLevel":Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;
    :goto_3
    sget-object v4, Lcom/sonymobile/home/desktop/DesktopView$9;->$SwitchMap$com$sonymobile$home$desktop$DesktopView$DesktopZoomLevel:[I

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    .line 1612
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .end local v0    # "lowerBoundZoomLevel":Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;
    .end local v2    # "upperBoundZoomLevel":Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;
    .end local v3    # "zoomingOut":Z
    :cond_2
    move v4, v5

    .line 1579
    goto :goto_1

    :cond_3
    move v3, v5

    .line 1585
    goto :goto_2

    .line 1593
    .restart local v3    # "zoomingOut":Z
    :cond_4
    move-object v0, p1

    .line 1594
    .restart local v0    # "lowerBoundZoomLevel":Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;
    move-object v2, v1

    .restart local v2    # "upperBoundZoomLevel":Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;
    goto :goto_3

    .line 1599
    :pswitch_0
    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mNoZoomGridHorizontalPosition:F

    iput v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomAnimHorizontalPositionLowerBound:F

    .line 1600
    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mNoZoomGridVerticalPosition:F

    iput v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomAnimVerticalPositionLowerBound:F

    .line 1601
    iput v8, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomAnimDepthLowerBound:F

    .line 1615
    :goto_4
    sget-object v4, Lcom/sonymobile/home/desktop/DesktopView$9;->$SwitchMap$com$sonymobile$home$desktop$DesktopView$DesktopZoomLevel:[I

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_1

    .line 1630
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 1605
    :pswitch_1
    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLowZoomHorizontalPosition:F

    iput v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomAnimHorizontalPositionLowerBound:F

    .line 1606
    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLowZoomVerticalPosition:F

    iput v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomAnimVerticalPositionLowerBound:F

    .line 1607
    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLowZoomDepth:F

    iput v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomAnimDepthLowerBound:F

    goto :goto_4

    .line 1617
    :pswitch_2
    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLowZoomHorizontalPosition:F

    iput v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomAnimHorizontalPositionUpperBound:F

    .line 1618
    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLowZoomVerticalPosition:F

    iput v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomAnimVerticalPositionUpperBound:F

    .line 1619
    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mLowZoomDepth:F

    iput v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomAnimDepthUpperBound:F

    .line 1634
    :goto_5
    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->ordinal()I

    move-result v4

    sget-object v7, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->NONE:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    invoke-virtual {v7}, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->ordinal()I

    move-result v7

    if-gt v4, v7, :cond_6

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->ordinal()I

    move-result v4

    sget-object v7, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->NONE:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    invoke-virtual {v7}, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->ordinal()I

    move-result v7

    if-le v4, v7, :cond_6

    :goto_6
    iput-boolean v6, p0, Lcom/sonymobile/home/desktop/DesktopView;->mShouldZoomAnimateBackplateAlpha:Z

    .line 1638
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomTask:Lcom/sonymobile/flix/util/DynamicsTask;

    invoke-virtual {v4}, Lcom/sonymobile/flix/util/DynamicsTask;->clearListeners()V

    .line 1639
    if-eqz p3, :cond_5

    .line 1640
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomTask:Lcom/sonymobile/flix/util/DynamicsTask;

    invoke-virtual {v4, p3}, Lcom/sonymobile/flix/util/DynamicsTask;->addListener(Lcom/sonymobile/flix/util/DynamicsTask$Listener;)V

    .line 1643
    :cond_5
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mCurrentZoomLevel:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    .line 1645
    if-eqz v3, :cond_7

    .line 1646
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomTask:Lcom/sonymobile/flix/util/DynamicsTask;

    invoke-virtual {v4}, Lcom/sonymobile/flix/util/DynamicsTask;->getDynamics()Lcom/sonymobile/flix/util/Dynamics;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sonymobile/flix/util/Dynamics;->setValue(F)V

    .line 1647
    invoke-virtual {p0, v9, p2}, Lcom/sonymobile/home/desktop/DesktopView;->zoomTo(FZ)V

    goto/16 :goto_0

    .line 1623
    :pswitch_3
    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mHighZoomHorizontalPosition:F

    iput v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomAnimHorizontalPositionUpperBound:F

    .line 1624
    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mHighZoomVerticalPosition:F

    iput v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomAnimVerticalPositionUpperBound:F

    .line 1625
    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mHighZoomDepth:F

    iput v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomAnimDepthUpperBound:F

    goto :goto_5

    :cond_6
    move v6, v5

    .line 1634
    goto :goto_6

    .line 1649
    :cond_7
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopView;->mZoomTask:Lcom/sonymobile/flix/util/DynamicsTask;

    invoke-virtual {v4}, Lcom/sonymobile/flix/util/DynamicsTask;->getDynamics()Lcom/sonymobile/flix/util/Dynamics;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/sonymobile/flix/util/Dynamics;->setValue(F)V

    .line 1650
    invoke-virtual {p0, v8, p2}, Lcom/sonymobile/home/desktop/DesktopView;->zoomTo(FZ)V

    goto/16 :goto_0

    .line 1597
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1615
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public showProgressBar()V
    .locals 7

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 381
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mProgressBarView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    if-nez v0, :cond_0

    .line 382
    new-instance v6, Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 383
    .local v6, "progressView":Landroid/widget/ProgressBar;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 384
    new-instance v0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v0, v2, v6}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mProgressBarView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    .line 385
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPageViewTouchArea:Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mProgressBarView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/home/desktop/DesktopView;->addChildAfter(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)Z

    .line 386
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mProgressBarView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    move v2, v1

    move-object v3, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 389
    .end local v6    # "progressView":Landroid/widget/ProgressBar;
    :cond_0
    return-void
.end method

.method public showResizableFrame(Lcom/sonymobile/home/ui/pageview/PageItemView;I)V
    .locals 3
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "page"    # I

    .prologue
    .line 1022
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->isInteracting()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 1023
    invoke-virtual {p0, p2}, Lcom/sonymobile/home/desktop/DesktopView;->findPage(I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v0

    .line 1024
    .local v0, "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    if-eqz v0, :cond_0

    .line 1025
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mResizableFrame:Lcom/sonymobile/home/desktop/ResizableFrame;

    invoke-virtual {v2, p1, v0}, Lcom/sonymobile/home/desktop/ResizableFrame;->attachTo(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/ui/pageview/PageView;)Z

    move-result v1

    .line 1026
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 1027
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 1031
    .end local v0    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    .end local v1    # "success":Z
    :cond_0
    return-void
.end method

.method showScrollBackplate()V
    .locals 7

    .prologue
    .line 1915
    iget-boolean v5, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollBackplateVisible:Z

    if-nez v5, :cond_1

    .line 1916
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sonymobile/home/desktop/DesktopView;->mScrollBackplateVisible:Z

    .line 1918
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v5}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v3

    .line 1919
    .local v3, "nbrPages":I
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v0

    .line 1921
    .local v0, "currentPage":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1922
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v5, v2}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/ui/pageview/PageView;

    .line 1923
    .local v4, "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    instance-of v5, v4, Lcom/sonymobile/home/desktop/DesktopPageView;

    if-eqz v5, :cond_0

    move-object v1, v4

    .line 1924
    check-cast v1, Lcom/sonymobile/home/desktop/DesktopPageView;

    .line 1925
    .local v1, "desktopPageView":Lcom/sonymobile/home/desktop/DesktopPageView;
    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopPageView;->getPageIndex()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    .line 1926
    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopPageView;->showScrollBackplate()V

    .line 1921
    .end local v1    # "desktopPageView":Lcom/sonymobile/home/desktop/DesktopPageView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1931
    .end local v0    # "currentPage":I
    .end local v2    # "i":I
    .end local v3    # "nbrPages":I
    .end local v4    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_1
    return-void
.end method

.method public updateConfiguration(Lcom/sonymobile/grid/Grid;)V
    .locals 1
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    .line 440
    invoke-super {p0, p1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->updateConfiguration(Lcom/sonymobile/grid/Grid;)V

    .line 441
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopView;->updateResourceValues()V

    .line 442
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView;->mResizableFrame:Lcom/sonymobile/home/desktop/ResizableFrame;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/desktop/ResizableFrame;->updateConfiguration(Lcom/sonymobile/grid/Grid;)V

    .line 443
    return-void
.end method

.method public updateEditButtonsTransparency(Lcom/sonymobile/home/ui/pageview/PageView;F)V
    .locals 1
    .param p1, "page"    # Lcom/sonymobile/home/ui/pageview/PageView;
    .param p2, "alpha"    # F

    .prologue
    .line 961
    instance-of v0, p1, Lcom/sonymobile/home/desktop/DesktopPageView;

    if-eqz v0, :cond_0

    .line 962
    check-cast p1, Lcom/sonymobile/home/desktop/DesktopPageView;

    .end local p1    # "page":Lcom/sonymobile/home/ui/pageview/PageView;
    invoke-virtual {p1, p2}, Lcom/sonymobile/home/desktop/DesktopPageView;->setButtonsAlpha(F)V

    .line 964
    :cond_0
    return-void
.end method

.method public updateEditButtonsVisibility()V
    .locals 3

    .prologue
    .line 946
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Typed$Group;->getTypedIterator()Lcom/sonymobile/flix/components/Component$ComponentIterator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Component$ComponentIterator;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/ui/pageview/PageView;

    .line 947
    .local v1, "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    instance-of v2, v1, Lcom/sonymobile/home/desktop/DesktopPageView;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 948
    check-cast v2, Lcom/sonymobile/home/desktop/DesktopPageView;

    invoke-direct {p0, v2}, Lcom/sonymobile/home/desktop/DesktopView;->updateHomeButtonVisibility(Lcom/sonymobile/home/desktop/DesktopPageView;)V

    .line 949
    check-cast v1, Lcom/sonymobile/home/desktop/DesktopPageView;

    .end local v1    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    invoke-direct {p0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->updateDeleteButtonVisibility(Lcom/sonymobile/home/desktop/DesktopPageView;)V

    goto :goto_0

    .line 952
    :cond_1
    return-void
.end method

.method protected updateFromTouch(Z)V
    .locals 1
    .param p1, "forced"    # Z

    .prologue
    .line 1077
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/home/desktop/DesktopView;->updatePagePosition(Z)V

    .line 1078
    return-void
.end method

.method protected updatePage(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageView;IFFFF)Lcom/sonymobile/home/ui/pageview/PageView;
    .locals 3
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "pageView"    # Lcom/sonymobile/home/ui/pageview/PageView;
    .param p3, "index"    # I
    .param p4, "pageParentWidth"    # F
    .param p5, "pageParentHeight"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F

    .prologue
    .line 745
    instance-of v1, p2, Lcom/sonymobile/home/desktop/DesktopPageView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 746
    check-cast v0, Lcom/sonymobile/home/desktop/DesktopPageView;

    .line 748
    .local v0, "desktopPageView":Lcom/sonymobile/home/desktop/DesktopPageView;
    invoke-virtual {p2, p6, p7}, Lcom/sonymobile/home/ui/pageview/PageView;->setSize(FF)V

    .line 749
    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mBackplateHeightScaleFactor:F

    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopView;->mBackplateTopOffset:I

    int-to-float v2, v2

    invoke-virtual {v0, p6, p7, v1, v2}, Lcom/sonymobile/home/desktop/DesktopPageView;->updatePageSize(FFFF)V

    .line 750
    iget-boolean v1, p0, Lcom/sonymobile/home/desktop/DesktopView;->mEnableEditButtons:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPageView;->setBackplateAlpha(F)V

    .line 752
    .end local v0    # "desktopPageView":Lcom/sonymobile/home/desktop/DesktopPageView;
    :cond_0
    return-object p2

    .line 750
    .restart local v0    # "desktopPageView":Lcom/sonymobile/home/desktop/DesktopPageView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
