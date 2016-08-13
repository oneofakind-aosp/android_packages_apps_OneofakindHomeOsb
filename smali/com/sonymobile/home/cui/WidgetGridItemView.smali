.class public Lcom/sonymobile/home/cui/WidgetGridItemView;
.super Lcom/sonymobile/home/cui/CuiGridItemView;
.source "WidgetGridItemView.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;Lcom/sonymobile/home/cui/CuiGridItem;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "gridItemEventListener"    # Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;
    .param p3, "cuiGridItem"    # Lcom/sonymobile/home/cui/CuiGridItem;
    .param p4, "icon"    # Landroid/graphics/Bitmap;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "labelBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 21
    invoke-direct/range {p0 .. p6}, Lcom/sonymobile/home/cui/CuiGridItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;Lcom/sonymobile/home/cui/CuiGridItem;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 22
    iget-object v0, p0, Lcom/sonymobile/home/cui/WidgetGridItemView;->mButton:Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setLongPressEnabled(Z)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onLayout(II)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/home/cui/WidgetGridItemView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const v5, 0x3f333333    # 0.7f

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 31
    const v0, 0x3f266666    # 0.65f

    iget-object v1, p0, Lcom/sonymobile/home/cui/WidgetGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonymobile/home/cui/WidgetGridItemView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Lcom/sonymobile/flix/components/util/Layouter;->placeBetweenY(FLcom/sonymobile/flix/components/Component;FLcom/sonymobile/flix/components/Component;FLcom/sonymobile/flix/components/Component;F)V

    .line 34
    iget-object v0, p0, Lcom/sonymobile/home/cui/WidgetGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Image;->getWorldY()F

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/home/cui/WidgetGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Image;->getPointY(F)F

    move-result v1

    add-float v7, v0, v1

    .line 35
    .local v7, "iconBottom":F
    iget-object v0, p0, Lcom/sonymobile/home/cui/WidgetGridItemView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Image;->getWorldY()F

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/home/cui/WidgetGridItemView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Image;->getPointY(F)F

    move-result v1

    add-float v8, v0, v1

    .line 36
    .local v8, "labelTop":F
    cmpl-float v0, v7, v8

    if-lez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/sonymobile/home/cui/WidgetGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/sonymobile/home/cui/WidgetGridItemView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 40
    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method
