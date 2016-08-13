.class public Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;
.super Ljava/lang/Object;
.source "ClosestVacantAreaSearcher.java"


# instance fields
.field private final mGrid:Lcom/sonymobile/grid/Grid;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mPageIterator:Lcom/sonymobile/home/desktop/search/PageIterator;

.field private final mSpanX:I

.field private final mSpanY:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/grid/Grid;Ljava/util/List;IILcom/sonymobile/home/desktop/search/PageIterator;)V
    .locals 0
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "pageIterator"    # Lcom/sonymobile/home/desktop/search/PageIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/grid/Grid;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;II",
            "Lcom/sonymobile/home/desktop/search/PageIterator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mGrid:Lcom/sonymobile/grid/Grid;

    .line 48
    iput-object p2, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mItems:Ljava/util/List;

    .line 49
    iput p3, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mSpanX:I

    .line 50
    iput p4, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mSpanY:I

    .line 51
    iput-object p5, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mPageIterator:Lcom/sonymobile/home/desktop/search/PageIterator;

    .line 52
    return-void
.end method

.method private calculateNearestLocation(IILcom/sonymobile/grid/Grid;IIILcom/sonymobile/home/data/ItemLocation;)Z
    .locals 20
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p4, "page"    # I
    .param p5, "colSpan"    # I
    .param p6, "rowSpan"    # I
    .param p7, "outLocation"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 196
    invoke-virtual/range {p3 .. p3}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v2

    sub-int v12, v2, p5

    .line 197
    .local v12, "MAX_CELL_X":I
    invoke-virtual/range {p3 .. p3}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v2

    sub-int v13, v2, p6

    .line 198
    .local v13, "MAX_CELL_Y":I
    const/4 v1, 0x0

    .line 199
    .local v1, "emptyLocation":Lcom/sonymobile/home/data/ItemLocation;
    const/16 v18, 0x0

    .line 200
    .local v18, "isLocationFound":Z
    const v15, 0x7fffffff

    .line 202
    .local v15, "distance":I
    const/4 v4, 0x0

    .local v4, "cellY":I
    :goto_0
    if-gt v4, v13, :cond_5

    .line 203
    const/4 v3, 0x0

    .local v3, "cellX":I
    :goto_1
    if-gt v3, v12, :cond_4

    .line 204
    const/16 v16, 0x1

    .line 206
    .local v16, "empty":Z
    if-nez v1, :cond_3

    .line 207
    new-instance v1, Lcom/sonymobile/home/data/ItemLocation;

    .end local v1    # "emptyLocation":Lcom/sonymobile/home/data/ItemLocation;
    move/from16 v2, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIII)V

    .line 216
    .restart local v1    # "emptyLocation":Lcom/sonymobile/home/data/ItemLocation;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sonymobile/home/data/Item;

    .line 217
    .local v19, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/home/data/ItemLocation;->overlaps(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    const/16 v16, 0x0

    .line 222
    .end local v19    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    if-eqz v16, :cond_2

    .line 223
    iget-object v2, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v8, v2, Lcom/sonymobile/grid/GridRect;->col:I

    iget-object v2, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v9, v2, Lcom/sonymobile/grid/GridRect;->row:I

    iget-object v2, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v10, v2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iget-object v2, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v11, v2, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    move-object/from16 v5, p3

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v5 .. v11}, Lcom/sonymobile/grid/Grid;->calculateDistance(IIIIII)I

    move-result v14

    .line 226
    .local v14, "d":I
    if-le v15, v14, :cond_2

    .line 227
    move v15, v14

    .line 228
    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/data/ItemLocation;->set(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 229
    const/16 v18, 0x1

    .line 203
    .end local v14    # "d":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 209
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v2, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput v3, v2, Lcom/sonymobile/grid/GridRect;->col:I

    .line 210
    iget-object v2, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput v4, v2, Lcom/sonymobile/grid/GridRect;->row:I

    .line 211
    iget-object v2, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    move/from16 v0, p5

    iput v0, v2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 212
    iget-object v2, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    move/from16 v0, p6

    iput v0, v2, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 213
    move/from16 v0, p4

    iput v0, v1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    goto :goto_2

    .line 202
    .end local v16    # "empty":Z
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 234
    .end local v3    # "cellX":I
    :cond_5
    return v18
.end method

.method private indexToCol(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v0}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v0

    rem-int v0, p1, v0

    return v0
.end method

.method private indexToRow(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v0}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v0

    div-int v0, p1, v0

    return v0
.end method

.method private isLocationFree([[ZLcom/sonymobile/grid/GridRect;I)Z
    .locals 5
    .param p1, "gridMap"    # [[Z
    .param p2, "location"    # Lcom/sonymobile/grid/GridRect;
    .param p3, "index"    # I

    .prologue
    .line 154
    invoke-direct {p0, p3}, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->indexToCol(I)I

    move-result v3

    iput v3, p2, Lcom/sonymobile/grid/GridRect;->col:I

    .line 155
    invoke-direct {p0, p3}, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->indexToRow(I)I

    move-result v3

    iput v3, p2, Lcom/sonymobile/grid/GridRect;->row:I

    .line 156
    const/4 v1, 0x1

    .line 158
    .local v1, "freeLocation":Z
    iget v0, p2, Lcom/sonymobile/grid/GridRect;->col:I

    .local v0, "col":I
    :goto_0
    if-eqz v1, :cond_2

    iget v3, p2, Lcom/sonymobile/grid/GridRect;->col:I

    iget v4, p2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_2

    iget v3, p2, Lcom/sonymobile/grid/GridRect;->col:I

    iget v4, p2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v4}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v4

    if-gt v3, v4, :cond_2

    .line 160
    iget v2, p2, Lcom/sonymobile/grid/GridRect;->row:I

    .local v2, "row":I
    :goto_1
    if-eqz v1, :cond_1

    iget v3, p2, Lcom/sonymobile/grid/GridRect;->row:I

    iget v4, p2, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    iget v3, p2, Lcom/sonymobile/grid/GridRect;->row:I

    iget v4, p2, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v4}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v4

    if-gt v3, v4, :cond_1

    .line 162
    aget-object v3, p1, v0

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    .line 163
    const/4 v1, 0x0

    .line 161
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 159
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    .end local v2    # "row":I
    :cond_2
    return v1
.end method

.method private locationToIndex(Lcom/sonymobile/grid/GridRect;)I
    .locals 2
    .param p1, "location"    # Lcom/sonymobile/grid/GridRect;

    .prologue
    .line 141
    iget v0, p1, Lcom/sonymobile/grid/GridRect;->row:I

    iget-object v1, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v1}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p1, Lcom/sonymobile/grid/GridRect;->col:I

    add-int/2addr v0, v1

    return v0
