.class public final Lcom/sonymobile/home/desktop/search/SearchUtil;
.super Ljava/lang/Object;
.source "SearchUtil.java"


# direct methods
.method public static getFirstVacantLocation(IILjava/util/List;I[ILcom/sonymobile/grid/Grid;)Lcom/sonymobile/home/data/ItemLocation;
    .locals 7
    .param p0, "spanX"    # I
    .param p1, "spanY"    # I
    .param p3, "startPageId"    # I
    .param p4, "pageArray"    # [I
    .param p5, "grid"    # Lcom/sonymobile/grid/Grid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;I[I",
            "Lcom/sonymobile/grid/Grid;",
            ")",
            "Lcom/sonymobile/home/data/ItemLocation;"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v6, 0x1

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/sonymobile/home/desktop/search/SearchUtil;->getVacantLocation(IILjava/util/List;I[ILcom/sonymobile/grid/Grid;Z)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstVacantLocation(IILjava/util/List;I[ILcom/sonymobile/grid/GridRect;Lcom/sonymobile/grid/Grid;)Lcom/sonymobile/home/data/ItemLocation;
    .locals 8
    .param p0, "spanX"    # I
    .param p1, "spanY"    # I
    .param p3, "startPageId"    # I
    .param p4, "pageArray"    # [I
    .param p5, "searchArea"    # Lcom/sonymobile/grid/GridRect;
    .param p6, "grid"    # Lcom/sonymobile/grid/Grid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;I[I",
            "Lcom/sonymobile/grid/GridRect;",
            "Lcom/sonymobile/grid/Grid;",
            ")",
            "Lcom/sonymobile/home/data/ItemLocation;"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    array-length v1, p4

    if-nez v1, :cond_0

    .line 117
    const/4 v1, 0x0

    .line 126
    :goto_0
    return-object v1

    .line 119
    :cond_0
    invoke-static {p3, p4}, Lcom/sonymobile/home/desktop/search/SearchUtil;->getPageStartIndex(I[I)I

    move-result v7

    .line 121
    .local v7, "startIndex":I
    new-instance v4, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;

    const/4 v1, -0x1

    invoke-direct {v4, v7, p4, v1}, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;-><init>(I[II)V

    .line 123
    .local v4, "pageIterator":Lcom/sonymobile/home/desktop/search/PageIterator;
    new-instance v0, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;

    move-object v1, p2

    move v2, p0

    move v3, p1

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;-><init>(Ljava/util/List;IILcom/sonymobile/home/desktop/search/PageIterator;Lcom/sonymobile/grid/GridRect;Lcom/sonymobile/grid/Grid;)V

    .line 126
    .local v0, "locationSearcher":Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;
    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/search/ConstrainedFirstVacantLocationSearcher;->getVacantLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLastVacantLocationOnPage(IILjava/util/List;ILcom/sonymobile/grid/Grid;)Lcom/sonymobile/home/data/ItemLocation;
    .locals 7
    .param p0, "spanX"    # I
    .param p1, "spanY"    # I
    .param p3, "pageId"    # I
    .param p4, "grid"    # Lcom/sonymobile/grid/Grid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;I",
            "Lcom/sonymobile/grid/Grid;",
            ")",
            "Lcom/sonymobile/home/data/ItemLocation;"
        }
    .end annotation

    .prologue
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v6, 0x0

    .line 40
    const/4 v0, 0x1

    new-array v4, v0, [I

    aput p3, v4, v6

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/sonymobile/home/desktop/search/SearchUtil;->getVacantLocation(IILjava/util/List;I[ILcom/sonymobile/grid/Grid;Z)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    return-object v0
.end method

.method private static getPageStartIndex(I[I)I
    .locals 3
    .param p0, "startPageId"    # I
    .param p1, "pageArray"    # [I

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, "startIndex":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 132
    aget v2, p1, v0

    if-ne v2, p0, :cond_1

    .line 133
    move v1, v0

    .line 137
    :cond_0
    return v1

    .line 131
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getVacantLocation(IILjava/util/List;I[ILcom/sonymobile/grid/Grid;Z)Lcom/sonymobile/home/data/ItemLocation;
    .locals 8
    .param p0, "spanX"    # I
    .param p1, "spanY"    # I
    .param p3, "startPageId"    # I
    .param p4, "pageArray"    # [I
    .param p5, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p6, "searchForward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;I[I",
            "Lcom/sonymobile/grid/Grid;",
            "Z)",
            "Lcom/sonymobile/home/data/ItemLocation;"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    array-length v1, p4

    if-nez v1, :cond_0

    .line 83
    const/4 v1, 0x0

    .line 93
    :goto_0
    return-object v1

    .line 86
    :cond_0
    invoke-static {p3, p4}, Lcom/sonymobile/home/desktop/search/SearchUtil;->getPageStartIndex(I[I)I

    move-result v7

    .line 88
    .local v7, "startIndex":I
    new-instance v5, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;

    const/4 v1, -0x1

    invoke-direct {v5, v7, p4, v1}, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;-><init>(I[II)V

    .line 90
    .local v5, "pageIterator":Lcom/sonymobile/home/desktop/search/PageIterator;
    new-instance v0, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;

    move-object v1, p5

    move-object v2, p2

    move v3, p0

    move v4, p1

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;-><init>(Lcom/sonymobile/grid/Grid;Ljava/util/List;IILcom/sonymobile/home/desktop/search/PageIterator;Z)V

    .line 93
    .local v0, "locationSearcher":Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;
    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/search/LinearVacantLocationSearcher;->getVacantLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    goto :goto_0
.end method
