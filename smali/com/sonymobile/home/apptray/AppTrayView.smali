.class public Lcom/sonymobile/home/apptray/AppTrayView;
.super Lcom/sonymobile/home/ui/pageview/PageViewGroup;
.source "AppTrayView.java"

# interfaces
.implements Lcom/sonymobile/flix/components/Scene$Touchable$Dispatcher;
.implements Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusDelegate;
.implements Lcom/sonymobile/flix/util/GestureDetector$GestureEventListener;
.implements Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector$DownSwipeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/apptray/AppTrayView$AppTrayViewTouchListener;,
        Lcom/sonymobile/home/apptray/AppTrayView$ScrollListener;
    }
.end annotation


# instance fields
.field private mAnimateBackground:Z

.field private mBackgroundAlpha:F

.field private final mBackgroundColor:I

.field private final mBackgroundDimmingEnabled:Z

.field private final mDownSwipeGestureDetector:Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;

.field private mDragEnabled:Z

.field private mDragNDropZoomHorizontalPosition:F

.field private mDragNDropZoomPosition:F

.field private mDragNDropZoomVerticalPosition:F

.field private mIsZoomedOutForced:Z

.field private mNormalGridHorizontalPosition:F

.field private mNormalGridVerticalPosition:F

.field private mScreenFractionPerPageModifier:F

.field private mTouchEnabled:Z

.field private final mTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/apptray/AppTrayView$AppTrayViewTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUseEditModeBackplate:Z

.field private mZoomedOutMaxPosition:F

.field private mZoomedScreenFractionPerPageModifier:F


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 5
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p3, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    const/4 v3, 0x1

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mTouchListeners:Ljava/util/ArrayList;

    .line 99
    const v2, 0x7f0f0009

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/apptray/AppTrayView;->setId(I)V

    .line 100
    const-string v2, "AppTrayView"

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/apptray/AppTrayView;->setName(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->prepareForDrawing()V

    .line 103
    iput-boolean v3, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mTouchEnabled:Z

    .line 104
    iput-boolean v3, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mDragEnabled:Z

    .line 106
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 108
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0e0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mBackgroundColor:I

    .line 109
    const v2, 0x7f0a0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mBackgroundDimmingEnabled:Z

    .line 112
    new-instance v2, Lcom/sonymobile/flix/util/GestureDetector;

    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/flix/util/GestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    .line 113
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/util/GestureDetector;->setVerticalDraggingEnabled(Z)V

    .line 115
    new-instance v2, Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Scene;->getScheduler()Lcom/sonymobile/flix/util/Scheduler;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/flix/util/ListTouchHelper;-><init>(Landroid/content/Context;Lcom/sonymobile/flix/util/Scheduler;)V

    iput-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    .line 116
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    new-instance v3, Lcom/sonymobile/flix/util/ListTouchHelper$PeriodicSnappingStrategy;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4}, Lcom/sonymobile/flix/util/ListTouchHelper$PeriodicSnappingStrategy;-><init>(F)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->setSnappingStrategy(Lcom/sonymobile/flix/util/ListTouchHelper$SnappingStrategy;)V

    .line 118
    new-instance v2, Lcom/sonymobile/home/apptray/AppTrayView$ScrollListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/home/apptray/AppTrayView$ScrollListener;-><init>(Lcom/sonymobile/home/apptray/AppTrayView;Lcom/sonymobile/home/apptray/AppTrayView$1;)V

    iput-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollListener:Lcom/sonymobile/flix/util/ListTouchHelper$Listener;

    .line 119
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollListener:Lcom/sonymobile/flix/util/ListTouchHelper$Listener;

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->addListener(Lcom/sonymobile/flix/util/ListTouchHelper$Listener;)V

    .line 120
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/util/GestureDetector;->addGestureListener(Lcom/sonymobile/flix/util/GestureDetector$GestureListener;)V

    .line 121
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    invoke-virtual {v2, p0}, Lcom/sonymobile/flix/util/GestureDetector;->setGestureEventListener(Lcom/sonymobile/flix/util/GestureDetector$GestureEventListener;)V

    .line 123
    new-instance v2, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;

    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mDownSwipeGestureDetector:Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;

    .line 124
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mDownSwipeGestureDetector:Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;

    invoke-virtual {v2, p0}, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->setListener(Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector$DownSwipeListener;)V

    .line 125
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mDownSwipeGestureDetector:Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;

    const v3, 0x7f0b00f0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getTopOffset()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->setTopMargin(I)V

    .line 128
    invoke-direct {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayView;->createBackgroundTouchArea(Lcom/sonymobile/flix/components/Scene;)Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;

    move-result-object v0

    .line 132
    .local v0, "pageViewTouchArea":Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayView;->addChildFirst(Lcom/sonymobile/flix/components/Component;)V

    .line 134
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->updateResourceValues()V

    .line 135
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/apptray/AppTrayView;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/apptray/AppTrayView;->notifyLongPress(FF)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/apptray/AppTrayView;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/apptray/AppTrayView;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/apptray/AppTrayView;->notifyClick(FF)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/home/apptray/AppTrayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayView;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->notifyInteractionStart()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/home/apptray/AppTrayView;)Lcom/sonymobile/flix/components/Component;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/apptray/AppTrayView;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/home/apptray/AppTrayView;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayView;

    .prologue
    .line 44
    iget v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollPosition:F

    return v0
