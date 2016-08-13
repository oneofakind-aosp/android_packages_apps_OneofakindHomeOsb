.class public Lcom/sonymobile/home/search/SearchSuggestionsModel;
.super Lcom/sonymobile/home/model/ListModel;
.source "SearchSuggestionsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/search/SearchSuggestionsModel$PackageChangeListener;,
        Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLastSyncTime:J

.field private mLowestPosition:I

.field private mMaxNbrOfItemsInResult:I

.field private final mMaxSuggestedItemsOffline:I

.field private final mMaxSuggestedItemsOnline:I

.field private final mPositionComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storage"    # Lcom/sonymobile/home/storage/Storage;
    .param p3, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p4, "badgeManager"    # Lcom/sonymobile/home/badge/BadgeManager;
    .param p5, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p6, "itemCreator"    # Lcom/sonymobile/home/data/ItemCreator;
    .param p7, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 121
    const-string v1, "search_suggestions"

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0038

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/home/model/ListModel;-><init>(Ljava/lang/String;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/ItemCreator;I)V

    .line 58
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mLowestPosition:I

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mLastSyncTime:J

    .line 66
    new-instance v0, Lcom/sonymobile/home/search/SearchSuggestionsModel$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/search/SearchSuggestionsModel$1;-><init>(Lcom/sonymobile/home/search/SearchSuggestionsModel;)V

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mPositionComparator:Ljava/util/Comparator;

    .line 125
    iput-object p1, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 127
    .local v9, "resources":Landroid/content/res/Resources;
    const v0, 0x7f0d0015

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mMaxSuggestedItemsOffline:I

    .line 129
    const v0, 0x7f0d0016

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mMaxSuggestedItemsOnline:I

    .line 131
    invoke-virtual/range {p7 .. p7}, Lcom/sonymobile/home/settings/UserSettings;->isOnlineSuggestionsEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->getMaxNbrOfItemsInResult(Z)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mMaxNbrOfItemsInResult:I

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/search/SearchSuggestionsModel;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchSuggestionsModel;

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mLastSyncTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/search/SearchSuggestionsModel;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchSuggestionsModel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/UserHandle;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->addActivityItems(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/search/SearchSuggestionsModel;)Lcom/sonymobile/home/folder/FolderManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchSuggestionsModel;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonymobile/home/search/SearchSuggestionsModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchSuggestionsModel;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->setModelLoaded()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonymobile/home/search/SearchSuggestionsModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchSuggestionsModel;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->notifyOnModelChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/home/search/SearchSuggestionsModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchSuggestionsModel;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->trimToMaxSize()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/search/SearchSuggestionsModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchSuggestionsModel;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->updateLowestPosition()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/home/search/SearchSuggestionsModel;)Lcom/sonymobile/home/model/PackageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchSuggestionsModel;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/home/search/SearchSuggestionsModel;)Lcom/sonymobile/home/model/RemoveSyncable;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchSuggestionsModel;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mRemoveSyncable:Lcom/sonymobile/home/model/RemoveSyncable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/home/search/SearchSuggestionsModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchSuggestionsModel;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/home/search/SearchSuggestionsModel;)Lcom/sonymobile/home/model/PackageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchSuggestionsModel;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    return-object v0
.end method

