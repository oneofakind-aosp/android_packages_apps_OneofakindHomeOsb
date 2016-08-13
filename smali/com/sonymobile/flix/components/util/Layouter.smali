.class public Lcom/sonymobile/flix/components/util/Layouter;
.super Ljava/lang/Object;
.source "Layouter.java"


# direct methods
.method public static envelopChildren(Lcom/sonymobile/flix/components/Component;Z)V
    .locals 7
    .param p0, "myComponent"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "includeDescendants"    # Z

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    .line 565
    invoke-virtual {p0, p1}, Lcom/sonymobile/flix/components/Component;->setSizeToChildren(Z)V

    .line 566
    const/4 v5, 0x1

    move v1, v0

    move-object v2, p0

    move v3, v0

    move v4, v0

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/sonymobile/flix/components/util/Layouter;->placeChildren(FFLcom/sonymobile/flix/components/Component;FFIZ)V

    .line 568
    return-void
.end method

.method public static envelopDescendants(Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p0, "myComponent"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 584
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sonymobile/flix/components/util/Layouter;->envelopChildren(Lcom/sonymobile/flix/components/Component;Z)V

    .line 585
    return-void
.end method

.method public static place(Lcom/sonymobile/flix/components/Component;FFILcom/sonymobile/flix/components/Component;FFI)V
    .locals 6
    .param p0, "myComponent"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "myPointX"    # F
    .param p2, "myPointY"    # F
    .param p3, "myEdge"    # I
    .param p4, "against"    # Lcom/sonymobile/flix/components/Component;
    .param p5, "againstPointX"    # F
    .param p6, "againstPointY"    # F
    .param p7, "againstEdge"    # I

    .prologue
    const/4 v2, 0x1

    .line 219
    if-nez p0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Component to place must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    if-nez p4, :cond_1

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Component to place against must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_1
    invoke-static {p0}, Lcom/sonymobile/flix/components/util/Layouter;->warnPlaceBeforeAddingToParent(Lcom/sonymobile/flix/components/Component;)V

    .line 230
    cmpl-float v0, p5, v2

    if-eqz v0, :cond_2

    cmpl-float v0, p1, v2

    if-eqz v0, :cond_2

    .line 231
    invoke-virtual {p4}, Lcom/sonymobile/flix/components/Component;->getWorldX()F

    move-result v0

    invoke-virtual {p4, p5, p7}, Lcom/sonymobile/flix/components/Component;->getPointX(FI)F

    move-result v1

    add-float v4, v0, v1

    .line 237
    .local v4, "otherX":F
    :goto_0
    cmpl-float v0, p6, v2

    if-eqz v0, :cond_3

    cmpl-float v0, p2, v2

    if-eqz v0, :cond_3

    .line 238
    invoke-virtual {p4}, Lcom/sonymobile/flix/components/Component;->getWorldY()F

    move-result v0

    invoke-virtual {p4, p6, p7}, Lcom/sonymobile/flix/components/Component;->getPointY(FI)F

    move-result v1

    add-float v5, v0, v1

    .local v5, "otherY":F
    :goto_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 243
    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->placeAt(Lcom/sonymobile/flix/components/Component;FFIFF)V

    .line 244
    return-void

    .line 233
    .end local v4    # "otherX":F
    .end local v5    # "otherY":F
    :cond_2
    const/4 v4, 0x1

    .restart local v4    # "otherX":F
    goto :goto_0

    .line 240
    :cond_3
    const/4 v5, 0x1

    .restart local v5    # "otherY":F
    goto :goto_1
.end method

.method public static place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V
    .locals 8
    .param p0, "myComponent"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "myPointX"    # F
    .param p2, "myPointY"    # F
    .param p3, "against"    # Lcom/sonymobile/flix/components/Component;
    .param p4, "againstPointX"    # F
    .param p5, "againstPointY"    # F

    .prologue
    const/4 v3, 0x0

    .line 136
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, v3

    invoke-static/range {v0 .. v7}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFILcom/sonymobile/flix/components/Component;FFI)V

    .line 138
    return-void
