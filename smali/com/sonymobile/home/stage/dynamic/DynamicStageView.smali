.class public Lcom/sonymobile/home/stage/dynamic/DynamicStageView;
.super Lcom/sonymobile/home/stage/StageView;
.source "DynamicStageView.java"


# instance fields
.field private final mPageItemViewAddedListener:Lcom/sonymobile/home/ui/pageview/PageView$PageItemViewAddedListener;

.field private mStageBreadth:F

.field private mStageCellHeight:F

.field private mStageCellWidth:F


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p3, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/stage/StageView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 29
    new-instance v0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageView$1;-><init>(Lcom/sonymobile/home/stage/dynamic/DynamicStageView;)V

    iput-object v0, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mPageItemViewAddedListener:Lcom/sonymobile/home/ui/pageview/PageView$PageItemViewAddedListener;

    .line 49
    return-void
.end method

.method private getItemsCount()I
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageView;->getNumberOfPageViewItems()I

    move-result v0

    iget v1, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mPendingItemCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mItemsPendingRemovalCounter:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private hasRoomFor(I)Z
    .locals 4
    .param p1, "numberOfItems"    # I

    .prologue
    .line 57
    iget-boolean v3, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mLandscape:Z

    if-eqz v3, :cond_0

    iget v2, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mStageCellHeight:F

    .line 58
    .local v2, "stageCellSize":F
    :goto_0
    iget-boolean v3, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mLandscape:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-virtual {v3}, Lcom/sonymobile/home/ui/pageview/PageView;->getHeight()F

    move-result v0

    .line 59
    .local v0, "currentSize":F
    :goto_1
    int-to-float v3, p1

    mul-float v1, v2, v3

    .line 60
    .local v1, "requiredSize":F
    cmpl-float v3, v0, v1

    if-ltz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    return v3

    .line 57
    .end local v0    # "currentSize":F
    .end local v1    # "requiredSize":F
    .end local v2    # "stageCellSize":F
    :cond_0
    iget v2, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mStageCellWidth:F

    goto :goto_0

    .line 58
    .restart local v2    # "stageCellSize":F
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-virtual {v3}, Lcom/sonymobile/home/ui/pageview/PageView;->getWidth()F

    move-result v0

    goto :goto_1

    .line 60
    .restart local v0    # "currentSize":F
    .restart local v1    # "requiredSize":F
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private needsToExpand()Z
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->getItemsCount()I

    move-result v0

    .line 53
    .local v0, "itemCount":I
    invoke-direct {p0, v0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->hasRoomFor(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createPage(Lcom/sonymobile/flix/components/Scene;IFFFF)Lcom/sonymobile/home/ui/pageview/PageView;
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "index"    # I
    .param p3, "pageParentWidth"    # F
    .param p4, "pageParentHeight"    # F
    .param p5, "width"    # F
    .param p6, "height"    # F

    .prologue
    .line 69
    invoke-super/range {p0 .. p6}, Lcom/sonymobile/home/stage/StageView;->createPage(Lcom/sonymobile/flix/components/Scene;IFFFF)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v0

    .line 71
    .local v0, "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    iget-object v1, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mPageItemViewAddedListener:Lcom/sonymobile/home/ui/pageview/PageView$PageItemViewAddedListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageView;->setPageItemViewAddedListener(Lcom/sonymobile/home/ui/pageview/PageView$PageItemViewAddedListener;)V

    .line 72
    return-object v0
.end method

.method protected getHintPivotX()F
    .locals 1

    .prologue
    .line 157
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method protected getHintPivotY()F
    .locals 1

    .prologue
    .line 165
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method protected onPageItemViewAdded(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 0
    .param p1, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/sonymobile/home/stage/StageView;->onPageItemViewUpdated(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 102
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->updateContentSize()V

    .line 103
    return-void
.end method

.method protected onPendingItemAdded()V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->needsToExpand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->updateContentSize()V

    .line 176
    :cond_0
    return-void
.end method

.method protected pageViewResized(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->updateContentSize()V

    .line 81
    return-void
.end method

.method public updateContentSize()V
    .locals 12

    .prologue
    const/4 v5, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    .line 135
    iget-object v2, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageView;->ensureAllPageItemsAreVisible()V

    .line 136
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mItemsPendingRemovalCounter:I

    .line 137
    iget-boolean v2, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mLandscape:Z

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    iget v3, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mStageBreadth:F

    iget v4, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mStageCellHeight:F

    invoke-direct {p0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->getItemsCount()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/home/ui/pageview/PageView;->setSize(FF)V

    .line 142
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-static {v2, v0, v0}, Lcom/sonymobile/flix/components/util/Layouter;->snapToPixel(Lcom/sonymobile/flix/components/Component;FF)V

    .line 143
    iget-boolean v2, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mLandscape:Z

    if-eqz v2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    move v3, v0

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->placeDescendants(FFLcom/sonymobile/flix/components/Component;FFI)V

    .line 150
    :goto_1
    return-void

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    iget v3, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mStageCellWidth:F

    invoke-direct {p0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->getItemsCount()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mStageBreadth:F

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/home/ui/pageview/PageView;->setSize(FF)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v8, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    move v7, v0

    move v9, v6

    move v10, v0

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/sonymobile/flix/components/util/Layouter;->placeDescendants(FFLcom/sonymobile/flix/components/Component;FFI)V

    goto :goto_1
.end method

.method protected updateSize()V
    .locals 5

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    .line 111
    .local v1, "scene":Lcom/sonymobile/flix/components/Scene;
    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v0

    .line 115
    .local v0, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    const v4, 0x7f0b0021

    invoke-virtual {v0, v4}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mStageCellHeight:F

    .line 116
    const v4, 0x7f0b0022

    invoke-virtual {v0, v4}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mStageCellWidth:F

    .line 117
    const v4, 0x7f0b0020

    invoke-virtual {v0, v4}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mStageBreadth:F

    .line 119
    iget-boolean v4, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mLandscape:Z

    if-eqz v4, :cond_0

    .line 120
    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v2

    .line 121
    .local v2, "sceneHeight":F
    iget v4, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mStageBreadth:F

    invoke-virtual {p0, v4, v2}, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->setSize(FF)V

    .line 126
    .end local v2    # "sceneHeight":F
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v3

    .line 124
    .local v3, "sceneWidth":F
    iget v4, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->mStageBreadth:F

    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;->setSize(FF)V

    goto :goto_0
.end method
