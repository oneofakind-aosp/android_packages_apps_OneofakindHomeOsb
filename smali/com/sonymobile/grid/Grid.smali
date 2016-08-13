.class public Lcom/sonymobile/grid/Grid;
.super Ljava/lang/Object;
.source "Grid.java"


# instance fields
.field private final mCellHeight:I

.field private final mCellWidth:I

.field private final mCols:I

.field private final mRows:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "rows"    # I
    .param p2, "cols"    # I
    .param p3, "cellWidth"    # I
    .param p4, "cellHeight"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p3, p0, Lcom/sonymobile/grid/Grid;->mCellWidth:I

    .line 40
    iput p4, p0, Lcom/sonymobile/grid/Grid;->mCellHeight:I

    .line 41
    iput p1, p0, Lcom/sonymobile/grid/Grid;->mRows:I

    .line 42
    iput p2, p0, Lcom/sonymobile/grid/Grid;->mCols:I

    .line 43
    return-void
.end method


# virtual methods
.method public calculateDistance(IIIIII)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "col"    # I
    .param p4, "row"    # I
    .param p5, "colSpan"    # I
    .param p6, "rowSpan"    # I

    .prologue
    .line 117
    mul-int/lit8 v4, p3, 0x2

    add-int/2addr v4, p5

    iget v5, p0, Lcom/sonymobile/grid/Grid;->mCellWidth:I

    mul-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .line 118
    .local v0, "centerX":I
    mul-int/lit8 v4, p4, 0x2

    add-int/2addr v4, p6

    iget v5, p0, Lcom/sonymobile/grid/Grid;->mCellHeight:I

    mul-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 119
    .local v1, "centerY":I
    sub-int v2, v0, p1

    .line 120
    .local v2, "deltaX":I
    sub-int v3, v1, p2

    .line 121
    .local v3, "deltaY":I
    mul-int v4, v2, v2

    mul-int v5, v3, v3

    add-int/2addr v4, v5

    return v4
.end method

.method public calculateDistance(Lcom/sonymobile/grid/GridRect;Lcom/sonymobile/grid/GridRect;)I
    .locals 7
    .param p1, "gridRect1"    # Lcom/sonymobile/grid/GridRect;
    .param p2, "gridRect2"    # Lcom/sonymobile/grid/GridRect;

    .prologue
    .line 132
    iget v0, p1, Lcom/sonymobile/grid/GridRect;->col:I

    mul-int/lit8 v0, v0, 0x2

    iget v3, p1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/sonymobile/grid/Grid;->mCellWidth:I

    mul-int/2addr v0, v3

    div-int/lit8 v1, v0, 0x2

    .line 133
    .local v1, "centerX":I
    iget v0, p1, Lcom/sonymobile/grid/GridRect;->row:I

    mul-int/lit8 v0, v0, 0x2

    iget v3, p1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/sonymobile/grid/Grid;->mCellHeight:I

    mul-int/2addr v0, v3

    div-int/lit8 v2, v0, 0x2

    .line 134
    .local v2, "centerY":I
    iget v3, p2, Lcom/sonymobile/grid/GridRect;->col:I

    iget v4, p2, Lcom/sonymobile/grid/GridRect;->row:I

    iget v5, p2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iget v6, p2, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/grid/Grid;->calculateDistance(IIIIII)I

    move-result v0

    return v0
.end method

.method public getCellHeight()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/sonymobile/grid/Grid;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/sonymobile/grid/Grid;->mCellWidth:I

    return v0
.end method

.method public getNumCols()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/sonymobile/grid/Grid;->mCols:I

    return v0
.end method

.method public getNumRows()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/sonymobile/grid/Grid;->mRows:I

    return v0
.end method
