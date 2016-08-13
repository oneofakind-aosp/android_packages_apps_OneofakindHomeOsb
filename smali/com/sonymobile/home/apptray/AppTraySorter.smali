.class public Lcom/sonymobile/home/apptray/AppTraySorter;
.super Ljava/lang/Object;
.source "AppTraySorter.java"

# interfaces
.implements Lcom/sonymobile/home/model/ModelObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/apptray/AppTraySorter$2;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mOwnOrderModel:Lcom/sonymobile/home/apptray/AppTrayModel;

.field private final mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

.field private final mPreferences:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;

.field private final mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

.field private final mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

.field private final mStatisticsObserver:Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/apptray/AppTrayModel;Lcom/sonymobile/home/apptray/AppTrayAdapter;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/model/PackageHandler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Lcom/sonymobile/home/apptray/AppTrayModel;
    .param p3, "adapter"    # Lcom/sonymobile/home/apptray/AppTrayAdapter;
    .param p4, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p5, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mMainThreadHandler:Landroid/os/Handler;

    .line 73
    iput-object p2, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mOwnOrderModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    .line 74
    iput-object p3, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    .line 75
    iput-object p4, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    .line 76
    iput-object p5, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    .line 77
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mOwnOrderModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->getPreferences()Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mPreferences:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;

    .line 78
    invoke-static {p1, p5}, Lcom/sonymobile/home/storage/StorageManager;->getStatistics(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;)Lcom/sonymobile/home/statistics/StatisticsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

    .line 79
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTraySorter;->createStatisticsManagerCallbacks()Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mStatisticsObserver:Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsObserver;

    .line 80
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mStatisticsObserver:Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsObserver;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/statistics/StatisticsManager;->addStatisticsObserver(Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsObserver;)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/apptray/AppTraySorter;Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTraySorter;
    .param p1, "x1"    # Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sonymobile/home/apptray/AppTraySorter;->sort(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/apptray/AppTraySorter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTraySorter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/apptray/AppTraySorter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTraySorter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static compareLists(Ljava/util/List;Ljava/util/List;Z)Z
    .locals 9
    .param p2, "ignoreLocation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "itemList1":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .local p1, "itemList2":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v7, 0x0

    .line 275
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 276
    .local v5, "size1":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 278
    .local v6, "size2":I
    if-eq v5, v6, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v7

    .line 282
    :cond_1
    const/4 v2, 0x0

    .local v2, "ix":I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 283
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/Item;

    .line 284
    .local v0, "item1":Lcom/sonymobile/home/data/Item;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 285
    .local v1, "item2":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 289
    if-nez p2, :cond_2

    .line 290
    invoke-virtual {v0}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    .line 291
    .local v3, "location1":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v4

    .line 292
    .local v4, "location2":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {v3, v4}, Lcom/sonymobile/home/data/ItemLocation;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 282
    .end local v3    # "location1":Lcom/sonymobile/home/data/ItemLocation;
    .end local v4    # "location2":Lcom/sonymobile/home/data/ItemLocation;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 297
    .end local v0    # "item1":Lcom/sonymobile/home/data/Item;
    .end local v1    # "item2":Lcom/sonymobile/home/data/Item;
    :cond_3
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private createStatisticsManagerCallbacks()Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsObserver;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/sonymobile/home/apptray/AppTraySorter$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/apptray/AppTraySorter$1;-><init>(Lcom/sonymobile/home/apptray/AppTraySorter;)V

    return-object v0
.end method

