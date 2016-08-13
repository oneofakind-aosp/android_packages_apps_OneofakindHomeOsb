.class public Lcom/sonymobile/home/cui/AppShortcutGridItemView;
.super Lcom/sonymobile/home/cui/CuiGridItemView;
.source "AppShortcutGridItemView.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;Lcom/sonymobile/home/cui/CuiGridItem;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "gridItemEventListener"    # Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;
    .param p3, "cuiGridItem"    # Lcom/sonymobile/home/cui/CuiGridItem;
    .param p4, "icon"    # Landroid/graphics/Bitmap;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "labelBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 22
    invoke-direct/range {p0 .. p6}, Lcom/sonymobile/home/cui/CuiGridItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;Lcom/sonymobile/home/cui/CuiGridItem;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 24
    invoke-virtual {p3}, Lcom/sonymobile/home/cui/CuiGridItem;->getGridItemType()Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    move-result-object v1

    .line 25
    .local v1, "itemType":Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    sget-object v2, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_APP_LEAF:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x7f0f000c

    .line 26
    .local v0, "id":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/cui/AppShortcutGridItemView;->setId(I)V

    .line 28
    iget-object v2, p0, Lcom/sonymobile/home/cui/AppShortcutGridItemView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setLongPressEnabled(Z)V

    .line 29
    return-void

    .line 25
    .end local v0    # "id":I
    :cond_0
    const v0, 0x7f0f0012

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(II)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v7, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 33
    iget-object v0, p0, Lcom/sonymobile/home/cui/AppShortcutGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Image;->getHeight()F

    move-result v0

    iget-object v3, p0, Lcom/sonymobile/home/cui/AppShortcutGridItemView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Image;->getHeight()F

    move-result v3

    add-float v9, v0, v3

    .line 36
    .local v9, "totalHeight":F
    cmpl-float v0, v9, v7

    if-lez v0, :cond_0

    .line 38
    const/high16 v0, 0x40000000    # 2.0f

    iget-object v3, p0, Lcom/sonymobile/home/cui/AppShortcutGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Image;->getHeight()F

    move-result v3

    mul-float/2addr v0, v3

    div-float v2, v9, v0

    .line 41
    .local v2, "offset":F
    iget-object v0, p0, Lcom/sonymobile/home/cui/AppShortcutGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    move-object v3, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 44
    iget-object v3, p0, Lcom/sonymobile/home/cui/AppShortcutGridItemView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    iget-object v6, p0, Lcom/sonymobile/home/cui/AppShortcutGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    const/high16 v8, 0x3f800000    # 1.0f

    move v4, v1

    move v5, v7

    move v7, v1

    invoke-static/range {v3 .. v8}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 46
    .end local v2    # "offset":F
    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
