.class public Lcom/sonymobile/home/apptray/AppTrayAdapter;
.super Lcom/sonymobile/home/presenter/PageViewBaseAdapter;
.source "AppTrayAdapter.java"


# instance fields
.field private mCols:I

.field private mHolePage:I

.field private mHolePosition:I

.field private final mModel:Lcom/sonymobile/home/apptray/AppTrayModel;

.field private final mOriginalItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalPage:I

.field private mOriginalPosition:I

.field private final mPageItemViewListener:Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

.field private final mPagedList:Lcom/sonymobile/home/util/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/home/util/PagedList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mPickedUpItem:Lcom/sonymobile/home/data/Item;

.field private mRows:I

.field private final mScene:Lcom/sonymobile/flix/components/Scene;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/apptray/AppTrayModel;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)V
    .locals 3
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "model"    # Lcom/sonymobile/home/apptray/AppTrayModel;
    .param p3, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p4, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .prologue
    const/4 v0, -0x1

    .line 67
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/PageViewBaseAdapter;-><init>()V

    .line 36
    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mHolePage:I

    .line 38
    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mHolePosition:I

    .line 41
    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mOriginalPage:I

    .line 44
    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mOriginalPosition:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPickedUpItem:Lcom/sonymobile/home/data/Item;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mOriginalItems:Ljava/util/List;

    .line 68
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 69
    iput-object p2, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    .line 70
    invoke-virtual {p0, p3}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->updateConfiguration(Lcom/sonymobile/grid/Grid;)V

    .line 71
    iput-object p4, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPageItemViewListener:Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .line 73
    new-instance v0, Lcom/sonymobile/home/util/PagedList;

    iget v1, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mCols:I

    iget v2, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mRows:I

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/sonymobile/home/util/PagedList;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    .line 74
    return-void
.end method

.method private getMaxItems()I
    .locals 2

    .prologue
    .line 556
    iget v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mCols:I

    iget v1, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mRows:I

    mul-int/2addr v0, v1

    return v0
.end method

.method private getNumberOfItemsOnPage(I)I
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 566
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/util/PagedList;->getPageSize(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addPage()I
    .locals 2

    .prologue
    .line 295
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v1}, Lcom/sonymobile/home/util/PagedList;->addPageLast()I

    move-result v0

    .line 297
    .local v0, "pageIndex":I
    return v0
.end method

.method public clearOriginalPickupPosition()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 248
    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mOriginalPage:I

    .line 249
    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mOriginalPosition:I

    .line 250
    return-void
.end method

.method public clearPickup()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 239
    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mHolePage:I

    .line 240
    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mHolePosition:I

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPickedUpItem:Lcom/sonymobile/home/data/Item;

    .line 242
    return-void
.end method

.method public dropItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v3, -0x1

    .line 204
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getHolePage()I

    move-result v1

    .line 205
    .local v1, "page":I
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getHolePosition()I

    move-result v2

    .line 207
    .local v2, "position":I
    if-ne v1, v3, :cond_0

    if-ne v2, v3, :cond_0

    .line 208
    iget v1, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mOriginalPage:I

    .line 209
    iget v2, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mOriginalPosition:I

    .line 213
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v3}, Lcom/sonymobile/home/util/PagedList;->getNumberOfPages()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 214
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v3}, Lcom/sonymobile/home/util/PagedList;->addPageLast()I

    .line 217
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v3, v1}, Lcom/sonymobile/home/util/PagedList;->getPageSize(I)I

    move-result v3

    if-le v2, v3, :cond_2

    .line 218
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v3, v1}, Lcom/sonymobile/home/util/PagedList;->getPageSize(I)I

    move-result v2

    .line 221
    :cond_2
    iget v3, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mOriginalPosition:I

    if-ne v2, v3, :cond_3

    iget v3, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mOriginalPage:I

    if-eq v1, v3, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 222
    .local v0, "moved":Z
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v3, v1, v2, p1}, Lcom/sonymobile/home/util/PagedList;->insert(IILjava/lang/Object;)V

    .line 225
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v3}, Lcom/sonymobile/home/util/PagedList;->removeGaps()V

    .line 226
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->removeEmptyPages()V

    .line 229
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->clearPickup()V

    .line 230
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->clearOriginalPickupPosition()V

    .line 232
    return v0

    .line 221
    .end local v0    # "moved":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultPage()I
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method public getHolePage()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mHolePage:I

    return v0