.end method

.method public static place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FFI)V
    .locals 8
    .param p0, "myComponent"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "myPointX"    # F
    .param p2, "myPointY"    # F
    .param p3, "against"    # Lcom/sonymobile/flix/components/Component;
    .param p4, "againstPointX"    # F
    .param p5, "againstPointY"    # F
    .param p6, "againstEdge"    # I

    .prologue
    .line 186
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFILcom/sonymobile/flix/components/Component;FFI)V

    .line 188
    return-void
.end method

.method public static place(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;FF)V
    .locals 8
    .param p0, "myComponent"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "against"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "againstPointX"    # F
    .param p3, "againstPointY"    # F

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getPivotPointX()F

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getPivotPointY()F

    move-result v2

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, v3

    invoke-static/range {v0 .. v7}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFILcom/sonymobile/flix/components/Component;FFI)V

    .line 93
    return-void
.end method

.method public static placeAt(Lcom/sonymobile/flix/components/Component;FFIFF)V
    .locals 7
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "pointX"    # F
    .param p2, "pointY"    # F
    .param p3, "edge"    # I
    .param p4, "destX"    # F
    .param p5, "destY"    # F

    .prologue
    const/4 v6, 0x1

    .line 426
    if-nez p0, :cond_0

    .line 427
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Component to layout must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getX()F

    move-result v0

    .line 430
    .local v0, "newX":F
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getY()F

    move-result v1

    .line 431
    .local v1, "newY":F
    cmpl-float v4, p4, v6

    if-eqz v4, :cond_1

    cmpl-float v4, p1, v6

    if-eqz v4, :cond_1

    .line 435
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getWorldX()F

    move-result v4

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getX()F

    move-result v5

    sub-float v2, v4, v5

    .line 436
    .local v2, "parentX":F
    sub-float v4, p4, v2

    invoke-virtual {p0, p1, p3}, Lcom/sonymobile/flix/components/Component;->getPointX(FI)F

    move-result v5

    sub-float v0, v4, v5

    .line 438
    .end local v2    # "parentX":F
    :cond_1
    cmpl-float v4, p5, v6

    if-eqz v4, :cond_2

    cmpl-float v4, p2, v6

    if-eqz v4, :cond_2

    .line 442
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getWorldY()F

    move-result v4

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getY()F

    move-result v5

    sub-float v3, v4, v5

    .line 443
    .local v3, "parentY":F
    sub-float v4, p5, v3

    invoke-virtual {p0, p2, p3}, Lcom/sonymobile/flix/components/Component;->getPointY(FI)F

    move-result v5

    sub-float v1, v4, v5

    .line 445
    .end local v3    # "parentY":F
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/flix/components/Component;->setPosition(FF)V

    .line 446
    return-void
.end method

.method public static placeBetweenY(FLcom/sonymobile/flix/components/Component;FILcom/sonymobile/flix/components/Component;FILcom/sonymobile/flix/components/Component;FI)V
    .locals 8
    .param p0, "positionBetweenAB"    # F
    .param p1, "myComponent"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "myPoint"    # F
    .param p3, "myEdge"    # I
    .param p4, "a"    # Lcom/sonymobile/flix/components/Component;
    .param p5, "aPoint"    # F
    .param p6, "aEdge"    # I
    .param p7, "b"    # Lcom/sonymobile/flix/components/Component;
    .param p8, "bPoint"    # F
    .param p9, "bEdge"    # I

    .prologue
    .line 352
    invoke-static {p1}, Lcom/sonymobile/flix/components/util/Layouter;->warnPlaceBeforeAddingToParent(Lcom/sonymobile/flix/components/Component;)V

    .line 354
    invoke-virtual {p4}, Lcom/sonymobile/flix/components/Component;->getWorldY()F

    move-result v0

    invoke-virtual {p4, p5, p6}, Lcom/sonymobile/flix/components/Component;->getPointY(FI)F

    move-result v1

    add-float v6, v0, v1

    .line 355
    .local v6, "aY":F
    invoke-virtual {p7}, Lcom/sonymobile/flix/components/Component;->getWorldY()F

    move-result v0

    invoke-virtual/range {p7 .. p9}, Lcom/sonymobile/flix/components/Component;->getPointY(FI)F

    move-result v1

    add-float v7, v0, v1

    .line 356
    .local v7, "bY":F
    const/4 v1, 0x1

    const/4 v4, 0x1

    sub-float v0, v7, v6

    mul-float/2addr v0, p0

    add-float v5, v6, v0

    move-object v0, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->placeAt(Lcom/sonymobile/flix/components/Component;FFIFF)V

    .line 358
    return-void
