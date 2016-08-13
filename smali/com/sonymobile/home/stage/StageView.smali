.class public abstract Lcom/sonymobile/home/stage/StageView;
.super Lcom/sonymobile/home/ui/pageview/PageViewGroup;
.source "StageView.java"


# instance fields
.field protected final mBackground:Lcom/sonymobile/flix/components/Image;

.field protected mItemsPendingRemovalCounter:I

.field protected mLandscape:Z

.field protected mPageView:Lcom/sonymobile/home/ui/pageview/PageView;

.field protected mPendingItemCount:I

.field private final mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p3, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 62
    const v0, 0x7f0f003a

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/stage/StageView;->setId(I)V

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/stage/StageView;->setName(Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/stage/StageView;->setSortingEnabled(Z)V

    .line 65
    new-instance v0, Lcom/sonymobile/flix/components/Image;

    iget-object v1, p0, Lcom/sonymobile/home/stage/StageView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v0, v1}, Lcom/sonymobile/flix/components/Image;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/stage/StageView;->mBackground:Lcom/sonymobile/flix/components/Image;

    .line 66
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageView;->mBackground:Lcom/sonymobile/flix/components/Image;

    const-string v1, "Background"

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Image;->setName(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageView;->mBackground:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/stage/StageView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 68
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageView;->mBackground:Lcom/sonymobile/flix/components/Image;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Image;->setOrder(F)V

    .line 69
    new-instance v0, Lcom/sonymobile/home/stage/StageView$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/stage/StageView$1;-><init>(Lcom/sonymobile/home/stage/StageView;)V

    iput-object v0, p0, Lcom/sonymobile/home/stage/StageView;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 75
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageView;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {p3, v0}, Lcom/sonymobile/home/settings/UserSettings;->addUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 77
    return-void
.end method

.method private updateBackground()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 186
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StageView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 187
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/sonymobile/home/stage/StageView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-static {v6}, Lcom/sonymobile/home/util/LayoutUtils;->useLandscapeLayout(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sonymobile/home/stage/StageView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-static {v6}, Lcom/sonymobile/home/util/LayoutUtils;->isLandscape(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v4

    .line 189
    .local v3, "stageAtBottomInLandscape":Z
    :goto_0
    if-eqz v3, :cond_1

    const v1, 0x7f020162

    .line 195
    .local v1, "bgResId":I
    :goto_1
    invoke-static {v2, v1}, Lcom/sonymobile/home/resources/ResourceManager;->isNullResource(Landroid/content/res/Resources;I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 196
    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 197
    .local v0, "bgIcon":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/sonymobile/home/stage/StageView;->mBackground:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v5, v0}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 198
    iget-object v5, p0, Lcom/sonymobile/home/stage/StageView;->mBackground:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v5, v4}, Lcom/sonymobile/flix/components/Image;->setVisible(Z)V

    .line 201
    iget-boolean v4, p0, Lcom/sonymobile/home/stage/StageView;->mLandscape:Z

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    .line 202
    iget-object v4, p0, Lcom/sonymobile/home/stage/StageView;->mBackground:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v4, v7, v7}, Lcom/sonymobile/flix/components/Image;->setPivotPoint(FF)V

    .line 203
    iget-object v4, p0, Lcom/sonymobile/home/stage/StageView;->mBackground:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StageView;->getHeight()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v8, v5}, Lcom/sonymobile/flix/components/Image;->setScaling(FF)V

    .line 213
    .end local v0    # "bgIcon":Landroid/graphics/Bitmap;
    :goto_2
    return-void

    .end local v1    # "bgResId":I
    .end local v3    # "stageAtBottomInLandscape":Z
    :cond_0
    move v3, v5

    .line 187
    goto :goto_0

    .line 189
    .restart local v3    # "stageAtBottomInLandscape":Z
    :cond_1
    const v1, 0x7f020166

    goto :goto_1

    .line 205
    .restart local v0    # "bgIcon":Landroid/graphics/Bitmap;
    .restart local v1    # "bgResId":I
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/home/stage/StageView;->mBackground:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v4, v7, v8}, Lcom/sonymobile/flix/components/Image;->setPivotPoint(FF)V

    .line 206
    iget-object v4, p0, Lcom/sonymobile/home/stage/StageView;->mBackground:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StageView;->getWidth()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5, v8}, Lcom/sonymobile/flix/components/Image;->setScaling(FF)V

    goto :goto_2

    .line 210
    .end local v0    # "bgIcon":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/home/stage/StageView;->mBackground:Lcom/sonymobile/flix/components/Image;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/sonymobile/flix/components/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 211
    iget-object v4, p0, Lcom/sonymobile/home/stage/StageView;->mBackground:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v4, v5}, Lcom/sonymobile/flix/components/Image;->setVisible(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected createPage(Lcom/sonymobile/flix/components/Scene;IFFFF)Lcom/sonymobile/home/ui/pageview/PageView;
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "index"    # I
    .param p3, "pageParentWidth"    # F
    .param p4, "pageParentHeight"    # F
    .param p5, "width"    # F
    .param p6, "height"    # F

    .prologue
    .line 82
    new-instance v0, Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/home/ui/pageview/PageView;-><init>(Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v0, p0, Lcom/sonymobile/home/stage/StageView;->mPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    .line 83
    invoke-virtual {p0, p5, p6}, Lcom/sonymobile/home/stage/StageView;->pageViewResized(FF)V

    .line 84
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageView;->mPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getHintPivotX()F
.end method

.method protected abstract getHintPivotY()F
.end method

.method public getHorizontalOffset()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 234
    iget-boolean v1, p0, Lcom/sonymobile/home/stage/StageView;->mLandscape:Z

    if-eqz v1, :cond_0

    .line 237
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/stage/StageView;->mPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-virtual {v1}, Lcom/sonymobile/home/ui/pageview/PageView;->getWorldX()F

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/home/stage/StageView;->mPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/ui/pageview/PageView;->getPointX(F)F

    move-result v0

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public getPageView()Lcom/sonymobile/home/ui/pageview/PageView;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageView;->mPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    return-object v0
.end method

.method public getVerticalOffset()F
    .locals 3

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/sonymobile/home/stage/StageView;->mLandscape:Z

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageView;->mPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageView;->getWorldY()F

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/home/stage/StageView;->mPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/ui/pageview/PageView;->getPointY(F)F

    move-result v1

    sub-float/2addr v0, v1

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected layoutStageBackground()V
    .locals 9

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 130
    iget-boolean v0, p0, Lcom/sonymobile/home/stage/StageView;->mLandscape:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageView;->mBackground:Lcom/sonymobile/flix/components/Image;

    move-object v3, p0

    move v4, v1

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 133
    invoke-static {p0, v2, v2}, Lcom/sonymobile/flix/components/util/Layouter;->snapToPixel(Lcom/sonymobile/flix/components/Component;FF)V

    .line 139
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/stage/StageView;->mBackground:Lcom/sonymobile/flix/components/Image;

    move v4, v2

    move v5, v1

    move-object v6, p0

    move v7, v2

    move v8, v1

    invoke-static/range {v3 .. v8}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 137
    invoke-static {p0, v2, v2}, Lcom/sonymobile/flix/components/util/Layouter;->snapToPixel(Lcom/sonymobile/flix/components/Component;FF)V

    goto :goto_0
.end method

.method public notifyItemRemoved()V
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/sonymobile/home/stage/StageView;->mItemsPendingRemovalCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/home/stage/StageView;->mItemsPendingRemovalCounter:I

    .line 254
    return-void
.end method

.method public onAddedTo(Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageView;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/stage/StageView;->updateConfiguration(Lcom/sonymobile/grid/Grid;)V

    .line 97
    return-void
.end method

.method protected onContentChangedUpdateFinished()V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StageView;->updateContentSize()V

    .line 127
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onDestroy()V

    .line 262
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageView;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v1, p0, Lcom/sonymobile/home/stage/StageView;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/settings/UserSettings;->removeUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 263
    return-void
.end method

.method protected abstract onPendingItemAdded()V
.end method

.method protected abstract pageViewResized(FF)V
.end method

.method public setPendingItemCount(I)V
    .locals 0
    .param p1, "pendingItems"    # I

    .prologue
    .line 181
    iput p1, p0, Lcom/sonymobile/home/stage/StageView;->mPendingItemCount:I

    .line 182
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StageView;->onPendingItemAdded()V

    .line 183
    return-void
.end method

.method public updateConfiguration(Lcom/sonymobile/grid/Grid;)V
    .locals 1
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->updateConfiguration(Lcom/sonymobile/grid/Grid;)V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/home/stage/StageView;->mItemsPendingRemovalCounter:I

    .line 106
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-static {v0}, Lcom/sonymobile/home/util/LayoutUtils;->useLandscapeLayout(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/stage/StageView;->mLandscape:Z

    .line 109
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StageView;->updateSize()V

    .line 112
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StageView;->updateContentSize()V

    .line 115
    invoke-direct {p0}, Lcom/sonymobile/home/stage/StageView;->updateBackground()V

    .line 118
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StageView;->layoutStageBackground()V

    .line 119
    return-void
.end method

.method public abstract updateContentSize()V
.end method

.method protected updateFromTouch(Z)V
    .locals 0
    .param p1, "forced"    # Z

    .prologue
    .line 217
    return-void
.end method

.method protected updatePage(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageView;IFFFF)Lcom/sonymobile/home/ui/pageview/PageView;
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "pageView"    # Lcom/sonymobile/home/ui/pageview/PageView;
    .param p3, "index"    # I
    .param p4, "pageParentWidth"    # F
    .param p5, "pageParentHeight"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F

    .prologue
    .line 90
    invoke-virtual {p0, p6, p7}, Lcom/sonymobile/home/stage/StageView;->pageViewResized(FF)V

    .line 91
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageView;->mPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    return-object v0
.end method

.method protected abstract updateSize()V
.end method