.end method

.method public getHolePosition()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mHolePosition:I

    return v0
.end method

.method public getHomePage()I
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public getIndex(J)I
    .locals 5
    .param p1, "uniqueId"    # J

    .prologue
    .line 571
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 572
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getItemId(I)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 576
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 571
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getItemAtLocation(II)Lcom/sonymobile/home/data/Item;
    .locals 2
    .param p1, "page"    # I
    .param p2, "pos"    # I

    .prologue
    const/4 v0, 0x0

    .line 358
    iget v1, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mHolePage:I

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mHolePosition:I

    if-ne p2, v1, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-object v0

    .line 361
    :cond_1
    iget v1, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mHolePage:I

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mHolePosition:I

    if-lt p2, v1, :cond_2

    .line 362
    add-int/lit8 p2, p2, -0x1

    .line 363
    const/4 v1, 0x0

    invoke-static {p2, v1, p2}, Lcom/sonymobile/home/util/MathUtil;->clamp(III)I

    move-result p2

    .line 365
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v1}, Lcom/sonymobile/home/util/PagedList;->getNumberOfPages()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/util/PagedList;->getPageSize(I)I

    move-result v1

    if-le v1, p2, :cond_0

    .line 371
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v1, p1, p2}, Lcom/sonymobile/home/util/PagedList;->get(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/Item;

    .line 373
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v0}, Lcom/sonymobile/home/util/PagedList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 539
    new-instance v1, Lcom/sonymobile/home/util/PagedList$Location;

    invoke-direct {v1}, Lcom/sonymobile/home/util/PagedList$Location;-><init>()V

    .line 541
    .local v1, "outLocation":Lcom/sonymobile/home/util/PagedList$Location;
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v2, p1, v1}, Lcom/sonymobile/home/util/PagedList;->mapLocation(ILcom/sonymobile/home/util/PagedList$Location;)V

    .line 542
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    iget v3, v1, Lcom/sonymobile/home/util/PagedList$Location;->pageIndex:I

    iget v4, v1, Lcom/sonymobile/home/util/PagedList$Location;->pageLocation:I

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/home/util/PagedList;->get(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/Item;

    .line 544
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {v0}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v2

    .line 547
    :goto_0
    return-wide v2

    :cond_0
    const-wide/32 v2, -0x80000000

    goto :goto_0
.end method

.method public getItemView(I)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 453
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getItemCount()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 454
    new-instance v1, Lcom/sonymobile/home/util/PagedList$Location;

    invoke-direct {v1}, Lcom/sonymobile/home/util/PagedList$Location;-><init>()V

    .line 455
    .local v1, "outLocation":Lcom/sonymobile/home/util/PagedList$Location;
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v4, p1, v1}, Lcom/sonymobile/home/util/PagedList;->mapLocation(ILcom/sonymobile/home/util/PagedList$Location;)V

    .line 456
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    iget v5, v1, Lcom/sonymobile/home/util/PagedList$Location;->pageIndex:I

    iget v6, v1, Lcom/sonymobile/home/util/PagedList$Location;->pageLocation:I

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/home/util/PagedList;->get(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/Item;

    .line 458
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual {v4, v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v3

    .line 459
    .local v3, "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    invoke-static {}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->getFactory()Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v6, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPageItemViewListener:Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    invoke-virtual {v4, v0, v3, v5, v6}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->createPageItemView(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v2

    .line 462
    .local v2, "pageItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-virtual {p0, v2}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->refreshItemViewOptions(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 466
    .end local v0    # "item":Lcom/sonymobile/home/data/Item;
    .end local v1    # "outLocation":Lcom/sonymobile/home/util/PagedList$Location;
    .end local v2    # "pageItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    .end local v3    # "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getItemsOnPage(I)I
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getNumberOfItemsOnPage(I)I

    move-result v0

    return v0
.end method

.method public getLocation(ILcom/sonymobile/home/ui/pageview/PageLocation;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "location"    # Lcom/sonymobile/home/ui/pageview/PageLocation;

    .prologue
    const/4 v4, 0x1

    .line 492
    new-instance v0, Lcom/sonymobile/home/util/PagedList$Location;

    invoke-direct {v0}, Lcom/sonymobile/home/util/PagedList$Location;-><init>()V

    .line 493
    .local v0, "loc":Lcom/sonymobile/home/util/PagedList$Location;
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v3, p1, v0}, Lcom/sonymobile/home/util/PagedList;->mapLocation(ILcom/sonymobile/home/util/PagedList$Location;)V

    .line 494
    iget v1, v0, Lcom/sonymobile/home/util/PagedList$Location;->pageIndex:I

    .line 495
    .local v1, "page":I
    iget v2, v0, Lcom/sonymobile/home/util/PagedList$Location;->pageLocation:I

    .line 497
    .local v2, "pos":I
    iget v3, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mHolePage:I

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mHolePosition:I

    if-lt v2, v3, :cond_0

    .line 498
    add-int/lit8 v2, v2, 0x1

    .line 501
    :cond_0
    iput v1, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->page:I

    .line 502
    iget v3, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mCols:I

    rem-int v3, v2, v3

    iput v3, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->col:I

    .line 503
    iget v3, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mCols:I

    div-int v3, v2, v3

    iput v3, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->row:I

    .line 504
    iput v4, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->colSpan:I

    .line 505
    iput v4, p2, Lcom/sonymobile/home/ui/pageview/PageLocation;->rowSpan:I

    .line 506
    return-void
.end method

.method public getMaximumNumberOfPages()I
    .locals 1

    .prologue
    .line 448
    const v0, 0x7fffffff

    return v0
.end method

.method public getMinimumNumberOfPages()I
    .locals 1

    .prologue
    .line 443
    invoke-static {}, Lcom/sonymobile/home/apptray/AppTrayModel;->getMinimumNumberOfPages()I

    move-result v0

    return v0
.end method

.method public getModelItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mOriginalItems:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v0}, Lcom/sonymobile/home/util/PagedList;->getNumberOfPages()I

    move-result v0

    return v0
.end method

.method public getPages()[I
    .locals 3

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getPageCount()I

    move-result v0

    .line 528
    .local v0, "count":I
    new-array v2, v0, [I

    .line 530
    .local v2, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 531
    aput v1, v2, v1

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 534
    :cond_0
    return-object v2
.end method

.method public hasOriginalPickupPosition()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 258
    iget v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mOriginalPage:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mOriginalPosition:I

    if-eq v0, v1, :cond_0

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
    .line 263
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPickedUpItem:Lcom/sonymobile/home/data/Item;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPickedUpItem:Lcom/sonymobile/home/data/Item;

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
    .line 177
    invoke-direct {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getNumberOfItemsOnPage(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPageFull(I)Z
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getNumberOfItemsOnPage(I)I

    move-result v0

    .line 169
    .local v0, "count":I
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getMaxItems()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public makeRoom(II)Lcom/sonymobile/home/data/Item;
    .locals 5
    .param p1, "page"    # I
    .param p2, "position"    # I

    .prologue
    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, "spillOver":Lcom/sonymobile/home/data/Item;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->isPageFull(I)Z

    move-result v0

    .line 277
    .local v0, "isFull":Z
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->setHole(II)Z

    move-result v2

    .line 279
    .local v2, "updated":Z
    if-eqz v2, :cond_1

    .line 280
    if-eqz v0, :cond_0

    .line 281
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getMaxItems()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, p1, v4}, Lcom/sonymobile/home/util/PagedList;->get(II)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "spillOver":Lcom/sonymobile/home/data/Item;
    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 284
    .restart local v1    # "spillOver":Lcom/sonymobile/home/data/Item;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->notifyContentChanged()V

    .line 286
    :cond_1
    return-object v1
.end method

.method public onModelChanged()V
    .locals 0

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->notifyContentChanged()V

    .line 424
    return-void
.end method

.method public onModelItemChanged(Lcom/sonymobile/home/data/Item;)V
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 413
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v2}, Lcom/sonymobile/home/util/PagedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 414
    .local v1, "itemInModel":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->notifyPageItemChanged(J)V

    goto :goto_0

    .line 418
    .end local v1    # "itemInModel":Lcom/sonymobile/home/data/Item;
    :cond_1
    return-void
.end method

.method public onModelOrderChanged()V
    .locals 0

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->notifyPageItemOrderChanged()V

    .line 429
    return-void
.end method

.method public pickup(Lcom/sonymobile/home/data/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    iget v0, v0, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mHolePage:I

    .line 188
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    iget v0, v0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mHolePosition:I

    .line 189
    iget v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mHolePage:I

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mOriginalPage:I

    .line 190
    iget v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mHolePosition:I

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mOriginalPosition:I

    .line 191
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPickedUpItem:Lcom/sonymobile/home/data/Item;

    .line 192
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/util/PagedList;->remove(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->notifyContentChanged()V

    .line 195
    return-void
.end method

.method public releaseView(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 0
    .param p1, "view"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 485
    if-eqz p1, :cond_0

    .line 486
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->release()V

    .line 488
    :cond_0
    return-void
.end method

.method public removeEmptyPage(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 306
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->isPageEmpty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/util/PagedList;->removePage(I)Ljava/util/List;

    .line 309
    :cond_0
    return-void
.end method

.method public removeEmptyPages()V
    .locals 2

    .prologue
    .line 315
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v1}, Lcom/sonymobile/home/util/PagedList;->getNumberOfPages()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 316
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->removeEmptyPage(I)V

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    return-void
.end method

.method public removeHoles()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v6, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v6}, Lcom/sonymobile/home/util/PagedList;->getNumberOfPages()I

    move-result v3

    .line 135
    .local v3, "pageCount":I
    new-instance v0, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v6}, Lcom/sonymobile/home/util/PagedList;->size()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    .local v0, "allItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v4, 0x0

    .local v4, "pageIndex":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 138
    iget-object v6, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v6, v4}, Lcom/sonymobile/home/util/PagedList;->getPageSize(I)I

    move-result v5

    .line 139
    .local v5, "pageItemCount":I
    const/4 v2, 0x0

    .local v2, "itemIndex":I
    :goto_1
    if-ge v2, v5, :cond_0

    .line 140
    iget-object v6, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v6, v4, v2}, Lcom/sonymobile/home/util/PagedList;->get(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 142
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    iput v4, v6, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 143
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    iput v2, v6, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 145
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 137
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 148
    .end local v2    # "itemIndex":I
    .end local v5    # "pageItemCount":I
    :cond_1
    return-object v0
.end method

.method public setHole(II)Z
    .locals 4
    .param p1, "page"    # I
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 338
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v3}, Lcom/sonymobile/home/util/PagedList;->getNumberOfPages()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v2, v3}, Lcom/sonymobile/home/util/MathUtil;->clamp(III)I

    move-result v0

    .line 339
    .local v0, "holePane":I
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v3, v0}, Lcom/sonymobile/home/util/PagedList;->getPageSize(I)I

    move-result v3

    invoke-static {p2, v2, v3}, Lcom/sonymobile/home/util/MathUtil;->clamp(III)I

    move-result v1

    .line 341
    .local v1, "holePaneLocation":I
    iget v3, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mHolePage:I

    if-ne v0, v3, :cond_0

    iget v3, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mHolePosition:I

    if-eq v1, v3, :cond_1

    .line 342
    :cond_0
    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mHolePage:I

    .line 343
    iput v1, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mHolePosition:I

    .line 344
    const/4 v2, 0x1

    .line 347
    :cond_1
    return v2