.end method

.method public static placeBetweenY(FLcom/sonymobile/flix/components/Component;FLcom/sonymobile/flix/components/Component;FLcom/sonymobile/flix/components/Component;F)V
    .locals 10
    .param p0, "positionBetweenAB"    # F
    .param p1, "myComponent"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "myPoint"    # F
    .param p3, "a"    # Lcom/sonymobile/flix/components/Component;
    .param p4, "aPoint"    # F
    .param p5, "b"    # Lcom/sonymobile/flix/components/Component;
    .param p6, "bPoint"    # F

    .prologue
    .line 323
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-static/range {v0 .. v9}, Lcom/sonymobile/flix/components/util/Layouter;->placeBetweenY(FLcom/sonymobile/flix/components/Component;FILcom/sonymobile/flix/components/Component;FILcom/sonymobile/flix/components/Component;FI)V

    .line 325
    return-void
.end method

.method private static placeChildren(FFLcom/sonymobile/flix/components/Component;FFIZ)V
    .locals 13
    .param p0, "descendantsPointX"    # F
    .param p1, "descendantsPointY"    # F
    .param p2, "myComponent"    # Lcom/sonymobile/flix/components/Component;
    .param p3, "myPointX"    # F
    .param p4, "myPointY"    # F
    .param p5, "myEdge"    # I
    .param p6, "includeDescendants"    # Z

    .prologue
    .line 512
    invoke-virtual {p2}, Lcom/sonymobile/flix/components/Component;->hasChildren()Z

    move-result v11

    if-nez v11, :cond_0

    .line 531
    :goto_0
    return-void

    .line 515
    :cond_0
    const/4 v11, 0x0

    const/4 v12, 0x1

    move/from16 v0, p6

    invoke-virtual {p2, v11, v12, v0}, Lcom/sonymobile/flix/components/Component;->measureBounds(ZZZ)Landroid/graphics/RectF;

    move-result-object v2

    .line 516
    .local v2, "descBounds":Landroid/graphics/RectF;
    const/4 v9, 0x0

    .line 517
    .local v9, "offsetX":F
    const/4 v11, 0x1

    cmpl-float v11, p0, v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    cmpl-float v11, p3, v11

    if-eqz v11, :cond_1

    .line 518
    iget v11, v2, Landroid/graphics/RectF;->left:F

    neg-float v5, v11

    .line 519
    .local v5, "descOriginX":F
    neg-float v11, p0

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v12

    mul-float v3, v11, v12

    .line 520
    .local v3, "descOffsetX":F
    move/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {p2, v0, v1}, Lcom/sonymobile/flix/components/Component;->getPointX(FI)F

    move-result v7

    .line 521
    .local v7, "myOffsetX":F
    add-float v11, v5, v3

    add-float v9, v11, v7

    .line 523
    .end local v3    # "descOffsetX":F
    .end local v5    # "descOriginX":F
    .end local v7    # "myOffsetX":F
    :cond_1
    const/4 v10, 0x0

    .line 524
    .local v10, "offsetY":F
    const/4 v11, 0x1

    cmpl-float v11, p1, v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    cmpl-float v11, p4, v11

    if-eqz v11, :cond_2

    .line 525
    iget v11, v2, Landroid/graphics/RectF;->top:F

    neg-float v6, v11

    .line 526
    .local v6, "descOriginY":F
    neg-float v11, p1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float v4, v11, v12

    .line 527
    .local v4, "descOffsetY":F
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {p2, v0, v1}, Lcom/sonymobile/flix/components/Component;->getPointY(FI)F

    move-result v8

    .line 528
    .local v8, "myOffsetY":F
    add-float v11, v6, v4

    add-float v10, v11, v8

    .line 530
    .end local v4    # "descOffsetY":F
    .end local v6    # "descOriginY":F
    .end local v8    # "myOffsetY":F
    :cond_2
    invoke-virtual {p2, v9, v10}, Lcom/sonymobile/flix/components/Component;->moveChildren(FF)V

    goto :goto_0
