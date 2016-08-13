.class public Lcom/sonymobile/flix/components/ComponentDebug;
.super Ljava/lang/Object;
.source "ComponentDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/components/ComponentDebug$DebugCondition;
    }
.end annotation


# static fields
.field static sDebugRenderAllBorders:Z

.field private static final sPaint:Landroid/graphics/Paint;

.field private static sRenderName:Z

.field private static sRenderPivotPoint:Z


# instance fields
.field protected mRenderBorders:Z

.field protected mRenderCullingArea:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sonymobile/flix/components/ComponentDebug;->sPaint:Landroid/graphics/Paint;

    .line 60
    sget-object v0, Lcom/sonymobile/flix/components/ComponentDebug;->sPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 61
    sget-object v0, Lcom/sonymobile/flix/components/ComponentDebug;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    sput-boolean v2, Lcom/sonymobile/flix/components/ComponentDebug;->sRenderPivotPoint:Z

    .line 63
    return-void
.end method

.method private static countTree(Lcom/sonymobile/flix/components/Component;ZZZIILcom/sonymobile/flix/components/ComponentDebug$DebugCondition;ILjava/lang/StringBuilder;)I
    .locals 13
    .param p0, "root"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "countInvisible"    # Z
    .param p2, "countCulled"    # Z
    .param p3, "longFormat"    # Z
    .param p4, "maxDepth"    # I
    .param p5, "depth"    # I
    .param p6, "condition"    # Lcom/sonymobile/flix/components/ComponentDebug$DebugCondition;
    .param p7, "count"    # I
    .param p8, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 400
    if-eqz p8, :cond_2

    .line 401
    if-eqz p6, :cond_0

    move-object/from16 v0, p6

    invoke-interface {v0, p0}, Lcom/sonymobile/flix/components/ComponentDebug$DebugCondition;->evaluate(Lcom/sonymobile/flix/components/Component;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 402
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 403
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, p5

    if-ge v11, v0, :cond_1

    .line 404
    const-string v3, "  "

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 406
    :cond_1
    if-eqz p3, :cond_6

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->toLongString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual/range {p8 .. p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/flix/debug/Logx$Short;->i(Ljava/lang/String;)V

    .line 411
    .end local v11    # "i":I
    :cond_2
    move/from16 v0, p5

    move/from16 v1, p4

    if-ge v0, v1, :cond_7

    .line 412
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getNbrChildren()I

    move-result v12

    .line 413
    .local v12, "nbrChildren":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    if-ge v11, v12, :cond_7

    .line 414
    invoke-virtual {p0, v11}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    .line 415
    .local v2, "child":Lcom/sonymobile/flix/components/Component;
    if-nez p1, :cond_3

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Component;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Component;->isCulled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 416
    :cond_4
    add-int/lit8 v7, p5, 0x1

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v2 .. v10}, Lcom/sonymobile/flix/components/ComponentDebug;->countTree(Lcom/sonymobile/flix/components/Component;ZZZIILcom/sonymobile/flix/components/ComponentDebug$DebugCondition;ILjava/lang/StringBuilder;)I

    move-result p7

    .line 413
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .end local v2    # "child":Lcom/sonymobile/flix/components/Component;
    .end local v12    # "nbrChildren":I
    :cond_6
    move-object v3, p0

    .line 406
    goto :goto_1

    .line 422
    .end local v11    # "i":I
    :cond_7
    add-int/lit8 v3, p7, 0x1

    return v3
.end method

.method public static printTree(Lcom/sonymobile/flix/components/Component;Z)V
    .locals 2
    .param p0, "root"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "longFormat"    # Z

    .prologue
    const/4 v1, 0x0

    .line 325
    const v0, 0x7fffffff

    invoke-static {p0, v1, v1, p1, v0}, Lcom/sonymobile/flix/components/ComponentDebug;->printTree(Lcom/sonymobile/flix/components/Component;ZZZI)V

    .line 326
    return-void
.end method

.method public static printTree(Lcom/sonymobile/flix/components/Component;ZZZI)V
    .locals 6
    .param p0, "root"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "printInvisible"    # Z
    .param p2, "printCulled"    # Z
    .param p3, "longFormat"    # Z
    .param p4, "maxDepth"    # I

    .prologue
    .line 366
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/ComponentDebug;->printTree(Lcom/sonymobile/flix/components/Component;ZZZILcom/sonymobile/flix/components/ComponentDebug$DebugCondition;)V

    .line 367
    return-void
.end method

.method public static printTree(Lcom/sonymobile/flix/components/Component;ZZZILcom/sonymobile/flix/components/ComponentDebug$DebugCondition;)V
    .locals 10
    .param p0, "root"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "printInvisible"    # Z
    .param p2, "printCulled"    # Z
    .param p3, "longFormat"    # Z
    .param p4, "maxDepth"    # I
    .param p5, "condition"    # Lcom/sonymobile/flix/components/ComponentDebug$DebugCondition;

    .prologue
    const/4 v5, 0x0

    .line 371
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .local v8, "buf":Ljava/lang/StringBuilder;
    const-string v0, "Printing scene tree:"

    invoke-static {v0}, Lcom/sonymobile/flix/debug/Logx$Short;->i(Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move v7, v5

    .line 373
    invoke-static/range {v0 .. v8}, Lcom/sonymobile/flix/components/ComponentDebug;->countTree(Lcom/sonymobile/flix/components/Component;ZZZIILcom/sonymobile/flix/components/ComponentDebug$DebugCondition;ILjava/lang/StringBuilder;)I

    move-result v9

    .line 375
    .local v9, "count":I
    const-string v0, ""

    invoke-static {v0}, Lcom/sonymobile/flix/debug/Logx$Short;->i(Ljava/lang/String;)V

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Component count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/flix/debug/Logx$Short;->i(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method protected static renderBorders(Lcom/sonymobile/flix/components/Component;Landroid/graphics/Canvas;)V
    .locals 11
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 139
    move-object v10, p0

    .line 140
    .local v10, "c":Lcom/sonymobile/flix/components/Component;
    iget v3, v10, Lcom/sonymobile/flix/components/Component;->mWidth:F

    .line 141
    .local v3, "width":F
    iget v4, v10, Lcom/sonymobile/flix/components/Component;->mHeight:F

    .line 142
    .local v4, "height":F
    const/high16 v5, 0xfff0000

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/ComponentDebug;->renderFilledRect(Landroid/graphics/Canvas;FFFFI)V

    .line 143
    iget-object v0, v10, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v5, v0

    iget-object v0, v10, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v6, v0

    iget-object v0, v10, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float v7, v3, v0

    iget-object v0, v10, Lcom/sonymobile/flix/components/Component;->mPadding:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v8, v4, v0

    const v9, 0x7f0000ff

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v9}, Lcom/sonymobile/flix/components/ComponentDebug;->renderFilledBorder(Landroid/graphics/Canvas;FFFFFFFFI)V

    .line 145
    iget-object v0, v10, Lcom/sonymobile/flix/components/Component;->mInnerMargin:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, v10, Lcom/sonymobile/flix/components/Component;->mInnerMargin:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, v10, Lcom/sonymobile/flix/components/Component;->mInnerMargin:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, v10, Lcom/sonymobile/flix/components/Component;->mInnerMargin:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float v7, v3, v0

    iget-object v0, v10, Lcom/sonymobile/flix/components/Component;->mInnerMargin:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v8, v4, v0

    const v9, 0x7f00ff00

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v9}, Lcom/sonymobile/flix/components/ComponentDebug;->renderFilledBorder(Landroid/graphics/Canvas;FFFFFFFFI)V

    .line 150
    :cond_0
    const/4 v5, 0x0

    const v6, -0x50000100

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Lcom/sonymobile/flix/components/ComponentDebug;->renderRect(Landroid/graphics/Canvas;FFFFII)V

    .line 151
    return-void
.end method

.method protected static renderCullingArea(Lcom/sonymobile/flix/components/Component;Landroid/graphics/Canvas;)V
    .locals 14
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 213
    move-object v11, p0

    .line 214
    .local v11, "c":Lcom/sonymobile/flix/components/Component;
    iget-object v0, v11, Lcom/sonymobile/flix/components/Component;->mCullingArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, v11, Lcom/sonymobile/flix/components/Component;->mCullingArea:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 216
    .local v1, "left":F
    iget-object v0, v11, Lcom/sonymobile/flix/components/Component;->mCullingArea:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 217
    .local v2, "top":F
    iget-object v0, v11, Lcom/sonymobile/flix/components/Component;->mCullingArea:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 218
    .local v3, "right":F
    iget-object v0, v11, Lcom/sonymobile/flix/components/Component;->mCullingArea:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 225
    .local v4, "bottom":F
    :goto_0
    invoke-virtual {v11}, Lcom/sonymobile/flix/components/Component;->getDrawnLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v11}, Lcom/sonymobile/flix/components/Component;->getDrawnTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 226
    sget-object v12, Lcom/sonymobile/flix/components/ComponentDebug;->sPaint:Landroid/graphics/Paint;

    .line 227
    .local v12, "p":Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 228
    const v0, 0x3fff00ff

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    sget-object v5, Lcom/sonymobile/flix/components/ComponentDebug;->sPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 230
    const/high16 v0, -0x1000000

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    const/16 v13, 0x8

    .line 232
    .local v13, "r":I
    int-to-float v0, v13

    sub-float v6, v1, v0

    int-to-float v0, v13

    sub-float v7, v2, v0

    int-to-float v0, v13

    add-float v8, v3, v0

    int-to-float v0, v13

    add-float v9, v2, v0

    sget-object v10, Lcom/sonymobile/flix/components/ComponentDebug;->sPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 233
    int-to-float v0, v13

    sub-float v6, v1, v0

    int-to-float v0, v13

    sub-float v7, v4, v0

    int-to-float v0, v13

    add-float v8, v3, v0

    int-to-float v0, v13

    add-float v9, v4, v0

    sget-object v10, Lcom/sonymobile/flix/components/ComponentDebug;->sPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 234
    int-to-float v0, v13

    sub-float v6, v1, v0

    int-to-float v0, v13

    add-float v7, v2, v0

    int-to-float v0, v13

    add-float v8, v1, v0

    int-to-float v0, v13

    sub-float v9, v4, v0

    sget-object v10, Lcom/sonymobile/flix/components/ComponentDebug;->sPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 235
    int-to-float v0, v13

    sub-float v6, v3, v0

    int-to-float v0, v13

    add-float v7, v2, v0

    int-to-float v0, v13

    add-float v8, v3, v0

    int-to-float v0, v13

    sub-float v9, v4, v0

    sget-object v10, Lcom/sonymobile/flix/components/ComponentDebug;->sPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 236
    const/4 v0, -0x1

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    const/4 v13, 0x2

    .line 238
    int-to-float v0, v13

    sub-float v6, v1, v0

    int-to-float v0, v13

    sub-float v7, v2, v0

    int-to-float v0, v13

    add-float v8, v3, v0

    int-to-float v0, v13

    add-float v9, v2, v0

    sget-object v10, Lcom/sonymobile/flix/components/ComponentDebug;->sPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 239
    int-to-float v0, v13

    sub-float v6, v1, v0

    int-to-float v0, v13

    sub-float v7, v4, v0

    int-to-float v0, v13

    add-float v8, v3, v0

    int-to-float v0, v13

    add-float v9, v4, v0

    sget-object v10, Lcom/sonymobile/flix/components/ComponentDebug;->sPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 240
    int-to-float v0, v13

    sub-float v6, v1, v0

    int-to-float v0, v13

    add-float v7, v2, v0

    int-to-float v0, v13

    add-float v8, v1, v0

    int-to-float v0, v13

    sub-float v9, v4, v0

    sget-object v10, Lcom/sonymobile/flix/components/ComponentDebug;->sPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 241
    int-to-float v0, v13

    sub-float v6, v3, v0

    int-to-float v0, v13

    add-float v7, v2, v0

    int-to-float v0, v13

    add-float v8, v3, v0

    int-to-float v0, v13

    sub-float v9, v4, v0

    sget-object v10, Lcom/sonymobile/flix/components/ComponentDebug;->sPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 242
    invoke-virtual {v11}, Lcom/sonymobile/flix/components/Component;->getDrawnLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v11}, Lcom/sonymobile/flix/components/Component;->getDrawnTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 243
    return-void

    .line 220
    .end local v1    # "left":F
    .end local v2    # "top":F
    .end local v3    # "right":F
    .end local v4    # "bottom":F
    .end local v12    # "p":Landroid/graphics/Paint;
    .end local v13    # "r":I
    :cond_0
    const/4 v1, 0x0

    .line 221
    .restart local v1    # "left":F
    const/4 v2, 0x0

    .line 222
    .restart local v2    # "top":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    int-to-float v3, v0

    .line 223
    .restart local v3    # "right":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    int-to-float v4, v0

    .restart local v4    # "bottom":F
    goto/16 :goto_0
