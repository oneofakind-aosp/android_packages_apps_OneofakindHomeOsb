.class public Lcom/sonymobile/home/desktop/DesktopAdapter;
.super Lcom/sonymobile/home/presenter/PageViewBaseAdapter;
.source "DesktopAdapter.java"


# instance fields
.field private final mModel:Lcom/sonymobile/home/desktop/DesktopModel;

.field final mPageItemViewListener:Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

.field private mPickedUpItem:Lcom/sonymobile/home/data/Item;

.field private final mScene:Lcom/sonymobile/flix/components/Scene;

.field private final mTouchConsumedHandler:Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "model"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p3, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;
    .param p4, "touchConsumedHandler"    # Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/PageViewBaseAdapter;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mPickedUpItem:Lcom/sonymobile/home/data/Item;

    .line 43
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 44
    iput-object p2, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    .line 45
    iput-object p3, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mPageItemViewListener:Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .line 46
    iput-object p4, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mTouchConsumedHandler:Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;

    .line 47
    return-void
.end method

.method private addTouchOnScrollableConsumedListener(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 1
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 122
    instance-of v0, p1, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;

    if-eqz v0, :cond_1

    .line 123
    check-cast p1, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;

    .end local p1    # "pageItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mTouchConsumedHandler:Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->setTouchOnScrollableConsumedListener(Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper$TouchOnScrollableConsumedListener;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    .restart local p1    # "pageItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_1
    instance-of v0, p1, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;

    if-eqz v0, :cond_0

    .line 125
    check-cast p1, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;

    .end local p1    # "pageItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mTouchConsumedHandler:Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->setTouchOnScrollableConsumedListener(Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper$TouchOnScrollableConsumedListener;)V

    goto :goto_0
.end method


# virtual methods
.method public clearPickup()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mPickedUpItem:Lcom/sonymobile/home/data/Item;

    .line 152
    return-void
.end method

.method public dropItem(Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopAdapter;->clearPickup()V

    .line 145
    return-void
.end method

.method public getDefaultPage()I
    .locals 2

    .prologue
    .line 180
    const v0, 0x7fffffff

    .line 182
    .local v0, "defaultPage":I
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->getHomePageId()I

    move-result v0

    .line 185
    :cond_0
    return v0
.end method

.method public getHomePage()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->getHomePageId()I

    move-result v0

    return v0
.end method

.method public getIndex(J)I
    .locals 5
    .param p1, "uniqueId"    # J

    .prologue
    .line 234
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 235
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopAdapter;->getItemId(I)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 239
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 234
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->getItem(I)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemView(I)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 85
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    if-eqz v3, :cond_1

    if-ltz p1, :cond_1

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopModel;->getCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 86
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v3, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->getResource(I)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v2

    .line 87
    .local v2, "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v3, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->getItem(I)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 89
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    invoke-static {}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->getFactory()Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mPageItemViewListener:Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->createPageItemView(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v1

    .line 92
    .local v1, "pageItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    if-eqz v1, :cond_0

    .line 93
    invoke-direct {p0, v1}, Lcom/sonymobile/home/desktop/DesktopAdapter;->addTouchOnScrollableConsumedListener(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 94
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/DesktopAdapter;->refreshItemViewOptions(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 99
    .end local v0    # "item":Lcom/sonymobile/home/data/Item;
    .end local v1    # "pageItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    .end local v2    # "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocation(ILcom/sonymobile/home/ui/pageview/PageLocation;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "location"    # Lcom/sonymobile/home/ui/pageview/PageLocation;

    .prologue
    .line 168
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v2, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->getItem(I)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 169
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v0}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    .line 171
    .local v1, "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    iget v2, v1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iput v2, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->page:I

    .line 172
    iget-object v2, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->col:I

    iput v2, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->col:I

    .line 173
    iget-object v2, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->row:I

    iput v2, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->row:I

    .line 174
    iget-object v2, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iput v2, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->colSpan:I

    .line 175
    iget-object v2, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    iput v2, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->rowSpan:I

    .line 176
    return-void
.end method

.method public getMaximumNumberOfPages()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->getMaxNumberOfPages()I

    move-result v0

    return v0
.end method

.method public getMinimumNumberOfPages()I
    .locals 1

    .prologue
    .line 214
    invoke-static {}, Lcom/sonymobile/home/desktop/DesktopModel;->getMinimumNumberOfPages()I

    move-result v0

    return v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->getPageCount()I

    move-result v0

    return v0
.end method

.method public getPages()[I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->getPages()[I

    move-result-object v0

    return-object v0
.end method

.method protected holdsActiveScene(Lcom/sonymobile/flix/components/Scene;)Z
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 50
    invoke-static {p1}, Lcom/sonymobile/home/HomeFragment;->holdsActiveScene(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v0

    return v0
.end method

.method public isItemPickedUp(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mPickedUpItem:Lcom/sonymobile/home/data/Item;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mPickedUpItem:Lcom/sonymobile/home/data/Item;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPageEmpty(I)Z
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->isPageEmpty(I)Z

    move-result v0

    return v0
.end method

.method public onModelChanged()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopAdapter;->holdsActiveScene(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopAdapter;->notifyContentChanged()V

    .line 58
    :cond_0
    return-void
.end method

.method public onModelItemChanged(Lcom/sonymobile/home/data/Item;)V
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 62
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {p0, v3}, Lcom/sonymobile/home/desktop/DesktopAdapter;->holdsActiveScene(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopModel;->getItems()Ljava/util/List;

    move-result-object v2

    .line 65
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

    .line 66
    .local v1, "itemInModel":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/sonymobile/home/desktop/DesktopAdapter;->notifyPageItemChanged(J)V

    goto :goto_0

    .line 71
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "itemInModel":Lcom/sonymobile/home/data/Item;
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_1
    return-void
.end method

.method public onModelOrderChanged()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public pickup(Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mPickedUpItem:Lcom/sonymobile/home/data/Item;

    .line 136
    return-void
.end method

.method public releaseView(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 0
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->release()V

    .line 164
    :cond_0
    return-void
.end method

.method public updateItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;I)V
    .locals 3
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "index"    # I

    .prologue
    .line 104
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v2, p2}, Lcom/sonymobile/home/desktop/DesktopModel;->getResource(I)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v1

    .line 105
    .local v1, "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopAdapter;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v2, p2}, Lcom/sonymobile/home/desktop/DesktopModel;->getItem(I)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 107
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    invoke-static {}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->getFactory()Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->updatePageItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopAdapter;->addTouchOnScrollableConsumedListener(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/DesktopAdapter;->refreshItemViewOptions(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 111
    return-void
.end method
