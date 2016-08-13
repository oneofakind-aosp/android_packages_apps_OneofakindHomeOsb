.class public Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;
.super Ljava/lang/Object;
.source "ConstrainedFirstVacantLocationSearcher.java"


# instance fields
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

.field protected final mSearchArea:Lcom/sonymobile/grid/GridRect;

.field protected final mSpanX:I

.field protected final mSpanY:I


# direct methods
.method public constructor <init>(Ljava/util/List;IILcom/sonymobile/home/desktop/search/PageIterator;Lcom/sonymobile/grid/GridRect;Lcom/sonymobile/grid/Grid;)V
    .locals 6
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I
    .param p4, "pageIterator"    # Lcom/sonymobile/home/desktop/search/PageIterator;
    .param p5, "searchArea"    # Lcom/sonymobile/grid/GridRect;
    .param p6, "grid"    # Lcom/sonymobile/grid/Grid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;II",
            "Lcom/sonymobile/home/desktop/search/PageIterator;",
            "Lcom/sonymobile/grid/GridRect;",
            "Lcom/sonymobile/grid/Grid;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v5, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mItems:Ljava/util/List;

    .line 55
    iput p2, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSpanX:I

    .line 56
    iput p3, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSpanY:I

    .line 57
    iput-object p4, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mPageIterator:Lcom/sonymobile/home/desktop/search/PageIterator;

    .line 58
    iput-object p5, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSearchArea:Lcom/sonymobile/grid/GridRect;

    .line 61
    invoke-virtual {p6}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v0

    .line 62
    .local v0, "numCols":I
    iget-object v2, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSearchArea:Lcom/sonymobile/grid/GridRect;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSearchArea:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->col:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lcom/sonymobile/grid/GridRect;->col:I

    .line 63
    iget-object v2, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSearchArea:Lcom/sonymobile/grid/GridRect;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSearchArea:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->col:I

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/sonymobile/grid/GridRect;->col:I

    .line 64
    iget-object v2, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSearchArea:Lcom/sonymobile/grid/GridRect;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSearchArea:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iget-object v4, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSearchArea:Lcom/sonymobile/grid/GridRect;

    iget v4, v4, Lcom/sonymobile/grid/GridRect;->col:I

    sub-int v4, v0, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 65
    invoke-virtual {p6}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v1

    .line 66
    .local v1, "numRows":I
    iget-object v2, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSearchArea:Lcom/sonymobile/grid/GridRect;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSearchArea:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->row:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lcom/sonymobile/grid/GridRect;->row:I

    .line 67
    iget-object v2, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSearchArea:Lcom/sonymobile/grid/GridRect;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSearchArea:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->row:I

    add-int/lit8 v4, v1, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/sonymobile/grid/GridRect;->row:I

    .line 68
    iget-object v2, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSearchArea:Lcom/sonymobile/grid/GridRect;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSearchArea:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    iget-object v4, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSearchArea:Lcom/sonymobile/grid/GridRect;

    iget v4, v4, Lcom/sonymobile/grid/GridRect;->row:I

    sub-int v4, v1, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 69
    return-void
.end method

.method private getFirstVacantLocation(IIILjava/util/List;Lcom/sonymobile/home/data/ItemLocation;)Z
    .locals 8
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I
    .param p3, "page"    # I
    .param p5, "outItemLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/data/ItemLocation;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 111
    .local p4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v6, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSearchArea:Lcom/sonymobile/grid/GridRect;

    iget v2, v6, Lcom/sonymobile/grid/GridRect;->col:I

    .line 112
    .local v2, "MIN_CELL_X":I
    iget-object v6, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSearchArea:Lcom/sonymobile/grid/GridRect;

    iget v3, v6, Lcom/sonymobile/grid/GridRect;->row:I

    .line 113
    .local v3, "MIN_CELL_Y":I
    iget-object v6, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSearchArea:Lcom/sonymobile/grid/GridRect;

    iget v6, v6, Lcom/sonymobile/grid/GridRect;->col:I

    iget-object v7, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSearchArea:Lcom/sonymobile/grid/GridRect;

    iget v7, v7, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v6, v7

    sub-int v0, v6, p1

    .line 114
    .local v0, "MAX_CELL_X":I
    iget-object v6, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSearchArea:Lcom/sonymobile/grid/GridRect;

    iget v6, v6, Lcom/sonymobile/grid/GridRect;->row:I

    iget-object v7, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSearchArea:Lcom/sonymobile/grid/GridRect;

    iget v7, v7, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v6, v7

    sub-int v1, v6, p2

    .line 116
    .local v1, "MAX_CELL_Y":I
    move v5, v3

    .local v5, "cellY":I
    :goto_0
    if-gt v5, v1, :cond_2

    .line 117
    move v4, v2

    .local v4, "cellX":I
    :goto_1
    if-gt v4, v0, :cond_1

    .line 119
    iget-object v6, p5, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput v4, v6, Lcom/sonymobile/grid/GridRect;->col:I

    .line 120
    iget-object v6, p5, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput v5, v6, Lcom/sonymobile/grid/GridRect;->row:I

    .line 121
    iget-object v6, p5, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput p1, v6, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 122
    iget-object v6, p5, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput p2, v6, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 123
    iput p3, p5, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 124
    const/4 v6, -0x1

    iput v6, p5, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 126
    invoke-static {p5, p4}, Lcom/sonymobile/home/desktop/DesktopModel;->isVacant(Lcom/sonymobile/home/data/ItemLocation;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 127
    const/4 v6, 0x1

    .line 131
    .end local v4    # "cellX":I
    :goto_2
    return v6

    .line 117
    .restart local v4    # "cellX":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 116
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 131
    .end local v4    # "cellX":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private getVacantLocation(I)Lcom/sonymobile/home/data/ItemLocation;
    .locals 7
    .param p1, "page"    # I

    .prologue
    .line 88
    new-instance v5, Lcom/sonymobile/home/data/ItemLocation;

    const/4 v0, -0x1

    invoke-direct {v5, p1, v0}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    .line 89
    .local v5, "location":Lcom/sonymobile/home/data/ItemLocation;
    iget v1, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSpanX:I

    iget v2, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mSpanY:I

    iget-object v4, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mItems:Ljava/util/List;

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->getFirstVacantLocation(IIILjava/util/List;Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v6

    .line 91
    .local v6, "locationFound":Z
    if-eqz v6, :cond_0

    .line 94
    .end local v5    # "location":Lcom/sonymobile/home/data/ItemLocation;
    :goto_0
    return-object v5

    .restart local v5    # "location":Lcom/sonymobile/home/data/ItemLocation;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getVacantLocation()Lcom/sonymobile/home/data/ItemLocation;
    .locals 3

    .prologue
    .line 77
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mPageIterator:Lcom/sonymobile/home/desktop/search/PageIterator;

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/search/PageIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->mPageIterator:Lcom/sonymobile/home/desktop/search/PageIterator;

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/search/PageIterator;->next()I

    move-result v1

    .line 79
    .local v1, "page":I
    invoke-direct {p0, v1}, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->getVacantLocation(I)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    .line 80
    .local v0, "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v0, :cond_0

    .line 84
    .end local v0    # "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    .end local v1    # "page":I
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