.end method

.method protected static renderDebug(Lcom/sonymobile/flix/components/Component;Landroid/graphics/Canvas;)V
    .locals 1
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 129
    invoke-static {p0, p1}, Lcom/sonymobile/flix/components/ComponentDebug;->renderBorders(Lcom/sonymobile/flix/components/Component;Landroid/graphics/Canvas;)V

    .line 130
    sget-boolean v0, Lcom/sonymobile/flix/components/ComponentDebug;->sRenderName:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p0, p1}, Lcom/sonymobile/flix/components/ComponentDebug;->renderName(Lcom/sonymobile/flix/components/Component;Landroid/graphics/Canvas;)V

    .line 133
    :cond_0
    sget-boolean v0, Lcom/sonymobile/flix/components/ComponentDebug;->sRenderPivotPoint:Z

    if-eqz v0, :cond_1

    .line 134
    invoke-static {p0, p1}, Lcom/sonymobile/flix/components/ComponentDebug;->renderPivotPoint(Lcom/sonymobile/flix/components/Component;Landroid/graphics/Canvas;)V

    .line 136
    :cond_1
    return-void
.end method

.method protected static renderFilledBorder(Landroid/graphics/Canvas;FFFFFFFFI)V
    .locals 23
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "inLeft"    # F
    .param p2, "inTop"    # F
    .param p3, "inRight"    # F
    .param p4, "inBottom"    # F
    .param p5, "outLeft"    # F
    .param p6, "outTop"    # F
    .param p7, "outRight"    # F
    .param p8, "outBottom"    # F
    .param p9, "argb"    # I

    .prologue
    .line 193
    sget-object v7, Lcom/sonymobile/flix/components/ComponentDebug;->sPaint:Landroid/graphics/Paint;

    .line 194
    .local v7, "p":Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 195
    move/from16 v0, p9

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    move/from16 v0, p5

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 198
    .local v3, "minLeft":F
    move/from16 v0, p5

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 199
    .local v5, "maxLeft":F
    move/from16 v0, p6

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 200
    .local v4, "minTop":F
    move/from16 v0, p6

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 201
    .local v16, "maxTop":F
    move/from16 v0, p7

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 202
    .local v9, "minRight":F
    move/from16 v0, p7

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 203
    .local v11, "maxRight":F
    move/from16 v0, p8

    move/from16 v1, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v19

    .line 204
    .local v19, "minBottom":F
    move/from16 v0, p8

    move/from16 v1, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .local v6, "maxBottom":F
    move-object/from16 v2, p0

    .line 205
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v8, p0

    move v10, v4

    move v12, v6

    move-object v13, v7

    .line 206
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v12, p0

    move v13, v5

    move v14, v4

    move v15, v9

    move-object/from16 v17, v7

    .line 207
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v17, p0

    move/from16 v18, v5

    move/from16 v20, v9

    move/from16 v21, v6

    move-object/from16 v22, v7

    .line 208
    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 209
    return-void
