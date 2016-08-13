.class public Lcom/sonymobile/home/util/PagedList;
.super Ljava/lang/Object;
.source "PagedList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/util/PagedList$Location;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final mMaxPageSize:I

.field private final mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/sonymobile/home/util/PagedList;-><init>(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "pageMaxSize"    # I

    .prologue
    .line 38
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    .line 39
    iput p1, p0, Lcom/sonymobile/home/util/PagedList;->mMaxPageSize:I

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/util/PagedList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/util/PagedList;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public add(IILjava/lang/Object;)V
    .locals 2
    .param p1, "pageIndex"    # I
    .param p2, "pageLocation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITV;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/util/PagedList;->isPageFull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "page is full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 142
    return-void
.end method

.method public addInFirstAvailableLocation(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .line 169
    .local v0, "done":Z
    iget-object v5, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 170
    .local v3, "nPages":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    if-nez v0, :cond_2

    .line 171
    iget-object v5, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 172
    .local v4, "page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 173
    .local v1, "firstNullLocation":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 174
    invoke-virtual {v4, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 175
    const/4 v0, 0x1

    .line 177
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p0}, Lcom/sonymobile/home/util/PagedList;->getMaxPageSize()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 178
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    const/4 v0, 0x1

    .line 170
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    .end local v1    # "firstNullLocation":I
    .end local v4    # "page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    :cond_2
    if-nez v0, :cond_3

    .line 183
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/util/PagedList;->addLast(Ljava/lang/Object;)V

    .line 185
    :cond_3
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    .local p1, "item":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/sonymobile/home/util/PagedList;->getNumberOfPages()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 397
    .local v0, "lastPage":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/util/PagedList;->isPageFull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 399
    invoke-virtual {p0}, Lcom/sonymobile/home/util/PagedList;->addPageLast()I

    .line 401
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/home/util/PagedList;->addToPage(ILjava/lang/Object;)V

    .line 402
    return-void
.end method

.method public addPageLast()I
    .locals 3

    .prologue
    .line 80
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    iget-object v1, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 81
    .local v0, "pages":I
    iget-object v1, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    return v0
.end method

.method public addToPage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "pageIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/util/PagedList;->isPageFull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "page is full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 383
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    iget-object v2, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 384
    .local v1, "nPages":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 385
    iget-object v2, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 388
    return-void
.end method

.method public expandInsert(IILjava/lang/Object;)V
    .locals 3
    .param p1, "pageIndex"    # I
    .param p2, "pageLocation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITV;)V"
        }
    .end annotation

    .prologue
    .line 421
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    .local p3, "item":Ljava/lang/Object;, "TV;"
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/home/util/PagedList;->getNumberOfPages()I

    move-result v2

    if-lt p1, v2, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/sonymobile/home/util/PagedList;->addPageLast()I

    goto :goto_0

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/util/PagedList;->getMaxPageSize()I

    move-result v2

    if-lt p2, v2, :cond_2

    .line 426
    invoke-virtual {p0}, Lcom/sonymobile/home/util/PagedList;->getMaxPageSize()I

    move-result v2

    add-int/lit8 p2, v2, -0x1

    .line 431
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/util/PagedList;->getPageSize(I)I

    move-result v1

    .line 432
    .local v1, "oldPageSize":I
    if-le p2, v1, :cond_4

    .line 434
    move v0, v1

    .local v0, "ix":I
    :goto_2
    add-int/lit8 v2, p2, -0x1

    if-gt v0, v2, :cond_3

    .line 435
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/sonymobile/home/util/PagedList;->addToPage(ILjava/lang/Object;)V

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 427
    .end local v0    # "ix":I
    .end local v1    # "oldPageSize":I
    :cond_2
    if-gez p2, :cond_1

    .line 428
    const/4 p2, 0x0

    goto :goto_1

    .line 437
    .restart local v0    # "ix":I
    .restart local v1    # "oldPageSize":I
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/sonymobile/home/util/PagedList;->addToPage(ILjava/lang/Object;)V

    .line 446
    .end local v0    # "ix":I
    :goto_3
    return-void

    .line 439
    :cond_4
    if-ge p2, v1, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/util/PagedList;->get(II)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 441
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/home/util/PagedList;->set(IILjava/lang/Object;)V

    goto :goto_3

    .line 443
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/home/util/PagedList;->insert(IILjava/lang/Object;)V

    goto :goto_3
.end method

.method public get(II)Ljava/lang/Object;
    .locals 1
    .param p1, "pageIndex"    # I
    .param p2, "pageLocation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TV;"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    iget-object v0, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMaxPageSize()I
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    iget v0, p0, Lcom/sonymobile/home/util/PagedList;->mMaxPageSize:I

    return v0
.end method

.method public getNumberOfPages()I
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    iget-object v0, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPage(I)Ljava/util/List;
    .locals 1
    .param p1, "pageIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    iget-object v0, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getPageSize(I)I
    .locals 1
    .param p1, "pageIndex"    # I

    .prologue
    .line 93
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    iget-object v0, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public insert(IILjava/lang/Object;)V
    .locals 3
    .param p1, "pageIndex"    # I
    .param p2, "pageLocation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITV;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    .local p3, "item":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/sonymobile/home/util/PagedList;->getNumberOfPages()I

    move-result v1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 406
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 409
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/util/PagedList;->isPageFull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 410
    invoke-virtual {p0}, Lcom/sonymobile/home/util/PagedList;->getMaxPageSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/sonymobile/home/util/PagedList;->remove(II)Ljava/lang/Object;

    move-result-object v0

    .line 411
    .local v0, "lastItem":Ljava/lang/Object;, "TV;"
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Lcom/sonymobile/home/util/PagedList;->getNumberOfPages()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 412
    invoke-virtual {p0}, Lcom/sonymobile/home/util/PagedList;->addPageLast()I

    .line 414
    :cond_2
    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/sonymobile/home/util/PagedList;->insert(IILjava/lang/Object;)V

    .line 417
    .end local v0    # "lastItem":Ljava/lang/Object;, "TV;"
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/home/util/PagedList;->add(IILjava/lang/Object;)V

    .line 418
    return-void
.end method

.method public isPageFull(I)Z
    .locals 2
    .param p1, "pageIndex"    # I

    .prologue
    .line 104
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    iget-object v0, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/sonymobile/home/util/PagedList;->mMaxPageSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    new-instance v0, Lcom/sonymobile/home/util/PagedList$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/util/PagedList$1;-><init>(Lcom/sonymobile/home/util/PagedList;)V

    return-object v0
.end method

.method public mapLocation(ILcom/sonymobile/home/util/PagedList$Location;)V
    .locals 6
    .param p1, "location"    # I
    .param p2, "outLocation"    # Lcom/sonymobile/home/util/PagedList$Location;

    .prologue
    .line 321
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    const/4 v2, 0x0

    .line 322
    .local v2, "pageIndex":I
    move v3, p1

    .line 323
    .local v3, "pageLocation":I
    iget-object v5, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 324
    .local v1, "nPages":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 325
    iget-object v5, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 326
    .local v4, "pageSize":I
    if-lt v3, v4, :cond_0

    .line 327
    sub-int/2addr v3, v4

    .line 328
    add-int/lit8 v2, v2, 0x1

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    .end local v4    # "pageSize":I
    :cond_0
    iput v2, p2, Lcom/sonymobile/home/util/PagedList$Location;->pageIndex:I

    .line 334
    iput v3, p2, Lcom/sonymobile/home/util/PagedList$Location;->pageLocation:I

    .line 335
    return-void
.end method

.method public remove(II)Ljava/lang/Object;
    .locals 1
    .param p1, "pageIndex"    # I
    .param p2, "pageLocation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TV;"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    iget-object v0, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 273
    .local v1, "nPages":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 274
    iget-object v2, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    const/4 v2, 0x1

    .line 278
    :goto_1
    return v2

    .line 273
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public removeGaps()V
    .locals 4

    .prologue
    .line 285
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    iget-object v3, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 286
    .local v1, "nPages":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 287
    iget-object v3, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 288
    .local v2, "page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    .end local v2    # "page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    :cond_1
    return-void
.end method

.method public removePage(I)Ljava/util/List;
    .locals 1
    .param p1, "pageIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    iget-object v0, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public set(IILjava/lang/Object;)V
    .locals 1
    .param p1, "pageIndex"    # I
    .param p2, "pageLocation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITV;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method public size()I
    .locals 4

    .prologue
    .line 66
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    const/4 v2, 0x0

    .line 67
    .local v2, "size":I
    iget-object v3, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 68
    .local v1, "nPages":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 69
    iget-object v3, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 450
    .local p0, "this":Lcom/sonymobile/home/util/PagedList;, "Lcom/sonymobile/home/util/PagedList<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PagedList{maxPageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/util/PagedList;->mMaxPageSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
