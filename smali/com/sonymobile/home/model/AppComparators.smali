.class public Lcom/sonymobile/home/model/AppComparators;
.super Ljava/lang/Object;
.source "AppComparators.java"


# direct methods
.method public static getAlphabeticalComparator(Ljava/util/Map;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            "Lcom/sonymobile/home/model/ResourceItem;",
            ">;)",
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "resources":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;>;"
    new-instance v0, Lcom/sonymobile/home/model/AppComparators$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/model/AppComparators$1;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static getInstallTimeComparator(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            "Lcom/sonymobile/home/model/ResourceItem;",
            ">;)",
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "installTimes":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/ActivityItem;Ljava/lang/Long;>;"
    .local p1, "resources":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sonymobile/home/model/AppComparators;->getInstallTimeComparator(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public static getInstallTimeComparator(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Comparator;
    .locals 2
    .param p2, "descending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            "Lcom/sonymobile/home/model/ResourceItem;",
            ">;Z)",
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "installTimes":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/ActivityItem;Ljava/lang/Long;>;"
    .local p1, "resources":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;>;"
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/sonymobile/home/model/AppComparators;->getAlphabeticalComparator(Ljava/util/Map;)Ljava/util/Comparator;

    move-result-object v0

    .line 78
    .local v0, "alphabeticalComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sonymobile/home/data/Item;>;"
    :goto_0
    new-instance v1, Lcom/sonymobile/home/model/AppComparators$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/sonymobile/home/model/AppComparators$2;-><init>(Ljava/util/Map;ZLjava/util/Comparator;)V

    return-object v1

    .line 75
    .end local v0    # "alphabeticalComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMostUsedComparator(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;",
            "Lcom/sonymobile/home/statistics/StatisticsItem;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            "Lcom/sonymobile/home/model/ResourceItem;",
            ">;)",
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "statisticsItems":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;Lcom/sonymobile/home/statistics/StatisticsItem;>;"
    .local p1, "resources":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/sonymobile/home/model/AppComparators;->getMostUsedOrInstallTimeComparator(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public static getMostUsedOrInstallTimeComparator(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;",
            "Lcom/sonymobile/home/statistics/StatisticsItem;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            "Lcom/sonymobile/home/model/ResourceItem;",
            ">;)",
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "statisticsItems":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;Lcom/sonymobile/home/statistics/StatisticsItem;>;"
    .local p1, "installTimes":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/ActivityItem;Ljava/lang/Long;>;"
    .local p2, "resources":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;>;"
    if-eqz p1, :cond_0

    .line 149
    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/sonymobile/home/model/AppComparators;->getInstallTimeComparator(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Comparator;

    move-result-object v0

    .line 158
    .local v0, "secondaryComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sonymobile/home/data/Item;>;"
    :goto_0
    new-instance v1, Lcom/sonymobile/home/model/AppComparators$3;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/home/model/AppComparators$3;-><init>(Ljava/util/Map;Ljava/util/Comparator;)V

    return-object v1

    .line 150
    .end local v0    # "secondaryComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    if-eqz p2, :cond_1

    .line 152
    invoke-static {p2}, Lcom/sonymobile/home/model/AppComparators;->getAlphabeticalComparator(Ljava/util/Map;)Ljava/util/Comparator;

    move-result-object v0

    .restart local v0    # "secondaryComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sonymobile/home/data/Item;>;"
    goto :goto_0

    .line 154
    .end local v0    # "secondaryComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sonymobile/home/data/Item;>;"
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "secondaryComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sonymobile/home/data/Item;>;"
    goto :goto_0
.end method
