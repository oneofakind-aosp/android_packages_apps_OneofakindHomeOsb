.class Lcom/sonymobile/home/desktop/ResizableFrame$2;
.super Lcom/sonymobile/flix/util/Animation;
.source "ResizableFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/ResizableFrame;->animateFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDiffBottom:F

.field private mDiffLeft:F

.field private mDiffRight:F

.field private mDiffTop:F

.field final synthetic this$0:Lcom/sonymobile/home/desktop/ResizableFrame;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/ResizableFrame;J)V
    .locals 0
    .param p2, "x0"    # J

    .prologue
    .line 433
    iput-object p1, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    invoke-direct {p0, p2, p3}, Lcom/sonymobile/flix/util/Animation;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 12

    .prologue
    .line 441
    iget-object v10, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v10}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$700(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/grid/Grid;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v10

    int-to-float v6, v10

    .line 442
    .local v6, "cellWidth":F
    iget-object v10, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v10}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$700(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/grid/Grid;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v10

    int-to-float v5, v10

    .line 443
    .local v5, "cellHeight":F
    iget-object v10, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mAllowedCellBounds:Lcom/sonymobile/grid/GridRect;
    invoke-static {v10}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$800(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/grid/GridRect;

    move-result-object v10

    iget v1, v10, Lcom/sonymobile/grid/GridRect;->col:I

    .line 444
    .local v1, "allowedLeftCell":I
    iget-object v10, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mAllowedCellBounds:Lcom/sonymobile/grid/GridRect;
    invoke-static {v10}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$800(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/grid/GridRect;

    move-result-object v10

    iget v3, v10, Lcom/sonymobile/grid/GridRect;->row:I

    .line 445
    .local v3, "allowedTopCell":I
    iget-object v10, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mAllowedCellBounds:Lcom/sonymobile/grid/GridRect;
    invoke-static {v10}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$800(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/grid/GridRect;

    move-result-object v10

    iget v10, v10, Lcom/sonymobile/grid/GridRect;->col:I

    iget-object v11, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mAllowedCellBounds:Lcom/sonymobile/grid/GridRect;
    invoke-static {v11}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$800(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/grid/GridRect;

    move-result-object v11

    iget v11, v11, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v10, v11

    add-int/lit8 v2, v10, -0x1

    .line 446
    .local v2, "allowedRightCell":I
    iget-object v10, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mAllowedCellBounds:Lcom/sonymobile/grid/GridRect;
    invoke-static {v10}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$800(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/grid/GridRect;

    move-result-object v10

    iget v10, v10, Lcom/sonymobile/grid/GridRect;->row:I

    iget-object v11, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mAllowedCellBounds:Lcom/sonymobile/grid/GridRect;
    invoke-static {v11}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$800(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/grid/GridRect;

    move-result-object v11

    iget v11, v11, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v10, v11

    add-int/lit8 v0, v10, -0x1

    .line 448
    .local v0, "allowedBottomCell":I
    iget-object v10, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameLeft:F
    invoke-static {v10}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$900(Lcom/sonymobile/home/desktop/ResizableFrame;)F

    move-result v10

    div-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 449
    .local v7, "leftCell":I
    if-ge v7, v1, :cond_0

    .line 450
    move v7, v1

    .line 452
    :cond_0
    int-to-float v10, v7

    mul-float/2addr v10, v6

    iget-object v11, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameLeft:F
    invoke-static {v11}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$900(Lcom/sonymobile/home/desktop/ResizableFrame;)F

    move-result v11

    sub-float/2addr v10, v11

    iput v10, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->mDiffLeft:F

    .line 454
    iget-object v10, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameTop:F
    invoke-static {v10}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$1000(Lcom/sonymobile/home/desktop/ResizableFrame;)F

    move-result v10

    div-float/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 455
    .local v9, "topCell":I
    if-ge v9, v3, :cond_1

    .line 456
    move v9, v3

    .line 458
    :cond_1
    int-to-float v10, v9

    mul-float/2addr v10, v5

    iget-object v11, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameTop:F
    invoke-static {v11}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$1000(Lcom/sonymobile/home/desktop/ResizableFrame;)F

    move-result v11

    sub-float/2addr v10, v11

    iput v10, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->mDiffTop:F

    .line 460
    iget-object v10, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameRight:F
    invoke-static {v10}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$1100(Lcom/sonymobile/home/desktop/ResizableFrame;)F

    move-result v10

    div-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 461
    .local v8, "rightCell":I
    if-le v8, v2, :cond_2

    .line 462
    move v8, v2

    .line 464
    :cond_2
    int-to-float v10, v8

    mul-float/2addr v10, v6

    iget-object v11, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameRight:F
    invoke-static {v11}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$1100(Lcom/sonymobile/home/desktop/ResizableFrame;)F

    move-result v11

    sub-float/2addr v10, v11

    iput v10, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->mDiffRight:F

    .line 466
    iget-object v10, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameBottom:F
    invoke-static {v10}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$1200(Lcom/sonymobile/home/desktop/ResizableFrame;)F

    move-result v10

    div-float/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 467
    .local v4, "bottomCell":I
    if-le v4, v0, :cond_3

    .line 468
    move v4, v0

    .line 470
    :cond_3
    int-to-float v10, v4

    mul-float/2addr v10, v5

    iget-object v11, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameBottom:F
    invoke-static {v11}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$1200(Lcom/sonymobile/home/desktop/ResizableFrame;)F

    move-result v11

    sub-float/2addr v10, v11

    iput v10, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->mDiffBottom:F

    .line 471
    return-void
.end method

.method public onUpdate(FF)V
    .locals 4
    .param p1, "value"    # F
    .param p2, "delta"    # F

    .prologue
    const/4 v3, 0x0

    .line 475
    iget v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->mDiffLeft:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->mDiffLeft:F

    mul-float/2addr v2, p2

    # invokes: Lcom/sonymobile/home/desktop/ResizableFrame;->moveFrame(IF)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$1300(Lcom/sonymobile/home/desktop/ResizableFrame;IF)V

    .line 478
    :cond_0
    iget v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->mDiffTop:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->mDiffTop:F

    mul-float/2addr v2, p2

    # invokes: Lcom/sonymobile/home/desktop/ResizableFrame;->moveFrame(IF)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$1300(Lcom/sonymobile/home/desktop/ResizableFrame;IF)V

    .line 481
    :cond_1
    iget v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->mDiffRight:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->mDiffRight:F

    mul-float/2addr v2, p2

    # invokes: Lcom/sonymobile/home/desktop/ResizableFrame;->moveFrame(IF)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$1300(Lcom/sonymobile/home/desktop/ResizableFrame;IF)V

    .line 484
    :cond_2
    iget v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->mDiffBottom:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_3

    .line 485
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame$2;->mDiffBottom:F

    mul-float/2addr v2, p2

    # invokes: Lcom/sonymobile/home/desktop/ResizableFrame;->moveFrame(IF)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$1300(Lcom/sonymobile/home/desktop/ResizableFrame;IF)V

    .line 487
    :cond_3
    return-void
.end method
