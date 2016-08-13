.class public Lcom/sonymobile/flix/test/ProxyView;
.super Landroid/view/View;
.source "ProxyView.java"

# interfaces
.implements Lcom/sonymobile/flix/test/TestProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/test/ProxyView$ProxyViewChangeHandler;
    }
.end annotation


# instance fields
.field protected mBoundingRect:Landroid/graphics/RectF;

.field protected mComponent:Lcom/sonymobile/flix/components/Component;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p2, p0, Lcom/sonymobile/flix/test/ProxyView;->mComponent:Lcom/sonymobile/flix/components/Component;

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/test/ProxyView;->mBoundingRect:Landroid/graphics/RectF;

    .line 32
    invoke-static {p0, p2}, Lcom/sonymobile/flix/test/ProxyView;->setupProxyView(Landroid/view/View;Lcom/sonymobile/flix/components/Component;)V

    .line 33
    return-void
.end method

.method public static getVisibility(Lcom/sonymobile/flix/components/Component;)I
    .locals 1
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static isShown(Lcom/sonymobile/flix/components/Component;)Z
    .locals 1
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->isCulled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setupProxyView(Landroid/view/View;Lcom/sonymobile/flix/components/Component;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    const/4 v1, 0x1

    .line 110
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    .line 114
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 115
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 116
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 118
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getListeners()Lcom/sonymobile/flix/components/ComponentListeners;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/flix/test/ProxyView$ProxyViewChangeHandler;

    invoke-direct {v1, p0}, Lcom/sonymobile/flix/test/ProxyView$ProxyViewChangeHandler;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/ComponentListeners;->addListener(Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 99
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 103
    return-void
.end method

.method public getComponent()Lcom/sonymobile/flix/components/Component;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/flix/test/ProxyView;->mComponent:Lcom/sonymobile/flix/components/Component;

    return-object v0
.end method

.method public getLocationInWindow([I)V
    .locals 3
    .param p1, "location"    # [I

    .prologue
    const/high16 v2, -0x80000000

    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/sonymobile/flix/test/ProxyView;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/sonymobile/flix/test/ProxyView;->layout(IIII)V

    .line 75
    invoke-super {p0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    aput v2, p1, v1

    .line 83
    const/4 v0, 0x1

    aput v2, p1, v0

    goto :goto_0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/flix/test/ProxyView;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-static {v0}, Lcom/sonymobile/flix/test/ProxyView;->getVisibility(Lcom/sonymobile/flix/components/Component;)I

    move-result v0

    return v0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonymobile/flix/test/ProxyView;->mComponent:Lcom/sonymobile/flix/components/Component;

    invoke-static {v0}, Lcom/sonymobile/flix/test/ProxyView;->isShown(Lcom/sonymobile/flix/components/Component;)Z

    move-result v0

    return v0
.end method

.method public layout(IIII)V
    .locals 8
    .param p1, "unusedLeft"    # I
    .param p2, "unusedTop"    # I
    .param p3, "unusedRight"    # I
    .param p4, "unusedBottom"    # I

    .prologue
    const-wide v6, 0x3fefffffca501acbL    # 0.9999999

    .line 56
    iget-object v4, p0, Lcom/sonymobile/flix/test/ProxyView;->mComponent:Lcom/sonymobile/flix/components/Component;

    iget-object v5, p0, Lcom/sonymobile/flix/test/ProxyView;->mBoundingRect:Landroid/graphics/RectF;

    invoke-static {v4, v5}, Lcom/sonymobile/flix/components/ComponentTransform;->calculateComponentBoundingRectOnScreen(Lcom/sonymobile/flix/components/Component;Landroid/graphics/RectF;)V

    .line 57
    iget-object v4, p0, Lcom/sonymobile/flix/test/ProxyView;->mBoundingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v1, v4

    .line 58
    .local v1, "l":I
    iget-object v4, p0, Lcom/sonymobile/flix/test/ProxyView;->mBoundingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v3, v4

    .line 59
    .local v3, "t":I
    iget-object v4, p0, Lcom/sonymobile/flix/test/ProxyView;->mBoundingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    add-double/2addr v4, v6

    double-to-int v2, v4

    .line 60
    .local v2, "r":I
    iget-object v4, p0, Lcom/sonymobile/flix/test/ProxyView;->mBoundingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v4

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 61
    .local v0, "b":I
    sub-int v4, v2, v1

    sub-int v5, v0, v3

    invoke-virtual {p0, v4, v5}, Lcom/sonymobile/flix/test/ProxyView;->setMeasuredDimension(II)V

    .line 62
    invoke-super {p0, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 63
    return-void
.end method

.method public onAddedForComponent(Lcom/sonymobile/flix/components/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 37
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 107
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const-wide v6, 0x3fefffffca501acbL    # 0.9999999

    .line 46
    iget-object v4, p0, Lcom/sonymobile/flix/test/ProxyView;->mComponent:Lcom/sonymobile/flix/components/Component;

    iget-object v5, p0, Lcom/sonymobile/flix/test/ProxyView;->mBoundingRect:Landroid/graphics/RectF;

    invoke-static {v4, v5}, Lcom/sonymobile/flix/components/ComponentTransform;->calculateComponentBoundingRectOnScreen(Lcom/sonymobile/flix/components/Component;Landroid/graphics/RectF;)V

    .line 47
    iget-object v4, p0, Lcom/sonymobile/flix/test/ProxyView;->mBoundingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v1, v4

    .line 48
    .local v1, "l":I
    iget-object v4, p0, Lcom/sonymobile/flix/test/ProxyView;->mBoundingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v3, v4

    .line 49
    .local v3, "t":I
    iget-object v4, p0, Lcom/sonymobile/flix/test/ProxyView;->mBoundingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    add-double/2addr v4, v6

    double-to-int v2, v4

    .line 50
    .local v2, "r":I
    iget-object v4, p0, Lcom/sonymobile/flix/test/ProxyView;->mBoundingRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v4

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 51
    .local v0, "b":I
    sub-int v4, v2, v1

    sub-int v5, v0, v3

    invoke-virtual {p0, v4, v5}, Lcom/sonymobile/flix/test/ProxyView;->setMeasuredDimension(II)V

    .line 52
    return-void
.end method
