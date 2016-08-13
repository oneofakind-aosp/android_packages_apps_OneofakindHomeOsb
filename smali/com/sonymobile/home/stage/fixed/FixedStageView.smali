.class public Lcom/sonymobile/home/stage/fixed/FixedStageView;
.super Lcom/sonymobile/home/stage/StageView;
.source "FixedStageView.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p3, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/stage/StageView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected getHintPivotX()F
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method protected getHintPivotY()F
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method protected onPendingItemAdded()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method protected pageViewResized(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonymobile/home/stage/fixed/FixedStageView;->mPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/ui/pageview/PageView;->setSize(FF)V

    .line 38
    return-void
.end method

.method public updateContentSize()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method protected updateSize()V
    .locals 5

    .prologue
    .line 45
    iget-object v4, p0, Lcom/sonymobile/home/stage/fixed/FixedStageView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v0

    .line 46
    .local v0, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    const v4, 0x7f0b0020

    invoke-virtual {v0, v4}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v3, v4

    .line 48
    .local v3, "stageBreadth":F
    iget-boolean v4, p0, Lcom/sonymobile/home/stage/fixed/FixedStageView;->mLandscape:Z

    if-eqz v4, :cond_0

    .line 49
    iget-object v4, p0, Lcom/sonymobile/home/stage/fixed/FixedStageView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v1

    .line 50
    .local v1, "sceneHeight":F
    invoke-virtual {p0, v3, v1}, Lcom/sonymobile/home/stage/fixed/FixedStageView;->setSize(FF)V

    .line 55
    .end local v1    # "sceneHeight":F
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/home/stage/fixed/FixedStageView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v2

    .line 53
    .local v2, "sceneWidth":F
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/home/stage/fixed/FixedStageView;->setSize(FF)V

    goto :goto_0
.end method
