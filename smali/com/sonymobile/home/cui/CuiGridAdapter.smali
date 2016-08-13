.class public Lcom/sonymobile/home/cui/CuiGridAdapter;
.super Lcom/sonymobile/home/cui/CuiGridViewBaseAdapter;
.source "CuiGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/cui/CuiGridAdapter$2;
    }
.end annotation


# instance fields
.field private mCuiGridItemEventListener:Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;

.field private final mModel:Lcom/sonymobile/home/cui/CuiGridModel;

.field private final mScene:Lcom/sonymobile/flix/components/Scene;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/CuiGridModel;Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "model"    # Lcom/sonymobile/home/cui/CuiGridModel;
    .param p3, "cuiGridItemEventListener"    # Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridViewBaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridAdapter;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 31
    iput-object p2, p0, Lcom/sonymobile/home/cui/CuiGridAdapter;->mModel:Lcom/sonymobile/home/cui/CuiGridModel;

    .line 32
    iput-object p3, p0, Lcom/sonymobile/home/cui/CuiGridAdapter;->mCuiGridItemEventListener:Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;

    .line 33
    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridAdapter;->createOnModelListener()Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;

    move-result-object v0

    .line 34
    .local v0, "onModelListener":Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridAdapter;->mModel:Lcom/sonymobile/home/cui/CuiGridModel;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/cui/CuiGridModel;->addModelListener(Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;)V

    .line 35
    return-void
.end method

.method private createOnModelListener()Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/sonymobile/home/cui/CuiGridAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/cui/CuiGridAdapter$1;-><init>(Lcom/sonymobile/home/cui/CuiGridAdapter;)V

    return-object v0
.end method


# virtual methods
.method public getCellHeight()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAdapter;->mModel:Lcom/sonymobile/home/cui/CuiGridModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridModel;->getCellHeight()I

    move-result v0

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAdapter;->mModel:Lcom/sonymobile/home/cui/CuiGridModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridModel;->getCellWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAdapter;->mModel:Lcom/sonymobile/home/cui/CuiGridModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridModel;->getGridItemCount()I

    move-result v0

    return v0
.end method

.method public getGridItemType(I)Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAdapter;->mModel:Lcom/sonymobile/home/cui/CuiGridModel;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/cui/CuiGridModel;->getGridItemType(I)Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    move-result-object v0

    return-object v0
.end method