.end method

.method protected static renderFilledRect(Landroid/graphics/Canvas;FFFFI)V
    .locals 6
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "argb"    # I

    .prologue
    .line 184
    sget-object v5, Lcom/sonymobile/flix/components/ComponentDebug;->sPaint:Landroid/graphics/Paint;

    .line 185
    .local v5, "p":Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    invoke-virtual {v5, p5}, Landroid/graphics/Paint;->setColor(I)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 187
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 188
    return-void
.end method

.method protected static renderName(Lcom/sonymobile/flix/components/Component;Landroid/graphics/Canvas;)V
    .locals 5
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 164
    sget-object v2, Lcom/sonymobile/flix/components/ComponentDebug;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    sget-object v3, Lcom/sonymobile/flix/components/ComponentDebug;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float v0, v2, v3

    .line 165
    .local v0, "height":F
    sget-object v2, Lcom/sonymobile/flix/components/ComponentDebug;->sPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->getName()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "name":Ljava/lang/String;
    :goto_0
    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v0

    sget-object v4, Lcom/sonymobile/flix/components/ComponentDebug;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 169
    sget-object v2, Lcom/sonymobile/flix/components/ComponentDebug;->sPaint:Landroid/graphics/Paint;

    const v3, -0x800081

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    const/high16 v2, 0x40400000    # 3.0f

    const/4 v3, 0x0

    add-float/2addr v3, v0

    sget-object v4, Lcom/sonymobile/flix/components/ComponentDebug;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 171
    return-void

    .line 166
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Component;->toShortString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected static renderPivotPoint(Lcom/sonymobile/flix/components/Component;Landroid/graphics/Canvas;)V
    .locals 9
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v5, -0x8001

    .line 154
    move-object v6, p0

    .line 155
    .local v6, "c":Lcom/sonymobile/flix/components/Component;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ba3d70a    # 0.005f

    mul-float/2addr v0, v1

    float-to-int v7, v0

    .line 156
    .local v7, "s":I
    const/4 v8, 0x1

    .line 157
    .local v8, "t":I
    iget v0, v6, Lcom/sonymobile/flix/components/Component;->mPivotX:F

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v1

    mul-float/2addr v0, v1

    int-to-float v1, v7

    sub-float v1, v0, v1

    iget v0, v6, Lcom/sonymobile/flix/components/Component;->mPivotY:F

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v2

    mul-float/2addr v0, v2

    int-to-float v2, v8

    sub-float v2, v0, v2

    iget v0, v6, Lcom/sonymobile/flix/components/Component;->mPivotX:F

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v3

    mul-float/2addr v0, v3

    int-to-float v3, v7

    add-float/2addr v3, v0

    iget v0, v6, Lcom/sonymobile/flix/components/Component;->mPivotY:F

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v4

    mul-float/2addr v0, v4

    int-to-float v4, v8

    add-float/2addr v4, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/ComponentDebug;->renderFilledRect(Landroid/graphics/Canvas;FFFFI)V

    .line 159
    iget v0, v6, Lcom/sonymobile/flix/components/Component;->mPivotX:F

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v1

    mul-float/2addr v0, v1

    int-to-float v1, v8

    sub-float v1, v0, v1

    iget v0, v6, Lcom/sonymobile/flix/components/Component;->mPivotY:F

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v2

    mul-float/2addr v0, v2

    int-to-float v2, v7

    sub-float v2, v0, v2

    iget v0, v6, Lcom/sonymobile/flix/components/Component;->mPivotX:F

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v3

    mul-float/2addr v0, v3

    int-to-float v3, v8

    add-float/2addr v3, v0

    iget v0, v6, Lcom/sonymobile/flix/components/Component;->mPivotY:F

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/Component;->getHeight()F

    move-result v4

    mul-float/2addr v0, v4

    int-to-float v4, v7

    add-float/2addr v4, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/ComponentDebug;->renderFilledRect(Landroid/graphics/Canvas;FFFFI)V

    .line 161
    return-void
.end method

.method protected static renderRect(Landroid/graphics/Canvas;FFFFII)V
    .locals 6
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "thickness"    # I
    .param p6, "argb"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 175
    sget-object v5, Lcom/sonymobile/flix/components/ComponentDebug;->sPaint:Landroid/graphics/Paint;

    .line 176
    .local v5, "p":Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    int-to-float v0, p5

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 178
    invoke-virtual {v5, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    sub-float v3, p3, v1

    sub-float v4, p4, v1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 180
    return-void
.end method
