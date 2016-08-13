.class public Lcom/sonymobile/home/stage/dynamic/DynamicStageAdapter;
.super Lcom/sonymobile/home/stage/StageAdapter;
.source "DynamicStageAdapter.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/stage/StageModel;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;Lcom/sonymobile/grid/Grid;)V
    .locals 0
    .param p1, "model"    # Lcom/sonymobile/home/stage/StageModel;
    .param p2, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p3, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;
    .param p4, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/home/stage/StageAdapter;-><init>(Lcom/sonymobile/home/stage/StageModel;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;Lcom/sonymobile/grid/Grid;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected doConfigurationUpdate(Lcom/sonymobile/grid/Grid;)V
    .locals 0
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    .line 62
    return-void
.end method

.method public getLocationForColRow(II)Lcom/sonymobile/home/data/ItemLocation;
    .locals 5
    .param p1, "col"    # I
    .param p2, "row"    # I

    .prologue
    .line 42
    iget-boolean v3, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageAdapter;->mLandscape:Z

    if-eqz v3, :cond_2

    .line 43
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageAdapter;->getItemCount()I

    move-result v0

    .line 46
    .local v0, "itemCount":I
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageAdapter;->isFull()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 47
    .local v1, "offsetItemCount":I
    :goto_0
    sub-int v2, v1, p2

    .line 51
    .end local v0    # "itemCount":I
    .end local v1    # "offsetItemCount":I
    .local v2, "position":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageAdapter;->getItemCount()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 52
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageAdapter;->getItemCount()I

    move-result v2

    .line 57
    :cond_0
    :goto_2
    new-instance v3, Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {p0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageAdapter;->getDefaultPage()I

    move-result v4

    invoke-direct {v3, v4, v2}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    return-object v3

    .end local v2    # "position":I
    .restart local v0    # "itemCount":I
    :cond_1
    move v1, v0

    .line 46
    goto :goto_0

    .line 49
    .end local v0    # "itemCount":I
    :cond_2
    move v2, p1

    .restart local v2    # "position":I
    goto :goto_1

    .line 53
    :cond_3
    if-gez v2, :cond_0

    .line 54
    const/4 v2, 0x0

    goto :goto_2
.end method
