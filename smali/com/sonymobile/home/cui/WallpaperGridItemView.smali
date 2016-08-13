.class public Lcom/sonymobile/home/cui/WallpaperGridItemView;
.super Lcom/sonymobile/home/cui/CuiGridItemView;
.source "WallpaperGridItemView.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;Lcom/sonymobile/home/cui/CuiGridItem;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "gridItemEventListener"    # Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;
    .param p3, "cuiGridItem"    # Lcom/sonymobile/home/cui/CuiGridItem;
    .param p4, "icon"    # Landroid/graphics/Bitmap;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "labelBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 20
    invoke-direct/range {p0 .. p6}, Lcom/sonymobile/home/cui/CuiGridItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;Lcom/sonymobile/home/cui/CuiGridItem;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onLayout(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 26
    iget-object v0, p0, Lcom/sonymobile/home/cui/WallpaperGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/components/Image;->setSize(FF)V

    .line 27
    iget-object v0, p0, Lcom/sonymobile/home/cui/WallpaperGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    move v2, v1

    move-object v3, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 30
    iget-object v0, p0, Lcom/sonymobile/home/cui/WallpaperGridItemView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Image;->setVisible(Z)V

    .line 31
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
