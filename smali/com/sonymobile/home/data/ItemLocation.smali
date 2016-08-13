.class public Lcom/sonymobile/home/data/ItemLocation;
.super Ljava/lang/Object;
.source "ItemLocation.java"


# instance fields
.field public final grid:Lcom/sonymobile/grid/GridRect;

.field public page:I

.field public position:I


# direct methods
.method public constructor <init>(II)V
    .locals 7
    .param p1, "page"    # I
    .param p2, "position"    # I

    .prologue
    const/4 v3, -0x1

    .line 35
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIIII)V

    .line 36
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 7
    .param p1, "page"    # I
    .param p2, "col"    # I
    .param p3, "row"    # I
    .param p4, "colSpan"    # I
    .param p5, "rowSpan"    # I

    .prologue
    .line 28
    const/4 v2, -0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIIII)V

    .line 29
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "position"    # I
    .param p3, "col"    # I
    .param p4, "row"    # I
    .param p5, "colSpan"    # I
    .param p6, "rowSpan"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 43
    iput p2, p0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 44
    new-instance v0, Lcom/sonymobile/grid/GridRect;

    invoke-direct {v0}, Lcom/sonymobile/grid/GridRect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 45
    iget-object v0, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput p3, v0, Lcom/sonymobile/grid/GridRect;->col:I

    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput p4, v0, Lcom/sonymobile/grid/GridRect;->row:I

    .line 47
    iget-object v0, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput p5, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 48
    iget-object v0, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput p6, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 49
    return-void
.end method

.method public static copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;
    .locals 7
    .param p0, "original"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 105
    if-nez p0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sonymobile/home/data/ItemLocation;

    iget v1, p0, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iget v2, p0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    iget-object v3, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->col:I

    iget-object v4, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v4, v4, Lcom/sonymobile/grid/GridRect;->row:I

    iget-object v5, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v5, v5, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iget-object v6, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v6, v6, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIIII)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    if-ne p0, p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v1

    .line 146
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 147
    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 149
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 150
    check-cast v0, Lcom/sonymobile/home/data/ItemLocation;

    .line 151
    .local v0, "other":Lcom/sonymobile/home/data/ItemLocation;
    iget v3, p0, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iget v4, v0, Lcom/sonymobile/home/data/ItemLocation;->page:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 152
    goto :goto_0

    .line 153
    :cond_4
    iget v3, p0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    iget v4, v0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 154
    goto :goto_0

    .line 155
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->col:I

    iget-object v4, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v4, v4, Lcom/sonymobile/grid/GridRect;->col:I

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 156
    goto :goto_0

    .line 157
    :cond_6
    iget-object v3, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iget-object v4, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v4, v4, Lcom/sonymobile/grid/GridRect;->colSpan:I

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 158
    goto :goto_0

    .line 159
    :cond_7
    iget-object v3, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->row:I

    iget-object v4, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v4, v4, Lcom/sonymobile/grid/GridRect;->row:I

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 160
    goto :goto_0

    .line 161
    :cond_8
    iget-object v3, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    iget-object v4, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v4, v4, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 162
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 130
    const/16 v0, 0x1f

    .line 131
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 132
    .local v1, "result":I
    iget-object v2, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->col:I

    add-int/lit8 v1, v2, 0x1f

    .line 133
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int v1, v2, v3

    .line 134
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/sonymobile/home/data/ItemLocation;->page:I

    add-int v1, v2, v3

    .line 135
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->row:I

    add-int v1, v2, v3

    .line 136
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int v1, v2, v3

    .line 137
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    add-int v1, v2, v3

    .line 139
    return v1
.end method

.method public overlaps(Lcom/sonymobile/home/data/ItemLocation;)Z
    .locals 4
    .param p1, "other"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 92
    iget v2, p0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    if-eq v2, v3, :cond_2

    iget v2, p1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    if-eq v2, v3, :cond_2

    .line 93
    iget v2, p0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    iget v3, p1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iget v3, p1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    if-ne v2, v3, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 93
    goto :goto_0

    .line 95
    :cond_2
    iget v2, p0, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iget v3, p1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    if-ne v2, v3, :cond_3

    iget-object v2, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget-object v3, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    invoke-virtual {v2, v3}, Lcom/sonymobile/grid/GridRect;->overlaps(Lcom/sonymobile/grid/GridRect;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public set(IIIIII)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "position"    # I
    .param p3, "col"    # I
    .param p4, "row"    # I
    .param p5, "colSpan"    # I
    .param p6, "rowSpan"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 77
    iput p2, p0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 78
    iget-object v0, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput p3, v0, Lcom/sonymobile/grid/GridRect;->col:I

    .line 79
    iget-object v0, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput p4, v0, Lcom/sonymobile/grid/GridRect;->row:I

    .line 80
    iget-object v0, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput p5, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 81
    iget-object v0, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput p6, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 82
    return-void
.end method

.method public set(Lcom/sonymobile/home/data/ItemLocation;)V
    .locals 2
    .param p1, "source"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 57
    iget v0, p1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iput v0, p0, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 58
    iget v0, p1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    iput v0, p0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 59
    iget-object v0, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->col:I

    iput v1, v0, Lcom/sonymobile/grid/GridRect;->col:I

    .line 60
    iget-object v0, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->row:I

    iput v1, v0, Lcom/sonymobile/grid/GridRect;->row:I

    .line 61
    iget-object v0, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iput v1, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 62
    iget-object v0, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    iput v1, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemLocation [page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/data/ItemLocation;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", col="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->col:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", colSpan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rowSpan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public union(Lcom/sonymobile/home/data/ItemLocation;)V
    .locals 2
    .param p1, "otherLocation"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 122
    iget v0, p0, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iget v1, p1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    if-eq v0, v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    invoke-virtual {v0, v1}, Lcom/sonymobile/grid/GridRect;->union(Lcom/sonymobile/grid/GridRect;)V

    goto :goto_0
.end method
