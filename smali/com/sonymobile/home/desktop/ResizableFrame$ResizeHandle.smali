.class Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;
.super Lcom/sonymobile/home/desktop/ResizableFrame$DraggableArea;
.source "ResizableFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/ResizableFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizeHandle"
.end annotation


# instance fields
.field private final mEdge:I

.field final synthetic this$0:Lcom/sonymobile/home/desktop/ResizableFrame;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/desktop/ResizableFrame;Lcom/sonymobile/flix/components/Scene;I)V
    .locals 0
    .param p2, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p3, "edge"    # I

    .prologue
    .line 556
    iput-object p1, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    .line 557
    invoke-direct {p0, p2}, Lcom/sonymobile/home/desktop/ResizableFrame$DraggableArea;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 558
    iput p3, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->mEdge:I

    .line 559
    return-void
.end method


# virtual methods
.method public onDragged(FFFF)V
    .locals 13
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "totalX"    # F
    .param p4, "totalY"    # F

    .prologue
    .line 580
    iget-object v1, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    .line 581
    .local v1, "f":Lcom/sonymobile/home/desktop/ResizableFrame;
    const/high16 v11, 0x3f800000    # 1.0f

    iget-object v12, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v12}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$700(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/grid/Grid;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v3, v11, v12

    .line 582
    .local v3, "invCellWidth":F
    const/high16 v11, 0x3f800000    # 1.0f

    iget-object v12, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v12}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$700(Lcom/sonymobile/home/desktop/ResizableFrame;)Lcom/sonymobile/grid/Grid;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v2, v11, v12

    .line 583
    .local v2, "invCellHeight":F
    iget-object v11, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameLeft:F
    invoke-static {v11}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$900(Lcom/sonymobile/home/desktop/ResizableFrame;)F

    move-result v11

    mul-float/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 584
    .local v6, "prevLeftCell":I
    iget-object v11, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameTop:F
    invoke-static {v11}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$1000(Lcom/sonymobile/home/desktop/ResizableFrame;)F

    move-result v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 585
    .local v8, "prevTopCell":I
    iget-object v11, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameRight:F
    invoke-static {v11}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$1100(Lcom/sonymobile/home/desktop/ResizableFrame;)F

    move-result v11

    mul-float/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 586
    .local v7, "prevRightCell":I
    iget-object v11, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameBottom:F
    invoke-static {v11}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$1200(Lcom/sonymobile/home/desktop/ResizableFrame;)F

    move-result v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 587
    .local v5, "prevBottomCell":I
    iget v11, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->mEdge:I

    if-eqz v11, :cond_0

    iget v11, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->mEdge:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 588
    :cond_0
    iget-object v11, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    iget v12, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->mEdge:I

    # invokes: Lcom/sonymobile/home/desktop/ResizableFrame;->moveFrame(IF)V
    invoke-static {v11, v12, p1}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$1300(Lcom/sonymobile/home/desktop/ResizableFrame;IF)V

    .line 592
    :goto_0
    iget-object v11, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameLeft:F
    invoke-static {v11}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$900(Lcom/sonymobile/home/desktop/ResizableFrame;)F

    move-result v11

    mul-float/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 593
    .local v4, "leftCell":I
    iget-object v11, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameTop:F
    invoke-static {v11}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$1000(Lcom/sonymobile/home/desktop/ResizableFrame;)F

    move-result v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 594
    .local v10, "topCell":I
    iget-object v11, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameRight:F
    invoke-static {v11}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$1100(Lcom/sonymobile/home/desktop/ResizableFrame;)F

    move-result v11

    mul-float/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 595
    .local v9, "rightCell":I
    iget-object v11, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mFrameBottom:F
    invoke-static {v11}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$1200(Lcom/sonymobile/home/desktop/ResizableFrame;)F

    move-result v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 596
    .local v0, "bottomCell":I
    if-ne v4, v6, :cond_1

    if-ne v10, v8, :cond_1

    if-ne v9, v7, :cond_1

    if-eq v0, v5, :cond_2

    .line 598
    :cond_1
    add-int/lit8 v11, v9, -0x1

    add-int/lit8 v12, v0, -0x1

    invoke-virtual {v1, v4, v10, v11, v12}, Lcom/sonymobile/home/desktop/ResizableFrame;->changeFrameSize(IIII)V

    .line 600
    :cond_2
    return-void

    .line 590
    .end local v0    # "bottomCell":I
    .end local v4    # "leftCell":I
    .end local v9    # "rightCell":I
    .end local v10    # "topCell":I
    :cond_3
    iget-object v11, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    iget v12, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->mEdge:I

    # invokes: Lcom/sonymobile/home/desktop/ResizableFrame;->moveFrame(IF)V
    invoke-static {v11, v12, p2}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$1300(Lcom/sonymobile/home/desktop/ResizableFrame;IF)V

    goto :goto_0
.end method

.method public onTouch(IZFFLandroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 564
    invoke-super/range {p0 .. p5}, Lcom/sonymobile/home/desktop/ResizableFrame$DraggableArea;->onTouch(IZFFLandroid/view/MotionEvent;)Z

    .line 565
    if-ne p1, v1, :cond_1

    .line 566
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # getter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mActiveHandles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$1400(Lcom/sonymobile/home/desktop/ResizableFrame;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # setter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mWasPressed:Z
    invoke-static {v0, v1}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$1502(Lcom/sonymobile/home/desktop/ResizableFrame;Z)Z

    .line 574
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # setter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mHandleTouched:Z
    invoke-static {v0, v1}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$1702(Lcom/sonymobile/home/desktop/ResizableFrame;Z)Z

    .line 575
    const/4 v0, 0x0

    return v0

    .line 568
    :cond_1
    if-nez p1, :cond_0

    .line 569
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame$ResizeHandle;->this$0:Lcom/sonymobile/home/desktop/ResizableFrame;

    # setter for: Lcom/sonymobile/home/desktop/ResizableFrame;->mWasReleased:Z
    invoke-static {v0, v1}, Lcom/sonymobile/home/desktop/ResizableFrame;->access$1602(Lcom/sonymobile/home/desktop/ResizableFrame;Z)Z

    goto :goto_0
.end method