.method private addActivityItems(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 365
    const/4 v3, 0x0

    .line 366
    .local v3, "itemsAdded":Z
    iget-object v4, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v4, p1, p2}, Lcom/sonymobile/home/model/PackageHandler;->getActivityItemSet(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/Set;

    move-result-object v2

    .line 367
    .local v2, "items":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/home/data/ActivityItem;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/ActivityItem;

    .line 368
    .local v1, "item":Lcom/sonymobile/home/data/ActivityItem;
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->addItemFirst(Lcom/sonymobile/home/data/Item;)V

    .line 369
    const/4 v3, 0x1

    .line 370
    goto :goto_0

    .line 372
    .end local v1    # "item":Lcom/sonymobile/home/data/ActivityItem;
    :cond_0
    return v3
.end method

.method private getMaxNbrOfItemsInResult(Z)I
    .locals 1
    .param p1, "onlineSuggestionsOn"    # Z

    .prologue
    .line 135
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mMaxSuggestedItemsOnline:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mMaxSuggestedItemsOffline:I

    goto :goto_0
.end method

.method private isItemAvailable(Lcom/sonymobile/home/data/Item;)Z
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/model/PackageHandler;->isPackageUnavailable(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readLastSyncTime()V
    .locals 4

    .prologue
    .line 330
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mContext:Landroid/content/Context;

    const-string v2, "search_suggestions_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 332
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "last_sync_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mLastSyncTime:J

    .line 333
    return-void
.end method

.method private trimItemList()V
    .locals 2

    .prologue
    .line 305
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mMaxNbrOfItems:I

    if-le v0, v1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 308
    :cond_0
    return-void
.end method

.method private trimToMaxSize()Z
    .locals 3

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "itemsRemoved":Z
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mMaxNbrOfItems:I

    if-le v1, v2, :cond_0

    .line 293
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mItems:Ljava/util/List;

    iget-object v2, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mPositionComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 294
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->trimItemList()V

    .line 295
    const/4 v0, 0x1

    .line 298
    :cond_0
    return v0
.end method

.method private updateItemPositions()V
    .locals 7

    .prologue
    .line 281
    iget-object v5, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mItems:Ljava/util/List;

    iget-object v6, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mPositionComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 282
    const/4 v3, 0x0

    .line 283
    .local v3, "position":I
    iget-object v5, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 284
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    .line 285
    .local v2, "location":Lcom/sonymobile/home/data/ItemLocation;
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "position":I
    .local v4, "position":I
    iput v3, v2, Lcom/sonymobile/home/data/ItemLocation;->position:I

    move v3, v4

    .line 286
    .end local v4    # "position":I
    .restart local v3    # "position":I
    goto :goto_0

    .line 287
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    .end local v2    # "location":Lcom/sonymobile/home/data/ItemLocation;
    :cond_0
    const/4 v5, 0x0

    iput v5, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mLowestPosition:I

    .line 288
    return-void
.end method

.method private updateLowestPosition()V
    .locals 4

    .prologue
    .line 231
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    .line 232
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget v2, v3, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 233
    .local v2, "position":I
    iget v3, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mLowestPosition:I

    if-ge v2, v3, :cond_0

    .line 234
    iput v2, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mLowestPosition:I

    goto :goto_0

    .line 237
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    .end local v2    # "position":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 3
    .param p1, "itemToAdd"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 153
    instance-of v1, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mMaxNbrOfItems:I

    if-ge v1, v2, :cond_2

    .line 160
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 161
    .local v0, "i":I
    if-ltz v0, :cond_1

    .line 162
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    iget v2, v2, Lcom/sonymobile/home/data/ItemLocation;->position:I

    iput v2, v1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 168
    :goto_0
    const/4 v1, 0x1

    .line 171
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 164
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    .end local v0    # "i":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public addItemFirst(Lcom/sonymobile/home/data/Item;)V
    .locals 5
    .param p1, "itemToAdd"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 180
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 181
    .local v0, "i":I
    const/4 v1, 0x0

    .line 183
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    if-ltz v0, :cond_2

    .line 184
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 197
    .end local p1    # "itemToAdd":Lcom/sonymobile/home/data/Item;
    .restart local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 198
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    .line 199
    .local v2, "location":Lcom/sonymobile/home/data/ItemLocation;
    if-nez v2, :cond_5

    .line 200
    new-instance v2, Lcom/sonymobile/home/data/ItemLocation;

    .end local v2    # "location":Lcom/sonymobile/home/data/ItemLocation;
    const/4 v3, 0x0

    iget v4, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mLowestPosition:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mLowestPosition:I

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    .line 201
    .restart local v2    # "location":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {v1, v2}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 206
    .end local v2    # "location":Lcom/sonymobile/home/data/ItemLocation;
    :cond_1
    :goto_1
    return-void

    .line 186
    .restart local p1    # "itemToAdd":Lcom/sonymobile/home/data/Item;
    :cond_2
    instance-of v3, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v3, :cond_4

    .line 187
    new-instance v1, Lcom/sonymobile/home/data/ActivityItem;

    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    check-cast p1, Lcom/sonymobile/home/data/ActivityItem;

    .end local p1    # "itemToAdd":Lcom/sonymobile/home/data/Item;
    invoke-direct {v1, p1}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Lcom/sonymobile/home/data/ActivityItem;)V

    .line 191
    .restart local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_3
    :goto_2
    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->getPageViewName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 193
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    .restart local p1    # "itemToAdd":Lcom/sonymobile/home/data/Item;
    :cond_4
    instance-of v3, p1, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v3, :cond_3

    .line 189
    new-instance v1, Lcom/sonymobile/home/data/ShortcutItem;

    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    check-cast p1, Lcom/sonymobile/home/data/ShortcutItem;

    .end local p1    # "itemToAdd":Lcom/sonymobile/home/data/Item;
    invoke-direct {v1, p1}, Lcom/sonymobile/home/data/ShortcutItem;-><init>(Lcom/sonymobile/home/data/ShortcutItem;)V

    .restart local v1    # "item":Lcom/sonymobile/home/data/Item;
    goto :goto_2

    .line 203
    .restart local v2    # "location":Lcom/sonymobile/home/data/ItemLocation;
    :cond_5
    iget v3, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mLowestPosition:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mLowestPosition:I

    iput v3, v2, Lcom/sonymobile/home/data/ItemLocation;->position:I

    goto :goto_1
.end method

.method public configureModel(Lcom/sonymobile/home/configuration/Config;Lcom/sonymobile/home/model/OnConfigCompletedCallback;)V
    .locals 2
    .param p1, "config"    # Lcom/sonymobile/home/configuration/Config;
    .param p2, "onConfigCompletedCallback"    # Lcom/sonymobile/home/model/OnConfigCompletedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not a configurable model."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createOnPackageChangeListener()Lcom/sonymobile/home/model/OnPackageChangeListener;
    .locals 2

    .prologue
    .line 377
    new-instance v0, Lcom/sonymobile/home/search/SearchSuggestionsModel$PackageChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/home/search/SearchSuggestionsModel$PackageChangeListener;-><init>(Lcom/sonymobile/home/search/SearchSuggestionsModel;Lcom/sonymobile/home/search/SearchSuggestionsModel$1;)V

    return-object v0
.end method

.method protected createOnPackagesLoadedListener()Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;
    .locals 1

    .prologue
    .line 382
    new-instance v0, Lcom/sonymobile/home/search/SearchSuggestionsModel$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/search/SearchSuggestionsModel$2;-><init>(Lcom/sonymobile/home/search/SearchSuggestionsModel;)V

    return-object v0
.end method

.method protected doLoadModel()Ljava/util/List;
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
    .line 323
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->readLastSyncTime()V

    .line 325
    invoke-super {p0}, Lcom/sonymobile/home/model/ListModel;->doLoadModel()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableItems()Ljava/util/List;
    .locals 5
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
    .line 248
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 249
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->updateItemPositions()V

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    iget v3, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mMaxNbrOfItemsInResult:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    .local v0, "availableItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 254
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    invoke-direct {p0, v2}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->isItemAvailable(Lcom/sonymobile/home/data/Item;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mMaxNbrOfItemsInResult:I

    if-lt v3, v4, :cond_0

    .line 262
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    :goto_0
    return-object v0

    .line 260
    .end local v0    # "availableItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .restart local v0    # "availableItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    goto :goto_0
.end method

.method public notifyAppLaunched(Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->addItemFirst(Lcom/sonymobile/home/data/Item;)V

    .line 216
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->trimToMaxSize()Z

    .line 217
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->writeModelToStorage()V

    .line 218
    return-void
.end method

.method public removeItemWithId(J)Lcom/sonymobile/home/data/Item;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 222
    invoke-super {p0, p1, p2}, Lcom/sonymobile/home/model/ListModel;->removeItemWithId(J)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 223
    .local v0, "removedItem":Lcom/sonymobile/home/data/Item;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    iget v1, v1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    iget v2, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mLowestPosition:I

    if-gt v1, v2, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->updateLowestPosition()V

    .line 227
    :cond_0
    return-object v0
.end method

.method public removeNonSearchableShortcutItems()V
    .locals 4

    .prologue
    .line 267
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 268
    .local v2, "oldSize":I
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "itemIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/Item;

    .line 270
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    instance-of v3, v0, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/sonymobile/home/search/SearchAdapterHelper;->containsItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 271
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 275
    .end local v0    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 276
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->writeModelToStorage()V

    .line 278
    :cond_2
    return-void
.end method

.method public setOnlineSuggestionsEnabled(Z)V
    .locals 2
    .param p1, "enableOnlineSuggestions"    # Z

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->getMaxNbrOfItemsInResult(Z)I

    move-result v0

    .line 423
    .local v0, "maxNbrOfItems":I
    iget v1, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mMaxNbrOfItemsInResult:I

    if-eq v1, v0, :cond_0

    .line 424
    iput v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mMaxNbrOfItemsInResult:I

    .line 425
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->notifyOnModelChanged()V

    .line 427
    :cond_0
    return-void
.end method

.method updateLastPackageSyncTime(J)V
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 337
    iput-wide p1, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mLastSyncTime:J

    .line 339
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mContext:Landroid/content/Context;

    const-string v3, "search_suggestions_preferences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 341
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 342
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_sync_time"

    iget-wide v4, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel;->mLastSyncTime:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 343
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 344
    return-void
.end method
