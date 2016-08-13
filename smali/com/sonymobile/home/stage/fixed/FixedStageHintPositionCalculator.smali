.class public Lcom/sonymobile/home/stage/fixed/FixedStageHintPositionCalculator;
.super Ljava/lang/Object;
.source "FixedStageHintPositionCalculator.java"

# interfaces
.implements Lcom/sonymobile/home/stage/StageHintPositionCalculator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHintLocationX(Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/data/ItemLocation;IZ)F
    .locals 4
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p2, "location"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p3, "col"    # I
    .param p4, "landscape"    # Z

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p3

    invoke-virtual {p1}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getHintLocationY(Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/data/ItemLocation;IZ)F
    .locals 4
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p2, "location"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p3, "row"    # I
    .param p4, "landscape"    # Z

    .prologue
    .line 33
    invoke-virtual {p1}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p3

    invoke-virtual {p1}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public positionFolderHint(Lcom/sonymobile/flix/components/Image;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/data/ItemLocation;IIZ)Z
    .locals 1
    .param p1, "folderHintView"    # Lcom/sonymobile/flix/components/Image;
    .param p2, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p3, "location"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p4, "col"    # I
    .param p5, "row"    # I
    .param p6, "landscape"    # Z

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
