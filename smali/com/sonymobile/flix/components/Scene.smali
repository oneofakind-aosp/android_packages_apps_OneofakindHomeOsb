.class public Lcom/sonymobile/flix/components/Scene;
.super Lcom/sonymobile/flix/components/Component;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/components/Scene$UpdateRunnable;,
        Lcom/sonymobile/flix/components/Scene$Overlay;,
        Lcom/sonymobile/flix/components/Scene$DrawingStateStack;,
        Lcom/sonymobile/flix/components/Scene$SceneScheduler;,
        Lcom/sonymobile/flix/components/Scene$LifeCycleListener;,
        Lcom/sonymobile/flix/components/Scene$Touchable;
    }
.end annotation


# instance fields
.field protected mAccessibility:Lcom/sonymobile/flix/components/accessibility/Accessibility;

.field protected mAutoInvalidate:I

.field protected mBitmapCache:Lcom/sonymobile/flix/util/BitmapCache;

.field protected mConsumeTouchEvents:Z

.field protected mContext:Landroid/content/Context;

.field protected mDrawingStateStack:Lcom/sonymobile/flix/components/Scene$DrawingStateStack;

.field protected mHighQualityPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

.field protected mLifeCycleListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/flix/components/Scene$LifeCycleListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoadIntoTextureMemory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoadIntoTextureMemoryPaint:Landroid/graphics/Paint;

.field protected mNewFrameScheduled:Z

.field protected mNewUpdateScheduled:Z

.field protected mNormalQualityPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

.field protected mOverlays:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/sonymobile/flix/components/Scene$Overlay;",
            ">;"
        }
    .end annotation
.end field

.field protected mQualityChanged:Z

.field protected mRootMatrix:Landroid/graphics/Matrix;

.field protected mSceneView:Landroid/view/View;

.field protected mScheduler:Lcom/sonymobile/flix/util/Scheduler;

.field protected mSchedulerPaused:Z

.field protected mTasksAfterDraw:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/sonymobile/flix/util/Scheduler$Task;",
            ">;"
        }
    .end annotation
.end field

.field protected mTempBoundingRect:Landroid/graphics/RectF;

.field protected mTouchEnabled:Lcom/sonymobile/flix/util/SharedBoolean;

.field protected mTouchToggleAfterGesture:Z

.field protected mTouching:Z

.field protected mUpdateRunnable:Lcom/sonymobile/flix/components/Scene$UpdateRunnable;