.method public getItemView(I)Lcom/sonymobile/home/cui/CuiGridItemView;
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 95
    .local v2, "gridItemView":Lcom/sonymobile/home/cui/CuiGridItemView;
    iget-object v5, p0, Lcom/sonymobile/home/cui/CuiGridAdapter;->mModel:Lcom/sonymobile/home/cui/CuiGridModel;

    invoke-virtual {v5}, Lcom/sonymobile/home/cui/CuiGridModel;->isLoaded()Z

    move-result v5

    if-eqz v5, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getCount()I

    move-result v5

    if-ge p1, v5, :cond_0

    .line 97
    iget-object v5, p0, Lcom/sonymobile/home/cui/CuiGridAdapter;->mModel:Lcom/sonymobile/home/cui/CuiGridModel;

    invoke-virtual {v5, p1}, Lcom/sonymobile/home/cui/CuiGridModel;->getResource(I)Lcom/sonymobile/home/cui/CuiGridResource;

    move-result-object v4

    .line 98
    .local v4, "resource":Lcom/sonymobile/home/cui/CuiGridResource;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getGridItemType(I)Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    move-result-object v1

    .line 99
    .local v1, "gridItemType":Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    iget-object v5, p0, Lcom/sonymobile/home/cui/CuiGridAdapter;->mModel:Lcom/sonymobile/home/cui/CuiGridModel;

    invoke-virtual {v5, p1}, Lcom/sonymobile/home/cui/CuiGridModel;->getGridItem(I)Lcom/sonymobile/home/cui/CuiGridItem;

    move-result-object v0

    .line 100
    .local v0, "cuiGridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    const/4 v3, 0x0

    .line 102
    .local v3, "gridType":Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;
    sget-object v5, Lcom/sonymobile/home/cui/CuiGridAdapter$2;->$SwitchMap$com$sonymobile$home$cui$CuiGridItem$CuiGridItemType:[I

    invoke-virtual {v1}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 128
    :goto_0
    if-eqz v3, :cond_0

    .line 130
    iget-object v5, p0, Lcom/sonymobile/home/cui/CuiGridAdapter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v6, p0, Lcom/sonymobile/home/cui/CuiGridAdapter;->mCuiGridItemEventListener:Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;

    invoke-static {v5, v3, v0, v6, v4}, Lcom/sonymobile/home/cui/CuiGridItemViewFactory;->createGridItemView(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridItem;Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;Lcom/sonymobile/home/cui/CuiGridResource;)Lcom/sonymobile/home/cui/CuiGridItemView;

    move-result-object v2

    .line 135
    .end local v0    # "cuiGridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    .end local v1    # "gridItemType":Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    .end local v3    # "gridType":Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;
    .end local v4    # "resource":Lcom/sonymobile/home/cui/CuiGridResource;
    :cond_0
    return-object v2

    .line 107
    .restart local v0    # "cuiGridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    .restart local v1    # "gridItemType":Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    .restart local v3    # "gridType":Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;
    .restart local v4    # "resource":Lcom/sonymobile/home/cui/CuiGridResource;
    :pswitch_0
    sget-object v3, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_MAIN_MENU:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    .line 108
    goto :goto_0

    .line 114
    :pswitch_1
    sget-object v3, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_WIDGETS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    .line 115
    goto :goto_0

    .line 119
    :pswitch_2
    sget-object v3, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_APPS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    .line 120
    goto :goto_0

    .line 124
    :pswitch_3
    sget-object v3, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_WALLPAPERS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getNumberOfColumns()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAdapter;->mModel:Lcom/sonymobile/home/cui/CuiGridModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridModel;->getNumberOfColumns()I

    move-result v0

    return v0
.end method

.method public getNumberOfRows()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAdapter;->mModel:Lcom/sonymobile/home/cui/CuiGridModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridModel;->getNumberOfRows()I

    move-result v0

    return v0
.end method

.method public getNumberOfVisibleColumns()I
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getNumberOfRows()I

    move-result v2

    rem-int/2addr v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 73
    .local v0, "restColumn":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getNumberOfRows()I

    move-result v2

    div-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1

    .line 72
    .end local v0    # "restColumn":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/sonymobile/home/cui/CuiGridViewBaseAdapter;->onDestroy()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAdapter;->mCuiGridItemEventListener:Lcom/sonymobile/home/cui/CuiGridItemView$CuiGridItemEventListener;

    .line 88
    return-void
.end method

.method public updateItemView(Lcom/sonymobile/home/cui/CuiGridItemView;I)V
    .locals 3
    .param p1, "gridItemView"    # Lcom/sonymobile/home/cui/CuiGridItemView;
    .param p2, "index"    # I

    .prologue
    .line 141
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/home/cui/CuiGridAdapter;->getCount()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridAdapter;->mModel:Lcom/sonymobile/home/cui/CuiGridModel;

    invoke-virtual {v1, p2}, Lcom/sonymobile/home/cui/CuiGridModel;->getResource(I)Lcom/sonymobile/home/cui/CuiGridResource;

    move-result-object v0

    .line 144
    .local v0, "resource":Lcom/sonymobile/home/cui/CuiGridResource;
    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0}, Lcom/sonymobile/home/cui/CuiGridResource;->getBitmap1()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/cui/CuiGridItemView;->setIcon(Landroid/graphics/Bitmap;)V

    .line 147
    invoke-interface {v0}, Lcom/sonymobile/home/cui/CuiGridResource;->getLabelBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0}, Lcom/sonymobile/home/cui/CuiGridResource;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/sonymobile/home/cui/CuiGridItemView;->setLabel(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 150
    .end local v0    # "resource":Lcom/sonymobile/home/cui/CuiGridResource;
    :cond_0
    return-void
.end method
