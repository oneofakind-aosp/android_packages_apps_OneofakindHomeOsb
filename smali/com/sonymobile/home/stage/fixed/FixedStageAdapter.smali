.class public Lcom/sonymobile/home/stage/fixed/FixedStageAdapter;
.super Lcom/sonymobile/home/stage/StageAdapter;
.source "FixedStageAdapter.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/stage/StageModel;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;Lcom/sonymobile/grid/Grid;)V
    .locals 0
    .param p1, "model"    # Lcom/sonymobile/home/stage/StageModel;
    .param p2, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p3, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;
    .param p4, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/home/stage/StageAdapter;-><init>(Lcom/sonymobile/home/stage/StageModel;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;Lcom/sonymobile/grid/Grid;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected doConfigurationUpdate(Lcom/sonymobile/grid/Grid;)V
    .locals 2
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    .line 68
    iget-boolean v1, p0, Lcom/sonymobile/home/stage/fixed/FixedStageAdapter;->mLandscape:Z

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/sonymobile/home/stage/fixed/FixedStageAdapter;->mRows:I

    .line 69
    .local v0, "maxSize":I
    :goto_0
    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/sonymobile/home/stage/fixed/FixedStageAdapter;->mHolePosition:I

    .line 70
    return-void

    .line 68
    .end local v0    # "maxSize":I
    :cond_0
    iget v0, p0, Lcom/sonymobile/home/stage/fixed/FixedStageAdapter;->mCols:I

    goto :goto_0
.end method

.method public getLocationForColRow(II)Lcom/sonymobile/home/data/ItemLocation;
    .locals 3
    .param p1, "col"    # I
    .param p2, "row"    # I

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, "position":I
    iget-boolean v1, p0, Lcom/sonymobile/home/stage/fixed/FixedStageAdapter;->mLandscape:Z

    if-eqz v1, :cond_0

    .line 44
    iget v1, p0, Lcom/sonymobile/home/stage/fixed/FixedStageAdapter;->mRows:I

    add-int/lit8 v1, v1, -0x1

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 49
    :goto_0
    iget v1, p0, Lcom/sonymobile/home/stage/fixed/FixedStageAdapter;->mHolePosition:I

    if-ne v0, v1, :cond_1

    .line 51
    const/4 v1, 0x0

    .line 60
    :goto_1
    return-object v1

    .line 46
    :cond_0
    move v0, p1

    goto :goto_0

    .line 56
    :cond_1
    iget v1, p0, Lcom/sonymobile/home/stage/fixed/FixedStageAdapter;->mHolePosition:I

    if-le v0, v1, :cond_2

    .line 57
    add-int/lit8 v0, v0, -0x1

    .line 60
    :cond_2
    new-instance v1, Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {p0}, Lcom/sonymobile/home/stage/fixed/FixedStageAdapter;->getDefaultPage()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    goto :goto_1
.end method