.end method

.method private setLocationAsOccupied([[ZLcom/sonymobile/grid/GridRect;)V
    .locals 4
    .param p1, "gridMap"    # [[Z
    .param p2, "location"    # Lcom/sonymobile/grid/GridRect;

    .prologue
    .line 171
    iget v0, p2, Lcom/sonymobile/grid/GridRect;->col:I

    .local v0, "col":I
    :goto_0
    iget v2, p2, Lcom/sonymobile/grid/GridRect;->col:I

    iget v3, p2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v2}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 173
    iget v1, p2, Lcom/sonymobile/grid/GridRect;->row:I

    .local v1, "row":I
    :goto_1
    iget v2, p2, Lcom/sonymobile/grid/GridRect;->row:I

    iget v3, p2, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v2}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 175
    aget-object v2, p1, v0

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "row":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getClosestVacantLocation(IILcom/sonymobile/home/data/ItemLocation;)Z
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "outLocation"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mPageIterator:Lcom/sonymobile/home/desktop/search/PageIterator;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/search/PageIterator;->reset()V

    move-object v0, p3

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    .line 84
    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/home/data/ItemLocation;->set(IIIIII)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mPageIterator:Lcom/sonymobile/home/desktop/search/PageIterator;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/search/PageIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mPageIterator:Lcom/sonymobile/home/desktop/search/PageIterator;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/search/PageIterator;->next()I

    move-result v6

    .line 88
    .local v6, "page":I
    iget-object v5, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mGrid:Lcom/sonymobile/grid/Grid;

    iget v7, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mSpanX:I

    iget v8, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mSpanY:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->calculateNearestLocation(IILcom/sonymobile/grid/Grid;IIILcom/sonymobile/home/data/ItemLocation;)Z

    move-result v10

    .line 90
    .local v10, "found":Z
    if-eqz v10, :cond_0

    .line 94
    .end local v6    # "page":I
    .end local v10    # "found":Z
    :goto_0
    return v10

    :cond_1
    move v10, v1

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVacantLocationLinearSearch(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;I)Z
    .locals 11
    .param p1, "currentLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "outVacantLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p3, "itemOverlap"    # I

    .prologue
    .line 108
    iget-object v9, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v9}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v9

    iget-object v10, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v10}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v10

    mul-int v5, v9, v10

    .line 109
    .local v5, "numberOfCells":I
    iget-object v9, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v9}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v9

    iget-object v10, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v10}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v10

    filled-new-array {v9, v10}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    .line 110
    .local v1, "gridMap":[[Z
    iget v6, p1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 111
    .local v6, "page":I
    iget-object v9, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/data/Item;

    .line 112
    .local v4, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v9

    iget v9, v9, Lcom/sonymobile/home/data/ItemLocation;->page:I

    if-ne v9, v6, :cond_0

    .line 113
    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v9

    iget-object v9, v9, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    invoke-direct {p0, v1, v9}, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->setLocationAsOccupied([[ZLcom/sonymobile/grid/GridRect;)V

    goto :goto_0

    .line 117
    .end local v4    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    new-instance v7, Lcom/sonymobile/grid/GridRect;

    invoke-direct {v7}, Lcom/sonymobile/grid/GridRect;-><init>()V

    .line 118
    .local v7, "searchLocation":Lcom/sonymobile/grid/GridRect;
    iget-object v9, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    invoke-virtual {v7, v9}, Lcom/sonymobile/grid/GridRect;->set(Lcom/sonymobile/grid/GridRect;)V

    .line 119
    invoke-direct {p0, v7}, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->locationToIndex(Lcom/sonymobile/grid/GridRect;)I

    move-result v8

    .line 121
    .local v8, "start":I
    invoke-direct {p0, v1, v7, v8}, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->isLocationFree([[ZLcom/sonymobile/grid/GridRect;I)Z

    move-result v0

    .line 122
    .local v0, "foundLocation":Z
    if-nez v0, :cond_2

    if-lez v8, :cond_2

    invoke-static {p3}, Lcom/sonymobile/home/itemorganizer/ItemOverlap;->isLeft(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 123
    add-int/lit8 v9, v8, -0x1

    invoke-direct {p0, v1, v7, v9}, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->isLocationFree([[ZLcom/sonymobile/grid/GridRect;I)Z

    move-result v0

    .line 125
    :cond_2
    move v2, v8

    .local v2, "i":I
    :goto_1
    if-nez v0, :cond_3

    if-ge v2, v5, :cond_3

    .line 127
    invoke-direct {p0, v1, v7, v2}, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->isLocationFree([[ZLcom/sonymobile/grid/GridRect;I)Z

    move-result v0

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 129
    :cond_3
    move v2, v8

    :goto_2
    if-nez v0, :cond_4

    if-ltz v2, :cond_4

    .line 131
    invoke-direct {p0, v1, v7, v2}, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->isLocationFree([[ZLcom/sonymobile/grid/GridRect;I)Z

    move-result v0

    .line 129
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 133
    :cond_4
    if-eqz v0, :cond_5

    .line 134
    invoke-virtual {p2, p1}, Lcom/sonymobile/home/data/ItemLocation;->set(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 135
    iget-object v9, p2, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    invoke-virtual {v9, v7}, Lcom/sonymobile/grid/GridRect;->set(Lcom/sonymobile/grid/GridRect;)V

    .line 137
    :cond_5
    return v0
.end method

.method public searchPage(I)Z
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/home/desktop/search/ClosestVacantAreaSearcher;->mPageIterator:Lcom/sonymobile/home/desktop/search/PageIterator;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/desktop/search/PageIterator;->searchPage(I)Z

    move-result v0

    return v0
.end method
