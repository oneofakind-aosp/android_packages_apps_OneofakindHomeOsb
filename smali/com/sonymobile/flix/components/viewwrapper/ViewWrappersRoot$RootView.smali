.class public Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;
.super Landroid/view/ViewGroup;
.source "ViewWrappersRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RootView"
.end annotation


# instance fields
.field protected mFocusedBaseView:Landroid/view/View;

.field protected mReturnFocus:Z

.field final synthetic this$0:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->this$0:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    .line 340
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 341
    invoke-direct {p0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->init()V

    .line 342
    return-void
.end method

.method private blockFocus()V
    .locals 1

    .prologue
    .line 421
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->setDescendantFocusability(I)V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->mFocusedBaseView:Landroid/view/View;

    .line 423
    return-void
.end method

.method private clearAndBlockFocus()V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->blockFocus()V

    .line 412
    invoke-super {p0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 413
    return-void
.end method

.method private findNextFocusInFocusedBaseView(Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .param p1, "focusedView"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 517
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->mFocusedBaseView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 518
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->mFocusedBaseView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->findWrappedView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 519
    .local v1, "isFocusedViewValid":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 520
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->mFocusedBaseView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    if-eqz v2, :cond_2

    .line 521
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->mFocusedBaseView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    .line 522
    .local v0, "container":Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, v0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 526
    .end local v0    # "container":Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;
    .end local v1    # "isFocusedViewValid":Z
    :goto_1
    return-object v2

    .line 518
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 526
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private init()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 345
    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->setWillNotDraw(Z)V

    .line 346
    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->setWillNotCacheDrawing(Z)V

    .line 347
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->setDescendantFocusability(I)V

    .line 348
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 617
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 610
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 603
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 623
    return-void
.end method

.method protected findWrappedView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 434
    if-eqz p1, :cond_1

    .line 435
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 436
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    if-nez v1, :cond_1

    .line 437
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object p1, v0

    .line 438
    check-cast p1, Landroid/view/View;

    .line 442
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 440
    :cond_0
    const/4 v1, 0x0

    .line 445
    .end local v0    # "parent":Landroid/view/ViewParent;
    :goto_1
    return-object v1

    :cond_1
    move-object v1, p1

    goto :goto_1
.end method

.method protected focusLost()V
    .locals 4

    .prologue
    .line 390
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->mFocusedBaseView:Landroid/view/View;

    .line 391
    .local v0, "focused":Landroid/view/View;
    invoke-direct {p0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->clearAndBlockFocus()V

    .line 392
    iget-object v1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->this$0:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    const/4 v2, 0x3

    const/16 v3, 0x82

    invoke-virtual {v1, v2, v0, v3}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->notifyViewWrapperFocusEvent(ILandroid/view/View;I)V

    .line 393
    return-void
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x0

    .line 475
    iget-object v1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->mFocusedBaseView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 478
    invoke-direct {p0, v2, p1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->findNextFocusInFocusedBaseView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 484
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v2, v0, p1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->handleFocusSearch(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 481
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 496
    iget-object v1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->mFocusedBaseView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 499
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->findNextFocusInFocusedBaseView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 505
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->handleFocusSearch(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 502
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method protected handleFocusSearch(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .param p1, "from"    # Landroid/view/View;
    .param p2, "to"    # Landroid/view/View;
    .param p3, "direction"    # I

    .prologue
    const/4 v3, 0x0

    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, "focused":Landroid/view/View;
    if-ne p1, p2, :cond_0

    .line 544
    const/4 v2, 0x0

    .line 586
    :goto_0
    return-object v2

    .line 545
    :cond_0
    if-nez p2, :cond_2

    .line 549
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->this$0:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    invoke-virtual {v2, v3, p1, p3}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->notifyViewWrapperFocusEvent(ILandroid/view/View;I)V

    .line 550
    iget-boolean v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->mReturnFocus:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->findFocus()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 553
    invoke-direct {p0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->blockFocus()V

    .line 555
    :cond_1
    iput-boolean v3, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->mReturnFocus:Z

    :goto_1
    move-object v2, v0

    .line 586
    goto :goto_0

    .line 557
    :cond_2
    invoke-virtual {p0, p2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->findWrappedView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 558
    .local v1, "focusedBaseView":Landroid/view/View;
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->mFocusedBaseView:Landroid/view/View;

    if-nez v2, :cond_3

    .line 561
    iput-object v1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->mFocusedBaseView:Landroid/view/View;

    .line 562
    move-object v0, p2

    .line 563
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->this$0:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2, p3}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->notifyViewWrapperFocusEvent(ILandroid/view/View;I)V

    goto :goto_1

    .line 565
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->mFocusedBaseView:Landroid/view/View;

    if-eq v1, v2, :cond_5

    .line 570
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->this$0:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    invoke-virtual {v2, v3, p1, p3}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->notifyViewWrapperFocusEvent(ILandroid/view/View;I)V

    .line 571
    iget-boolean v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->mReturnFocus:Z

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->findFocus()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_4

    .line 575
    invoke-direct {p0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->blockFocus()V

    .line 577
    :cond_4
    iput-boolean v3, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->mReturnFocus:Z

    goto :goto_1

    .line 581
    :cond_5
    move-object v0, p2

    .line 582
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->this$0:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p2, p3}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->notifyViewWrapperFocusEvent(ILandroid/view/View;I)V

    goto :goto_1
.end method

.method public isLayoutRequested()Z
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 646
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->this$0:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    iget-object v3, v2, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mViewWrapperMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 647
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->this$0:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    iget-object v2, v2, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mViewWrapperMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 648
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 649
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->handleOnLayout()V

    goto :goto_0

    .line 652
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 631
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->this$0:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    iget-object v3, v2, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mViewWrapperMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 632
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->this$0:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    iget-object v2, v2, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->mViewWrapperMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 633
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 634
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->handleOnMeasure()V

    goto :goto_0

    .line 637
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 638
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 639
    return-void
.end method

.method protected returnFocus()V
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->mReturnFocus:Z

    .line 402
    return-void
.end method

.method protected setFocus(Landroid/view/View;I)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v3, 0x1

    .line 368
    if-eqz p1, :cond_1

    .line 369
    const/high16 v4, 0x20000

    invoke-virtual {p0, v4}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->setDescendantFocusability(I)V

    .line 370
    invoke-virtual {p1, p2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    .line 371
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 373
    .local v0, "focused":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->findWrappedView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->mFocusedBaseView:Landroid/view/View;

    .line 374
    iget-object v4, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->this$0:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    invoke-virtual {v4, v3, v0, p2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->notifyViewWrapperFocusEvent(ILandroid/view/View;I)V

    .line 381
    .end local v0    # "focused":Landroid/view/View;
    .end local v2    # "success":Z
    :cond_0
    :goto_0
    return v2

    .line 378
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 379
    .local v1, "released":Landroid/view/View;
    invoke-direct {p0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->clearAndBlockFocus()V

    .line 380
    iget-object v4, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot$RootView;->this$0:Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1, p2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->notifyViewWrapperFocusEvent(ILandroid/view/View;I)V

    move v2, v3

    .line 381
    goto :goto_0
.end method
