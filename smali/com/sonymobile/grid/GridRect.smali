.class public Lcom/sonymobile/grid/GridRect;
.super Ljava/lang/Object;
.source "GridRect.java"


# instance fields
.field public col:I

.field public colSpan:I

.field public row:I

.field public rowSpan:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/grid/GridRect;)V
    .locals 0
    .param p1, "gridRect"    # Lcom/sonymobile/grid/GridRect;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lcom/sonymobile/grid/GridRect;->set(Lcom/sonymobile/grid/GridRect;)V

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    if-ne p0, p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v1

    .line 125
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 126
    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 128
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 129
    check-cast v0, Lcom/sonymobile/grid/GridRect;

    .line 130
    .local v0, "other":Lcom/sonymobile/grid/GridRect;
    iget v3, p0, Lcom/sonymobile/grid/GridRect;->col:I

    iget v4, v0, Lcom/sonymobile/grid/GridRect;->col:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 131
    goto :goto_0

    .line 132
    :cond_4
    iget v3, p0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iget v4, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 133
    goto :goto_0

    .line 134
    :cond_5
    iget v3, p0, Lcom/sonymobile/grid/GridRect;->row:I

    iget v4, v0, Lcom/sonymobile/grid/GridRect;->row:I

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 135
    goto :goto_0

    .line 136
    :cond_6
    iget v3, p0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    iget v4, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 137
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 112
    const/16 v0, 0x1f

    .line 113
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 114
    .local v1, "result":I
    iget v2, p0, Lcom/sonymobile/grid/GridRect;->col:I

    add-int/lit8 v1, v2, 0x1f

    .line 115
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int v1, v2, v3

    .line 116
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/sonymobile/grid/GridRect;->row:I

    add-int v1, v2, v3

    .line 117
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int v1, v2, v3

    .line 118
    return v1
.end method

.method public overlaps(Lcom/sonymobile/grid/GridRect;)Z
    .locals 3
    .param p1, "that"    # Lcom/sonymobile/grid/GridRect;

    .prologue
    .line 48
    iget v0, p1, Lcom/sonymobile/grid/GridRect;->col:I

    iget v1, p0, Lcom/sonymobile/grid/GridRect;->col:I

    iget v2, p0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/grid/GridRect;->col:I

    iget v1, p1, Lcom/sonymobile/grid/GridRect;->col:I

    iget v2, p1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/sonymobile/grid/GridRect;->row:I

    iget v1, p0, Lcom/sonymobile/grid/GridRect;->row:I

    iget v2, p0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/grid/GridRect;->row:I

    iget v1, p1, Lcom/sonymobile/grid/GridRect;->row:I

    iget v2, p1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Lcom/sonymobile/grid/GridRect;)V
    .locals 1
    .param p1, "gridRect"    # Lcom/sonymobile/grid/GridRect;

    .prologue
    .line 58
    iget v0, p1, Lcom/sonymobile/grid/GridRect;->col:I

    iput v0, p0, Lcom/sonymobile/grid/GridRect;->col:I

    .line 59
    iget v0, p1, Lcom/sonymobile/grid/GridRect;->row:I

    iput v0, p0, Lcom/sonymobile/grid/GridRect;->row:I

    .line 60
    iget v0, p1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iput v0, p0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 61
    iget v0, p1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    iput v0, p0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/grid/GridRect;->col:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/grid/GridRect;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") + ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public union(Lcom/sonymobile/grid/GridRect;)V
    .locals 6
    .param p1, "rect"    # Lcom/sonymobile/grid/GridRect;

    .prologue
    .line 72
    iget v4, p1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    if-eqz v4, :cond_4

    iget v4, p1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    if-eqz v4, :cond_4

    .line 73
    iget v4, p0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    if-eqz v4, :cond_5

    .line 74
    iget v4, p1, Lcom/sonymobile/grid/GridRect;->col:I

    iget v5, p1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int v2, v4, v5

    .line 75
    .local v2, "rectRight":I
    iget v4, p1, Lcom/sonymobile/grid/GridRect;->row:I

    iget v5, p1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int v1, v4, v5

    .line 76
    .local v1, "rectBottom":I
    iget v4, p0, Lcom/sonymobile/grid/GridRect;->col:I

    iget v5, p0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int v3, v4, v5

    .line 77
    .local v3, "right":I
    iget v4, p0, Lcom/sonymobile/grid/GridRect;->row:I

    iget v5, p0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int v0, v4, v5

    .line 78
    .local v0, "bottom":I
    iget v4, p0, Lcom/sonymobile/grid/GridRect;->col:I

    iget v5, p1, Lcom/sonymobile/grid/GridRect;->col:I

    if-le v4, v5, :cond_0

    .line 79
    iget v4, p1, Lcom/sonymobile/grid/GridRect;->col:I

    iput v4, p0, Lcom/sonymobile/grid/GridRect;->col:I

    .line 81
    :cond_0
    iget v4, p0, Lcom/sonymobile/grid/GridRect;->row:I

    iget v5, p1, Lcom/sonymobile/grid/GridRect;->row:I

    if-le v4, v5, :cond_1

    .line 82
    iget v4, p1, Lcom/sonymobile/grid/GridRect;->row:I

    iput v4, p0, Lcom/sonymobile/grid/GridRect;->row:I

    .line 84
    :cond_1
    if-ge v3, v2, :cond_2

    .line 85
    move v3, v2

    .line 87
    :cond_2
    if-ge v0, v1, :cond_3

    .line 88
    move v0, v1

    .line 90
    :cond_3
    iget v4, p0, Lcom/sonymobile/grid/GridRect;->col:I

    sub-int v4, v3, v4

    iput v4, p0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 91
    iget v4, p0, Lcom/sonymobile/grid/GridRect;->row:I

    sub-int v4, v0, v4

    iput v4, p0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 96
    .end local v0    # "bottom":I
    .end local v1    # "rectBottom":I
    .end local v2    # "rectRight":I
    .end local v3    # "right":I
    :cond_4
    :goto_0
    return-void

    .line 93
    :cond_5
    invoke-virtual {p0, p1}, Lcom/sonymobile/grid/GridRect;->set(Lcom/sonymobile/grid/GridRect;)V

    goto :goto_0
.end method
