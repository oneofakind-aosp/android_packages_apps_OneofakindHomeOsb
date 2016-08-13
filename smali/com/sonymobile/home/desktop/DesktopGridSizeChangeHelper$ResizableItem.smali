.class public Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;
.super Ljava/lang/Object;
.source "DesktopGridSizeChangeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResizableItem"
.end annotation


# instance fields
.field private final mGrid:Lcom/sonymobile/grid/GridRect;

.field private final mItem:Lcom/sonymobile/home/data/Item;

.field private final mMinColSpan:I

.field private final mMinRowSpan:I

.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;Lcom/sonymobile/home/data/Item;II)V
    .locals 1
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "minColSpan"    # I
    .param p4, "minRowSpan"    # I

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->this$0:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-virtual {p2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    .line 141
    iput p3, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mMinColSpan:I

    .line 142
    iput p4, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mMinRowSpan:I

    .line 143
    iput-object p2, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mItem:Lcom/sonymobile/home/data/Item;

    .line 144
    return-void
.end method


# virtual methods
.method public decreaseSize(II)I
    .locals 12
    .param p1, "wantedSizeDecrease"    # I
    .param p2, "resizePart"    # I

    .prologue
    const/4 v4, 0x0

    .line 199
    const/4 v3, 0x0

    .line 200
    .local v3, "actualSizeDecrease":I
    packed-switch p2, :pswitch_data_0

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mMinRowSpan:I

    if-le v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mMinRowSpan:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 206
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->this$0:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    # getter for: Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mGridSizeCalc:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->access$100(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    move-object v2, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->resize(Lcom/sonymobile/grid/GridRect;Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;IIII)V

    .line 207
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v1, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 208
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v1, v0, Lcom/sonymobile/grid/GridRect;->row:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/sonymobile/grid/GridRect;->row:I

    .line 242
    :cond_0
    :goto_0
    return v3

    .line 212
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mMinRowSpan:I

    if-le v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mMinRowSpan:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 216
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->this$0:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    # getter for: Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mGridSizeCalc:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->access$100(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    neg-int v10, v3

    move-object v7, p0

    move v8, v4

    move v9, v4

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->resize(Lcom/sonymobile/grid/GridRect;Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;IIII)V

    .line 217
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v1, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    goto :goto_0

    .line 221
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mMinColSpan:I

    if-le v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mMinColSpan:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 225
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->this$0:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    # getter for: Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mGridSizeCalc:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->access$100(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    move-object v7, p0

    move v8, v4

    move v9, v3

    move v10, v4

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->resize(Lcom/sonymobile/grid/GridRect;Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;IIII)V

    .line 226
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v1, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 227
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v1, v0, Lcom/sonymobile/grid/GridRect;->col:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/sonymobile/grid/GridRect;->col:I

    goto :goto_0

    .line 231
    :pswitch_3
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mMinColSpan:I

    if-le v0, v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mMinColSpan:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 235
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->this$0:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    # getter for: Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mGridSizeCalc:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->access$100(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    neg-int v11, v3

    move-object v7, p0

    move v8, v4

    move v9, v4

    move v10, v4

    invoke-virtual/range {v5 .. v11}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->resize(Lcom/sonymobile/grid/GridRect;Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;IIII)V

    .line 236
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v1, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    goto/16 :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public fitAboveRow(I)I
    .locals 9
    .param p1, "row"    # I

    .prologue
    const/4 v3, 0x0

    .line 277
    const/4 v7, 0x0

    .line 278
    .local v7, "collapsedColCount":I
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->row:I

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->row:I

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ge v0, p1, :cond_2

    .line 280
    :cond_0
    const/4 v7, 0x0

    .line 288
    :cond_1
    :goto_0
    return v7

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->row:I

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mMinRowSpan:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ge v0, p1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->row:I

    sub-int v1, p1, v1

    sub-int v8, v0, v1

    .line 284
    .local v8, "collapsedRowCount":I
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->this$0:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    # getter for: Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mGridSizeCalc:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->access$100(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    neg-int v5, v8

    move-object v2, p0

    move v4, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->resize(Lcom/sonymobile/grid/GridRect;Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;IIII)V

    .line 285
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v1, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    sub-int/2addr v1, v8

    iput v1, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 286
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v7, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    goto :goto_0
.end method

.method public fitLeftOfCol(I)I
    .locals 9
    .param p1, "column"    # I

    .prologue
    const/4 v3, 0x0

    .line 254
    const/4 v8, 0x0

    .line 255
    .local v8, "freedRowCount":I
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->col:I

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->col:I

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ge v0, p1, :cond_2

    .line 257
    :cond_0
    const/4 v8, 0x0

    .line 265
    :cond_1
    :goto_0
    return v8

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->col:I

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mMinColSpan:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ge v0, p1, :cond_1

    .line 259
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->col:I

    sub-int v1, p1, v1

    sub-int v7, v0, v1

    .line 261
    .local v7, "collapsedColCount":I
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->this$0:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    # getter for: Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mGridSizeCalc:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->access$100(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    neg-int v6, v7

    move-object v2, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->resize(Lcom/sonymobile/grid/GridRect;Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;IIII)V

    .line 262
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v1, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    sub-int/2addr v1, v7

    iput v1, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 263
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v8, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    goto :goto_0
.end method

.method public getMinColSpan()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mMinColSpan:I

    return v0
.end method

.method public getMinRowSpan()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mMinRowSpan:I

    return v0
.end method

.method public occupiesCol(I)Z
    .locals 2
    .param p1, "col"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->col:I

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->col:I

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public occupiesRow(I)Z
    .locals 2
    .param p1, "row"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->row:I

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->row:I

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mGrid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wrapsItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 298
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->mItem:Lcom/sonymobile/home/data/Item;

    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
