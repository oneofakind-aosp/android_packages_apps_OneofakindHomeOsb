.class public Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;
.super Ljava/lang/Object;
.source "FlixUsageWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/debug/FlixUsageWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentWarnings"
.end annotation


# static fields
.field private static sDisableAll:Z

.field private static sDisableBackgroundAlphaColorZero:Z

.field private static sDisableClippingNotSupportedIn3d:Z

.field private static sDisableDrawNull:Z

.field private static sDisableIllegalValue:Z

.field private static sDisableNotPreparedForDrawing:Z

.field private static sDisableProjectionShouldBe3d:Z

.field private static sDisableScalingChildrenNotSupportedIn3d:Z


# direct methods
.method public static assertLegalValue(Lcom/sonymobile/flix/components/Component;F)V
    .locals 4
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "value"    # F

    .prologue
    .line 303
    float-to-double v0, p1

    const-wide v2, 0x416312d000000000L    # 1.0E7

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    float-to-double v0, p1

    const-wide v2, -0x3e9ced3000000000L    # -1.0E7

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    :cond_0
    invoke-static {p0, p1}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->illegalValue(Lcom/sonymobile/flix/components/Component;F)V

    .line 306
    :cond_1
    return-void
.end method

.method public static assertLegalValues(Lcom/sonymobile/flix/components/Component;FF)V
    .locals 0
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "value1"    # F
    .param p2, "value2"    # F

    .prologue
    .line 309
    invoke-static {p0, p1}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValue(Lcom/sonymobile/flix/components/Component;F)V

    .line 310
    invoke-static {p0, p2}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValue(Lcom/sonymobile/flix/components/Component;F)V

    .line 311
    return-void
.end method

.method public static assertLegalValues(Lcom/sonymobile/flix/components/Component;FFF)V
    .locals 0
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "value1"    # F
    .param p2, "value2"    # F
    .param p3, "value3"    # F

    .prologue
    .line 315
    invoke-static {p0, p1}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValue(Lcom/sonymobile/flix/components/Component;F)V

    .line 316
    invoke-static {p0, p2}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValue(Lcom/sonymobile/flix/components/Component;F)V

    .line 317
    invoke-static {p0, p3}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValue(Lcom/sonymobile/flix/components/Component;F)V

    .line 318
    return-void
.end method

.method public static assertLegalValues(Lcom/sonymobile/flix/components/Component;FFFF)V
    .locals 0
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "value1"    # F
    .param p2, "value2"    # F
    .param p3, "value3"    # F
    .param p4, "value4"    # F

    .prologue
    .line 322
    invoke-static {p0, p1}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValue(Lcom/sonymobile/flix/components/Component;F)V

    .line 323
    invoke-static {p0, p2}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValue(Lcom/sonymobile/flix/components/Component;F)V

    .line 324
    invoke-static {p0, p3}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValue(Lcom/sonymobile/flix/components/Component;F)V

    .line 325
    invoke-static {p0, p4}, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->assertLegalValue(Lcom/sonymobile/flix/components/Component;F)V

    .line 326
    return-void
.end method

.method public static backgroundColorAlphaZero(Lcom/sonymobile/flix/components/Component;I)V
    .locals 4
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "argb"    # I

    .prologue
    const/4 v2, 0x1

    .line 339
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->sDisableBackgroundAlphaColorZero:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->sDisableAll:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sEnabled:Z

    if-nez v0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sNotifyOnlyOnce:Z

    if-eqz v0, :cond_2

    .line 342
    sput-boolean v2, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->sDisableBackgroundAlphaColorZero:Z

    .line 344
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Component background color \'0x%08X\' was set, with zero alpha.\nIt will not be rendered. Don\'t forget to include the alpha\ncomponent in 0xAARRGGBB when setting a background color.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->getAncestryTree(Lcom/sonymobile/flix/components/Component;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->usageWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static clippingNotSupportedIn3d(Lcom/sonymobile/flix/components/Component;)V
    .locals 2
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 351
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->sDisableClippingNotSupportedIn3d:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->sDisableAll:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sEnabled:Z

    if-nez v0, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sNotifyOnlyOnce:Z

    if-eqz v0, :cond_2

    .line 354
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->sDisableClippingNotSupportedIn3d:Z

    .line 356
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clipping is enabled for this component, and it\'s currently drawn\nin 3D, either because an ancestor or itself has enabled\nPROJECTION_3D. Clipping in 3D is not supported. But there is a\nworkaround if an ancestor has enabled 3D projection. Set the\nprojection of this component or its parent to PROJECTION_2D.\nThis allows clipping to work correctly, even if we are rotated\nin 3D.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->getAncestryTree(Lcom/sonymobile/flix/components/Component;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->usageWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static disableDrawNull()V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->sDisableDrawNull:Z

    .line 296
    return-void
