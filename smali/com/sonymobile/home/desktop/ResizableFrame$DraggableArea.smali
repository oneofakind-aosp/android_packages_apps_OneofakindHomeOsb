.class abstract Lcom/sonymobile/home/desktop/ResizableFrame$DraggableArea;
.super Lcom/sonymobile/flix/components/TouchArea;
.source "ResizableFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/ResizableFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DraggableArea"
.end annotation


# instance fields
.field private mDownX:F

.field private mDownY:F

.field private mPrevX:F

.field private mPrevY:F


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 613
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/TouchArea;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 614
    return-void
.end method


# virtual methods
.method public abstract onDragged(FFFF)V
.end method

.method public onHover(IZFFLandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 642
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(IZFFLandroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 623
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 624
    :cond_0
    invoke-virtual {p5}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 625
    .local v0, "x":F
    invoke-virtual {p5}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 626
    .local v1, "y":F
    iget v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame$DraggableArea;->mPrevX:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/sonymobile/home/desktop/ResizableFrame$DraggableArea;->mPrevY:F

    sub-float v3, v1, v3

    iget v4, p0, Lcom/sonymobile/home/desktop/ResizableFrame$DraggableArea;->mDownX:F

    sub-float v4, v0, v4

    iget v5, p0, Lcom/sonymobile/home/desktop/ResizableFrame$DraggableArea;->mDownY:F

    sub-float v5, v1, v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sonymobile/home/desktop/ResizableFrame$DraggableArea;->onDragged(FFFF)V

    .line 627
    iput v0, p0, Lcom/sonymobile/home/desktop/ResizableFrame$DraggableArea;->mPrevX:F

    .line 628
    iput v1, p0, Lcom/sonymobile/home/desktop/ResizableFrame$DraggableArea;->mPrevY:F

    .line 635
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ResizableFrame$DraggableArea;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 636
    return v6

    .line 629
    :cond_2
    if-ne p1, v6, :cond_1

    .line 630
    invoke-virtual {p5}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame$DraggableArea;->mDownX:F

    .line 631
    invoke-virtual {p5}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame$DraggableArea;->mDownY:F

    .line 632
    iget v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame$DraggableArea;->mDownX:F

    iput v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame$DraggableArea;->mPrevX:F

    .line 633
    iget v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame$DraggableArea;->mDownY:F

    iput v2, p0, Lcom/sonymobile/home/desktop/ResizableFrame$DraggableArea;->mPrevY:F

    goto :goto_0
.end method
