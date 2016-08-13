.class public abstract Lcom/sonymobile/home/stage/StageAdapter;
.super Lcom/sonymobile/home/presenter/PageViewBaseAdapter;
.source "StageAdapter.java"


# instance fields
.field protected mCols:I

.field protected mHolePosition:I

.field protected mLandscape:Z

.field protected final mModel:Lcom/sonymobile/home/stage/StageModel;

.field protected final mPageItemViewListener:Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

.field protected mRows:I

.field protected final mScene:Lcom/sonymobile/flix/components/Scene;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/stage/StageModel;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;Lcom/sonymobile/grid/Grid;)V
    .locals 1
    .param p1, "model"    # Lcom/sonymobile/home/stage/StageModel;
    .param p2, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p3, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;
    .param p4, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/PageViewBaseAdapter;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/home/stage/StageAdapter;->mHolePosition:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/stage/StageAdapter;->mLandscape:Z

    .line 48
    iput-object p1, p0, Lcom/sonymobile/home/stage/StageAdapter;->mModel:Lcom/sonymobile/home/stage/StageModel;

    .line 49
    iput-object p2, p0, Lcom/sonymobile/home/stage/StageAdapter;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 50
    iput-object p3, p0, Lcom/sonymobile/home/stage/StageAdapter;->mPageItemViewListener:Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .line 51
    invoke-virtual {p0, p4}, Lcom/sonymobile/home/stage/StageAdapter;->updateConfiguration(Lcom/sonymobile/grid/Grid;)V

    .line 52
    return-void
.end method

.method private getPosition(Lcom/sonymobile/home/data/ItemLocation;)I
    .locals 2
    .param p1, "itemLocation"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 135
    iget v0, p1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 136
    .local v0, "position":I
    iget v1, p0, Lcom/sonymobile/home/stage/StageAdapter;->mHolePosition:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/sonymobile/home/stage/StageAdapter;->mHolePosition:I

    if-ltz v1, :cond_0

    .line 137
    add-int/lit8 v0, v0, 0x1

    .line 139
    :cond_0
    return v0
.end method


# virtual methods
.method protected abstract doConfigurationUpdate(Lcom/sonymobile/grid/Grid;)V
.end method

.method public getCol(Lcom/sonymobile/home/data/ItemLocation;)I
    .locals 2
    .param p1, "itemLocation"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/sonymobile/home/stage/StageAdapter;->getPosition(Lcom/sonymobile/home/data/ItemLocation;)I

    move-result v0

    .line 115
    .local v0, "position":I
    iget v1, p0, Lcom/sonymobile/home/stage/StageAdapter;->mCols:I

    rem-int v1, v0, v1

    return v1
.end method

.method public getDefaultPage()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public getHomePage()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public getIndex(J)I
    .locals 5
    .param p1, "uniqueId"    # J

    .prologue
    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StageAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 160
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/stage/StageAdapter;->getItemId(I)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 164
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 159
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageAdapter;->mModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StageModel;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageAdapter;->mModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/stage/StageModel;->getItem(I)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemView(I)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 66
    iget-object v3, p0, Lcom/sonymobile/home/stage/StageAdapter;->mModel:Lcom/sonymobile/home/stage/StageModel;

    if-eqz v3, :cond_0

    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/sonymobile/home/stage/StageAdapter;->mModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v3}, Lcom/sonymobile/home/stage/StageModel;->getCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 67
    iget-object v3, p0, Lcom/sonymobile/home/stage/StageAdapter;->mModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v3, p1}, Lcom/sonymobile/home/stage/StageModel;->getResource(I)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v2

    .line 68
    .local v2, "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    iget-object v3, p0, Lcom/sonymobile/home/stage/StageAdapter;->mModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v3, p1}, Lcom/sonymobile/home/stage/StageModel;->getItem(I)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 70
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    invoke-static {}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->getFactory()Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/home/stage/StageAdapter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v5, p0, Lcom/sonymobile/home/stage/StageAdapter;->mPageItemViewListener:Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->createPageItemView(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v1

    .line 73
    .local v1, "pageItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/stage/StageAdapter;->refreshItemViewOptions(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 77
    .end local v0    # "item":Lcom/sonymobile/home/data/Item;
    .end local v1    # "pageItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    .end local v2    # "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocation(ILcom/sonymobile/home/ui/pageview/PageLocation;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "location"    # Lcom/sonymobile/home/ui/pageview/PageLocation;

    .prologue
    const/4 v3, 0x1

    .line 97
    iget-object v2, p0, Lcom/sonymobile/home/stage/StageAdapter;->mModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v2, p1}, Lcom/sonymobile/home/stage/StageModel;->getItem(I)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 98
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v0}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    .line 100
    .local v1, "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    iget v2, v1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iput v2, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->page:I

    .line 102
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/stage/StageAdapter;->getCol(Lcom/sonymobile/home/data/ItemLocation;)I

    move-result v2

    iput v2, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->col:I

    .line 103
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/stage/StageAdapter;->getRow(Lcom/sonymobile/home/data/ItemLocation;)I

    move-result v2

    iput v2, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->row:I

    .line 105
    iput v3, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->colSpan:I

    .line 106
    iput v3, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->rowSpan:I

    .line 107
    return-void
