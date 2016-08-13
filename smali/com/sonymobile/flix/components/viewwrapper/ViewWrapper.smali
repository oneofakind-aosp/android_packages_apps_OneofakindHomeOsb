.class public Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;
.super Lcom/sonymobile/flix/components/TouchArea;
.source "ViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;
    }
.end annotation


# static fields
.field protected static sLayerPaint:Landroid/graphics/Paint;


# instance fields
.field protected mAlphaChanged:Z

.field protected mAutoUpdateViewBounds:Z

.field protected mAutoUpdateViewHierarchy:Z

.field protected mAutoUpdateViewVisibility:Z

.field protected mCachedDrawingEnabled:Z

.field protected final mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

.field protected mDirty:Landroid/graphics/RectF;

.field protected mPrevDirty:Landroid/graphics/RectF;

.field protected mRequestedHeight:I

.field protected mRequestedWidth:I

.field protected mSetSizeOnAdd:Z

.field protected final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Landroid/view/View;)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, -0x1

    .line 81
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/view/View;II)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Landroid/view/View;FFLcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;)V
    .locals 6
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "container"    # Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    .prologue
    .line 168
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/view/View;IILcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Landroid/view/View;II)V
    .locals 6
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 109
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/view/View;IILcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Landroid/view/View;IILcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;)V
    .locals 3
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "container"    # Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    .prologue
    const/4 v2, 0x1

    .line 188
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/TouchArea;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 189
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View already has a ViewWrapper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wrapper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getViewWrappersRoot()Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->findViewWrapper(Landroid/view/View;)Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View already has a parent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    iput-object p2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mView:Landroid/view/View;

    .line 196
    iput-boolean v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mAutoUpdateViewVisibility:Z

    .line 197
    iput-boolean v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mAutoUpdateViewHierarchy:Z

    .line 198
    iput p3, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mRequestedWidth:I

    .line 199
    iput p4, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mRequestedHeight:I

    .line 200
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 201
    iput-boolean v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mAlphaChanged:Z

    .line 205
    :cond_2
    if-eqz p5, :cond_3

    .line 206
    iput-object p5, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    invoke-virtual {v0, p2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->addView(Landroid/view/View;)V

    .line 211
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    invoke-virtual {v0, p0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->setViewWrapper(Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;)V

    .line 213
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mPrevDirty:Landroid/graphics/RectF;

    .line 214
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mDirty:Landroid/graphics/RectF;

    .line 215
    iput-boolean v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mSetSizeOnAdd:Z

    .line 218
    invoke-virtual {p0, v2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->setTrackTouchDragging(Z)V

    .line 223
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->prepareForDrawing()V

    .line 224
    return-void

    .line 208
    :cond_3
    new-instance v0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    goto :goto_0
.end method


# virtual methods
.method public addViewToHierarchy()V
    .locals 2

    .prologue
    .line 342
    iget-object v1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getViewWrappersRoot()Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    move-result-object v0

    .line 343
    .local v0, "viewWrappersRoot":Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;
    if-eqz v0, :cond_0

    .line 344
    iget-boolean v1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mAutoUpdateViewHierarchy:Z

    invoke-virtual {v0, p0, v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->addComponent(Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;Z)Z

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-static {p0}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ViewWrapperWarnings;->viewWrappersRootNotSetUp(Lcom/sonymobile/flix/components/Component;)V

    goto :goto_0
.end method

.method protected cullingChanged(Z)V
    .locals 0
    .param p1, "culled"    # Z

    .prologue
    .line 466
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/TouchArea;->cullingChanged(Z)V

    .line 467
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->updateViewVisibility()V

    .line 468
    return-void
.end method

.method protected getContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected handleOnLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 372
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    iget-object v1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->layout(IIII)V

    .line 373
    return-void
.end method

.method protected handleOnMeasure()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 364
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 366
    .local v1, "widthMeasureSpec":I
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 368
    .local v0, "heightMeasureSpec":I
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    invoke-virtual {v2, v1, v0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->measure(II)V

    .line 369
    return-void
.end method

.method protected invalidate(Z)V
    .locals 8
    .param p1, "full"    # Z

    .prologue
    const/4 v7, 0x0

    .line 376
    if-eqz p1, :cond_0

    .line 377
    iget-object v4, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 378
    iget-object v4, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mPrevDirty:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v5}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v5

    iget-object v6, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 393
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mDirty:Landroid/graphics/RectF;

    invoke-static {p0, v4}, Lcom/sonymobile/flix/components/ComponentTransform;->calculateComponentBoundingRectOnScreen(Lcom/sonymobile/flix/components/Component;Landroid/graphics/RectF;)V

    .line 381
    iget-object v4, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mDirty:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mPrevDirty:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 384
    iget-object v4, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mDirty:Landroid/graphics/RectF;

    iget v1, v4, Landroid/graphics/RectF;->left:F

    .line 385
    .local v1, "newDirtyLeft":F
    iget-object v4, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mDirty:Landroid/graphics/RectF;

    iget v3, v4, Landroid/graphics/RectF;->top:F

    .line 386
    .local v3, "newDirtyTop":F
    iget-object v4, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mDirty:Landroid/graphics/RectF;

    iget v2, v4, Landroid/graphics/RectF;->right:F

    .line 387
    .local v2, "newDirtyRight":F
    iget-object v4, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mDirty:Landroid/graphics/RectF;

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    .line 388
    .local v0, "newDirtyBottom":F
    iget-object v4, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mDirty:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mPrevDirty:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 389
    iget-object v4, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mPrevDirty:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 391
    .end local v0    # "newDirtyBottom":F
    .end local v1    # "newDirtyLeft":F
    .end local v2    # "newDirtyRight":F
    .end local v3    # "newDirtyTop":F
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v5, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mDirty:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Lcom/sonymobile/flix/components/Scene;->invalidate(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public onAddedTo(Lcom/sonymobile/flix/components/Component;)V
    .locals 2
    .param p1, "parent"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->addViewToHierarchy()V

    .line 406
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mSetSizeOnAdd:Z

    if-eqz v0, :cond_0

    .line 407
    iget v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mRequestedWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mRequestedHeight:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->setSize(FF)V

    .line 409
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mAlphaChanged:Z

    if-eqz v0, :cond_0

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mAlphaChanged:Z

    .line 552
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 555
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mAutoUpdateViewBounds:Z

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    iget v1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mDrawnLeft:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->setTranslationX(F)V

    .line 557
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    iget v1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mDrawnTop:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->setTranslationY(F)V

    .line 558
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    iget-object v1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    iget-object v1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;)V

    goto :goto_0
.end method

.method public onHover(IZFFLandroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 518
    if-nez p2, :cond_1

    .line 519
    const/4 p2, 0x0

    .line 541
    .end local p2    # "inside":Z
    :cond_0
    :goto_0
    return p2

    .line 521
    .restart local p2    # "inside":Z
    :cond_1
    if-eqz p5, :cond_0

    .line 524
    invoke-static {p5}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 525
    .local v1, "temp":Landroid/view/MotionEvent;
    invoke-virtual {v1, p3, p4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 526
    packed-switch p1, :pswitch_data_0

    .line 539
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 540
    .local v0, "consumed":Z
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    move p2, v0

    .line 541
    goto :goto_0

    .line 528
    .end local v0    # "consumed":Z
    :pswitch_0
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_1

    .line 531
    :pswitch_1
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_1

    .line 534
    :pswitch_2
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_1

    .line 526
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onRemovedFrom(Lcom/sonymobile/flix/components/Component;)V
    .locals 0
    .param p1, "parent"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->removeViewFromHierarchy()V

    .line 420
    return-void
.end method

.method public onTouch(IZFFLandroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 503
    if-nez p5, :cond_0

    .line 512
    .end local p2    # "inside":Z
    :goto_0
    return p2

    .line 508
    .restart local p2    # "inside":Z
    :cond_0
    invoke-static {p5}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 509
    .local v1, "temp":Landroid/view/MotionEvent;
    invoke-virtual {v1, p3, p4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 510
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 511
    .local v0, "consumed":Z
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    move p2, v0

    .line 512
    goto :goto_0
.end method

.method public onViewWrapperFocusEvent(ILcom/sonymobile/flix/components/viewwrapper/ViewWrapper;Landroid/view/View;I)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "component"    # Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;
    .param p3, "affectedView"    # Landroid/view/View;
    .param p4, "direction"    # I

    .prologue
    .line 546
    return-void
.end method

.method public removeViewFromHierarchy()V
    .locals 2

    .prologue
    .line 355
    iget-object v1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getViewWrappersRoot()Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    move-result-object v0

    .line 356
    .local v0, "viewWrappersRoot":Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;
    if-eqz v0, :cond_0

    .line 357
    iget-boolean v1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mAutoUpdateViewHierarchy:Z

    invoke-virtual {v0, p0, v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->removeComponent(Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;Z)V

    .line 359
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 483
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/TouchArea;->setAlpha(F)V

    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mAlphaChanged:Z

    .line 485
    return-void
.end method

.method public setAutoUpdateViewBounds(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 298
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mAutoUpdateViewBounds:Z

    .line 299
    if-nez p1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->setTranslationX(F)V

    .line 301
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->setTranslationY(F)V

    .line 303
    :cond_0
    return-void
.end method

.method public setCachedDrawingEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 277
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mCachedDrawingEnabled:Z

    if-nez v0, :cond_2

    .line 278
    sget-object v0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->sLayerPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->sLayerPaint:Landroid/graphics/Paint;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mView:Landroid/view/View;

    const/4 v1, 0x2

    sget-object v2, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->sLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 285
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mCachedDrawingEnabled:Z

    .line 286
    return-void

    .line 282
    :cond_2
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mCachedDrawingEnabled:Z

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 8
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 435
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mRequestedWidth:I

    .line 436
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mRequestedHeight:I

    .line 442
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    iget v3, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mRequestedWidth:I

    iget v4, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mRequestedHeight:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/sonymobile/flix/util/Utils;->measureView(Landroid/view/View;IIZ)V

    .line 443
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->getMeasuredWidth()I

    move-result v1

    .line 444
    .local v1, "measuredWidth":I
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->getMeasuredHeight()I

    move-result v0

    .line 445
    .local v0, "measuredHeight":I
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    invoke-virtual {v2, v7, v7, v1, v0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->layout(IIII)V

    .line 449
    cmpg-float v2, p1, v6

    if-gez v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->getMeasuredWidth()I

    move-result v2

    int-to-float p1, v2

    .line 452
    :cond_0
    cmpg-float v2, p2, v6

    if-gez v2, :cond_1

    .line 453
    iget-object v2, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mContainer:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->getMeasuredHeight()I

    move-result v2

    int-to-float p2, v2

    .line 455
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/components/TouchArea;->setSize(FF)V

    .line 456
    return-void
.end method

.method public setSizeOnAdd(Z)V
    .locals 0
    .param p1, "setSizeOnAdd"    # Z

    .prologue
    .line 495
    iput-boolean p1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mSetSizeOnAdd:Z

    .line 496
    return-void
.end method

.method protected updateViewVisibility()V
    .locals 2

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mAutoUpdateViewVisibility:Z

    if-eqz v0, :cond_0

    .line 477
    iget-object v1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->mCulled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 479
    :cond_0
    return-void

    .line 477
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected visibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 460
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/TouchArea;->visibilityChanged(Z)V

    .line 461
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->updateViewVisibility()V

    .line 462
    return-void
.end method
