.class public Lcom/sonymobile/home/cui/MainMenuGridItemView;
.super Lcom/sonymobile/home/cui/CuiGridItemView;
.source "MainMenuGridItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/cui/MainMenuGridItemView$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;Lcom/sonymobile/home/cui/CuiGridItem;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "gridItemEventListener"    # Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;
    .param p3, "cuiGridItem"    # Lcom/sonymobile/home/cui/CuiGridItem;
    .param p4, "icon"    # Landroid/graphics/Bitmap;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "labelBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 22
    invoke-direct/range {p0 .. p6}, Lcom/sonymobile/home/cui/CuiGridItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;Lcom/sonymobile/home/cui/CuiGridItem;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 23
    invoke-virtual {p3}, Lcom/sonymobile/home/cui/CuiGridItem;->getGridItemType()Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/home/cui/MainMenuGridItemView;->setId(Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;)V

    .line 24
    return-void
.end method

.method private setId(Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;)V
    .locals 2
    .param p1, "itemType"    # Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    .prologue
    .line 47
    sget-object v0, Lcom/sonymobile/home/cui/MainMenuGridItemView$1;->$SwitchMap$com$sonymobile$home$cui$CuiGridItem$CuiGridItemType:[I

    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only main menu types are supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :pswitch_0
    const v0, 0x7f0f0017

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/cui/MainMenuGridItemView;->setId(I)V

    .line 67
    :goto_0
    return-void

    .line 53
    :pswitch_1
    const v0, 0x7f0f0015

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/cui/MainMenuGridItemView;->setId(I)V

    goto :goto_0

    .line 57
    :pswitch_2
    const v0, 0x7f0f0014

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/cui/MainMenuGridItemView;->setId(I)V

    goto :goto_0

    .line 61
    :pswitch_3
    const v0, 0x7f0f0011

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/cui/MainMenuGridItemView;->setId(I)V

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onLayout(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 29
    iget-object v0, p0, Lcom/sonymobile/home/cui/MainMenuGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    move v2, v1

    move-object v3, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 31
    iget-object v0, p0, Lcom/sonymobile/home/cui/MainMenuGridItemView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/home/cui/MainMenuGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move v4, v1

    invoke-static/range {v0 .. v6}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FFI)V

    .line 33
    invoke-static {v1, v1, p0, v1, v1}, Lcom/sonymobile/flix/components/util/Layouter;->placeDescendants(FFLcom/sonymobile/flix/components/Component;FF)V

    .line 34
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
