.class public Lcom/sonymobile/home/cui/MoreGridItemView;
.super Lcom/sonymobile/home/cui/CuiGridItemView;
.source "MoreGridItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/cui/MoreGridItemView$1;
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
    .line 26
    invoke-direct/range {p0 .. p6}, Lcom/sonymobile/home/cui/CuiGridItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;Lcom/sonymobile/home/cui/CuiGridItem;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 27
    invoke-virtual {p3}, Lcom/sonymobile/home/cui/CuiGridItem;->getGridItemType()Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/home/cui/MoreGridItemView;->setId(Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;)V

    .line 28
    return-void
.end method

.method private setId(Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;)V
    .locals 2
    .param p1, "itemType"    # Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    .prologue
    .line 50
    sget-object v0, Lcom/sonymobile/home/cui/MoreGridItemView$1;->$SwitchMap$com$sonymobile$home$cui$CuiGridItem$CuiGridItemType:[I

    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only more menu types are supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :pswitch_0
    const v0, 0x7f0f000d

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/cui/MoreGridItemView;->setId(I)V

    .line 66
    :goto_0
    return-void

    .line 56
    :pswitch_1
    const v0, 0x7f0f0013

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/cui/MoreGridItemView;->setId(I)V

    goto :goto_0

    .line 60
    :pswitch_2
    const v0, 0x7f0f0016

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/cui/MoreGridItemView;->setId(I)V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onLayout(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const v4, 0x3f733333    # 0.95f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 33
    iget-object v0, p0, Lcom/sonymobile/home/cui/MoreGridItemView;->mIconView:Lcom/sonymobile/flix/components/Image;

    move v2, v1

    move-object v3, p0

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/cui/MoreGridItemView;->mLabelView:Lcom/sonymobile/flix/components/Image;

    move v1, v6

    move v2, v6

    move-object v3, p0

    move v4, v6

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 37
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