.field protected mViewLocation:[I

.field protected mViewLocationDirty:Z

.field protected mViewWrappersRoot:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mLoadIntoTextureMemory:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mLoadIntoTextureMemoryPaint:Landroid/graphics/Paint;

    .line 123
    iput-object p0, p0, Lcom/sonymobile/flix/components/Scene;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 124
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Scene;->createScheduler()Lcom/sonymobile/flix/components/Scene$SceneScheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    .line 125
    new-instance v0, Lcom/sonymobile/flix/components/Scene$UpdateRunnable;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/components/Scene$UpdateRunnable;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mUpdateRunnable:Lcom/sonymobile/flix/components/Scene$UpdateRunnable;

    .line 126
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mOverlays:Ljava/util/ArrayDeque;

    .line 127
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mRootMatrix:Landroid/graphics/Matrix;

    .line 130
    new-instance v0, Lcom/sonymobile/flix/util/SharedBoolean;

    invoke-direct {v0, v2}, Lcom/sonymobile/flix/util/SharedBoolean;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mTouchEnabled:Lcom/sonymobile/flix/util/SharedBoolean;

    .line 131
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mViewLocation:[I

    .line 132
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mTempBoundingRect:Landroid/graphics/RectF;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mLifeCycleListeners:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v0, v1, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mHighQualityPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    .line 136
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v0, v4, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mNormalQualityPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 141
    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/components/Scene;->setHighQuality(Z)V

    .line 143
    :cond_0
    invoke-virtual {p0, v3}, Lcom/sonymobile/flix/components/Scene;->setAutoInvalidation(I)V

    .line 144
    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/components/Scene;->setConsumeTouchEvents(Z)V

    .line 145
    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/components/Scene;->setCullDescendants(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Scene;->enableTouch()V

    .line 147
    new-instance v0, Lcom/sonymobile/flix/components/Scene$DrawingStateStack;

    invoke-direct {v0}, Lcom/sonymobile/flix/components/Scene$DrawingStateStack;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mDrawingStateStack:Lcom/sonymobile/flix/components/Scene$DrawingStateStack;

    .line 149
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Scene;->getListeners()Lcom/sonymobile/flix/components/ComponentListeners;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/flix/components/Scene$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/flix/components/Scene$1;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/ComponentListeners;->addListener(Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;)V

    .line 160
    return-void
.end method

.method private checkTouchDisabled(I)Z
    .locals 4
    .param p1, "action"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 597
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Scene;->isTouchEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 599
    iget-boolean v2, p0, Lcom/sonymobile/flix/components/Scene;->mTouchToggleAfterGesture:Z

    if-eqz v2, :cond_2

    .line 602
    if-eq p1, v0, :cond_0

    if-ne p1, v3, :cond_1

    .line 603
    :cond_0
    iput-boolean v1, p0, Lcom/sonymobile/flix/components/Scene;->mTouchToggleAfterGesture:Z

    .line 621
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 607
    goto :goto_0

    .line 610
    :cond_3
    iget-boolean v2, p0, Lcom/sonymobile/flix/components/Scene;->mTouchToggleAfterGesture:Z

    if-eqz v2, :cond_6

    .line 613
    if-eq p1, v0, :cond_4

    if-ne p1, v3, :cond_5

    .line 614
    :cond_4
    iput-boolean v1, p0, Lcom/sonymobile/flix/components/Scene;->mTouchToggleAfterGesture:Z

    :cond_5
    move v0, v1

    .line 616
    goto :goto_0

    .line 619
    :cond_6
    invoke-static {}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$SceneWarnings;->touchNotEnabled()V

    goto :goto_0
.end method


# virtual methods
.method public addDelayedTask(Lcom/sonymobile/flix/util/Scheduler$Task;JJ)Z
    .locals 6
    .param p1, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;
    .param p2, "firstDelay"    # J
    .param p4, "delay"    # J

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/flix/util/Scheduler;->addDelayedTask(Lcom/sonymobile/flix/util/Scheduler$Task;JJ)Z

    move-result v0

    return v0
.end method

.method public addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z
    .locals 1
    .param p1, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;

    .prologue
    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/flix/components/Scene;->addTask(Ljava/lang/Object;Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    move-result v0

    return v0
.end method

.method public addTask(Ljava/lang/Object;Lcom/sonymobile/flix/util/Scheduler$Task;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/util/Scheduler;->addTask(Ljava/lang/Object;Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    move-result v0

    return v0
.end method

.method protected autoInvalidate()V
    .locals 2

    .prologue
    .line 918
    iget v0, p0, Lcom/sonymobile/flix/components/Scene;->mAutoInvalidate:I

    if-eqz v0, :cond_0

    .line 919
    iget v0, p0, Lcom/sonymobile/flix/components/Scene;->mAutoInvalidate:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 920
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/Scheduler;->hasRegularTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    iget v0, p0, Lcom/sonymobile/flix/components/Scene;->mAutoInvalidate:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 924
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    goto :goto_0
.end method

.method public cancelTouch()V
    .locals 0

    .prologue
    .line 542
    invoke-virtual {p0, p0}, Lcom/sonymobile/flix/components/Scene;->cancelTouch(Lcom/sonymobile/flix/components/Component;)V

    .line 543
    return-void
.end method

.method public cancelTouch(Lcom/sonymobile/flix/components/Component;)V
    .locals 9
    .param p1, "root"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    const/4 v5, 0x0

    .line 553
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 554
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 556
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Scene;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    invoke-virtual {v2, p1, v8}, Lcom/sonymobile/flix/components/Scene;->dispatchTouchEventTo(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z

    .line 557
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 558
    return-void
.end method

.method public createScheduler()Lcom/sonymobile/flix/components/Scene$SceneScheduler;
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/sonymobile/flix/components/Scene$SceneScheduler;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/components/Scene$SceneScheduler;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    return-object v0
.end method

.method public disableTouch()V
    .locals 2

    .prologue
    .line 453
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/flix/components/Scene;->disableTouch(Ljava/lang/Object;Z)V

    .line 454
    return-void
.end method

.method public disableTouch(Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "client"    # Ljava/lang/Object;
    .param p2, "allowCurrentGesture"    # Z

    .prologue
    const/4 v1, 0x0

    .line 477
    iget-object v2, p0, Lcom/sonymobile/flix/components/Scene;->mTouchEnabled:Lcom/sonymobile/flix/util/SharedBoolean;

    invoke-virtual {v2, p1, v1}, Lcom/sonymobile/flix/util/SharedBoolean;->set(Ljava/lang/Object;Z)Z

    move-result v0

    .line 478
    .local v0, "touchEnabled":Z
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v2, p0, Lcom/sonymobile/flix/components/Scene;->mTouching:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/sonymobile/flix/components/Scene;->mTouchToggleAfterGesture:Z

    .line 479
    if-nez p2, :cond_1

    .line 480
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Scene;->cancelTouch()V

    .line 482
    :cond_1
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 814
    invoke-virtual {p0, p0, p1}, Lcom/sonymobile/flix/components/Scene;->dispatchConfigurationChanged(Lcom/sonymobile/flix/components/Component;Landroid/content/res/Configuration;)V

    .line 815
    return-void
.end method

.method protected dispatchConfigurationChanged(Lcom/sonymobile/flix/components/Component;Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "root"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 818
    instance-of v2, p1, Lcom/sonymobile/flix/components/Scene$LifeCycleListener;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 819
    check-cast v2, Lcom/sonymobile/flix/components/Scene$LifeCycleListener;

    invoke-interface {v2, p0, p2}, Lcom/sonymobile/flix/components/Scene$LifeCycleListener;->onConfigurationChanged(Lcom/sonymobile/flix/components/Scene;Landroid/content/res/Configuration;)V

    .line 821
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getNbrChildren()I

    move-result v1

    .line 822
    .local v1, "nbrChildren":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 823
    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/sonymobile/flix/components/Scene;->dispatchConfigurationChanged(Lcom/sonymobile/flix/components/Component;Landroid/content/res/Configuration;)V

    .line 822
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 825
    :cond_1
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 709
    invoke-virtual {p0, p0, p1}, Lcom/sonymobile/flix/components/Scene;->dispatchHoverEventTo(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/flix/components/Scene;->mConsumeTouchEvents:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchHoverEventTo(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "to"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 722
    instance-of v2, p1, Lcom/sonymobile/flix/components/Scene$Touchable$BeforeDescendants;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 723
    check-cast v2, Lcom/sonymobile/flix/components/Scene$Touchable$BeforeDescendants;

    invoke-interface {v2, p2}, Lcom/sonymobile/flix/components/Scene$Touchable$BeforeDescendants;->onHoverEventBeforeDescendants(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 746
    .end local p1    # "to":Lcom/sonymobile/flix/components/Component;
    :goto_0
    return v2

    .line 728
    .restart local p1    # "to":Lcom/sonymobile/flix/components/Component;
    :cond_0
    instance-of v2, p1, Lcom/sonymobile/flix/components/Scene$Touchable$Dispatcher;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 729
    check-cast v2, Lcom/sonymobile/flix/components/Scene$Touchable$Dispatcher;

    invoke-interface {v2, p2}, Lcom/sonymobile/flix/components/Scene$Touchable$Dispatcher;->onDispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    .line 730
    goto :goto_0

    .line 735
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getNbrChildren()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 736
    invoke-virtual {p1, v1}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 737
    .local v0, "child":Lcom/sonymobile/flix/components/Component;
    iget-boolean v2, v0, Lcom/sonymobile/flix/components/Component;->mSetToVisible:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/sonymobile/flix/components/Component;->mCulled:Z

    if-nez v2, :cond_2

    invoke-virtual {p0, v0, p2}, Lcom/sonymobile/flix/components/Scene;->dispatchHoverEventTo(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 738
    goto :goto_0

    .line 735
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 743
    .end local v0    # "child":Lcom/sonymobile/flix/components/Component;
    .end local v1    # "i":I
    :cond_3
    instance-of v2, p1, Lcom/sonymobile/flix/components/Scene$Touchable;

    if-eqz v2, :cond_4

    .line 744
    check-cast p1, Lcom/sonymobile/flix/components/Scene$Touchable;

    .end local p1    # "to":Lcom/sonymobile/flix/components/Component;
    invoke-interface {p1, p2}, Lcom/sonymobile/flix/components/Scene$Touchable;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 746
    .restart local p1    # "to":Lcom/sonymobile/flix/components/Component;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dispatchHoverEventToChildren(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "root"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 762
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getNbrChildren()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 763
    invoke-virtual {p1, v1}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 764
    .local v0, "child":Lcom/sonymobile/flix/components/Component;
    iget-boolean v2, v0, Lcom/sonymobile/flix/components/Component;->mSetToVisible:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/sonymobile/flix/components/Component;->mCulled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/sonymobile/flix/components/Scene;->dispatchHoverEventTo(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 765
    const/4 v2, 0x1

    .line 768
    .end local v0    # "child":Lcom/sonymobile/flix/components/Component;
    :goto_1
    return v2

    .line 762
    .restart local v0    # "child":Lcom/sonymobile/flix/components/Component;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 768
    .end local v0    # "child":Lcom/sonymobile/flix/components/Component;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public dispatchSceneCreated(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 772
    iget-object v2, p0, Lcom/sonymobile/flix/components/Scene;->mLifeCycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 773
    .local v1, "nbrLifeCycleListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 774
    iget-object v2, p0, Lcom/sonymobile/flix/components/Scene;->mLifeCycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/components/Scene$LifeCycleListener;

    invoke-interface {v2, p0, p1, p2}, Lcom/sonymobile/flix/components/Scene$LifeCycleListener;->onSceneCreated(Lcom/sonymobile/flix/components/Scene;II)V

    .line 773
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 776
    :cond_0
    invoke-virtual {p0, p0, p1, p2}, Lcom/sonymobile/flix/components/Scene;->dispatchSceneCreated(Lcom/sonymobile/flix/components/Component;II)V

    .line 777
    return-void
.end method

.method protected dispatchSceneCreated(Lcom/sonymobile/flix/components/Component;II)V
    .locals 3
    .param p1, "root"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 780
    instance-of v2, p1, Lcom/sonymobile/flix/components/Scene$LifeCycleListener;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 781
    check-cast v2, Lcom/sonymobile/flix/components/Scene$LifeCycleListener;

    invoke-interface {v2, p0, p2, p3}, Lcom/sonymobile/flix/components/Scene$LifeCycleListener;->onSceneCreated(Lcom/sonymobile/flix/components/Scene;II)V

    .line 783
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getNbrChildren()I

    move-result v1

    .line 784
    .local v1, "nbrChildren":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 785
    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Lcom/sonymobile/flix/components/Scene;->dispatchSceneCreated(Lcom/sonymobile/flix/components/Component;II)V

    .line 784
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 787
    :cond_1
    return-void
.end method

.method public dispatchSceneSizeChanged(IIII)V
    .locals 8
    .param p1, "prevWidth"    # I
    .param p2, "prevHeight"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 790
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mLifeCycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 791
    .local v7, "nbrLifeCycleListeners":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 792
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mLifeCycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Scene$LifeCycleListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/flix/components/Scene$LifeCycleListener;->onSceneSizeChanged(Lcom/sonymobile/flix/components/Scene;IIII)V

    .line 791
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 795
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/flix/components/Scene;->dispatchSceneSizeChanged(Lcom/sonymobile/flix/components/Component;IIII)V

    .line 798
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/components/Scene;->mQualityChanged:Z

    .line 799
    return-void
.end method

.method protected dispatchSceneSizeChanged(Lcom/sonymobile/flix/components/Component;IIII)V
    .locals 8
    .param p1, "root"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "prevWidth"    # I
    .param p3, "prevHeight"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 803
    instance-of v0, p1, Lcom/sonymobile/flix/components/Scene$LifeCycleListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 804
    check-cast v0, Lcom/sonymobile/flix/components/Scene$LifeCycleListener;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/flix/components/Scene$LifeCycleListener;->onSceneSizeChanged(Lcom/sonymobile/flix/components/Scene;IIII)V

    .line 807
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getNbrChildren()I

    move-result v7

    .line 808
    .local v7, "nbrChildren":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 809
    invoke-virtual {p1, v6}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/flix/components/Scene;->dispatchSceneSizeChanged(Lcom/sonymobile/flix/components/Component;IIII)V

    .line 808
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 811
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 569
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 572
    .local v0, "action":I
    invoke-direct {p0, v0}, Lcom/sonymobile/flix/components/Scene;->checkTouchDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 573
    iget-boolean v1, p0, Lcom/sonymobile/flix/components/Scene;->mConsumeTouchEvents:Z

    .line 593
    :cond_0
    :goto_0
    return v1

    .line 577
    :cond_1
    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-nez v0, :cond_6

    .line 578
    :cond_2
    iput-boolean v2, p0, Lcom/sonymobile/flix/components/Scene;->mTouching:Z

    .line 584
    :cond_3
    :goto_1
    invoke-virtual {p0, p0, p1}, Lcom/sonymobile/flix/components/Scene;->dispatchTouchEventTo(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/sonymobile/flix/components/Scene;->mConsumeTouchEvents:Z

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    .line 586
    .local v1, "consumed":Z
    :cond_5
    if-nez v1, :cond_0

    .line 587
    invoke-static {p1}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$SceneWarnings;->touchEventNotConsumed(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 579
    .end local v1    # "consumed":Z
    :cond_6
    if-eq v0, v2, :cond_7

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 580
    :cond_7
    iput-boolean v1, p0, Lcom/sonymobile/flix/components/Scene;->mTouching:Z

    goto :goto_1
.end method

.method public dispatchTouchEventTo(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "to"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 650
    instance-of v2, p1, Lcom/sonymobile/flix/components/Scene$Touchable$BeforeDescendants;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 651
    check-cast v2, Lcom/sonymobile/flix/components/Scene$Touchable$BeforeDescendants;

    invoke-interface {v2, p2}, Lcom/sonymobile/flix/components/Scene$Touchable$BeforeDescendants;->onTouchEventBeforeDescendants(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 674
    .end local p1    # "to":Lcom/sonymobile/flix/components/Component;
    :goto_0
    return v2

    .line 656
    .restart local p1    # "to":Lcom/sonymobile/flix/components/Component;
    :cond_0
    instance-of v2, p1, Lcom/sonymobile/flix/components/Scene$Touchable$Dispatcher;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 657
    check-cast v2, Lcom/sonymobile/flix/components/Scene$Touchable$Dispatcher;

    invoke-interface {v2, p2}, Lcom/sonymobile/flix/components/Scene$Touchable$Dispatcher;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    .line 658
    goto :goto_0

    .line 663
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getNbrChildren()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 664
    invoke-virtual {p1, v1}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 665
    .local v0, "child":Lcom/sonymobile/flix/components/Component;
    iget-boolean v2, v0, Lcom/sonymobile/flix/components/Component;->mSetToVisible:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/sonymobile/flix/components/Component;->mCulled:Z

    if-nez v2, :cond_2

    invoke-virtual {p0, v0, p2}, Lcom/sonymobile/flix/components/Scene;->dispatchTouchEventTo(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 666
    goto :goto_0

    .line 663
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 671
    .end local v0    # "child":Lcom/sonymobile/flix/components/Component;
    .end local v1    # "i":I
    :cond_3
    instance-of v2, p1, Lcom/sonymobile/flix/components/Scene$Touchable;

    if-eqz v2, :cond_4

    .line 672
    check-cast p1, Lcom/sonymobile/flix/components/Scene$Touchable;

    .end local p1    # "to":Lcom/sonymobile/flix/components/Component;
    invoke-interface {p1, p2}, Lcom/sonymobile/flix/components/Scene$Touchable;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 674
    .restart local p1    # "to":Lcom/sonymobile/flix/components/Component;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEventToChildren(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "dispatcher"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 690
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getNbrChildren()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 691
    invoke-virtual {p1, v1}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 692
    .local v0, "child":Lcom/sonymobile/flix/components/Component;
    iget-boolean v2, v0, Lcom/sonymobile/flix/components/Component;->mSetToVisible:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/sonymobile/flix/components/Component;->mCulled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/sonymobile/flix/components/Scene;->dispatchTouchEventTo(Lcom/sonymobile/flix/components/Component;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 693
    const/4 v2, 0x1

    .line 696
    .end local v0    # "child":Lcom/sonymobile/flix/components/Component;
    :goto_1
    return v2

    .line 690
    .restart local v0    # "child":Lcom/sonymobile/flix/components/Component;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 696
    .end local v0    # "child":Lcom/sonymobile/flix/components/Component;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;FFLcom/sonymobile/flix/components/Component$DrawingState;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "drawingState"    # Lcom/sonymobile/flix/components/Component$DrawingState;

    .prologue
    const/4 v9, 0x0

    const v8, 0x3f800054    # 1.00001f

    const/4 v7, 0x0

    .line 859
    iput-boolean v9, p0, Lcom/sonymobile/flix/components/Scene;->mNewFrameScheduled:Z

    .line 860
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sonymobile/flix/components/Scene;->mViewLocationDirty:Z

    .line 862
    iget-object v5, p0, Lcom/sonymobile/flix/components/Scene;->mLoadIntoTextureMemory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 863
    .local v3, "nbrToLoadIntoTextureMemory":I
    if-lez v3, :cond_1

    .line 865
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 866
    iget-object v5, p0, Lcom/sonymobile/flix/components/Scene;->mLoadIntoTextureMemory:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/sonymobile/flix/components/Scene;->mLoadIntoTextureMemoryPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 865
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 869
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/flix/components/Scene;->mLoadIntoTextureMemory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 872
    .end local v0    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/flix/components/Scene;->mLifeCycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 873
    .local v1, "nbrLifeCycleListeners":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 874
    iget-object v5, p0, Lcom/sonymobile/flix/components/Scene;->mLifeCycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/flix/components/Scene$LifeCycleListener;

    invoke-interface {v5, p0, p1}, Lcom/sonymobile/flix/components/Scene$LifeCycleListener;->onSceneDraw(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Canvas;)V

    .line 873
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 878
    :cond_2
    iget-boolean v5, p0, Lcom/sonymobile/flix/components/Scene;->mQualityChanged:Z

    if-eqz v5, :cond_3

    .line 879
    iput-boolean v9, p0, Lcom/sonymobile/flix/components/Scene;->mQualityChanged:Z

    .line 880
    iget-boolean v5, p0, Lcom/sonymobile/flix/components/Scene;->mHighQuality:Z

    if-eqz v5, :cond_5

    .line 881
    iget-object v5, p0, Lcom/sonymobile/flix/components/Scene;->mHighQualityPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 887
    :cond_3
    :goto_2
    iget-boolean v5, p0, Lcom/sonymobile/flix/components/Scene;->mHighQuality:Z

    if-eqz v5, :cond_4

    .line 890
    invoke-virtual {p1, v8, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 894
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonymobile/flix/components/Component;->draw(Landroid/graphics/Canvas;FFLcom/sonymobile/flix/components/Component$DrawingState;)V

    .line 896
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Scene;->autoInvalidate()V

    .line 899
    iget-object v5, p0, Lcom/sonymobile/flix/components/Scene;->mTasksAfterDraw:Ljava/util/Deque;

    if-eqz v5, :cond_6

    .line 900
    :goto_3
    iget-object v5, p0, Lcom/sonymobile/flix/components/Scene;->mTasksAfterDraw:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 901
    iget-object v6, p0, Lcom/sonymobile/flix/components/Scene;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    iget-object v5, p0, Lcom/sonymobile/flix/components/Scene;->mTasksAfterDraw:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/flix/util/Scheduler$Task;

    invoke-virtual {v6, v5}, Lcom/sonymobile/flix/util/Scheduler;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    goto :goto_3

    .line 883
    :cond_5
    iget-object v5, p0, Lcom/sonymobile/flix/components/Scene;->mNormalQualityPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    goto :goto_2

    .line 906
    :cond_6
    iget-object v6, p0, Lcom/sonymobile/flix/components/Scene;->mOverlays:Ljava/util/ArrayDeque;

    monitor-enter v6

    .line 907
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/flix/components/Scene;->mOverlays:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    .line 908
    .local v2, "nbrOverlays":I
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_8

    .line 909
    iget-object v5, p0, Lcom/sonymobile/flix/components/Scene;->mOverlays:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/flix/components/Scene$Overlay;

    .line 910
    .local v4, "overlay":Lcom/sonymobile/flix/components/Scene$Overlay;
    invoke-interface {v4, p1}, Lcom/sonymobile/flix/components/Scene$Overlay;->onDraw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 911
    iget-object v5, p0, Lcom/sonymobile/flix/components/Scene;->mOverlays:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v4}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 908
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 914
    .end local v4    # "overlay":Lcom/sonymobile/flix/components/Scene$Overlay;
    :cond_8
    monitor-exit v6

    .line 915
    return-void

    .line 914
    .end local v2    # "nbrOverlays":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public enableTouch()V
    .locals 2

    .prologue
    .line 491
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/flix/components/Scene;->enableTouch(Ljava/lang/Object;Z)V

    .line 492
    return-void
.end method

.method public enableTouch(Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "client"    # Ljava/lang/Object;
    .param p2, "afterCurrentGesture"    # Z

    .prologue
    const/4 v1, 0x1

    .line 512
    iget-object v2, p0, Lcom/sonymobile/flix/components/Scene;->mTouchEnabled:Lcom/sonymobile/flix/util/SharedBoolean;

    invoke-virtual {v2, p1, v1}, Lcom/sonymobile/flix/util/SharedBoolean;->set(Ljava/lang/Object;Z)Z

    move-result v0

    .line 513
    .local v0, "touchEnabled":Z
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v2, p0, Lcom/sonymobile/flix/components/Scene;->mTouching:Z

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/sonymobile/flix/components/Scene;->mTouchToggleAfterGesture:Z

    .line 514
    return-void

    .line 513
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mAccessibility:Lcom/sonymobile/flix/components/accessibility/Accessibility;

    return-object v0
.end method

.method public getBitmapCache()Lcom/sonymobile/flix/util/BitmapCache;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mBitmapCache:Lcom/sonymobile/flix/util/BitmapCache;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getDrawingState()Lcom/sonymobile/flix/components/Component$DrawingState;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mDrawingStateStack:Lcom/sonymobile/flix/components/Scene$DrawingStateStack;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene$DrawingStateStack;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/Component$DrawingState;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mSceneView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getScheduler()Lcom/sonymobile/flix/util/Scheduler;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mSceneView:Landroid/view/View;

    return-object v0
.end method

.method public getViewWrappersRoot()Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mViewWrappersRoot:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    return-object v0
.end method

.method public hasTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z
    .locals 1
    .param p1, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/util/Scheduler;->hasTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/components/Scene;->mNewFrameScheduled:Z

    .line 248
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mSceneView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 249
    return-void
.end method

.method public invalidate(FFFF)V
    .locals 8
    .param p1, "l"    # F
    .param p2, "t"    # F
    .param p3, "r"    # F
    .param p4, "b"    # F

    .prologue
    const-wide v6, 0x3fefffffca501acbL    # 0.9999999

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/components/Scene;->mNewFrameScheduled:Z

    .line 271
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mSceneView:Landroid/view/View;

    float-to-int v1, p1

    float-to-int v2, p2

    float-to-double v4, p3

    add-double/2addr v4, v6

    double-to-int v3, v4

    float-to-double v4, p4

    add-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 272
    return-void
.end method

.method public invalidate(Landroid/graphics/RectF;)V
    .locals 8
    .param p1, "dirty"    # Landroid/graphics/RectF;

    .prologue
    const-wide v6, 0x3fefffffca501acbL    # 0.9999999

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/components/Scene;->mNewFrameScheduled:Z

    .line 258
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mSceneView:Landroid/view/View;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v3

    add-double/2addr v4, v6

    double-to-int v3, v4

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v4

    add-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 260
    return-void
.end method

.method public invalidateComponent(Lcom/sonymobile/flix/components/Component;)V
    .locals 10
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    const-wide v8, 0x3fefffffca501acbL    # 0.9999999

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/components/Scene;->mNewFrameScheduled:Z

    .line 278
    iget-object v1, p0, Lcom/sonymobile/flix/components/Scene;->mTempBoundingRect:Landroid/graphics/RectF;

    monitor-enter v1

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mTempBoundingRect:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/sonymobile/flix/components/ComponentTransform;->calculateComponentBoundingRectOnScreen(Lcom/sonymobile/flix/components/Component;Landroid/graphics/RectF;)V

    .line 281
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mSceneView:Landroid/view/View;

    iget-object v2, p0, Lcom/sonymobile/flix/components/Scene;->mTempBoundingRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sonymobile/flix/components/Scene;->mTempBoundingRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sonymobile/flix/components/Scene;->mTempBoundingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    add-double/2addr v4, v8

    double-to-int v4, v4

    iget-object v5, p0, Lcom/sonymobile/flix/components/Scene;->mTempBoundingRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v5

    add-double/2addr v6, v8

    double-to-int v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    .line 284
    monitor-exit v1

    .line 285
    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isNewFrameScheduled()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/Scene;->mNewFrameScheduled:Z

    return v0
.end method

.method public isTouchEnabled()Z
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mTouchEnabled:Lcom/sonymobile/flix/util/SharedBoolean;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/SharedBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z
    .locals 1
    .param p1, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/util/Scheduler;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    move-result v0

    return v0
.end method

.method public scheduleUpdate()V
    .locals 2

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/Scene;->mSchedulerPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/flix/components/Scene;->mNewUpdateScheduled:Z

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/components/Scene;->mNewUpdateScheduled:Z

    .line 214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 215
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mSceneView:Landroid/view/View;

    iget-object v1, p0, Lcom/sonymobile/flix/components/Scene;->mUpdateRunnable:Lcom/sonymobile/flix/components/Scene$UpdateRunnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mSceneView:Landroid/view/View;

    iget-object v1, p0, Lcom/sonymobile/flix/components/Scene;->mUpdateRunnable:Lcom/sonymobile/flix/components/Scene$UpdateRunnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setAccessibility(Lcom/sonymobile/flix/components/accessibility/Accessibility;)V
    .locals 0
    .param p1, "accessibility"    # Lcom/sonymobile/flix/components/accessibility/Accessibility;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/sonymobile/flix/components/Scene;->mAccessibility:Lcom/sonymobile/flix/components/accessibility/Accessibility;

    .line 232
    return-void
.end method

.method public setAutoInvalidation(I)V
    .locals 0
    .param p1, "invalidate"    # I

    .prologue
    .line 412
    iput p1, p0, Lcom/sonymobile/flix/components/Scene;->mAutoInvalidate:I

    .line 413
    return-void
.end method

.method public setConsumeTouchEvents(Z)V
    .locals 0
    .param p1, "consume"    # Z

    .prologue
    .line 432
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/Scene;->mConsumeTouchEvents:Z

    .line 433
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sonymobile/flix/components/Scene;->mContext:Landroid/content/Context;

    .line 164
    return-void
.end method

.method public setHighQuality(Z)V
    .locals 1
    .param p1, "highQuality"    # Z

    .prologue
    .line 407
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Component;->setHighQuality(Z)V

    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/components/Scene;->mQualityChanged:Z

    .line 409
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sonymobile/flix/components/Scene;->mSceneView:Landroid/view/View;

    .line 172
    return-void
.end method

.method public setViewWrappersRoot(Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;)V
    .locals 0
    .param p1, "viewWrappersRoot"    # Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/sonymobile/flix/components/Scene;->mViewWrappersRoot:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    .line 224
    return-void
.end method

.method protected update()V
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/Scheduler;->update()V

    .line 855
    return-void
.end method
