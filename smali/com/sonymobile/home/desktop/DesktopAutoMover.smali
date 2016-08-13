.class public Lcom/sonymobile/home/desktop/DesktopAutoMover;
.super Ljava/lang/Object;
.source "DesktopAutoMover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/desktop/DesktopAutoMover$1;,
        Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;
    }
.end annotation


# static fields
.field private static final AUTOMOVE_STRATEGIES:[Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;


# instance fields
.field private final mGrid:Lcom/sonymobile/grid/Grid;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    const/4 v1, 0x0

    sget-object v2, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;->BUMP:Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;->YIELD:Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;->SWAP:Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;->NEAREST:Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopAutoMover;->AUTOMOVE_STRATEGIES:[Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/grid/Grid;)V
    .locals 0
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopAutoMover;->mGrid:Lcom/sonymobile/grid/Grid;

    .line 48
    return-void
.end method

.method private bump(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .param p1, "blockLocationToMove"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "draggedLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p3, "dragDirection"    # Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/ItemLocation;",
            "Lcom/sonymobile/home/data/ItemLocation;",
            "Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ItemLocation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ItemLocation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 145
    .local p4, "occupiedLocations":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ItemLocation;>;"
    .local p5, "locationsToMove":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ItemLocation;>;"
    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 146
    .local v1, "gridRectToMove":Lcom/sonymobile/grid/GridRect;
    iget-object v0, p2, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 147
    .local v0, "gridRectDragged":Lcom/sonymobile/grid/GridRect;
    const/4 v2, -0x1

    .line 149
    .local v2, "store":I
    sget-object v4, Lcom/sonymobile/home/desktop/DesktopAutoMover$1;->$SwitchMap$com$sonymobile$home$desktop$DesktopAutoMoveManager$DragDirection:[I

    invoke-virtual {p3}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 171
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopAutoMover;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-static {p1, p4, p5, v4}, Lcom/sonymobile/home/desktop/DesktopAutoMover;->isLocationVacant(Lcom/sonymobile/home/data/ItemLocation;Ljava/util/List;Ljava/util/List;Lcom/sonymobile/grid/Grid;)Z

    move-result v3

    .line 173
    .local v3, "success":Z
    if-nez v3, :cond_0

    .line 175
    sget-object v4, Lcom/sonymobile/home/desktop/DesktopAutoMover$1;->$SwitchMap$com$sonymobile$home$desktop$DesktopAutoMoveManager$DragDirection:[I

    invoke-virtual {p3}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 187
    :cond_0
    :goto_1
    return v3

    .line 151
    .end local v3    # "success":Z
    :pswitch_0
    iget v2, v1, Lcom/sonymobile/grid/GridRect;->row:I

    .line 152
    iget v4, v0, Lcom/sonymobile/grid/GridRect;->row:I

    iget v5, v1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    sub-int/2addr v4, v5

    iput v4, v1, Lcom/sonymobile/grid/GridRect;->row:I

    goto :goto_0

    .line 156
    :pswitch_1
    iget v2, v1, Lcom/sonymobile/grid/GridRect;->row:I

    .line 157
    iget v4, v0, Lcom/sonymobile/grid/GridRect;->row:I

    iget v5, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v4, v5

    iput v4, v1, Lcom/sonymobile/grid/GridRect;->row:I

    goto :goto_0

    .line 161
    :pswitch_2
    iget v2, v1, Lcom/sonymobile/grid/GridRect;->col:I

    .line 162
    iget v4, v0, Lcom/sonymobile/grid/GridRect;->col:I

    iget v5, v1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    sub-int/2addr v4, v5

    iput v4, v1, Lcom/sonymobile/grid/GridRect;->col:I

    goto :goto_0

    .line 166
    :pswitch_3
    iget v2, v1, Lcom/sonymobile/grid/GridRect;->col:I

    .line 167
    iget v4, v0, Lcom/sonymobile/grid/GridRect;->col:I

    iget v5, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v4, v5

    iput v4, v1, Lcom/sonymobile/grid/GridRect;->col:I

    goto :goto_0

    .line 178
    .restart local v3    # "success":Z
    :pswitch_4
    iput v2, v1, Lcom/sonymobile/grid/GridRect;->row:I

    goto :goto_1

    .line 183
    :pswitch_5
    iput v2, v1, Lcom/sonymobile/grid/GridRect;->col:I

    goto :goto_1

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 175
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static isLocationInsideGrid(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/grid/Grid;)Z
    .locals 4
    .param p0, "locationToCheck"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    .line 440
    invoke-virtual {p1}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->colSpan:I

    sub-int v0, v2, v3

    .line 441
    .local v0, "MAX_CELL_X":I
    invoke-virtual {p1}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    sub-int v1, v2, v3

    .line 442
    .local v1, "MAX_CELL_Y":I
    iget-object v2, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->col:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->col:I

    if-gt v2, v0, :cond_0

    iget-object v2, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->row:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->row:I

    if-gt v2, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isLocationVacant(Lcom/sonymobile/home/data/ItemLocation;Ljava/util/List;Ljava/util/List;Lcom/sonymobile/grid/Grid;)Z
    .locals 11
    .param p0, "blockLocationToCheck"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p3, "grid"    # Lcom/sonymobile/grid/Grid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/ItemLocation;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ItemLocation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ItemLocation;",
            ">;",
            "Lcom/sonymobile/grid/Grid;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 393
    .local p1, "occupiedLocations":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ItemLocation;>;"
    .local p2, "originalLocationsToCheck":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ItemLocation;>;"
    invoke-static {p0, p3}, Lcom/sonymobile/home/desktop/DesktopAutoMover;->isLocationInsideGrid(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/grid/Grid;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 394
    const/4 v7, 0x0

    .line 429
    :goto_0
    return v7

    .line 397
    :cond_0
    const/4 v4, 0x0

    .line 398
    .local v4, "originalBlockLocationToCheck":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_1

    const/4 v0, 0x1

    .line 399
    .local v0, "checkInsideItems":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 400
    const/4 v7, 0x0

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/home/data/ItemLocation;

    invoke-static {v7}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v4

    .line 401
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/home/data/ItemLocation;

    .line 402
    .local v5, "originalLocationToCheck":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {v4, v5}, Lcom/sonymobile/home/data/ItemLocation;->union(Lcom/sonymobile/home/data/ItemLocation;)V

    goto :goto_2

    .line 398
    .end local v0    # "checkInsideItems":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "originalLocationToCheck":Lcom/sonymobile/home/data/ItemLocation;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 406
    .restart local v0    # "checkInsideItems":Z
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/data/ItemLocation;

    .line 407
    .local v3, "occupiedLocation":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {v3, p0}, Lcom/sonymobile/home/data/ItemLocation;->overlaps(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 409
    if-nez v0, :cond_4

    .line 410
    const/4 v7, 0x0

    goto :goto_0

    .line 414
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/home/data/ItemLocation;

    .line 415
    .restart local v5    # "originalLocationToCheck":Lcom/sonymobile/home/data/ItemLocation;
    invoke-static {v5}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    .line 417
    .local v6, "originalLocationToCheckCopy":Lcom/sonymobile/home/data/ItemLocation;
    iget-object v7, v6, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v8, v7, Lcom/sonymobile/grid/GridRect;->col:I

    iget-object v9, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v9, v9, Lcom/sonymobile/grid/GridRect;->col:I

    iget-object v10, v4, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v10, v10, Lcom/sonymobile/grid/GridRect;->col:I

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, v7, Lcom/sonymobile/grid/GridRect;->col:I

    .line 419
    iget-object v7, v6, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v8, v7, Lcom/sonymobile/grid/GridRect;->row:I

    iget-object v9, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v9, v9, Lcom/sonymobile/grid/GridRect;->row:I

    iget-object v10, v4, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v10, v10, Lcom/sonymobile/grid/GridRect;->row:I

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, v7, Lcom/sonymobile/grid/GridRect;->row:I

    .line 422
    invoke-virtual {v3, v6}, Lcom/sonymobile/home/data/ItemLocation;->overlaps(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 423
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 429
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "occupiedLocation":Lcom/sonymobile/home/data/ItemLocation;
    .end local v5    # "originalLocationToCheck":Lcom/sonymobile/home/data/ItemLocation;
    .end local v6    # "originalLocationToCheckCopy":Lcom/sonymobile/home/data/ItemLocation;
    :cond_6
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method private nearest(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;Ljava/util/List;Ljava/util/List;)Z
    .locals 14
    .param p1, "blockLocationToMove"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "draggedLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p3, "dragDirection"    # Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/ItemLocation;",
            "Lcom/sonymobile/home/data/ItemLocation;",
            "Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ItemLocation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ItemLocation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 349
    .local p4, "occupiedLocations":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ItemLocation;>;"
    .local p5, "locationsToMove":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ItemLocation;>;"
    iget-object v11, p0, Lcom/sonymobile/home/desktop/DesktopAutoMover;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v11}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v11

    iget-object v12, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v12, v12, Lcom/sonymobile/grid/GridRect;->colSpan:I

    sub-int v2, v11, v12

    .line 350
    .local v2, "MAX_CELL_X":I
    iget-object v11, p0, Lcom/sonymobile/home/desktop/DesktopAutoMover;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v11}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v11

    iget-object v12, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v12, v12, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    sub-int v3, v11, v12

    .line 351
    .local v3, "MAX_CELL_Y":I
    sget-object v11, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->INVALID_ITEM_LOCATION:Lcom/sonymobile/home/data/ItemLocation;

    invoke-static {v11}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v4

    .line 352
    .local v4, "candidateLocation":Lcom/sonymobile/home/data/ItemLocation;
    invoke-static {p1}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v9

    .line 353
    .local v9, "locationToMoveCopy":Lcom/sonymobile/home/data/ItemLocation;
    const v8, 0x7fffffff

    .line 354
    .local v8, "distance":I
    const/4 v10, 0x0

    .line 357
    .local v10, "success":Z
    const/4 v6, 0x0

    .local v6, "cellY":I
    :goto_0
    if-gt v6, v3, :cond_2

    .line 358
    const/4 v5, 0x0

    .local v5, "cellX":I
    :goto_1
    if-gt v5, v2, :cond_1

    .line 359
    iget-object v11, v9, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput v5, v11, Lcom/sonymobile/grid/GridRect;->col:I

    .line 360
    iget-object v11, v9, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput v6, v11, Lcom/sonymobile/grid/GridRect;->row:I

    .line 361
    iget-object v11, p0, Lcom/sonymobile/home/desktop/DesktopAutoMover;->mGrid:Lcom/sonymobile/grid/Grid;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v9, v0, v1, v11}, Lcom/sonymobile/home/desktop/DesktopAutoMover;->isLocationVacant(Lcom/sonymobile/home/data/ItemLocation;Ljava/util/List;Ljava/util/List;Lcom/sonymobile/grid/Grid;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 362
    iget-object v11, p0, Lcom/sonymobile/home/desktop/DesktopAutoMover;->mGrid:Lcom/sonymobile/grid/Grid;

    iget-object v12, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget-object v13, v9, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    invoke-virtual {v11, v12, v13}, Lcom/sonymobile/grid/Grid;->calculateDistance(Lcom/sonymobile/grid/GridRect;Lcom/sonymobile/grid/GridRect;)I

    move-result v7

    .line 364
    .local v7, "d":I
    if-le v8, v7, :cond_0

    .line 365
    move v8, v7

    .line 366
    invoke-virtual {v4, v9}, Lcom/sonymobile/home/data/ItemLocation;->set(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 367
    const/4 v10, 0x1

    .line 358
    .end local v7    # "d":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 357
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 373
    .end local v5    # "cellX":I
    :cond_2
    if-eqz v10, :cond_3

    .line 374
    invoke-virtual {p1, v4}, Lcom/sonymobile/home/data/ItemLocation;->set(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 376
    :cond_3
    return v10
.end method

.method private swap(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .param p1, "blockLocationToMove"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "draggedLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p3, "dragDirection"    # Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/ItemLocation;",
            "Lcom/sonymobile/home/data/ItemLocation;",
            "Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ItemLocation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ItemLocation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 289
    .local p4, "occupiedLocations":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ItemLocation;>;"
    .local p5, "locationsToMove":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ItemLocation;>;"
    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 290
    .local v1, "gridRectToMove":Lcom/sonymobile/grid/GridRect;
    iget-object v0, p2, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 291
    .local v0, "gridRectDragged":Lcom/sonymobile/grid/GridRect;
    const/4 v2, -0x1

    .line 293
    .local v2, "store":I
    sget-object v4, Lcom/sonymobile/home/desktop/DesktopAutoMover$1;->$SwitchMap$com$sonymobile$home$desktop$DesktopAutoMoveManager$DragDirection:[I

    invoke-virtual {p3}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 315
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopAutoMover;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-static {p1, p4, p5, v4}, Lcom/sonymobile/home/desktop/DesktopAutoMover;->isLocationVacant(Lcom/sonymobile/home/data/ItemLocation;Ljava/util/List;Ljava/util/List;Lcom/sonymobile/grid/Grid;)Z

    move-result v3

    .line 316
    .local v3, "success":Z
    if-nez v3, :cond_0

    .line 318
    sget-object v4, Lcom/sonymobile/home/desktop/DesktopAutoMover$1;->$SwitchMap$com$sonymobile$home$desktop$DesktopAutoMoveManager$DragDirection:[I

    invoke-virtual {p3}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 330
    :cond_0
    :goto_1
    return v3

    .line 295
    .end local v3    # "success":Z
    :pswitch_0
    iget v2, v1, Lcom/sonymobile/grid/GridRect;->row:I

    .line 296
    iget v4, v0, Lcom/sonymobile/grid/GridRect;->row:I

    iget v5, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v4, v5

    iput v4, v1, Lcom/sonymobile/grid/GridRect;->row:I

    goto :goto_0

    .line 300
    :pswitch_1
    iget v2, v1, Lcom/sonymobile/grid/GridRect;->row:I

    .line 301
    iget v4, v0, Lcom/sonymobile/grid/GridRect;->row:I

    iget v5, v1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    sub-int/2addr v4, v5

    iput v4, v1, Lcom/sonymobile/grid/GridRect;->row:I

    goto :goto_0

    .line 305
    :pswitch_2
    iget v2, v1, Lcom/sonymobile/grid/GridRect;->col:I

    .line 306
    iget v4, v0, Lcom/sonymobile/grid/GridRect;->col:I

    iget v5, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v4, v5

    iput v4, v1, Lcom/sonymobile/grid/GridRect;->col:I

    goto :goto_0

    .line 310
    :pswitch_3
    iget v2, v1, Lcom/sonymobile/grid/GridRect;->col:I

    .line 311
    iget v4, v0, Lcom/sonymobile/grid/GridRect;->col:I

    iget v5, v1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    sub-int/2addr v4, v5

    iput v4, v1, Lcom/sonymobile/grid/GridRect;->col:I

    goto :goto_0

    .line 321
    .restart local v3    # "success":Z
    :pswitch_4
    iput v2, v1, Lcom/sonymobile/grid/GridRect;->row:I

    goto :goto_1

    .line 326
    :pswitch_5
    iput v2, v1, Lcom/sonymobile/grid/GridRect;->col:I

    goto :goto_1

    .line 293
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 318
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private yield(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;Ljava/util/List;Ljava/util/List;)Z
    .locals 20
    .param p1, "blockLocationToMove"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "draggedLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p3, "dragDirection"    # Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/ItemLocation;",
            "Lcom/sonymobile/home/data/ItemLocation;",
            "Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ItemLocation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ItemLocation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 207
    .local p4, "occupiedLocations":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ItemLocation;>;"
    .local p5, "locationsToMove":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ItemLocation;>;"
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 208
    .local v7, "gridRectToMove":Lcom/sonymobile/grid/GridRect;
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 209
    .local v6, "gridRectDragged":Lcom/sonymobile/grid/GridRect;
    const/4 v14, -0x1

    .line 210
    .local v14, "store":I
    const/4 v15, 0x0

    .line 212
    .local v15, "success":Z
    sget-object v18, Lcom/sonymobile/home/desktop/DesktopAutoMover$1;->$SwitchMap$com$sonymobile$home$desktop$DesktopAutoMoveManager$DragDirection:[I

    invoke-virtual/range {p3 .. p3}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    .line 270
    :cond_0
    :goto_0
    return v15

    .line 217
    :pswitch_0
    iget v14, v7, Lcom/sonymobile/grid/GridRect;->col:I

    .line 220
    iget v0, v6, Lcom/sonymobile/grid/GridRect;->col:I

    move/from16 v18, v0

    iget v0, v7, Lcom/sonymobile/grid/GridRect;->colSpan:I

    move/from16 v19, v0

    sub-int v8, v18, v19

    .line 221
    .local v8, "leftCol":I
    iget v0, v6, Lcom/sonymobile/grid/GridRect;->col:I

    move/from16 v18, v0

    iget v0, v6, Lcom/sonymobile/grid/GridRect;->colSpan:I

    move/from16 v19, v0

    add-int v12, v18, v19

    .line 223
    .local v12, "rightCol":I
    iget v0, v7, Lcom/sonymobile/grid/GridRect;->col:I

    move/from16 v18, v0

    sub-int v18, v8, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 224
    .local v9, "leftDistance":I
    iget v0, v7, Lcom/sonymobile/grid/GridRect;->col:I

    move/from16 v18, v0

    sub-int v18, v12, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 228
    .local v13, "rightDistance":I
    if-ge v9, v13, :cond_2

    const/4 v10, 0x1

    .line 229
    .local v10, "movingLeft":Z
    :goto_1
    if-eqz v10, :cond_3

    move/from16 v18, v8

    :goto_2
    move/from16 v0, v18

    iput v0, v7, Lcom/sonymobile/grid/GridRect;->col:I

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopAutoMover;->mGrid:Lcom/sonymobile/grid/Grid;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/home/desktop/DesktopAutoMover;->isLocationVacant(Lcom/sonymobile/home/data/ItemLocation;Ljava/util/List;Ljava/util/List;Lcom/sonymobile/grid/Grid;)Z

    move-result v15

    .line 231
    if-nez v15, :cond_1

    .line 232
    if-eqz v10, :cond_4

    .end local v12    # "rightCol":I
    :goto_3
    iput v12, v7, Lcom/sonymobile/grid/GridRect;->col:I

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopAutoMover;->mGrid:Lcom/sonymobile/grid/Grid;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/home/desktop/DesktopAutoMover;->isLocationVacant(Lcom/sonymobile/home/data/ItemLocation;Ljava/util/List;Ljava/util/List;Lcom/sonymobile/grid/Grid;)Z

    move-result v15

    .line 236
    :cond_1
    if-nez v15, :cond_0

    .line 238
    iput v14, v7, Lcom/sonymobile/grid/GridRect;->col:I

    goto :goto_0

    .line 228
    .end local v10    # "movingLeft":Z
    .restart local v12    # "rightCol":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .restart local v10    # "movingLeft":Z
    :cond_3
    move/from16 v18, v12

    .line 229
    goto :goto_2

    :cond_4
    move v12, v8

    .line 232
    goto :goto_3

    .line 245
    .end local v8    # "leftCol":I
    .end local v9    # "leftDistance":I
    .end local v10    # "movingLeft":Z
    .end local v12    # "rightCol":I
    .end local v13    # "rightDistance":I
    :pswitch_1
    iget v14, v7, Lcom/sonymobile/grid/GridRect;->row:I

    .line 248
    iget v0, v6, Lcom/sonymobile/grid/GridRect;->row:I

    move/from16 v18, v0

    iget v0, v7, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    move/from16 v19, v0

    sub-int v17, v18, v19

    .line 249
    .local v17, "upRow":I
    iget v0, v6, Lcom/sonymobile/grid/GridRect;->row:I

    move/from16 v18, v0

    iget v0, v6, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    move/from16 v19, v0

    add-int v5, v18, v19

    .line 251
    .local v5, "downRow":I
    iget v0, v7, Lcom/sonymobile/grid/GridRect;->row:I

    move/from16 v18, v0

    sub-int v18, v17, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 252
    .local v16, "upDistance":I
    iget v0, v7, Lcom/sonymobile/grid/GridRect;->row:I

    move/from16 v18, v0

    sub-int v18, v5, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 256
    .local v4, "downDistance":I
    move/from16 v0, v16

    if-ge v0, v4, :cond_6

    const/4 v11, 0x1

    .line 257
    .local v11, "movingUp":Z
    :goto_4
    if-eqz v11, :cond_7

    move/from16 v18, v17

    :goto_5
    move/from16 v0, v18

    iput v0, v7, Lcom/sonymobile/grid/GridRect;->row:I

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopAutoMover;->mGrid:Lcom/sonymobile/grid/Grid;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/home/desktop/DesktopAutoMover;->isLocationVacant(Lcom/sonymobile/home/data/ItemLocation;Ljava/util/List;Ljava/util/List;Lcom/sonymobile/grid/Grid;)Z

    move-result v15

    .line 259
    if-nez v15, :cond_5

    .line 260
    if-eqz v11, :cond_8

    .end local v5    # "downRow":I
    :goto_6
    iput v5, v7, Lcom/sonymobile/grid/GridRect;->row:I

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopAutoMover;->mGrid:Lcom/sonymobile/grid/Grid;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/home/desktop/DesktopAutoMover;->isLocationVacant(Lcom/sonymobile/home/data/ItemLocation;Ljava/util/List;Ljava/util/List;Lcom/sonymobile/grid/Grid;)Z

    move-result v15

    .line 264
    :cond_5
    if-nez v15, :cond_0

    .line 266
    iput v14, v7, Lcom/sonymobile/grid/GridRect;->row:I

    goto/16 :goto_0

    .line 256
    .end local v11    # "movingUp":Z
    .restart local v5    # "downRow":I
    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    .restart local v11    # "movingUp":Z
    :cond_7
    move/from16 v18, v5

    .line 257
    goto :goto_5

    :cond_8
    move/from16 v5, v17

    .line 260
    goto :goto_6

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public move(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;Ljava/util/List;Ljava/util/List;)Z
    .locals 7
    .param p1, "blockLocationToMove"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "draggedLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p3, "dragDirection"    # Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/ItemLocation;",
            "Lcom/sonymobile/home/data/ItemLocation;",
            "Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ItemLocation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ItemLocation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 97
    .local p4, "occupiedLocations":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ItemLocation;>;"
    .local p5, "locationsToMove":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ItemLocation;>;"
    const/4 v4, 0x0

    .line 99
    .local v4, "success":Z
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopAutoMover;->AUTOMOVE_STRATEGIES:[Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;

    .local v0, "arr$":[Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 100
    .local v3, "strategy":Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;
    sget-object v5, Lcom/sonymobile/home/desktop/DesktopAutoMover$1;->$SwitchMap$com$sonymobile$home$desktop$DesktopAutoMover$AutoMoveStrategy:[I

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 121
    :goto_1
    if-eqz v4, :cond_1

    .line 125
    .end local v3    # "strategy":Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;
    :cond_0
    return v4

    .line 102
    .restart local v3    # "strategy":Lcom/sonymobile/home/desktop/DesktopAutoMover$AutoMoveStrategy;
    :pswitch_0
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/home/desktop/DesktopAutoMover;->bump(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    .line 104
    goto :goto_1

    .line 107
    :pswitch_1
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/home/desktop/DesktopAutoMover;->yield(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    .line 109
    goto :goto_1

    .line 112
    :pswitch_2
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/home/desktop/DesktopAutoMover;->swap(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    .line 114
    goto :goto_1

    .line 117
    :pswitch_3
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/home/desktop/DesktopAutoMover;->nearest(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    goto :goto_1

    .line 99
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public move(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;Ljava/util/List;Ljava/util/List;)Z
    .locals 10
    .param p1, "draggedLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "dragDirection"    # Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/ItemLocation;",
            "Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ItemLocation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ItemLocation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "occupiedLocations":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ItemLocation;>;"
    .local p4, "locationsToMove":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ItemLocation;>;"
    const/4 v9, 0x0

    .line 61
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    return v9

    .line 65
    :cond_1
    invoke-interface {p4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/ItemLocation;

    invoke-static {v0}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v8

    .line 66
    .local v8, "originalBlockLocationToMove":Lcom/sonymobile/home/data/ItemLocation;
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/home/data/ItemLocation;

    .line 67
    .local v7, "locationToMove":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {v8, v7}, Lcom/sonymobile/home/data/ItemLocation;->union(Lcom/sonymobile/home/data/ItemLocation;)V

    goto :goto_0

    .line 69
    .end local v7    # "locationToMove":Lcom/sonymobile/home/data/ItemLocation;
    :cond_2
    invoke-static {v8}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    .local v1, "blockLocationToMove":Lcom/sonymobile/home/data/ItemLocation;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 71
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/home/desktop/DesktopAutoMover;->move(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;Ljava/util/List;Ljava/util/List;)Z

    move-result v9

    .line 73
    .local v9, "success":Z
    if-eqz v9, :cond_0

    .line 74
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/home/data/ItemLocation;

    .line 75
    .restart local v7    # "locationToMove":Lcom/sonymobile/home/data/ItemLocation;
    iget-object v0, v7, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v0, Lcom/sonymobile/grid/GridRect;->col:I

    iget-object v3, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->col:I

    iget-object v4, v8, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v4, v4, Lcom/sonymobile/grid/GridRect;->col:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v0, Lcom/sonymobile/grid/GridRect;->col:I

    .line 76
    iget-object v0, v7, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v0, Lcom/sonymobile/grid/GridRect;->row:I

    iget-object v3, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->row:I

    iget-object v4, v8, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v4, v4, Lcom/sonymobile/grid/GridRect;->row:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v0, Lcom/sonymobile/grid/GridRect;->row:I

    goto :goto_1
.end method
