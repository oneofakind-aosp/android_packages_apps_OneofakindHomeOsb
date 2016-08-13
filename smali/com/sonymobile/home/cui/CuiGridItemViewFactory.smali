.class public Lcom/sonymobile/home/cui/CuiGridItemViewFactory;
.super Ljava/lang/Object;
.source "CuiGridItemViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/cui/CuiGridItemViewFactory$1;
    }
.end annotation


# direct methods
.method public static createGridItemView(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridItem;Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;Lcom/sonymobile/home/cui/CuiGridResource;)Lcom/sonymobile/home/cui/CuiGridItemView;
    .locals 8
    .param p0, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p1, "type"    # Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;
    .param p2, "cuiGridItem"    # Lcom/sonymobile/home/cui/CuiGridItem;
    .param p3, "gridItemEventListener"    # Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;
    .param p4, "resource"    # Lcom/sonymobile/home/cui/CuiGridResource;

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 27
    .local v0, "gridItemView":Lcom/sonymobile/home/cui/CuiGridItemView;
    if-eqz p2, :cond_1

    .line 28
    const/4 v4, 0x0

    .line 29
    .local v4, "bitmap1":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 30
    .local v6, "labelBitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 32
    .local v5, "label":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 33
    invoke-interface {p4}, Lcom/sonymobile/home/cui/CuiGridResource;->getBitmap1()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 34
    invoke-interface {p4}, Lcom/sonymobile/home/cui/CuiGridResource;->getLabelBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 35
    invoke-interface {p4}, Lcom/sonymobile/home/cui/CuiGridResource;->getLabel()Ljava/lang/String;

    move-result-object v5

    .line 38
    :cond_0
    sget-object v1, Lcom/sonymobile/home/cui/CuiGridItemViewFactory$1;->$SwitchMap$com$sonymobile$home$cui$CuiGridHandler$CuiGridType:[I

    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 75
    .end local v4    # "bitmap1":Landroid/graphics/Bitmap;
    .end local v5    # "label":Ljava/lang/String;
    .end local v6    # "labelBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v0

    .line 40
    .restart local v4    # "bitmap1":Landroid/graphics/Bitmap;
    .restart local v5    # "label":Ljava/lang/String;
    .restart local v6    # "labelBitmap":Landroid/graphics/Bitmap;
    :pswitch_0
    new-instance v0, Lcom/sonymobile/home/cui/MainMenuGridItemView;

    .end local v0    # "gridItemView":Lcom/sonymobile/home/cui/CuiGridItemView;
    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/cui/MainMenuGridItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;Lcom/sonymobile/home/cui/CuiGridItem;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 42
    .restart local v0    # "gridItemView":Lcom/sonymobile/home/cui/CuiGridItemView;
    goto :goto_0

    .line 45
    :pswitch_1
    invoke-virtual {p2}, Lcom/sonymobile/home/cui/CuiGridItem;->getGridItemType()Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    move-result-object v7

    .line 46
    .local v7, "itemType":Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    sget-object v1, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WIDGETS_MORE_SHORTCUT_GROUP:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    invoke-virtual {v7, v1}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WIDGETS_MORE_APP_GROUP:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    invoke-virtual {v7, v1}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 48
    :cond_2
    new-instance v0, Lcom/sonymobile/home/cui/MoreGridItemView;

    .end local v0    # "gridItemView":Lcom/sonymobile/home/cui/CuiGridItemView;
    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/cui/MoreGridItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;Lcom/sonymobile/home/cui/CuiGridItem;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .restart local v0    # "gridItemView":Lcom/sonymobile/home/cui/CuiGridItemView;
    goto :goto_0

    .line 51
    :cond_3
    new-instance v0, Lcom/sonymobile/home/cui/WidgetGridItemView;

    .end local v0    # "gridItemView":Lcom/sonymobile/home/cui/CuiGridItemView;
    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/cui/WidgetGridItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;Lcom/sonymobile/home/cui/CuiGridItem;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 54
    .restart local v0    # "gridItemView":Lcom/sonymobile/home/cui/CuiGridItemView;
    goto :goto_0

    .line 58
    .end local v7    # "itemType":Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    :pswitch_2
    new-instance v0, Lcom/sonymobile/home/cui/AppShortcutGridItemView;

    .end local v0    # "gridItemView":Lcom/sonymobile/home/cui/CuiGridItemView;
    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/cui/AppShortcutGridItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;Lcom/sonymobile/home/cui/CuiGridItem;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 60
    .restart local v0    # "gridItemView":Lcom/sonymobile/home/cui/CuiGridItemView;
    goto :goto_0

    .line 63
    :pswitch_3
    invoke-virtual {p2}, Lcom/sonymobile/home/cui/CuiGridItem;->getGridItemType()Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    move-result-object v7

    .line 64
    .restart local v7    # "itemType":Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    sget-object v1, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WALLPAPER_LEAF:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    invoke-virtual {v7, v1}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    new-instance v0, Lcom/sonymobile/home/cui/WallpaperGridItemView;

    .end local v0    # "gridItemView":Lcom/sonymobile/home/cui/CuiGridItemView;
    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/cui/WallpaperGridItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;Lcom/sonymobile/home/cui/CuiGridItem;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .restart local v0    # "gridItemView":Lcom/sonymobile/home/cui/CuiGridItemView;
    goto :goto_0

    .line 67
    :cond_4
    sget-object v1, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WALLPAPERS_MORE_PICKER:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    invoke-virtual {v7, v1}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    new-instance v0, Lcom/sonymobile/home/cui/MoreGridItemView;

    .end local v0    # "gridItemView":Lcom/sonymobile/home/cui/CuiGridItemView;
    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/cui/MoreGridItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;Lcom/sonymobile/home/cui/CuiGridItem;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .restart local v0    # "gridItemView":Lcom/sonymobile/home/cui/CuiGridItemView;
    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
