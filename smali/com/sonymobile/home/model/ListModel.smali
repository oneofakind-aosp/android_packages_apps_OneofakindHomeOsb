.class public abstract Lcom/sonymobile/home/model/ListModel;
.super Lcom/sonymobile/home/model/Model;
.source "ListModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/model/ListModel$PackageChangeListener;
    }
.end annotation


# instance fields
.field protected final mMaxNbrOfItems:I

.field protected final mRemoveSyncable:Lcom/sonymobile/home/model/RemoveSyncable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/ItemCreator;I)V
    .locals 1
    .param p1, "pageViewName"    # Ljava/lang/String;
    .param p2, "storage"    # Lcom/sonymobile/home/storage/Storage;
    .param p3, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p4, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p5, "badgeManager"    # Lcom/sonymobile/home/badge/BadgeManager;
    .param p6, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p7, "itemCreator"    # Lcom/sonymobile/home/data/ItemCreator;
    .param p8, "maxNbrOfItems"    # I

    .prologue
    .line 53
    invoke-direct/range {p0 .. p7}, Lcom/sonymobile/home/model/Model;-><init>(Ljava/lang/String;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/ItemCreator;)V

    .line 41
    new-instance v0, Lcom/sonymobile/home/model/ListModel$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/model/ListModel$1;-><init>(Lcom/sonymobile/home/model/ListModel;)V

    iput-object v0, p0, Lcom/sonymobile/home/model/ListModel;->mRemoveSyncable:Lcom/sonymobile/home/model/RemoveSyncable;

    .line 55
    iput p8, p0, Lcom/sonymobile/home/model/ListModel;->mMaxNbrOfItems:I

    .line 56
    invoke-virtual {p0}, Lcom/sonymobile/home/model/ListModel;->createOnPackagesLoadedListener()Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/model/ListModel;->mOnPackagesLoadedListener:Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;

    .line 57
    invoke-virtual {p0}, Lcom/sonymobile/home/model/ListModel;->createOnPackageChangeListener()Lcom/sonymobile/home/model/OnPackageChangeListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/model/ListModel;->mOnPackageChangedListener:Lcom/sonymobile/home/model/OnPackageChangeListener;

    .line 58
    invoke-virtual {p0}, Lcom/sonymobile/home/model/ListModel;->createResourceLoaderCallbacks()Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/model/ListModel;->mOnResourceLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    .line 59
    return-void
.end method


# virtual methods
.method protected createOnPackageChangeListener()Lcom/sonymobile/home/model/OnPackageChangeListener;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/sonymobile/home/model/ListModel$PackageChangeListener;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/model/ListModel$PackageChangeListener;-><init>(Lcom/sonymobile/home/model/ListModel;)V

    return-object v0
.end method

.method protected createOnPackagesLoadedListener()Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/sonymobile/home/model/ListModel$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/model/ListModel$2;-><init>(Lcom/sonymobile/home/model/ListModel;)V

    return-object v0
.end method

.method protected createResourceLoaderCallbacks()Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/sonymobile/home/model/ListModel$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/model/ListModel$3;-><init>(Lcom/sonymobile/home/model/ListModel;)V

    return-object v0
.end method

.method protected doLoadModel()Ljava/util/List;
    .locals 2
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
    .line 140
    iget-object v0, p0, Lcom/sonymobile/home/model/ListModel;->mStorage:Lcom/sonymobile/home/storage/Storage;

    iget-object v1, p0, Lcom/sonymobile/home/model/ListModel;->mPageViewName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sonymobile/home/storage/Storage;->getPageViewItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected doStoreModel(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "itemsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .local p2, "itemsToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v0, p0, Lcom/sonymobile/home/model/ListModel;->mStorage:Lcom/sonymobile/home/storage/Storage;

    iget-object v1, p0, Lcom/sonymobile/home/model/ListModel;->mPageViewName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/sonymobile/home/storage/Storage;->syncPageViewItems(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 147
    return-void
.end method

.method public getMaxNumberOfItems()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/sonymobile/home/model/ListModel;->mMaxNbrOfItems:I

    return v0
.end method

.method protected isWithinBounds(Lcom/sonymobile/home/data/ItemLocation;)Z
    .locals 2
    .param p1, "location"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 117
    iget v0, p1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    iget v1, p0, Lcom/sonymobile/home/model/ListModel;->mMaxNbrOfItems:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPackageSyncItemsRemoved()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public syncItems()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "itemsRemovedFromModel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/model/ListModel;->syncItems(Ljava/util/Collection;)Z

    .line 134
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/model/ListModel;->updateModel(Ljava/util/List;)V

    .line 135
    return-void
.end method

.method protected syncItems(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "outRemovedItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    iget-object v0, p0, Lcom/sonymobile/home/model/ListModel;->mRemoveSyncable:Lcom/sonymobile/home/model/RemoveSyncable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonymobile/home/model/ListModel;->mItems:Ljava/util/List;

    iget-object v3, p0, Lcom/sonymobile/home/model/ListModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v4, p0, Lcom/sonymobile/home/model/ListModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/model/SyncHelper;->sync(Lcom/sonymobile/home/model/RemoveSyncable;Lcom/sonymobile/home/model/AddSyncable;Ljava/util/Collection;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