.end method

.method public static disableNotPreparedForDrawing()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->sDisableNotPreparedForDrawing:Z

    .line 300
    return-void
.end method

.method public static drawNull(Lcom/sonymobile/flix/components/Component;)V
    .locals 2
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 393
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->sDisableDrawNull:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->sDisableAll:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sEnabled:Z

    if-nez v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sNotifyOnlyOnce:Z

    if-eqz v0, :cond_2

    .line 396
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->sDisableDrawNull:Z

    .line 398
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Component was drawn, but it\'s invisible because it doesn\'t have\nany data to draw (i.e. a bitmap or text was null or had no size).\nIt is bad practice to have a component which is visible but has\nno data, and it may impact performance.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->getAncestryTree(Lcom/sonymobile/flix/components/Component;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->usageWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static illegalValue(Lcom/sonymobile/flix/components/Component;F)V
    .locals 4
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p1, "value"    # F

    .prologue
    .line 329
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->sDisableIllegalValue:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->sDisableAll:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sEnabled:Z

    if-nez v0, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A component has set an illegal value \'%s\'.\nComponents may be drawn in unexpected places, or drawing could\nstop completely due to Canvas transforms failing, and not being\nable to recover.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->getAncestryTree(Lcom/sonymobile/flix/components/Component;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->usageWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static notPreparedForDrawing(Lcom/sonymobile/flix/components/Component;)V
    .locals 2
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 405
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->sDisableNotPreparedForDrawing:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->sDisableAll:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sEnabled:Z

    if-nez v0, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sNotifyOnlyOnce:Z

    if-eqz v0, :cond_2

    .line 408
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->sDisableNotPreparedForDrawing:Z

    .line 410
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Component is trying to do an operation that requires it to be\nprepared for drawing, but it\'s not. The operation may have been\ncalled on the wrong component, or the component actually needs to\nbe prepared, using Component.prepareForDrawing().\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->getAncestryTree(Lcom/sonymobile/flix/components/Component;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->usageWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static projectionShouldBe3d(Lcom/sonymobile/flix/components/Component;)V
    .locals 2
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 380
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->sDisableProjectionShouldBe3d:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->sDisableAll:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sEnabled:Z

    if-nez v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sNotifyOnlyOnce:Z

    if-eqz v0, :cond_2

    .line 383
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->sDisableProjectionShouldBe3d:Z

    .line 385
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This component is moved or rotated in 3D (moved in Z or rotated\naround X or Y axes), but it is currently drawn in 2D. Set this\ncomponent\'s or an ancestor\'s projection to PROJECTION_3D in order\nto see the effects of 3D transformations on the component.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->getAncestryTree(Lcom/sonymobile/flix/components/Component;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->usageWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static scalingChildrenNotSupportedIn3d(Lcom/sonymobile/flix/components/Component;)V
    .locals 2
    .param p0, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 366
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->sDisableScalingChildrenNotSupportedIn3d:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->sDisableAll:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sEnabled:Z

    if-nez v0, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    sget-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->sNotifyOnlyOnce:Z

    if-eqz v0, :cond_2

    .line 369
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/flix/debug/FlixUsageWarnings$ComponentWarnings;->sDisableScalingChildrenNotSupportedIn3d:Z

    .line 371
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scaling is enabled for this component and its children. It\'s\ncurrently drawn in 3D, either because an ancestor or itself has\nenabled PROJECTION_3D. Scaling cannot be propagated to children\nwhen 3D projection is enabled, so this component\'s children will\nnot be automatically scaled with this component.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->getAncestryTree(Lcom/sonymobile/flix/components/Component;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sonymobile/flix/debug/FlixUsageWarnings;->usageWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