.end method

.method public static placeDescendants(FFLcom/sonymobile/flix/components/Component;FF)V
    .locals 6
    .param p0, "descendantsPointX"    # F
    .param p1, "descendantsPointY"    # F
    .param p2, "myComponent"    # Lcom/sonymobile/flix/components/Component;
    .param p3, "myPointX"    # F
    .param p4, "myPointY"    # F

    .prologue
    .line 471
    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->placeDescendants(FFLcom/sonymobile/flix/components/Component;FFI)V

    .line 473
    return-void
.end method

.method public static placeDescendants(FFLcom/sonymobile/flix/components/Component;FFI)V
    .locals 7
    .param p0, "descendantsPointX"    # F
    .param p1, "descendantsPointY"    # F
    .param p2, "myComponent"    # Lcom/sonymobile/flix/components/Component;
    .param p3, "myPointX"    # F
    .param p4, "myPointY"    # F
    .param p5, "myEdge"    # I

    .prologue
    .line 505
    const/4 v6, 0x1

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/sonymobile/flix/components/util/Layouter;->placeChildren(FFLcom/sonymobile/flix/components/Component;FFIZ)V

    .line 507
    return-void
.end method

.method public static snapToPixel(Lcom/sonymobile/flix/components/Component;)V
    .locals 5
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    const/4 v4, 0x0

    .line 628
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getWorldX()F

    move-result v2

    invoke-virtual {p0, v4}, Lcom/sonymobile/flix/components/Component;->getPointX(F)F

    move-result v3

    add-float v0, v2, v3

    .line 629
    .local v0, "left":F
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getWorldY()F

    move-result v2

    invoke-virtual {p0, v4}, Lcom/sonymobile/flix/components/Component;->getPointY(F)F

    move-result v3

    add-float v1, v2, v3

    .line 630
    .local v1, "top":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/flix/components/Component;->move(FF)V

    .line 631
    return-void
.end method

.method public static snapToPixel(Lcom/sonymobile/flix/components/Component;FF)V
    .locals 7
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "directionX"    # F
    .param p2, "directionY"    # F

    .prologue
    const/4 v6, 0x0

    .line 645
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getWorldX()F

    move-result v4

    invoke-virtual {p0, v6}, Lcom/sonymobile/flix/components/Component;->getPointX(F)F

    move-result v5

    add-float v2, v4, v5

    .line 646
    .local v2, "left":F
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getWorldY()F

    move-result v4

    invoke-virtual {p0, v6}, Lcom/sonymobile/flix/components/Component;->getPointY(F)F

    move-result v5

    add-float v3, v4, v5

    .line 647
    .local v3, "top":F
    add-float v4, v2, p1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    sub-float v0, v4, v2

    .line 648
    .local v0, "dx":F
    add-float v4, v3, p2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    sub-float v1, v4, v3

    .line 649
    .local v1, "dy":F
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/flix/components/Component;->move(FF)V

    .line 650
    return-void
.end method

.method private static warnPlaceBeforeAddingToParent(Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getParent()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    if-nez v0, :cond_0

    .line 719
    invoke-static {p0}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$LayouterWarnings;->placeBeforeAddingToParent(Lcom/sonymobile/flix/components/Component;)V

    .line 721
    :cond_0
    return-void
.end method