.end method

.method public setModelItems(Ljava/util/List;Z)V
    .locals 8
    .param p2, "ignoreLocation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v5}, Lcom/sonymobile/home/util/PagedList;->clear()V

    .line 87
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 90
    if-eqz p1, :cond_4

    .line 91
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    if-eqz p2, :cond_0

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 94
    .local v2, "listItem":Lcom/sonymobile/home/data/Item;
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v5, v2}, Lcom/sonymobile/home/util/PagedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "listItem":Lcom/sonymobile/home/data/Item;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 98
    .restart local v2    # "listItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    .line 100
    .local v3, "loc":Lcom/sonymobile/home/data/ItemLocation;
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v5}, Lcom/sonymobile/home/util/PagedList;->getNumberOfPages()I

    move-result v5

    iget v6, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    if-gt v5, v6, :cond_2

    .line 101
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v5}, Lcom/sonymobile/home/util/PagedList;->addPageLast()I

    move-result v4

    .line 104
    .local v4, "page":I
    const/4 v1, 0x0

    .local v1, "ix":I
    :goto_2
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v5}, Lcom/sonymobile/home/util/PagedList;->getMaxPageSize()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 105
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/sonymobile/home/util/PagedList;->addToPage(ILjava/lang/Object;)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 108
    .end local v1    # "ix":I
    .end local v4    # "page":I
    :cond_2
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    iget v6, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iget v7, v3, Lcom/sonymobile/home/data/ItemLocation;->position:I

    invoke-virtual {v5, v6, v7, v2}, Lcom/sonymobile/home/util/PagedList;->set(IILjava/lang/Object;)V

    goto :goto_1

    .line 110
    .end local v2    # "listItem":Lcom/sonymobile/home/data/Item;
    .end local v3    # "loc":Lcom/sonymobile/home/data/ItemLocation;
    :cond_3
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v5}, Lcom/sonymobile/home/util/PagedList;->removeGaps()V

    .line 113
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPickedUpItem:Lcom/sonymobile/home/data/Item;

    if-eqz v5, :cond_5

    .line 114
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    iget-object v6, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPickedUpItem:Lcom/sonymobile/home/data/Item;

    invoke-virtual {v5, v6}, Lcom/sonymobile/home/util/PagedList;->remove(Ljava/lang/Object;)Z

    .line 116
    :cond_5
    return-void
