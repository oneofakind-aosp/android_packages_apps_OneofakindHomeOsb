.class public Lcom/sonymobile/home/stage/dynamic/DynamicStageHintPositionCalculator;
.super Ljava/lang/Object;
.source "DynamicStageHintPositionCalculator.java"

# interfaces
.implements Lcom/sonymobile/home/stage/StageHintPositionCalculator;


# instance fields
.field private final mStageAdapter:Lcom/sonymobile/home/stage/StageAdapter;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/stage/StageAdapter;)V
    .locals 0
    .param p1, "stageAdapter"    # Lcom/sonymobile/home/stage/StageAdapter;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageHintPositionCalculator;->mStageAdapter:Lcom/sonymobile/home/stage/StageAdapter;

    .line 29
    return-void
.end method

.method private getItemOffset()I
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageHintPositionCalculator;->mStageAdapter:Lcom/sonymobile/home/stage/StageAdapter;

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/StageAdapter;->getItemCount()I

    move-result v0

    .line 76
    .local v0, "itemCount":I
    iget-object v1, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageHintPositionCalculator;->mStageAdapter:Lcom/sonymobile/home/stage/StageAdapter;

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/StageAdapter;->isFull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    add-int/lit8 v0, v0, -0x1

    .line 79
    :cond_0
    return v0
.end method


# virtual methods
.method public getHintLocationX(Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/data/ItemLocation;IZ)F
    .locals 4
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p2, "location"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p3, "col"    # I
    .param p4, "landscape"    # Z

    .prologue
    .line 37
    if-eqz p4, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p2, Lcom/sonymobile/home/data/ItemLocation;->position:I

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageHintPositionCalculator;->getItemOffset()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public getHintLocationY(Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/data/ItemLocation;IZ)F
    .locals 5
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p2, "location"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p3, "row"    # I
    .param p4, "landscape"    # Z

    .prologue
    .line 51
    if-eqz p4, :cond_0

    .line 52
    iget v1, p2, Lcom/sonymobile/home/data/ItemLocation;->position:I

    invoke-direct {p0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageHintPositionCalculator;->getItemOffset()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 53
    .local v0, "rowPosition":I
    invoke-virtual {p1}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    invoke-direct {p0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageHintPositionCalculator;->getItemOffset()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    .line 56
    .end local v0    # "rowPosition":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public positionFolderHint(Lcom/sonymobile/flix/components/Image;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/data/ItemLocation;IIZ)Z
    .locals 3
    .param p1, "folderHintView"    # Lcom/sonymobile/flix/components/Image;
    .param p2, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p3, "location"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p4, "col"    # I
    .param p5, "row"    # I
    .param p6, "landscape"    # Z

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 66
    invoke-virtual {p0, p2, p3, p4, p6}, Lcom/sonymobile/home/stage/dynamic/DynamicStageHintPositionCalculator;->getHintLocationX(Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/data/ItemLocation;IZ)F

    move-result v0

    .line 67
    .local v0, "hintX":F
    invoke-virtual {p0, p2, p3, p5, p6}, Lcom/sonymobile/home/stage/dynamic/DynamicStageHintPositionCalculator;->getHintLocationY(Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/data/ItemLocation;IZ)F

    move-result v1

    .line 68
    .local v1, "hintY":F
    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/sonymobile/flix/components/Image;->setPosition(FFFF)V

    .line 69
    const/4 v2, 0x1

    return v2
.end method
