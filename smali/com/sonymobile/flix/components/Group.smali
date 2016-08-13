.class public Lcom/sonymobile/flix/components/Group;
.super Lcom/sonymobile/flix/components/Component;
.source "Group.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/flix/components/Group;->mPaint:Landroid/graphics/Paint;

    .line 34
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FFLcom/sonymobile/flix/components/Component$DrawingState;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "worldX"    # F
    .param p3, "worldY"    # F
    .param p4, "drawingState"    # Lcom/sonymobile/flix/components/Component$DrawingState;

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/Group;->mSetToVisible:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/sonymobile/flix/components/Group;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sonymobile/flix/components/Group;->drawChildren(Landroid/graphics/Canvas;FFLcom/sonymobile/flix/components/Component$DrawingState;)V

    .line 166
    :cond_0
    return-void
.end method

.method public move(FF)V
    .locals 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 75
    iget v0, p0, Lcom/sonymobile/flix/components/Group;->mX:F

    .line 76
    .local v0, "prevX":F
    iget v1, p0, Lcom/sonymobile/flix/components/Group;->mY:F

    .line 77
    .local v1, "prevY":F
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/components/Component;->move(FF)V

    .line 78
    iget v2, p0, Lcom/sonymobile/flix/components/Group;->mX:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/sonymobile/flix/components/Group;->mY:F

    sub-float/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/flix/components/Group;->moveChildren(FF)V

    .line 79
    return-void
.end method

.method public moveZ(F)V
    .locals 2
    .param p1, "dz"    # F

    .prologue
    .line 83
    iget v0, p0, Lcom/sonymobile/flix/components/Group;->mZ:F

    .line 84
    .local v0, "prevZ":F
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Component;->moveZ(F)V

    .line 85
    iget v1, p0, Lcom/sonymobile/flix/components/Group;->mZ:F

    sub-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/components/Group;->moveChildrenZ(F)V

    .line 86
    return-void
.end method

.method public prepareForDrawing()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "argb"    # I

    .prologue
    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCameraPerspective(F)V
    .locals 1
    .param p1, "zoomFactor"    # F

    .prologue
    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCameraProjection(I)V
    .locals 1
    .param p1, "projection"    # I

    .prologue
    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setClippingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCullDescendants(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCullingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPosition(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 38
    iget v0, p0, Lcom/sonymobile/flix/components/Group;->mX:F

    .line 39
    .local v0, "prevX":F
    iget v1, p0, Lcom/sonymobile/flix/components/Group;->mY:F

    .line 40
    .local v1, "prevY":F
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/components/Component;->setPosition(FF)V

    .line 41
    iget v2, p0, Lcom/sonymobile/flix/components/Group;->mX:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/sonymobile/flix/components/Group;->mY:F

    sub-float/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/flix/components/Group;->moveChildren(FF)V

    .line 42
    return-void
.end method

.method public setPosition(FFFF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F

    .prologue
    .line 46
    iget v0, p0, Lcom/sonymobile/flix/components/Group;->mX:F

    .line 47
    .local v0, "prevX":F
    iget v1, p0, Lcom/sonymobile/flix/components/Group;->mY:F

    .line 48
    .local v1, "prevY":F
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonymobile/flix/components/Component;->setPosition(FFFF)V

    .line 49
    iget v2, p0, Lcom/sonymobile/flix/components/Group;->mX:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/sonymobile/flix/components/Group;->mY:F

    sub-float/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/flix/components/Group;->moveChildren(FF)V

    .line 50
    return-void
.end method

.method public setRotation(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setScaling(F)V
    .locals 1
    .param p1, "scaling"    # F

    .prologue
    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setScaling(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setX(F)V
    .locals 3
    .param p1, "x"    # F

    .prologue
    .line 54
    iget v0, p0, Lcom/sonymobile/flix/components/Group;->mX:F

    .line 55
    .local v0, "prevX":F
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Component;->setX(F)V

    .line 56
    iget v1, p0, Lcom/sonymobile/flix/components/Group;->mX:F

    sub-float/2addr v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/flix/components/Group;->moveChildren(FF)V

    .line 57
    return-void
.end method

.method public setY(F)V
    .locals 3
    .param p1, "y"    # F

    .prologue
    .line 61
    iget v0, p0, Lcom/sonymobile/flix/components/Group;->mY:F

    .line 62
    .local v0, "prevY":F
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Component;->setY(F)V

    .line 63
    const/4 v1, 0x0

    iget v2, p0, Lcom/sonymobile/flix/components/Group;->mY:F

    sub-float/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/flix/components/Group;->moveChildren(FF)V

    .line 64
    return-void
.end method

.method public setZ(F)V
    .locals 2
    .param p1, "z"    # F

    .prologue
    .line 68
    iget v0, p0, Lcom/sonymobile/flix/components/Group;->mZ:F

    .line 69
    .local v0, "prevZ":F
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Component;->setZ(F)V

    .line 70
    iget v1, p0, Lcom/sonymobile/flix/components/Group;->mZ:F

    sub-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sonymobile/flix/components/Group;->moveChildrenZ(F)V

    .line 71
    return-void
.end method
