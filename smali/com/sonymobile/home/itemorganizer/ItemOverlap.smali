.class public Lcom/sonymobile/home/itemorganizer/ItemOverlap;
.super Ljava/lang/Object;
.source "ItemOverlap.java"


# direct methods
.method public static intersectWithItemOverlap(Lcom/sonymobile/home/data/Item;FF)I
    .locals 11
    .param p0, "overlappedItem"    # Lcom/sonymobile/home/data/Item;
    .param p1, "col"    # F
    .param p2, "row"    # F

    .prologue
    const/high16 v10, 0x40400000    # 3.0f

    .line 81
    if-nez p0, :cond_0

    .line 82
    const/4 v2, 0x0

    .line 138
    :goto_0
    return v2

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v8

    iget-object v3, v8, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 85
    .local v3, "itemRect":Lcom/sonymobile/grid/GridRect;
    const/4 v4, 0x3

    .line 86
    .local v4, "maxColAndRowSections":I
    iget v8, v3, Lcom/sonymobile/grid/GridRect;->col:I

    int-to-float v8, v8

    sub-float v8, p1, v8

    iget v9, v3, Lcom/sonymobile/grid/GridRect;->colSpan:I

    int-to-float v9, v9

    div-float v5, v8, v9

    .line 87
    .local v5, "normalizedCol":F
    iget v8, v3, Lcom/sonymobile/grid/GridRect;->row:I

    int-to-float v8, v8

    sub-float v8, p2, v8

    iget v9, v3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 88
    .local v6, "normalizedRow":F
    mul-float v8, v5, v10

    float-to-int v0, v8

    .line 89
    .local v0, "colIndex":I
    mul-float v8, v6, v10

    float-to-int v7, v8

    .line 90
    .local v7, "rowIndex":I
    mul-int/lit8 v8, v0, 0x10

    add-int v1, v8, v7

    .line 103
    .local v1, "index":I
    sparse-switch v1, :sswitch_data_0

    .line 135
    const/4 v2, 0x0

    .local v2, "itemOverlap":I
    goto :goto_0

    .line 105
    .end local v2    # "itemOverlap":I
    :sswitch_0
    const/4 v2, 0x1

    .line 106
    .restart local v2    # "itemOverlap":I
    goto :goto_0

    .line 108
    .end local v2    # "itemOverlap":I
    :sswitch_1
    const/4 v2, 0x2

    .line 109
    .restart local v2    # "itemOverlap":I
    goto :goto_0

    .line 111
    .end local v2    # "itemOverlap":I
    :sswitch_2
    const/4 v2, 0x3

    .line 112
    .restart local v2    # "itemOverlap":I
    goto :goto_0

    .line 115
    .end local v2    # "itemOverlap":I
    :sswitch_3
    const/4 v2, 0x4

    .line 116
    .restart local v2    # "itemOverlap":I
    goto :goto_0

    .line 118
    .end local v2    # "itemOverlap":I
    :sswitch_4
    const/4 v2, 0x5

    .line 119
    .restart local v2    # "itemOverlap":I
    goto :goto_0

    .line 121
    .end local v2    # "itemOverlap":I
    :sswitch_5
    const/4 v2, 0x6

    .line 122
    .restart local v2    # "itemOverlap":I
    goto :goto_0

    .line 125
    .end local v2    # "itemOverlap":I
    :sswitch_6
    const/4 v2, 0x7

    .line 126
    .restart local v2    # "itemOverlap":I
    goto :goto_0

    .line 128
    .end local v2    # "itemOverlap":I
    :sswitch_7
    const/16 v2, 0x8

    .line 129
    .restart local v2    # "itemOverlap":I
    goto :goto_0

    .line 131
    .end local v2    # "itemOverlap":I
    :sswitch_8
    const/16 v2, 0x9

    .line 132
    .restart local v2    # "itemOverlap":I
    goto :goto_0

    .line 103
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x10 -> :sswitch_3
        0x11 -> :sswitch_4
        0x12 -> :sswitch_5
        0x20 -> :sswitch_6
        0x21 -> :sswitch_7
        0x22 -> :sswitch_8
    .end sparse-switch
.end method

.method public static isItemOverlapValidForFolderCreation(IZ)Z
    .locals 1
    .param p0, "itemOverlap"    # I
    .param p1, "shouldPackItems"    # Z

    .prologue
    .line 56
    packed-switch p0, :pswitch_data_0

    .line 65
    const/4 v0, 0x0

    .line 68
    .local v0, "res":Z
    :goto_0
    return v0

    .line 58
    .end local v0    # "res":Z
    :pswitch_0
    const/4 v0, 0x1

    .line 59
    .restart local v0    # "res":Z
    goto :goto_0

    .line 62
    .end local v0    # "res":Z
    :pswitch_1
    move v0, p1

    .line 63
    .restart local v0    # "res":Z
    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isLeft(I)Z
    .locals 2
    .param p0, "itemOverlap"    # I

    .prologue
    const/4 v0, 0x1

    .line 148
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
