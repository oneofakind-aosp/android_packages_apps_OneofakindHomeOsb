.class Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;
.super Ljava/lang/Object;
.source "DesktopGridSizeChangeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridSizeCalculator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->this$0:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;
    .param p2, "x1"    # Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$1;

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;-><init>(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/sonymobile/grid/GridRect;II)V
    .locals 5
    .param p1, "grid"    # Lcom/sonymobile/grid/GridRect;
    .param p2, "minColSpan"    # I
    .param p3, "minRowSpan"    # I

    .prologue
    .line 332
    iget v0, p1, Lcom/sonymobile/grid/GridRect;->col:I

    .local v0, "col":I
    :goto_0
    iget v2, p1, Lcom/sonymobile/grid/GridRect;->col:I

    iget v3, p1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->this$0:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    # getter for: Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMaxColSize:[I
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->access$200(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)[I

    move-result-object v2

    aget v3, v2, v0

    iget v4, p1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v3, v4

    aput v3, v2, v0

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_0
    iget v0, p1, Lcom/sonymobile/grid/GridRect;->col:I

    :goto_1
    iget v2, p1, Lcom/sonymobile/grid/GridRect;->col:I

    add-int/2addr v2, p2

    if-ge v0, v2, :cond_1

    .line 336
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->this$0:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    # getter for: Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMinColSize:[I
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->access$300(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)[I

    move-result-object v2

    aget v3, v2, v0

    add-int/2addr v3, p3

    aput v3, v2, v0

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 338
    :cond_1
    iget v1, p1, Lcom/sonymobile/grid/GridRect;->row:I

    .local v1, "row":I
    :goto_2
    iget v2, p1, Lcom/sonymobile/grid/GridRect;->row:I

    iget v3, p1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 339
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->this$0:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    # getter for: Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMaxRowSize:[I
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->access$400(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)[I

    move-result-object v2

    aget v3, v2, v1

    iget v4, p1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v3, v4

    aput v3, v2, v1

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 341
    :cond_2
    iget v1, p1, Lcom/sonymobile/grid/GridRect;->row:I

    :goto_3
    iget v2, p1, Lcom/sonymobile/grid/GridRect;->row:I

    add-int/2addr v2, p3

    if-ge v1, v2, :cond_3

    .line 342
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->this$0:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    # getter for: Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMinRowSize:[I
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->access$500(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)[I

    move-result-object v2

    aget v3, v2, v1

    add-int/2addr v3, p2

    aput v3, v2, v1

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 344
    :cond_3
    return-void
.end method

.method public add(Lcom/sonymobile/grid/GridRect;Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;)V
    .locals 2
    .param p1, "grid"    # Lcom/sonymobile/grid/GridRect;
    .param p2, "resizableItem"    # Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;

    .prologue
    .line 316
    if-nez p2, :cond_0

    .line 317
    iget v0, p1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iget v1, p1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->add(Lcom/sonymobile/grid/GridRect;II)V

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-virtual {p2}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->getMinColSpan()I

    move-result v0

    invoke-virtual {p2}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->getMinRowSpan()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->add(Lcom/sonymobile/grid/GridRect;II)V

    goto :goto_0
.end method

.method public move(Lcom/sonymobile/grid/GridRect;Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;II)V
    .locals 4
    .param p1, "grid"    # Lcom/sonymobile/grid/GridRect;
    .param p2, "resizableItem"    # Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;
    .param p3, "colDelta"    # I
    .param p4, "rowDelta"    # I

    .prologue
    .line 403
    if-nez p2, :cond_0

    .line 404
    iget v0, p1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 405
    .local v0, "minColSpan":I
    iget v1, p1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 412
    .local v1, "minRowSpan":I
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->remove(Lcom/sonymobile/grid/GridRect;II)V

    .line 415
    new-instance v2, Lcom/sonymobile/grid/GridRect;

    invoke-direct {v2, p1}, Lcom/sonymobile/grid/GridRect;-><init>(Lcom/sonymobile/grid/GridRect;)V

    .line 416
    .local v2, "targetGrid":Lcom/sonymobile/grid/GridRect;
    iget v3, v2, Lcom/sonymobile/grid/GridRect;->col:I

    add-int/2addr v3, p3

    iput v3, v2, Lcom/sonymobile/grid/GridRect;->col:I

    .line 417
    iget v3, v2, Lcom/sonymobile/grid/GridRect;->row:I

    add-int/2addr v3, p4

    iput v3, v2, Lcom/sonymobile/grid/GridRect;->row:I

    .line 420
    invoke-virtual {p0, v2, v0, v1}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->add(Lcom/sonymobile/grid/GridRect;II)V

    .line 421
    return-void

    .line 407
    .end local v0    # "minColSpan":I
    .end local v1    # "minRowSpan":I
    .end local v2    # "targetGrid":Lcom/sonymobile/grid/GridRect;
    :cond_0
    invoke-virtual {p2}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->getMinColSpan()I

    move-result v0

    .line 408
    .restart local v0    # "minColSpan":I
    invoke-virtual {p2}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->getMinRowSpan()I

    move-result v1

    .restart local v1    # "minRowSpan":I
    goto :goto_0
.end method

.method public remove(Lcom/sonymobile/grid/GridRect;II)V
    .locals 5
    .param p1, "grid"    # Lcom/sonymobile/grid/GridRect;
    .param p2, "minColSpan"    # I
    .param p3, "minRowSpan"    # I

    .prologue
    .line 372
    iget v0, p1, Lcom/sonymobile/grid/GridRect;->col:I

    .local v0, "col":I
    :goto_0
    iget v2, p1, Lcom/sonymobile/grid/GridRect;->col:I

    iget v3, p1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 373
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->this$0:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    # getter for: Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMaxColSize:[I
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->access$200(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)[I

    move-result-object v2

    aget v3, v2, v0

    iget v4, p1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    sub-int/2addr v3, v4

    aput v3, v2, v0

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_0
    iget v0, p1, Lcom/sonymobile/grid/GridRect;->col:I

    :goto_1
    iget v2, p1, Lcom/sonymobile/grid/GridRect;->col:I

    add-int/2addr v2, p2

    if-ge v0, v2, :cond_1

    .line 376
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->this$0:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    # getter for: Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMinColSize:[I
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->access$300(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)[I

    move-result-object v2

    aget v3, v2, v0

    sub-int/2addr v3, p3

    aput v3, v2, v0

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 378
    :cond_1
    iget v1, p1, Lcom/sonymobile/grid/GridRect;->row:I

    .local v1, "row":I
    :goto_2
    iget v2, p1, Lcom/sonymobile/grid/GridRect;->row:I

    iget v3, p1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 379
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->this$0:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    # getter for: Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMaxRowSize:[I
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->access$400(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)[I

    move-result-object v2

    aget v3, v2, v1

    iget v4, p1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    sub-int/2addr v3, v4

    aput v3, v2, v1

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 381
    :cond_2
    iget v1, p1, Lcom/sonymobile/grid/GridRect;->row:I

    :goto_3
    iget v2, p1, Lcom/sonymobile/grid/GridRect;->row:I

    add-int/2addr v2, p3

    if-ge v1, v2, :cond_3

    .line 382
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->this$0:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    # getter for: Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMinRowSize:[I
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->access$500(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)[I

    move-result-object v2

    aget v3, v2, v1

    sub-int/2addr v3, p2

    aput v3, v2, v1

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 384
    :cond_3
    return-void
.end method

.method public remove(Lcom/sonymobile/grid/GridRect;Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;)V
    .locals 2
    .param p1, "grid"    # Lcom/sonymobile/grid/GridRect;
    .param p2, "resizableItem"    # Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;

    .prologue
    .line 356
    if-nez p2, :cond_0

    .line 357
    iget v0, p1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iget v1, p1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->remove(Lcom/sonymobile/grid/GridRect;II)V

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    invoke-virtual {p2}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->getMinColSpan()I

    move-result v0

    invoke-virtual {p2}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->getMinRowSpan()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->remove(Lcom/sonymobile/grid/GridRect;II)V

    goto :goto_0
.end method

.method public resize(Lcom/sonymobile/grid/GridRect;Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;IIII)V
    .locals 4
    .param p1, "grid"    # Lcom/sonymobile/grid/GridRect;
    .param p2, "resizableItem"    # Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;
    .param p3, "moveTop"    # I
    .param p4, "moveLeft"    # I
    .param p5, "moveBottom"    # I
    .param p6, "moveRight"    # I

    .prologue
    .line 450
    if-nez p2, :cond_0

    .line 451
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 453
    :cond_0
    invoke-virtual {p2}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->getMinColSpan()I

    move-result v0

    .line 454
    .local v0, "minColSpan":I
    invoke-virtual {p2}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->getMinRowSpan()I

    move-result v1

    .line 458
    .local v1, "minRowSpan":I
    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->remove(Lcom/sonymobile/grid/GridRect;II)V

    .line 461
    new-instance v2, Lcom/sonymobile/grid/GridRect;

    invoke-direct {v2, p1}, Lcom/sonymobile/grid/GridRect;-><init>(Lcom/sonymobile/grid/GridRect;)V

    .line 463
    .local v2, "targetGrid":Lcom/sonymobile/grid/GridRect;
    if-lez p4, :cond_1

    .line 464
    iget v3, v2, Lcom/sonymobile/grid/GridRect;->col:I

    add-int/2addr v3, p4

    iput v3, v2, Lcom/sonymobile/grid/GridRect;->col:I

    .line 466
    iget v3, v2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    sub-int/2addr v3, p4

    iput v3, v2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 469
    :cond_1
    if-lez p3, :cond_2

    .line 470
    iget v3, v2, Lcom/sonymobile/grid/GridRect;->row:I

    add-int/2addr v3, p3

    iput v3, v2, Lcom/sonymobile/grid/GridRect;->row:I

    .line 472
    iget v3, v2, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    sub-int/2addr v3, p3

    iput v3, v2, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 474
    :cond_2
    iget v3, v2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v3, p6

    iput v3, v2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 475
    iget v3, v2, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v3, p5

    iput v3, v2, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 478
    invoke-virtual {p0, v2, v0, v1}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->add(Lcom/sonymobile/grid/GridRect;II)V

    .line 479
    return-void
.end method
