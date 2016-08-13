.class public Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;
.super Ljava/lang/Object;
.source "LinearVacantLocationSearcher.java"


# instance fields
.field protected final mGrid:Lcom/sonymobile/grid/Grid;

.field protected final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPageIterator:Lcom/sonymobile/home/desktop/search/PageIterator;

.field protected final mSearchForward:Z

.field protected final mSpanX:I

.field protected final mSpanY:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/grid/Grid;Ljava/util/List;IILcom/sonymobile/home/desktop/search/PageIterator;Z)V
    .locals 0
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "pageIterator"    # Lcom/sonymobile/home/desktop/search/PageIterator;
    .param p6, "searchForward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/grid/Grid;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;II",
            "Lcom/sonymobile/home/desktop/search/PageIterator;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;->mGrid:Lcom/sonymobile/grid/Grid;

    .line 56
    iput-object p2, p0, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;->mItems:Ljava/util/List;

    .line 57
    iput p3, p0, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;->mSpanX:I

    .line 58
    iput p4, p0, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;->mSpanY:I

    .line 59
    iput-object p5, p0, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;->mPageIterator:Lcom/sonymobile/home/desktop/search/PageIterator;

    .line 60
    iput-boolean p6, p0, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;->mSearchForward:Z

    .line 61
    return-void
.end method

.method private getFirstVacantLocation(IIILcom/sonymobile/grid/Grid;Ljava/util/List;Lcom/sonymobile/home/data/ItemLocation;)Z
    .locals 5
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I
    .param p3, "page"    # I
    .param p4, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p6, "outItemLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/sonymobile/grid/Grid;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/data/ItemLocation;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 114
    .local p5, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {p4}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v4

    sub-int v0, v4, p1

    .line 115
    .local v0, "MAX_CELL_X":I
    invoke-virtual {p4}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v4

    sub-int v1, v4, p2

    .line 117
    .local v1, "MAX_CELL_Y":I
    const/4 v3, 0x0

    .local v3, "cellY":I
    :goto_0
    if-gt v3, v1, :cond_2

    .line 118
    const/4 v2, 0x0

    .local v2, "cellX":I
    :goto_1
    if-gt v2, v0, :cond_1

    .line 120
    iget-object v4, p6, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput v2, v4, Lcom/sonymobile/grid/GridRect;->col:I

    .line 121
    iget-object v4, p6, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput v3, v4, Lcom/sonymobile/grid/GridRect;->row:I

    .line 122
    iget-object v4, p6, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput p1, v4, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 123
    iget-object v4, p6, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput p2, v4, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 124
    iput p3, p6, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 125
    const/4 v4, -0x1

    iput v4, p6, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 127
    invoke-static {p6, p5}, Lcom/sonymobile/home/desktop/DesktopModel;->isVacant(Lcom/sonymobile/home/data/ItemLocation;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    const/4 v4, 0x1

    .line 132
    .end local v2    # "cellX":I
    :goto_2
    return v4

    .line 118
    .restart local v2    # "cellX":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 117
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    .end local v2    # "cellX":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private getLastVacantLocation(IIILcom/sonymobile/grid/Grid;Ljava/util/List;Lcom/sonymobile/home/data/ItemLocation;)Z
    .locals 12
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I
    .param p3, "page"    # I
    .param p4, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p6, "outItemLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/sonymobile/grid/Grid;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/data/ItemLocation;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 154
    .local p5, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v2

    sub-int v3, v2, p1

    .line 155
    .local v3, "MAX_CELL_X":I
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v2

    sub-int v4, v2, p2

    .line 157
    .local v4, "MAX_CELL_Y":I
    new-instance v1, Lcom/sonymobile/home/data/ItemLocation;

    move v2, p3

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIII)V

    .line 159
    .local v1, "tempLocation":Lcom/sonymobile/home/data/ItemLocation;
    move v9, v4

    .local v9, "cellY":I
    :goto_0
    if-ltz v9, :cond_2

    .line 160
    move v8, v3

    .local v8, "cellX":I
    :goto_1
    if-ltz v8, :cond_1

    .line 161
    iget-object v2, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput v8, v2, Lcom/sonymobile/grid/GridRect;->col:I

    .line 162
    iget-object v2, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput v9, v2, Lcom/sonymobile/grid/GridRect;->row:I

    .line 164
    move-object/from16 v0, p5

    invoke-static {v1, v0}, Lcom/sonymobile/home/desktop/DesktopModel;->isVacant(Lcom/sonymobile/home/data/ItemLocation;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    const/4 v7, -0x1

    move-object/from16 v5, p6

    move v6, p3

    move v10, p1

    move v11, p2

    invoke-virtual/range {v5 .. v11}, Lcom/sonymobile/home/data/ItemLocation;->set(IIIIII)V

    .line 160
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 167
    :cond_0
    const/4 v2, 0x1

    .line 171
    .end local v8    # "cellX":I
    :goto_2
    return v2

    .line 159
    .restart local v8    # "cellX":I
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 171
    .end local v8    # "cellX":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private getVacantLocation(I)Lcom/sonymobile/home/data/ItemLocation;
    .locals 8
    .param p1, "page"    # I

    .prologue
    .line 82
    new-instance v6, Lcom/sonymobile/home/data/ItemLocation;

    const/4 v0, -0x1

    invoke-direct {v6, p1, v0}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    .line 85
    .local v6, "location":Lcom/sonymobile/home/data/ItemLocation;
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;->mSearchForward:Z

    if-eqz v0, :cond_0

    .line 86
    iget v1, p0, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;->mSpanX:I

    iget v2, p0, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;->mSpanY:I

    iget-object v4, p0, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;->mGrid:Lcom/sonymobile/grid/Grid;

    iget-object v5, p0, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;->mItems:Ljava/util/List;

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;->getFirstVacantLocation(IIILcom/sonymobile/grid/Grid;Ljava/util/List;Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v7

    .line 91
    .local v7, "locationFound":Z
    :goto_0
    if-eqz v7, :cond_1

    .line 94
    .end local v6    # "location":Lcom/sonymobile/home/data/ItemLocation;
    :goto_1
    return-object v6

    .line 88
    .end local v7    # "locationFound":Z
    .restart local v6    # "location":Lcom/sonymobile/home/data/ItemLocation;
    :cond_0
    iget v1, p0, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;->mSpanX:I

    iget v2, p0, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;->mSpanY:I

    iget-object v4, p0, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;->mGrid:Lcom/sonymobile/grid/Grid;

    iget-object v5, p0, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;->mItems:Ljava/util/List;

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;->getLastVacantLocation(IIILcom/sonymobile/grid/Grid;Ljava/util/List;Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v7

    .restart local v7    # "locationFound":Z
    goto :goto_0

    .line 94
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getVacantLocation()Lcom/sonymobile/home/data/ItemLocation;
    .locals 3

    .prologue
    .line 70
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;->mPageIterator:Lcom/sonymobile/home/desktop/search/PageIterator;

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/search/PageIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;->mPageIterator:Lcom/sonymobile/home/desktop/search/PageIterator;

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/search/PageIterator;->next()I

    move-result v1

    .line 72
    .local v1, "page":I
    invoke-direct {p0, v1}, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;->getVacantLocation(I)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    .line 73
    .local v0, "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v0, :cond_0

    .line 77
    .end local v0    # "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    .end local v1    # "page":I
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
