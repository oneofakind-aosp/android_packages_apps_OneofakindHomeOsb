.class public Lcom/sonymobile/flix/components/ComponentTransform;
.super Ljava/lang/Object;
.source "ComponentTransform.java"


# static fields
.field private static TEMP_FLOATS_2:[F

.field private static TEMP_FLOATS_8:[F

.field private static TEMP_FLOATS_9:[F

.field private static TEMP_RECT1:Landroid/graphics/RectF;

.field private static TEMP_RECT2:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x8

    new-array v0, v0, [F

    sput-object v0, Lcom/sonymobile/flix/components/ComponentTransform;->TEMP_FLOATS_8:[F

    .line 14
    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lcom/sonymobile/flix/components/ComponentTransform;->TEMP_FLOATS_9:[F

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/sonymobile/flix/components/ComponentTransform;->TEMP_FLOATS_2:[F

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/sonymobile/flix/components/ComponentTransform;->TEMP_RECT1:Landroid/graphics/RectF;

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/sonymobile/flix/components/ComponentTransform;->TEMP_RECT2:Landroid/graphics/RectF;

    return-void
.end method

.method public static calculateBoundingRect([FIILandroid/graphics/RectF;)V
    .locals 9
    .param p0, "points"    # [F
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "outRect"    # Landroid/graphics/RectF;

    .prologue
    .line 201
    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 202
    .local v4, "minX":F
    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 203
    .local v5, "minY":F
    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    .line 204
    .local v2, "maxX":F
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    .line 207
    .local v3, "maxY":F
    add-int v0, p1, p2

    .line 208
    .local v0, "end":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 209
    aget v6, p0, v1

    .line 210
    .local v6, "pointX":F
    add-int/lit8 v8, v1, 0x1

    aget v7, p0, v8

    .line 211
    .local v7, "pointY":F
    cmpg-float v8, v6, v4

    if-gez v8, :cond_0

    .line 212
    move v4, v6

    .line 214
    :cond_0
    cmpl-float v8, v6, v2

    if-lez v8, :cond_1

    .line 215
    move v2, v6

    .line 217
    :cond_1
    cmpg-float v8, v7, v5

    if-gez v8, :cond_2

    .line 218
    move v5, v7

    .line 220
    :cond_2
    cmpl-float v8, v7, v3

    if-lez v8, :cond_3

    .line 221
    move v3, v7

    .line 208
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 225
    .end local v6    # "pointX":F
    .end local v7    # "pointY":F
    :cond_4
    iput v4, p3, Landroid/graphics/RectF;->left:F

    .line 226
    iput v5, p3, Landroid/graphics/RectF;->top:F

    .line 227
    iput v2, p3, Landroid/graphics/RectF;->right:F

    .line 228
    iput v3, p3, Landroid/graphics/RectF;->bottom:F

    .line 229
    return-void
.end method

.method public static calculateComponentBoundingRectOnScreen(Lcom/sonymobile/flix/components/Component;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 462
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 463
    .local v0, "bounds":Landroid/graphics/RectF;
    invoke-static {p0, v0}, Lcom/sonymobile/flix/components/ComponentTransform;->calculateComponentBoundingRectOnScreen(Lcom/sonymobile/flix/components/Component;Landroid/graphics/RectF;)V

    .line 464
    return-object v0
.end method

.method public static calculateComponentBoundingRectOnScreen(Lcom/sonymobile/flix/components/Component;Landroid/graphics/RectF;)V
    .locals 7
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "outRect"    # Landroid/graphics/RectF;

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 478
    .local v4, "transform":Landroid/graphics/Matrix;
    if-nez v4, :cond_1

    .line 479
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mDrawnLeft:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 480
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mDrawnLeft:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 481
    iget v0, p0, Lcom/sonymobile/flix/components/Component;->mDrawnTop:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 482
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sonymobile/flix/components/Component;->mWidth:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 483
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/sonymobile/flix/components/Component;->mHeight:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 494
    :goto_0
    return-void

    .line 485
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    goto :goto_0

    .line 488
    :cond_1
    sget-object v6, Lcom/sonymobile/flix/components/ComponentTransform;->TEMP_FLOATS_8:[F

    monitor-enter v6

    .line 489
    :try_start_0
    sget-object v5, Lcom/sonymobile/flix/components/ComponentTransform;->TEMP_FLOATS_8:[F

    .line 490
    .local v5, "points":[F
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/sonymobile/flix/components/Component;->mWidth:F

    iget v3, p0, Lcom/sonymobile/flix/components/Component;->mHeight:F

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/ComponentTransform;->transformRectangle(FFFFLandroid/graphics/Matrix;[F)V

    .line 491
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {v5, v0, v1, p1}, Lcom/sonymobile/flix/components/ComponentTransform;->calculateBoundingRect([FIILandroid/graphics/RectF;)V

    .line 492
    monitor-exit v6

    goto :goto_0

    .end local v5    # "points":[F
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static intersectPointWithBoundingRect(FF[FII)Z
    .locals 9
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "points"    # [F
    .param p3, "offset"    # I
    .param p4, "count"    # I

    .prologue
    .line 244
    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 245
    .local v4, "minX":F
    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 246
    .local v5, "minY":F
    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    .line 247
    .local v2, "maxX":F
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    .line 250
    .local v3, "maxY":F
    add-int v0, p3, p4

    .line 251
    .local v0, "end":I
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 252
    aget v6, p2, v1

    .line 253
    .local v6, "pointX":F
    add-int/lit8 v8, v1, 0x1

    aget v7, p2, v8

    .line 254
    .local v7, "pointY":F
    cmpg-float v8, v6, v4

    if-gez v8, :cond_0

    .line 255
    move v4, v6

    .line 257
    :cond_0
    cmpl-float v8, v6, v2

    if-lez v8, :cond_1

    .line 258
    move v2, v6

    .line 260
    :cond_1
    cmpg-float v8, v7, v5

    if-gez v8, :cond_2

    .line 261
    move v5, v7

    .line 263
    :cond_2
    cmpl-float v8, v7, v3

    if-lez v8, :cond_3

    .line 264
    move v3, v7

    .line 251
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 268
    .end local v6    # "pointX":F
    .end local v7    # "pointY":F
    :cond_4
    cmpl-float v8, p0, v4

    if-ltz v8, :cond_5

    cmpg-float v8, p0, v2

    if-gtz v8, :cond_5

    cmpl-float v8, p1, v5

    if-ltz v8, :cond_5

    cmpg-float v8, p1, v3

    if-gtz v8, :cond_5

    const/4 v8, 0x1

    :goto_1
    return v8

    :cond_5
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static projectComponentPointOnScreen(Lcom/sonymobile/flix/components/Component;FF[F)V
    .locals 4
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "pointX"    # F
    .param p2, "pointY"    # F
    .param p3, "outCoords"    # [F

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 443
    .local v0, "transform":Landroid/graphics/Matrix;
    if-nez v0, :cond_0

    .line 444
    const/4 v1, 0x0

    iget v2, p0, Lcom/sonymobile/flix/components/Component;->mDrawnLeft:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonymobile/flix/components/Component;->mWidth:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    aput v2, p3, v1

    .line 445
    const/4 v1, 0x1

    iget v2, p0, Lcom/sonymobile/flix/components/Component;->mDrawnTop:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonymobile/flix/components/Component;->mHeight:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    aput v2, p3, v1

    .line 452
    :goto_0
    return-void

    .line 449
    :cond_0
    iget v1, p0, Lcom/sonymobile/flix/components/Component;->mWidth:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/sonymobile/flix/components/Component;->mHeight:F

    mul-float/2addr v2, p2

    invoke-static {v1, v2, v0, p3}, Lcom/sonymobile/flix/components/ComponentTransform;->transformPoint(FFLandroid/graphics/Matrix;[F)V

    goto :goto_0
.end method

.method public static projectPointOnRectangle(FFFFFFFF[F)Z
    .locals 7
    .param p0, "px"    # F
    .param p1, "py"    # F
    .param p2, "ax"    # F
    .param p3, "ay"    # F
    .param p4, "bx"    # F
    .param p5, "by"    # F
    .param p6, "cx"    # F
    .param p7, "cy"    # F
    .param p8, "outCoords"    # [F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 179
    sget-object v4, Lcom/sonymobile/flix/components/ComponentTransform;->TEMP_FLOATS_2:[F

    monitor-enter v4

    .line 180
    if-nez p8, :cond_0

    .line 181
    :try_start_0
    sget-object p8, Lcom/sonymobile/flix/components/ComponentTransform;->TEMP_FLOATS_2:[F

    .line 183
    :cond_0
    invoke-static/range {p0 .. p8}, Lcom/sonymobile/flix/components/ComponentTransform;->projectPointOnTriangle(FFFFFFFF[F)Z

    .line 184
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    aget v0, p8, v3

    .line 186
    .local v0, "u":F
    aget v1, p8, v2

    .line 188
    .local v1, "v":F
    cmpl-float v4, v0, v5

    if-ltz v4, :cond_1

    cmpl-float v4, v1, v5

    if-ltz v4, :cond_1

    cmpg-float v4, v0, v6

    if-gez v4, :cond_1

    cmpg-float v4, v1, v6

    if-gez v4, :cond_1

    :goto_0
    return v2

    .line 184
    .end local v0    # "u":F
    .end local v1    # "v":F
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v0    # "u":F
    .restart local v1    # "v":F
    :cond_1
    move v2, v3

    .line 188
    goto :goto_0
.end method

.method public static projectPointOnTriangle(FFFFFFFF[F)Z
    .locals 17
    .param p0, "px"    # F
    .param p1, "py"    # F
    .param p2, "ax"    # F
    .param p3, "ay"    # F
    .param p4, "bx"    # F
    .param p5, "by"    # F
    .param p6, "cx"    # F
    .param p7, "cy"    # F
    .param p8, "outCoords"    # [F

    .prologue
    .line 132
    sub-float v8, p6, p2

    .line 133
    .local v8, "v0x":F
    sub-float v9, p7, p3

    .line 134
    .local v9, "v0y":F
    sub-float v10, p4, p2

    .line 135
    .local v10, "v1x":F
    sub-float v11, p5, p3

    .line 136
    .local v11, "v1y":F
    sub-float v12, p0, p2

    .line 137
    .local v12, "v2x":F
    sub-float v13, p1, p3

    .line 140
    .local v13, "v2y":F
    mul-float v14, v8, v8

    mul-float v15, v9, v9

    add-float v0, v14, v15

    .line 141
    .local v0, "dot00":F
    mul-float v14, v8, v10

    mul-float v15, v9, v11

    add-float v1, v14, v15

    .line 142
    .local v1, "dot01":F
    mul-float v14, v8, v12

    mul-float v15, v9, v13

    add-float v2, v14, v15

    .line 143
    .local v2, "dot02":F
    mul-float v14, v10, v10

    mul-float v15, v11, v11

    add-float v3, v14, v15

    .line 144
    .local v3, "dot11":F
    mul-float v14, v10, v12

    mul-float v15, v11, v13

    add-float v4, v14, v15

    .line 147
    .local v4, "dot12":F
    const/high16 v14, 0x3f800000    # 1.0f

    mul-float v15, v0, v3

    mul-float v16, v1, v1

    sub-float v15, v15, v16

    div-float v5, v14, v15

    .line 148
    .local v5, "invDenom":F
    mul-float v14, v3, v2

    mul-float v15, v1, v4

    sub-float/2addr v14, v15

    mul-float v6, v14, v5

    .line 149
    .local v6, "u":F
    mul-float v14, v0, v4

    mul-float v15, v1, v2

    sub-float/2addr v14, v15

    mul-float v7, v14, v5

    .line 151
    .local v7, "v":F
    if-eqz p8, :cond_0

    .line 152
    const/4 v14, 0x0

    aput v6, p8, v14

    .line 153
    const/4 v14, 0x1

    aput v7, p8, v14

    .line 157
    :cond_0
    const/4 v14, 0x0

    cmpl-float v14, v6, v14

    if-ltz v14, :cond_1

    const/4 v14, 0x0

    cmpl-float v14, v7, v14

    if-ltz v14, :cond_1

    add-float v14, v6, v7

    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v14, v14, v15

    if-gez v14, :cond_1

    const/4 v14, 0x1

    :goto_0
    return v14

    :cond_1
    const/4 v14, 0x0

    goto :goto_0
.end method

.method public static projectScreenPointOnComponent(Lcom/sonymobile/flix/components/Component;FFZ[F)Z
    .locals 6
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "projectIfOutside"    # Z
    .param p4, "outCoords"    # [F

    .prologue
    .line 305
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/ComponentTransform;->projectScreenPointOnComponent(Lcom/sonymobile/flix/components/Component;IFFZ[F)Z

    move-result v0

    return v0
.end method

.method public static projectScreenPointOnComponent(Lcom/sonymobile/flix/components/Component;FF[F)Z
    .locals 6
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "outCoords"    # [F

    .prologue
    const/4 v1, 0x1

    .line 284
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, v1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/ComponentTransform;->projectScreenPointOnComponent(Lcom/sonymobile/flix/components/Component;IFFZ[F)Z

    move-result v0

    return v0
.end method

.method public static projectScreenPointOnComponent(Lcom/sonymobile/flix/components/Component;IFFZ[F)Z
    .locals 21
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "edge"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "projectIfOutside"    # Z
    .param p5, "outCoords"    # [F

    .prologue
    .line 333
    const/4 v8, 0x1

    move/from16 v0, p1

    if-ne v0, v8, :cond_2

    .line 334
    const/4 v2, 0x0

    .line 335
    .local v2, "left":F
    const/4 v3, 0x0

    .line 336
    .local v3, "top":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/flix/components/Component;->mWidth:F

    .line 337
    .local v4, "right":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/flix/components/Component;->mHeight:F

    .line 352
    .local v5, "bottom":F
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/flix/components/Component;->getTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    .line 355
    .local v6, "transform":Landroid/graphics/Matrix;
    if-nez v6, :cond_5

    .line 356
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonymobile/flix/components/Component;->mDrawnLeft:I

    int-to-float v8, v8

    add-float/2addr v2, v8

    .line 357
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonymobile/flix/components/Component;->mDrawnTop:I

    int-to-float v8, v8

    add-float/2addr v3, v8

    .line 358
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonymobile/flix/components/Component;->mDrawnLeft:I

    int-to-float v8, v8

    add-float/2addr v4, v8

    .line 359
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonymobile/flix/components/Component;->mDrawnTop:I

    int-to-float v8, v8

    add-float/2addr v5, v8

    .line 360
    cmpl-float v8, p2, v2

    if-ltz v8, :cond_4

    cmpl-float v8, p3, v3

    if-ltz v8, :cond_4

    cmpg-float v8, p2, v4

    if-gtz v8, :cond_4

    cmpg-float v8, p3, v5

    if-gtz v8, :cond_4

    const/16 v17, 0x1

    .line 361
    .local v17, "insideRectangle":Z
    :goto_1
    if-eqz p5, :cond_1

    if-nez p4, :cond_0

    if-eqz v17, :cond_1

    .line 362
    :cond_0
    const/4 v8, 0x0

    sub-float v9, p2, v2

    aput v9, p5, v8

    .line 363
    const/4 v8, 0x1

    sub-float v9, p3, v3

    aput v9, p5, v8

    .line 393
    .end local v17    # "insideRectangle":Z
    :cond_1
    :goto_2
    return v17

    .line 338
    .end local v2    # "left":F
    .end local v3    # "top":F
    .end local v4    # "right":F
    .end local v5    # "bottom":F
    .end local v6    # "transform":Landroid/graphics/Matrix;
    :cond_2
    if-nez p1, :cond_3

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/flix/components/Component;->getPadding()Landroid/graphics/RectF;

    move-result-object v19

    .line 340
    .local v19, "padding":Landroid/graphics/RectF;
    move-object/from16 v0, v19

    iget v8, v0, Landroid/graphics/RectF;->left:F

    neg-float v2, v8

    .line 341
    .restart local v2    # "left":F
    move-object/from16 v0, v19

    iget v8, v0, Landroid/graphics/RectF;->top:F

    neg-float v3, v8

    .line 342
    .restart local v3    # "top":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonymobile/flix/components/Component;->mWidth:F

    move-object/from16 v0, v19

    iget v9, v0, Landroid/graphics/RectF;->right:F

    add-float v4, v8, v9

    .line 343
    .restart local v4    # "right":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonymobile/flix/components/Component;->mHeight:F

    move-object/from16 v0, v19

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    add-float v5, v8, v9

    .line 344
    .restart local v5    # "bottom":F
    goto :goto_0

    .line 345
    .end local v2    # "left":F
    .end local v3    # "top":F
    .end local v4    # "right":F
    .end local v5    # "bottom":F
    .end local v19    # "padding":Landroid/graphics/RectF;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/flix/components/Component;->getInnerMargin()Landroid/graphics/RectF;

    move-result-object v18

    .line 346
    .local v18, "margin":Landroid/graphics/RectF;
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 347
    .restart local v2    # "left":F
    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 348
    .restart local v3    # "top":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonymobile/flix/components/Component;->mWidth:F

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/RectF;->right:F

    sub-float v4, v8, v9

    .line 349
    .restart local v4    # "right":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonymobile/flix/components/Component;->mHeight:F

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v8, v9

    .restart local v5    # "bottom":F
    goto/16 :goto_0

    .line 360
    .end local v18    # "margin":Landroid/graphics/RectF;
    .restart local v6    # "transform":Landroid/graphics/Matrix;
    :cond_4
    const/16 v17, 0x0

    goto :goto_1

    .line 370
    :cond_5
    sget-object v20, Lcom/sonymobile/flix/components/ComponentTransform;->TEMP_FLOATS_8:[F

    monitor-enter v20

    .line 371
    :try_start_0
    sget-object v7, Lcom/sonymobile/flix/components/ComponentTransform;->TEMP_FLOATS_8:[F

    .line 372
    .local v7, "points":[F
    invoke-static/range {v2 .. v7}, Lcom/sonymobile/flix/components/ComponentTransform;->transformRectangle(FFFFLandroid/graphics/Matrix;[F)V

    .line 375
    if-eqz p4, :cond_6

    if-nez p5, :cond_7

    :cond_6
    const/4 v8, 0x0

    const/16 v9, 0x8

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v7, v8, v9}, Lcom/sonymobile/flix/components/ComponentTransform;->intersectPointWithBoundingRect(FF[FII)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 380
    :cond_7
    const/4 v8, 0x0

    aget v10, v7, v8

    const/4 v8, 0x1

    aget v11, v7, v8

    const/4 v8, 0x2

    aget v12, v7, v8

    const/4 v8, 0x3

    aget v13, v7, v8

    const/4 v8, 0x4

    aget v14, v7, v8

    const/4 v8, 0x5

    aget v15, v7, v8

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v16, p5

    invoke-static/range {v8 .. v16}, Lcom/sonymobile/flix/components/ComponentTransform;->projectPointOnRectangle(FFFFFFFF[F)Z

    move-result v17

    .line 384
    .restart local v17    # "insideRectangle":Z
    if-eqz p5, :cond_9

    if-nez p4, :cond_8

    if-eqz v17, :cond_9

    .line 386
    :cond_8
    const/4 v8, 0x0

    aget v9, p5, v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sonymobile/flix/components/Component;->mWidth:F

    mul-float/2addr v9, v10

    aput v9, p5, v8

    .line 387
    const/4 v8, 0x1

    aget v9, p5, v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sonymobile/flix/components/Component;->mHeight:F

    mul-float/2addr v9, v10

    aput v9, p5, v8

    .line 390
    :cond_9
    monitor-exit v20

    goto/16 :goto_2

    .line 392
    .end local v7    # "points":[F
    .end local v17    # "insideRectangle":Z
    :catchall_0
    move-exception v8

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v7    # "points":[F
    :cond_a
    :try_start_1
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    const/16 v17, 0x0

    goto/16 :goto_2
.end method

.method public static transformPoint(FFLandroid/graphics/Matrix;[F)V
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "outPoints"    # [F

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 66
    aput p0, p3, v0

    .line 67
    aput p1, p3, v1

    .line 69
    invoke-static {p3, v0, v1, p2, p3}, Lcom/sonymobile/flix/components/ComponentTransform;->transformPoints([FIILandroid/graphics/Matrix;[F)V

    .line 70
    return-void
.end method

.method public static transformPoints([FIILandroid/graphics/Matrix;[F)V
    .locals 12
    .param p0, "points"    # [F
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "matrix"    # Landroid/graphics/Matrix;
    .param p4, "outPoints"    # [F

    .prologue
    .line 88
    sget-object v10, Lcom/sonymobile/flix/components/ComponentTransform;->TEMP_FLOATS_9:[F

    monitor-enter v10

    .line 89
    :try_start_0
    sget-object v3, Lcom/sonymobile/flix/components/ComponentTransform;->TEMP_FLOATS_9:[F

    .line 90
    .local v3, "matrixValues":[F
    invoke-virtual {p3, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 92
    mul-int/lit8 v9, p2, 0x2

    add-int v0, p1, v9

    .line 93
    .local v0, "end":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 94
    aget v4, p0, v1

    .line 95
    .local v4, "sx":F
    add-int/lit8 v9, v1, 0x1

    aget v5, p0, v9

    .line 96
    .local v5, "sy":F
    const/4 v9, 0x0

    aget v9, v3, v9

    mul-float/2addr v9, v4

    const/4 v11, 0x1

    aget v11, v3, v11

    mul-float/2addr v11, v5

    add-float/2addr v9, v11

    const/4 v11, 0x2

    aget v11, v3, v11

    add-float v6, v9, v11

    .line 98
    .local v6, "x":F
    const/4 v9, 0x3

    aget v9, v3, v9

    mul-float/2addr v9, v4

    const/4 v11, 0x4

    aget v11, v3, v11

    mul-float/2addr v11, v5

    add-float/2addr v9, v11

    const/4 v11, 0x5

    aget v11, v3, v11

    add-float v7, v9, v11

    .line 100
    .local v7, "y":F
    const/4 v9, 0x6

    aget v9, v3, v9

    mul-float/2addr v9, v4

    const/4 v11, 0x7

    aget v11, v3, v11

    mul-float/2addr v11, v5

    add-float/2addr v9, v11

    const/16 v11, 0x8

    aget v11, v3, v11

    add-float v8, v9, v11

    .line 102
    .local v8, "z":F
    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-eqz v9, :cond_0

    .line 103
    const/high16 v9, 0x3f800000    # 1.0f

    div-float v2, v9, v8

    .line 104
    .local v2, "invz":F
    mul-float/2addr v6, v2

    .line 105
    mul-float/2addr v7, v2

    .line 107
    .end local v2    # "invz":F
    :cond_0
    aput v6, p4, v1

    .line 108
    add-int/lit8 v9, v1, 0x1

    aput v7, p4, v9

    .line 93
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 110
    .end local v4    # "sx":F
    .end local v5    # "sy":F
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v8    # "z":F
    :cond_1
    monitor-exit v10

    .line 111
    return-void

    .line 110
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v3    # "matrixValues":[F
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method public static transformRectangle(FFFFLandroid/graphics/Matrix;[F)V
    .locals 3
    .param p0, "left"    # F
    .param p1, "top"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "matrix"    # Landroid/graphics/Matrix;
    .param p5, "outPoints"    # [F

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 41
    aput p0, p5, v1

    .line 42
    const/4 v0, 0x1

    aput p1, p5, v0

    .line 44
    const/4 v0, 0x2

    aput p0, p5, v0

    .line 45
    const/4 v0, 0x3

    aput p3, p5, v0

    .line 47
    aput p2, p5, v2

    .line 48
    const/4 v0, 0x5

    aput p1, p5, v0

    .line 50
    const/4 v0, 0x6

    aput p2, p5, v0

    .line 51
    const/4 v0, 0x7

    aput p3, p5, v0

    .line 53
    invoke-static {p5, v1, v2, p4, p5}, Lcom/sonymobile/flix/components/ComponentTransform;->transformPoints([FIILandroid/graphics/Matrix;[F)V

    .line 54
    return-void
.end method