.end method

.method static synthetic access$700(Lcom/sonymobile/home/apptray/AppTrayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayView;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->updateFromTouch()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/home/apptray/AppTrayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayView;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->notifyInteractionEnd()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonymobile/home/apptray/AppTrayView;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method private animatePages()V
    .locals 8

    .prologue
    .line 474
    iget-object v6, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/Typed$Group;->getNbrChildren()I

    move-result v2

    .line 475
    .local v2, "nbrPages":I
    if-eqz v2, :cond_2

    .line 476
    iget v6, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mZoomPosition:F

    const v7, -0x42b33333    # -0.05f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    const/4 v5, 0x1

    .line 477
    .local v5, "zoomed":Z
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->getWidth()F

    move-result v4

    .line 479
    .local v4, "scrollableWidthInPixels":F
    if-eqz v5, :cond_1

    .line 480
    iget v6, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mZoomedScreenFractionPerPageModifier:F

    mul-float/2addr v4, v6

    .line 485
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 486
    iget-object v6, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v6, v1}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/ui/pageview/PageView;

    .line 487
    .local v3, "page":Lcom/sonymobile/home/ui/pageview/PageView;
    invoke-virtual {v3}, Lcom/sonymobile/home/ui/pageview/PageView;->getPagePosition()F

    move-result v6

    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->getScrollPosition()F

    move-result v7

    sub-float v0, v6, v7

    .line 500
    .local v0, "distanceInFractionOfPages":F
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/sonymobile/home/ui/pageview/PageView;->setY(F)V

    .line 501
    mul-float v6, v0, v4

    invoke-virtual {v3, v6}, Lcom/sonymobile/home/ui/pageview/PageView;->setX(F)V

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 476
    .end local v0    # "distanceInFractionOfPages":F
    .end local v1    # "i":I
    .end local v3    # "page":Lcom/sonymobile/home/ui/pageview/PageView;
    .end local v4    # "scrollableWidthInPixels":F
    .end local v5    # "zoomed":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 482
    .restart local v4    # "scrollableWidthInPixels":F
    .restart local v5    # "zoomed":Z
    :cond_1
    iget v6, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScreenFractionPerPageModifier:F

    mul-float/2addr v4, v6

    goto :goto_1

    .line 504
    .end local v4    # "scrollableWidthInPixels":F
    .end local v5    # "zoomed":Z
    :cond_2
    return-void
.end method

