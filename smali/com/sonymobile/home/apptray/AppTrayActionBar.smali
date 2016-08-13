.class public Lcom/sonymobile/home/apptray/AppTrayActionBar;
.super Lcom/sonymobile/home/presenter/HomeActionBar;
.source "AppTrayActionBar.java"


# instance fields
.field private final mSearchButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

.field private mSearchButtonRightMargin:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 3
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sonymobile/home/presenter/HomeActionBar;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 43
    new-instance v0, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mScene:Lcom/sonymobile/flix/components/Scene;

    const v2, 0x7f020048

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;-><init>(Lcom/sonymobile/home/presenter/HomeActionBar;Lcom/sonymobile/flix/components/Scene;I)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mSearchButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    .line 44
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mSearchButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    const v1, 0x7f0f0008

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->setId(I)V

    .line 45
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mSearchButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    iget v1, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mActionBarIconHorizontalPadding:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->setPadding(F)V

    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mContainer:Lcom/sonymobile/flix/components/Component;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mSearchButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 48
    const/high16 v0, 0x7f100000

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->createOptionsButton(I)V

    .line 49
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mOptionsButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    const v1, 0x7f0f0007

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->setId(I)V

    .line 51
    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->setShowAnimationDelay(J)V

    .line 52
    return-void
.end method


# virtual methods
.method public enterEditMode()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mSearchButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->setVisible(Z)V

    .line 165
    return-void
.end method

.method public enterSearchMode()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->hide(Z)V

    .line 158
    return-void
.end method

.method public exitEditMode()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mSearchButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->setVisible(Z)V

    .line 172
    return-void
.end method

.method public exitSearchMode()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->show(Z)V

    .line 150
    return-void
.end method

.method public layout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mContainer:Lcom/sonymobile/flix/components/Component;

    iget v1, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mSideMargin:F

    iget v2, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mSideMargin:F

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/sonymobile/flix/components/Component;->setInnerMargin(FFFF)V

    .line 87
    invoke-super {p0}, Lcom/sonymobile/home/presenter/HomeActionBar;->layout()V

    .line 88
    return-void
.end method

.method protected layoutHorizontalActionBar(F)V
    .locals 10
    .param p1, "navigationBarOffset"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 95
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v0

    sub-float/2addr v0, p1

    iget v3, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mActionBarHeight:F

    invoke-virtual {p0, v0, v3}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->setSize(FF)V

    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->setSizeToParent()V

    .line 100
    cmpl-float v0, p1, v8

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v0

    iget v3, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mGridWidth:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v4

    mul-float/2addr v3, v4

    div-float v9, v0, v3

    .line 102
    .local v9, "offset":F
    :goto_0
    iget v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mSearchButtonRightMargin:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Component;->getWidth()F

    move-result v3

    div-float/2addr v0, v3

    add-float/2addr v9, v0

    .line 104
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mOptionsButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mContainer:Lcom/sonymobile/flix/components/Component;

    sub-float v4, v1, v9

    const/4 v6, 0x2

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FFI)V

    .line 105
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mOptionsMenuAnchorViewWrapper:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    iget-object v6, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mOptionsButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    move v4, v1

    move v5, v1

    move v7, v1

    invoke-static/range {v3 .. v8}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 106
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mSearchButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mOptionsButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    move v4, v8

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 108
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mOptionsButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    iget v1, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mActionBarIconHorizontalPadding:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mActionBarIconHorizontalPadding:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mActionBarIconHorizontalPadding:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Component;->getInnerMargin()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mActionBarIconHorizontalPadding:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->setTouchPadding(FFFF)V

    .line 112
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mSearchButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    iget v1, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mActionBarIconHorizontalPadding:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->setTouchPadding(F)V

    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sonymobile/flix/components/Component;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mSearchButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->alignMirroringForAssets([Lcom/sonymobile/flix/components/Component;)V

    .line 115
    return-void

    .end local v9    # "offset":F
    :cond_0
    move v9, v8

    .line 100
    goto :goto_0
.end method

.method protected layoutVerticalActionBar(F)V
    .locals 10
    .param p1, "navigationBarOffset"    # F

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mSearchButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->getWidth()F

    move-result v0

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->setSize(FF)V

    .line 123
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mContainer:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->setSizeToParent()V

    .line 125
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mSearchButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mContainer:Lcom/sonymobile/flix/components/Component;

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 126
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mOptionsButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mSearchButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    move v3, v9

    move v4, v1

    move v6, v9

    invoke-static/range {v2 .. v8}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FFI)V

    .line 127
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mOptionsMenuAnchorViewWrapper:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mOptionsButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    move v2, v7

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 129
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mOptionsButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    iget v1, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mActionBarIconHorizontalPadding:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->setTouchPadding(F)V

    .line 130
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mSearchButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    iget v1, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mActionBarIconHorizontalPadding:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->setTouchPadding(F)V

    .line 132
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sonymobile/flix/components/Component;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mSearchButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    aput-object v1, v0, v8

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->alignMirroringForAssets([Lcom/sonymobile/flix/components/Component;)V

    .line 133
    return-void
.end method

.method public setSearchButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/flix/components/ButtonListener;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mSearchButton:Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionBarButton;->addButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V

    .line 142
    return-void
.end method

.method public showOptionsMenu(Landroid/content/Context;Landroid/widget/PopupMenu$OnMenuItemClickListener;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menuItemListener"    # Landroid/widget/PopupMenu$OnMenuItemClickListener;
    .param p3, "shownFromNormalState"    # Z

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lcom/sonymobile/home/presenter/HomeActionBar;->showOptionsMenu(Landroid/content/Context;Landroid/widget/PopupMenu$OnMenuItemClickListener;)Landroid/widget/PopupMenu;

    move-result-object v1

    .line 74
    .local v1, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0f00de

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 76
    .local v0, "menuItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 79
    :cond_0
    return-void
.end method

.method protected updateResourceValues()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/sonymobile/home/presenter/HomeActionBar;->updateResourceValues()V

    .line 57
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0b0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mSearchButtonRightMargin:I

    .line 59
    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sonymobile/home/apptray/AppTrayActionBar;->mActionBarHeight:F

    .line 60
    return-void
.end method