.end method

.method public abstract getLocationForColRow(II)Lcom/sonymobile/home/data/ItemLocation;
.end method

.method public getMaximumNumberOfPages()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public getMinimumNumberOfPages()I
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public getPages()[I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    return-object v0
.end method

.method public getRow(Lcom/sonymobile/home/data/ItemLocation;)I
    .locals 4
    .param p1, "itemLocation"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/sonymobile/home/stage/StageAdapter;->getPosition(Lcom/sonymobile/home/data/ItemLocation;)I

    move-result v0

    .line 125
    .local v0, "position":I
    iget v3, p0, Lcom/sonymobile/home/stage/StageAdapter;->mCols:I

    div-int v2, v0, v3

    .line 126
    .local v2, "row":I
    move v1, v2

    .line 127
    .local v1, "returnRow":I
    iget-boolean v3, p0, Lcom/sonymobile/home/stage/StageAdapter;->mLandscape:Z

    if-eqz v3, :cond_0

    .line 128
    iget v3, p0, Lcom/sonymobile/home/stage/StageAdapter;->mRows:I

    add-int/lit8 v3, v3, -0x1

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 131
    :cond_0
    return v1
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StageAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/home/stage/StageAdapter;->mModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/StageModel;->getMaxNumberOfItems()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemPickedUp(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public isPageEmpty(I)Z
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageAdapter;->mModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/stage/StageModel;->isPageEmpty(I)Z

    move-result v0

    return v0
.end method

.method public onModelChanged()V
    .locals 0

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StageAdapter;->notifyContentChanged()V

    .line 170
    return-void
.end method

.method public onModelItemChanged(Lcom/sonymobile/home/data/Item;)V
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 174
    iget-object v3, p0, Lcom/sonymobile/home/stage/StageAdapter;->mModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v3}, Lcom/sonymobile/home/stage/StageModel;->getItems()Ljava/util/List;

    move-result-object v2

    .line 176
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 177
    .local v1, "itemInModel":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/sonymobile/home/stage/StageAdapter;->notifyPageItemChanged(J)V

    goto :goto_0

    .line 181
    .end local v1    # "itemInModel":Lcom/sonymobile/home/data/Item;
    :cond_1
    return-void
.end method

.method public onModelOrderChanged()V
    .locals 0

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StageAdapter;->notifyContentChanged()V

    .line 189
    return-void
.end method

.method public releaseView(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 0
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->release()V

    .line 93
    :cond_0
    return-void
.end method

.method public updateConfiguration(Lcom/sonymobile/grid/Grid;)V
    .locals 1
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    .line 237
    invoke-virtual {p1}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/stage/StageAdapter;->mCols:I

    .line 238
    invoke-virtual {p1}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/stage/StageAdapter;->mRows:I

    .line 239
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageAdapter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-static {v0}, Lcom/sonymobile/home/util/LayoutUtils;->useLandscapeLayout(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/stage/StageAdapter;->mLandscape:Z

    .line 240
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/stage/StageAdapter;->doConfigurationUpdate(Lcom/sonymobile/grid/Grid;)V

    .line 241
    return-void
.end method

.method public updateItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;I)V
    .locals 3
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "index"    # I

    .prologue
    .line 82
    iget-object v2, p0, Lcom/sonymobile/home/stage/StageAdapter;->mModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v2, p2}, Lcom/sonymobile/home/stage/StageModel;->getResource(I)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v1

    .line 83
    .local v1, "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    iget-object v2, p0, Lcom/sonymobile/home/stage/StageAdapter;->mModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v2, p2}, Lcom/sonymobile/home/stage/StageModel;->getItem(I)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 84
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    invoke-static {}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->getFactory()Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->updatePageItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/stage/StageAdapter;->refreshItemViewOptions(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 86
    return-void
.end method