.method private filterItemsIfNeeded(Ljava/util/List;Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)Z
    .locals 6
    .param p2, "sortMode"    # Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "itemsToFilter":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v0, 0x0

    .line 235
    .local v0, "changed":Z
    const/4 v3, 0x0

    .line 237
    .local v3, "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    sget-object v4, Lcom/sonymobile/home/apptray/AppTraySorter$2;->$SwitchMap$com$sonymobile$home$apptray$AppTrayPreferenceManager$SortMode:[I

    invoke-virtual {p2}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 257
    :cond_0
    if-eqz v3, :cond_1

    .line 258
    invoke-interface {p1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 259
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v0, 0x1

    .line 262
    :cond_1
    :goto_0
    return v0

    .line 240
    :pswitch_0
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .restart local v3    # "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 243
    .local v2, "itemToFilter":Lcom/sonymobile/home/data/Item;
    instance-of v4, v2, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v4, :cond_3

    .line 244
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    move-object v4, v2

    check-cast v4, Lcom/sonymobile/home/data/ActivityItem;

    invoke-virtual {v5, v4}, Lcom/sonymobile/home/model/PackageHandler;->isWorkActivityItem(Lcom/sonymobile/home/data/ActivityItem;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 245
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 259
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "itemToFilter":Lcom/sonymobile/home/data/Item;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private getComparatorForSortMode(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)Ljava/util/Comparator;
    .locals 3
    .param p1, "sortOrder"    # Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;",
            ")",
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 201
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sonymobile/home/data/Item;>;"
    sget-object v1, Lcom/sonymobile/home/apptray/AppTraySorter$2;->$SwitchMap$com$sonymobile$home$apptray$AppTrayPreferenceManager$SortMode:[I

    invoke-virtual {p1}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 219
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-virtual {v1}, Lcom/sonymobile/home/model/ResourceHandler;->getResources()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/home/model/AppComparators;->getAlphabeticalComparator(Ljava/util/Map;)Ljava/util/Comparator;

    move-result-object v0

    .line 223
    :goto_0
    :pswitch_1
    return-object v0

    .line 203
    :pswitch_2
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

    invoke-virtual {v1}, Lcom/sonymobile/home/statistics/StatisticsManager;->getStatisticsItems()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-virtual {v2}, Lcom/sonymobile/home/model/ResourceHandler;->getResources()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/home/model/AppComparators;->getMostUsedComparator(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Comparator;

    move-result-object v0

    .line 205
    goto :goto_0

    .line 208
    :pswitch_3
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v1}, Lcom/sonymobile/home/model/PackageHandler;->getInstallTimes()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-virtual {v2}, Lcom/sonymobile/home/model/ResourceHandler;->getResources()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/home/model/AppComparators;->getInstallTimeComparator(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Comparator;

    move-result-object v0

    .line 210
    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sort(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)Z
    .locals 7
    .param p1, "sortMode"    # Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .prologue
    .line 157
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    invoke-virtual {v5}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getModelItems()Ljava/util/List;

    move-result-object v4

    .line 159
    .local v4, "oldItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v2, 0x0

    .line 161
    .local v2, "ignoreLocation":Z
    sget-object v5, Lcom/sonymobile/home/apptray/AppTraySorter$2;->$SwitchMap$com$sonymobile$home$apptray$AppTrayPreferenceManager$SortMode:[I

    invoke-virtual {p1}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 180
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mOwnOrderModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual {v5}, Lcom/sonymobile/home/apptray/AppTrayModel;->getItems()Ljava/util/List;

    move-result-object v3

    .line 184
    .local v3, "newItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :goto_0
    invoke-static {v3, v4, v2}, Lcom/sonymobile/home/apptray/AppTraySorter;->compareLists(Ljava/util/List;Ljava/util/List;Z)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, 0x1

    .line 185
    .local v0, "change":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 186
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    invoke-virtual {v5, v3, v2}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->setModelItems(Ljava/util/List;Z)V

    .line 189
    :cond_0
    return v0

    .line 166
    .end local v0    # "change":Z
    .end local v3    # "newItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :pswitch_0
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mOwnOrderModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual {v5, v4}, Lcom/sonymobile/home/apptray/AppTrayModel;->getActivityItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 169
    .restart local v3    # "newItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {p0, p1}, Lcom/sonymobile/home/apptray/AppTraySorter;->getComparatorForSortMode(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)Ljava/util/Comparator;

    move-result-object v1

    .line 170
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sonymobile/home/data/Item;>;"
    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 173
    invoke-direct {p0, v3, p1}, Lcom/sonymobile/home/apptray/AppTraySorter;->filterItemsIfNeeded(Ljava/util/List;Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)Z

    .line 175
    const/4 v2, 0x1

    .line 176
    goto :goto_0

    .line 184
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sonymobile/home/data/Item;>;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getPageFromItem(Lcom/sonymobile/home/data/Item;)I
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 307
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getIndex(J)I

    move-result v0

    .line 308
    .local v0, "index":I
    const v2, 0x7fffffff

    .line 310
    .local v2, "page":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 311
    invoke-static {}, Lcom/sonymobile/home/ui/pageview/PageLocation;->obtain()Lcom/sonymobile/home/ui/pageview/PageLocation;

    move-result-object v1

    .line 313
    .local v1, "location":Lcom/sonymobile/home/ui/pageview/PageLocation;
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    invoke-virtual {v3, v0, v1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getLocation(ILcom/sonymobile/home/ui/pageview/PageLocation;)V

    .line 315
    iget v2, v1, Lcom/sonymobile/home/ui/pageview/PageLocation;->page:I

    .line 317
    invoke-virtual {v1}, Lcom/sonymobile/home/ui/pageview/PageLocation;->recycle()V

    .line 319
    .end local v1    # "location":Lcom/sonymobile/home/ui/pageview/PageLocation;
    :cond_0
    return v2
.end method

.method public getSortMode()Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mPreferences:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->getSortMode()Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->setModelItems(Ljava/util/List;Z)V

    .line 88
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mStatisticsObserver:Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsObserver;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/statistics/StatisticsManager;->removeStatisticsObserver(Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsObserver;)V

    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public onModelChanged()V
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTraySorter;->getSortMode()Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/home/apptray/AppTraySorter;->sort(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)Z

    .line 325
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->onModelChanged()V

    .line 326
    return-void
.end method

.method public onModelItemChanged(Lcom/sonymobile/home/data/Item;)V
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 330
    sget-object v1, Lcom/sonymobile/home/apptray/AppTraySorter$2;->$SwitchMap$com$sonymobile$home$apptray$AppTrayPreferenceManager$SortMode:[I

    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTraySorter;->getSortMode()Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 345
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->onModelItemChanged(Lcom/sonymobile/home/data/Item;)V

    .line 348
    :goto_0
    return-void

    .line 335
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTraySorter;->getSortMode()Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonymobile/home/apptray/AppTraySorter;->sort(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)Z

    move-result v0

    .line 336
    .local v0, "change":Z
    if-eqz v0, :cond_0

    .line 337
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->onModelChanged()V

    goto :goto_0

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->onModelItemChanged(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onModelOrderChanged()V
    .locals 2

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTraySorter;->getSortMode()Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonymobile/home/apptray/AppTraySorter;->sort(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)Z

    move-result v0

    .line 353
    .local v0, "change":Z
    if-eqz v0, :cond_0

    .line 354
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->onModelOrderChanged()V

    .line 356
    :cond_0
    return-void
.end method

.method public setSortMode(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)V
    .locals 3
    .param p1, "sortMode"    # Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTraySorter;->getSortMode()Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    move-result-object v1

    .line 130
    .local v1, "oldSortMode":Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    if-eq p1, v1, :cond_0

    .line 131
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mPreferences:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;

    invoke-virtual {v2, p1}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->setSortMode(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)V

    .line 132
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mOwnOrderModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayModel;->storePreferencesAsync()V

    .line 134
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTraySorter;->getSortMode()Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonymobile/home/apptray/AppTraySorter;->sort(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)Z

    move-result v0

    .line 135
    .local v0, "change":Z
    if-eqz v0, :cond_0

    .line 136
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTraySorter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->onModelChanged()V

    .line 139
    .end local v0    # "change":Z
    :cond_0
    return-void
.end method
