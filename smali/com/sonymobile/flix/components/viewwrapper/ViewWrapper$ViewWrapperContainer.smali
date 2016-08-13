.class public Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;
.super Landroid/view/ViewGroup;
.source "ViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewWrapperContainer"
.end annotation


# instance fields
.field private mFullInvalidate:Z

.field private mViewWrapper:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 587
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 588
    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->setWillNotDraw(Z)V

    .line 589
    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->setWillNotCacheDrawing(Z)V

    .line 590
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->getDrawingTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 641
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 598
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 603
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->mFullInvalidate:Z

    .line 604
    return-void
.end method

.method public invalidate(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 608
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->mFullInvalidate:Z

    .line 614
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 618
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->mFullInvalidate:Z

    .line 624
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 650
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->mViewWrapper:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    iget-boolean v1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->mFullInvalidate:Z

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->invalidate(Z)V

    .line 651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->mFullInvalidate:Z

    .line 652
    const/4 v0, 0x0

    return-object v0
.end method

.method protected invalidateChildInParentFast(IILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 657
    iget-object v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->mViewWrapper:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    iget-boolean v1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->mFullInvalidate:Z

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->invalidate(Z)V

    .line 658
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->mFullInvalidate:Z

    .line 659
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 628
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 629
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 633
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 634
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 635
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->resolveSize(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, p2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->resolveSize(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->setMeasuredDimension(II)V

    .line 637
    return-void
.end method

.method protected setViewWrapper(Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;)V
    .locals 0
    .param p1, "viewWrapper"    # Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;->mViewWrapper:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    .line 594
    return-void
.end method