.end method

.method public updateConfiguration(Lcom/sonymobile/grid/Grid;)V
    .locals 1
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    .line 157
    invoke-virtual {p1}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mCols:I

    .line 158
    invoke-virtual {p1}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mRows:I

    .line 159
    return-void
.end method

.method public updateItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;I)V
    .locals 6
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "index"    # I

    .prologue
    .line 471
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getItemCount()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 472
    new-instance v1, Lcom/sonymobile/home/util/PagedList$Location;

    invoke-direct {v1}, Lcom/sonymobile/home/util/PagedList$Location;-><init>()V

    .line 473
    .local v1, "outLocation":Lcom/sonymobile/home/util/PagedList$Location;
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v3, p2, v1}, Lcom/sonymobile/home/util/PagedList;->mapLocation(ILcom/sonymobile/home/util/PagedList$Location;)V

    .line 474
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mPagedList:Lcom/sonymobile/home/util/PagedList;

    iget v4, v1, Lcom/sonymobile/home/util/PagedList$Location;->pageIndex:I

    iget v5, v1, Lcom/sonymobile/home/util/PagedList$Location;->pageLocation:I

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/home/util/PagedList;->get(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/Item;

    .line 476
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayAdapter;->mModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual {v3, v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v2

    .line 477
    .local v2, "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    invoke-static {}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->getFactory()Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    move-result-object v3

    invoke-virtual {v3, p1, v0, v2}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->updatePageItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V

    .line 479
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->refreshItemViewOptions(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 481
    .end local v0    # "item":Lcom/sonymobile/home/data/Item;
    .end local v1    # "outLocation":Lcom/sonymobile/home/util/PagedList$Location;
    .end local v2    # "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    :cond_0
    return-void
.end method