.method private createBackgroundTouchArea(Lcom/sonymobile/flix/components/Scene;)Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    const/4 v1, 0x0

    .line 147
    new-instance v0, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;

    invoke-direct {v0, p1, v1, v1}, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;-><init>(Lcom/sonymobile/flix/components/Scene;FF)V

    .line 148
    .local v0, "touchArea":Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;
    new-instance v1, Lcom/sonymobile/home/apptray/AppTrayView$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/apptray/AppTrayView$1;-><init>(Lcom/sonymobile/home/apptray/AppTrayView;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->setTouchListener(Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;)V

    .line 165
    const-string v1, "AppTrayView touch area"

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->setName(Ljava/lang/String;)V

    .line 166
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageViewTouchArea;->setTrackTouchFromOutside(Z)V

    .line 168
    return-object v0
.end method

.method private notifyClick(FF)V
    .locals 3
    .param p1, "rawX"    # F
    .param p2, "rawY"    # F

    .prologue
    .line 187
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/apptray/AppTrayView$AppTrayViewTouchListener;

    .line 188
    .local v1, "listener":Lcom/sonymobile/home/apptray/AppTrayView$AppTrayViewTouchListener;
    invoke-interface {v1, p1, p2}, Lcom/sonymobile/home/apptray/AppTrayView$AppTrayViewTouchListener;->onClick(FF)V

    goto :goto_0

    .line 190
    .end local v1    # "listener":Lcom/sonymobile/home/apptray/AppTrayView$AppTrayViewTouchListener;
    :cond_0
    return-void
.end method

.method private notifyLongPress(FF)V
    .locals 3
    .param p1, "rawX"    # F
    .param p2, "rawY"    # F

    .prologue
    .line 199
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/apptray/AppTrayView$AppTrayViewTouchListener;

    .line 200
    .local v1, "listener":Lcom/sonymobile/home/apptray/AppTrayView$AppTrayViewTouchListener;
    invoke-interface {v1, p1, p2}, Lcom/sonymobile/home/apptray/AppTrayView$AppTrayViewTouchListener;->onLongPress(FF)V

    goto :goto_0

    .line 202
    .end local v1    # "listener":Lcom/sonymobile/home/apptray/AppTrayView$AppTrayViewTouchListener;
    :cond_0
    return-void
.end method

.method private updateResourceValues()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 410
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v0

    .line 411
    .local v0, "resourceManager":Lcom/sonymobile/home/resources/ResourceManager;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 413
    .local v1, "value":Landroid/util/TypedValue;
    const v2, 0x7f070006

    invoke-virtual {v0, v2, v1, v3}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 414
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mZoomedOutMaxPosition:F

    .line 416
    const v2, 0x7f070004

    invoke-virtual {v0, v2, v1, v3}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 417
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScreenFractionPerPageModifier:F

    .line 419
    const v2, 0x7f070007

    invoke-virtual {v0, v2, v1, v3}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 421
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mZoomedScreenFractionPerPageModifier:F

    .line 422
    return-void
.end method


# virtual methods
.method public addTouchListener(Lcom/sonymobile/home/apptray/AppTrayView$AppTrayViewTouchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/apptray/AppTrayView$AppTrayViewTouchListener;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method protected adjustScrollBounds()V
    .locals 4

    .prologue
    .line 520
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v3}, Lcom/sonymobile/flix/util/ListTouchHelper;->getBoundsMin()F

    move-result v2

    .line 521
    .local v2, "prevLeftBound":F
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->getRightmostPage()I

    move-result v3

    int-to-float v0, v3

    .line 522
    .local v0, "newRightBound":F
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->getScrollPosition()F

    move-result v1

    .line 523
    .local v1, "position":F
    cmpl-float v3, v1, v0

    if-lez v3, :cond_0

    .line 525
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v3, v2, v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->setBounds(FF)V

    .line 526
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v3, v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->moveTo(F)V

    .line 531
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v3, v2, v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->setBounds(FF)V

    goto :goto_0
.end method

.method protected createPage(Lcom/sonymobile/flix/components/Scene;IFFFF)Lcom/sonymobile/home/ui/pageview/PageView;
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "index"    # I
    .param p3, "pageParentWidth"    # F
    .param p4, "pageParentHeight"    # F
    .param p5, "width"    # F
    .param p6, "height"    # F

    .prologue
    .line 278
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayPageView;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sonymobile/home/apptray/AppTrayPageView;-><init>(Lcom/sonymobile/flix/components/Scene;IFF)V

    .line 280
    .local v0, "pageView":Lcom/sonymobile/home/apptray/AppTrayPageView;
    invoke-virtual {v0, p5, p6}, Lcom/sonymobile/home/apptray/AppTrayPageView;->setSize(FF)V

    .line 281
    iget-boolean v1, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mUseEditModeBackplate:Z

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayPageView;->setEditModeBackplateEnabled(Z)V

    .line 283
    return-object v0
.end method

.method public enableEditModeBackplate(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 292
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Typed$Group;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/flix/components/Component;

    .line 293
    .local v1, "page":Lcom/sonymobile/flix/components/Component;
    instance-of v3, v1, Lcom/sonymobile/home/apptray/AppTrayPageView;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 294
    check-cast v2, Lcom/sonymobile/home/apptray/AppTrayPageView;

    .line 295
    .local v2, "pageView":Lcom/sonymobile/home/apptray/AppTrayPageView;
    invoke-virtual {v2, p1}, Lcom/sonymobile/home/apptray/AppTrayPageView;->setEditModeBackplateEnabled(Z)V

    goto :goto_0

    .line 298
    .end local v1    # "page":Lcom/sonymobile/flix/components/Component;
    .end local v2    # "pageView":Lcom/sonymobile/home/apptray/AppTrayPageView;
    :cond_1
    iput-boolean p1, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mUseEditModeBackplate:Z

    .line 299
    return-void
.end method

.method public endTransferZoom(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mIsZoomedOutForced:Z

    if-nez v0, :cond_0

    .line 381
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/home/apptray/AppTrayView;->zoomTo(FZ)V

    .line 383
    :cond_0
    return-void
.end method

.method public forceZoomOut(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mIsZoomedOutForced:Z

    .line 393
    if-eqz p1, :cond_0

    .line 394
    iget v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mZoomedOutMaxPosition:F

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayView;->zoomTo(F)V

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->zoomTo(FZ)V

    goto :goto_0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->getRightmostPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public gotoDefaultPage()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mAdapter:Lcom/sonymobile/home/ui/pageview/PageViewAdapter;

    invoke-interface {v1}, Lcom/sonymobile/home/ui/pageview/PageViewAdapter;->getDefaultPage()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->moveTo(F)V

    .line 273
    return-void
.end method

.method public onAddedTo(Lcom/sonymobile/flix/components/Component;)V
    .locals 6
    .param p1, "parent"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    const/4 v2, 0x0

    .line 223
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->setSizeToParent()V

    .line 226
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->getWidth()F

    move-result v0

    float-to-int v4, v0

    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->getHeight()F

    move-result v0

    float-to-int v5, v0

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/home/apptray/AppTrayView;->onSceneSizeChanged(Lcom/sonymobile/flix/components/Scene;IIII)V

    .line 227
    return-void
.end method

.method public onBackButtonPressed()Z
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Lcom/sonymobile/flix/components/Scene;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "components"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 540
    return-void
.end method

.method public onDelegateKeyboardFocus(Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;I)Z
    .locals 1
    .param p1, "source"    # Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
    .param p2, "direction"    # I

    .prologue
    .line 508
    invoke-virtual {p1, p0}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->findFirstFocusable(Lcom/sonymobile/flix/components/Component;)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->focus(Lcom/sonymobile/flix/components/Component;I)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/GestureDetector;->removeGestureListener(Lcom/sonymobile/flix/util/GestureDetector$GestureListener;)V

    .line 214
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/GestureDetector;->setGestureEventListener(Lcom/sonymobile/flix/util/GestureDetector$GestureEventListener;)V

    .line 215
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->clearListeners()V

    .line 216
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 217
    invoke-super {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onDestroy()V

    .line 218
    return-void
.end method

.method public onDispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/flix/components/Scene;->dispatchHoverEventToChildren(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mTouchEnabled:Z

    if-eqz v0, :cond_1

    .line 338
    iget-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mDragEnabled:Z

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollGestureDetector:Lcom/sonymobile/flix/util/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/util/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 340
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mDownSwipeGestureDetector:Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonymobile/flix/components/Scene;->dispatchTouchEventToChildren(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 345
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDownSwipe()V
    .locals 3

    .prologue
    .line 206
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/apptray/AppTrayView$AppTrayViewTouchListener;

    .line 207
    .local v1, "listener":Lcom/sonymobile/home/apptray/AppTrayView$AppTrayViewTouchListener;
    invoke-interface {v1}, Lcom/sonymobile/home/apptray/AppTrayView$AppTrayViewTouchListener;->onDownSwipe()V

    goto :goto_0

    .line 209
    .end local v1    # "listener":Lcom/sonymobile/home/apptray/AppTrayView$AppTrayViewTouchListener;
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 363
    iget-boolean v1, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mBackgroundDimmingEnabled:Z

    if-eqz v1, :cond_0

    .line 364
    iget v1, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mBackgroundAlpha:F

    iget v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mBackgroundColor:I

    ushr-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 365
    .local v0, "alpha":I
    shl-int/lit8 v1, v0, 0x18

    iget v2, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mBackgroundColor:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 367
    .end local v0    # "alpha":I
    :cond_0
    invoke-super {p0, p1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 368
    return-void
.end method

.method public onGestureEvent(Lcom/sonymobile/flix/util/GestureDetector;Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;)V
    .locals 1
    .param p1, "gestureDetector"    # Lcom/sonymobile/flix/util/GestureDetector;
    .param p2, "event"    # Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    .prologue
    .line 552
    sget-object v0, Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;->CANCELED:Lcom/sonymobile/flix/util/GestureDetector$GestureEvent;

    if-ne p2, v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->snapToClosestPage()V

    .line 555
    :cond_0
    return-void
.end method

.method public onHomeButtonPressed()V
    .locals 0

    .prologue
    .line 516
    return-void
.end method

.method public onSceneCreated(Lcom/sonymobile/flix/components/Scene;II)V
    .locals 0
    .param p1, "components"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    .line 536
    return-void
.end method

.method public onSceneSizeChanged(Lcom/sonymobile/flix/components/Scene;IIII)V
    .locals 8
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "prevWidth"    # I
    .param p3, "prevHeight"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v6

    .line 233
    .local v6, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->setSizeToParent()V

    .line 235
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->getWidth()F

    move-result v0

    const v1, 0x7f0b000b

    invoke-virtual {v6, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x7f0b0009

    invoke-virtual {v6, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getDimension(I)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->setScrollableContentSize(FF)V

    .line 237
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayView;->setupHorizontalScrollController(Lcom/sonymobile/flix/util/ListTouchHelper;)V

    .line 239
    const v0, 0x7f0b000a

    invoke-virtual {v6, v0}, Lcom/sonymobile/home/resources/ResourceManager;->getDimension(I)F

    move-result v0

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getYoffset()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mNormalGridVerticalPosition:F

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mNormalGridHorizontalPosition:F

    .line 244
    iget v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mNormalGridVerticalPosition:F

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayView;->setGridVerticalPosition(F)V

    .line 246
    const v0, 0x7f0b000c

    invoke-virtual {v6, v0}, Lcom/sonymobile/home/resources/ResourceManager;->getDimension(I)F

    move-result v0

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getYoffset()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mDragNDropZoomVerticalPosition:F

    .line 248
    iget v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mNormalGridHorizontalPosition:F

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mDragNDropZoomHorizontalPosition:F

    .line 250
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 251
    .local v7, "value":Landroid/util/TypedValue;
    const v0, 0x7f070011

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v7, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 252
    invoke-virtual {v7}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mDragNDropZoomPosition:F

    .line 254
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->updateScrollBounds()V

    .line 258
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/ListTouchHelper;->abort()V

    .line 262
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->getCurrent()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->moveTo(F)V

    .line 264
    iget-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mIsZoomedOutForced:Z

    if-eqz v0, :cond_0

    .line 265
    iget v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mZoomedOutMaxPosition:F

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->zoomTo(FZ)V

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScene:Lcom/sonymobile/flix/components/Scene;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v5}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onSceneSizeChanged(Lcom/sonymobile/flix/components/Scene;IIII)V

    .line 269
    return-void
.end method

.method public onZoomUpdated(F)V
    .locals 2
    .param p1, "zoomPosition"    # F

    .prologue
    .line 426
    iget v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mDragNDropZoomPosition:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mZoomPosition:F

    .line 427
    iget v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mNormalGridHorizontalPosition:F

    iget v1, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mDragNDropZoomHorizontalPosition:F

    invoke-static {v0, v1, p1}, Lcom/sonymobile/flix/util/Utils;->linear(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayView;->setGridHorizontalPosition(F)V

    .line 430
    iget v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mNormalGridVerticalPosition:F

    iget v1, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mDragNDropZoomVerticalPosition:F

    invoke-static {v0, v1, p1}, Lcom/sonymobile/flix/util/Utils;->linear(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayView;->setGridVerticalPosition(F)V

    .line 433
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->updateFromTouch()V

    .line 434
    return-void
.end method

.method public setAnimateBackgroundDim(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 633
    iput-boolean p1, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mAnimateBackground:Z

    .line 634
    iget-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mBackgroundDimmingEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 635
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mBackgroundAlpha:F

    .line 637
    :cond_0
    return-void
.end method

.method public setDescendantAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mBackgroundDimmingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mAnimateBackground:Z

    if-eqz v0, :cond_0

    .line 356
    iput p1, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mBackgroundAlpha:F

    .line 358
    :cond_0
    invoke-super {p0, p1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->setDescendantAlpha(F)V

    .line 359
    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 1
    .param p1, "dragEnabled"    # Z

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mDragEnabled:Z

    if-eq p1, v0, :cond_0

    .line 330
    iput-boolean p1, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mDragEnabled:Z

    .line 331
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mDownSwipeGestureDetector:Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->cancelOngoingTrackingIfNeeded()V

    .line 333
    :cond_0
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 1
    .param p1, "touchEnabled"    # Z

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mTouchEnabled:Z

    if-eq p1, v0, :cond_0

    .line 323
    iput-boolean p1, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mTouchEnabled:Z

    .line 324
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mDownSwipeGestureDetector:Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/DownSwipeGestureDetector;->cancelOngoingTrackingIfNeeded()V

    .line 326
    :cond_0
    return-void
.end method

.method public startTransferZoom()V
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mIsZoomedOutForced:Z

    if-nez v0, :cond_0

    .line 375
    iget v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mZoomedOutMaxPosition:F

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayView;->zoomTo(F)V

    .line 377
    :cond_0
    return-void
.end method

.method public updateConfiguration(Lcom/sonymobile/grid/Grid;)V
    .locals 0
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    .line 402
    invoke-super {p0, p1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->updateConfiguration(Lcom/sonymobile/grid/Grid;)V

    .line 403
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->updateResourceValues()V

    .line 404
    return-void
.end method

.method protected updateFromTouch(Z)V
    .locals 14
    .param p1, "forced"    # Z

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->getDepth()F

    move-result v4

    .line 439
    .local v4, "depth":F
    iget v11, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mZoomPosition:F

    mul-float v10, v11, v4

    .line 440
    .local v10, "z":F
    iget-object v11, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    iget v12, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mGridHorizontalPosition:F

    iget v13, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mGridVerticalPosition:F

    invoke-virtual {v11, v12, v13}, Lcom/sonymobile/flix/components/Component;->setPosition(FF)V

    .line 441
    if-nez p1, :cond_0

    iget-object v11, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v11}, Lcom/sonymobile/flix/components/Component;->getZ()F

    move-result v11

    sub-float v11, v10, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const v12, 0x38d1b717    # 1.0E-4f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1

    .line 442
    :cond_0
    invoke-virtual {p0, v10}, Lcom/sonymobile/home/apptray/AppTrayView;->setLocationZ(F)V

    .line 446
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v7

    .line 447
    .local v7, "scene":Lcom/sonymobile/flix/components/Scene;
    iget-object v11, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v11}, Lcom/sonymobile/flix/components/Component;->getWorldZ()F

    move-result v9

    .line 451
    .local v9, "worldZ":F
    const v11, 0x3ff0a3d7    # 1.88f

    div-float v12, v9, v4

    sub-float/2addr v11, v12

    const v12, 0x3ff0a3d7    # 1.88f

    div-float v3, v11, v12

    .line 452
    .local v3, "cullingAreaScaling":F
    const/4 v5, 0x0

    .line 453
    .local v5, "left":F
    const/4 v8, 0x0

    .line 454
    .local v8, "top":F
    invoke-virtual {v7}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v6

    .line 455
    .local v6, "right":F
    invoke-virtual {v7}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v0

    .line 456
    .local v0, "bottom":F
    add-float v11, v5, v6

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    add-float v1, v5, v11

    .line 457
    .local v1, "centerX":F
    add-float v11, v8, v0

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    add-float v2, v8, v11

    .line 458
    .local v2, "centerY":F
    sub-float v11, v5, v1

    mul-float/2addr v11, v3

    add-float v5, v1, v11

    .line 459
    sub-float v11, v6, v1

    mul-float/2addr v11, v3

    add-float v6, v1, v11

    .line 460
    sub-float v11, v8, v2

    mul-float/2addr v11, v3

    add-float v8, v2, v11

    .line 461
    sub-float v11, v0, v2

    mul-float/2addr v11, v3

    add-float v0, v2, v11

    .line 462
    iget-object v11, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollableContent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v11, v5, v8, v6, v0}, Lcom/sonymobile/flix/components/Component;->setCullingArea(FFFF)V

    .line 465
    .end local v0    # "bottom":F
    .end local v1    # "centerX":F
    .end local v2    # "centerY":F
    .end local v3    # "cullingAreaScaling":F
    .end local v5    # "left":F
    .end local v6    # "right":F
    .end local v7    # "scene":Lcom/sonymobile/flix/components/Scene;
    .end local v8    # "top":F
    .end local v9    # "worldZ":F
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->animatePages()V

    .line 467
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 468
    return-void
.end method

.method protected updatePage(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageView;IFFFF)Lcom/sonymobile/home/ui/pageview/PageView;
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "pageView"    # Lcom/sonymobile/home/ui/pageview/PageView;
    .param p3, "index"    # I
    .param p4, "pageParentWidth"    # F
    .param p5, "pageParentHeight"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F

    .prologue
    .line 304
    move-object v0, p2

    check-cast v0, Lcom/sonymobile/home/apptray/AppTrayPageView;

    .line 305
    .local v0, "apptrayPageView":Lcom/sonymobile/home/apptray/AppTrayPageView;
    invoke-virtual {v0, p6, p7}, Lcom/sonymobile/home/apptray/AppTrayPageView;->setSize(FF)V

    .line 306
    invoke-virtual {v0, p4, p5}, Lcom/sonymobile/home/apptray/AppTrayPageView;->updateBackplateSize(FF)V

    .line 307
    iget-boolean v1, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mUseEditModeBackplate:Z

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayPageView;->setEditModeBackplateEnabled(Z)V

    .line 309
    return-object p2
.end method

.method protected updateScrollBounds()V
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayView;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    invoke-virtual {v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->getBoundsMin()F

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayView;->getRightmostPage()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/util/ListTouchHelper;->setBounds(FF)V

    .line 314
    return-void
.end method
