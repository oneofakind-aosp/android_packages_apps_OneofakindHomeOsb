.class public Lcom/sonymobile/home/folder/OpenFolderModel;
.super Lcom/sonymobile/home/model/Model;
.source "OpenFolderModel.java"


# instance fields
.field private mClosedFolderItem:Lcom/sonymobile/home/data/FolderItem;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/ItemCreator;)V
    .locals 8
    .param p1, "storage"    # Lcom/sonymobile/home/storage/Storage;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p3, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p4, "badgeManager"    # Lcom/sonymobile/home/badge/BadgeManager;
    .param p5, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p6, "itemCreator"    # Lcom/sonymobile/home/data/ItemCreator;

    .prologue
    .line 49
    const-string v1, "open_folder"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/home/model/Model;-><init>(Ljava/lang/String;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/ItemCreator;)V

    .line 52
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderModel;->createResourceLoaderCallbacks()Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mOnResourceLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/folder/OpenFolderModel;Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderModel;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/folder/OpenFolderModel;->notifyOnModelItemChanged(Lcom/sonymobile/home/data/Item;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/folder/OpenFolderModel;)Lcom/sonymobile/home/data/FolderItem;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderModel;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mClosedFolderItem:Lcom/sonymobile/home/data/FolderItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/folder/OpenFolderModel;)Lcom/sonymobile/home/folder/FolderManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderModel;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/folder/OpenFolderModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderModel;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/folder/OpenFolderModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderModel;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/folder/OpenFolderModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderModel;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderModel;->notifyOnModelChanged()V

    return-void
.end method


# virtual methods
.method public addFolderChangeListener(Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/folder/FolderManager;->addFolderChangeListener(Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;Landroid/os/Handler;)V

    .line 76
    return-void
.end method

.method public configureModel(Lcom/sonymobile/home/configuration/Config;Lcom/sonymobile/home/model/OnConfigCompletedCallback;)V
    .locals 0
    .param p1, "config"    # Lcom/sonymobile/home/configuration/Config;
    .param p2, "onConfigCompletedCallback"    # Lcom/sonymobile/home/model/OnConfigCompletedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 233
    return-void
.end method

.method protected createFolderChangeListener()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/sonymobile/home/folder/OpenFolderModel$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/folder/OpenFolderModel$2;-><init>(Lcom/sonymobile/home/folder/OpenFolderModel;)V

    iput-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mFolderChangeListener:Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;

    .line 155
    return-void
.end method

.method protected createOnPackageChangeListener()Lcom/sonymobile/home/model/OnPackageChangeListener;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createOnPackagesLoadedListener()Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createResourceLoaderCallbacks()Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/sonymobile/home/folder/OpenFolderModel$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/folder/OpenFolderModel$1;-><init>(Lcom/sonymobile/home/folder/OpenFolderModel;)V

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
    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doStoreModel(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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
    .line 228
    .local p1, "itemsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .local p2, "itemsToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    return-void
.end method

.method public getClosedFolderItem()Lcom/sonymobile/home/data/FolderItem;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mClosedFolderItem:Lcom/sonymobile/home/data/FolderItem;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mClosedFolderItem:Lcom/sonymobile/home/data/FolderItem;

    invoke-virtual {v0}, Lcom/sonymobile/home/data/FolderItem;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResource(I)Lcom/sonymobile/home/model/ResourceItem;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 175
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/Item;

    .line 176
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    if-eqz v0, :cond_0

    .line 177
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/model/ResourceHandler;->getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v1

    .line 180
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/model/ResourceHandler;->getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v0

    return-object v0
.end method

.method public hasResource(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/model/ResourceHandler;->hasResource(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    return v0
.end method

.method protected isWithinBounds(Lcom/sonymobile/home/data/ItemLocation;)Z
    .locals 1
    .param p1, "location"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method public load()V
    .locals 3

    .prologue
    .line 161
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mClosedFolderItem:Lcom/sonymobile/home/data/FolderItem;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/folder/FolderManager;->getFolderItems(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;

    move-result-object v0

    .line 163
    .local v0, "mFolderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 165
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderModel;->setModelLoaded()V

    .line 170
    :cond_0
    return-void
.end method

.method public load(Lcom/sonymobile/home/data/FolderItem;)V
    .locals 3
    .param p1, "folderItem"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mClosedFolderItem:Lcom/sonymobile/home/data/FolderItem;

    .line 60
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderModel;->load()V

    .line 61
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mOnResourceLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/model/ResourceHandler;->addOnResourceLoadedCallback(Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;Landroid/os/Handler;)V

    .line 62
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mFolderChangeListener:Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;

    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/folder/FolderManager;->addFolderChangeListener(Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;Landroid/os/Handler;)V

    .line 63
    return-void
.end method

.method public removeFolderChangeListener(Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/folder/FolderManager;->removeFolderChangeListener(Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;)V

    .line 80
    return-void
.end method

.method public removeItemWithId(J)Lcom/sonymobile/home/data/Item;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 248
    invoke-super {p0, p1, p2}, Lcom/sonymobile/home/model/Model;->removeItemWithId(J)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 249
    .local v0, "removedItem":Lcom/sonymobile/home/data/Item;
    if-eqz v0, :cond_0

    .line 250
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mClosedFolderItem:Lcom/sonymobile/home/data/FolderItem;

    invoke-virtual {v1, v2, p1, p2}, Lcom/sonymobile/home/folder/FolderManager;->removeFolderItem(Lcom/sonymobile/home/data/FolderItem;J)V

    .line 251
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderModel;->notifyOnModelChanged()V

    .line 253
    :cond_0
    return-object v0
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 2
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mClosedFolderItem:Lcom/sonymobile/home/data/FolderItem;

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/home/folder/FolderManager;->setFolderName(Lcom/sonymobile/home/data/FolderItem;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method protected syncItems(Ljava/util/Collection;)Z
    .locals 1
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
    .line 207
    .local p1, "outRemovedItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public unload()V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderModel;->setModelUnloaded()V

    .line 70
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mOnResourceLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/model/ResourceHandler;->removeOnResourceLoadedCallback(Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;)V

    .line 71
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mFolderChangeListener:Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/FolderManager;->removeFolderChangeListener(Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;)V

    .line 72
    return-void
.end method

.method public updateModelAndItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 242
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderModel;->mClosedFolderItem:Lcom/sonymobile/home/data/FolderItem;

    invoke-virtual {v1}, Lcom/sonymobile/home/data/FolderItem;->getUniqueId()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/sonymobile/home/folder/FolderManager;->writeModelToStorage(JLjava/util/List;Ljava/util/List;)V

    .line 244
    return-void
.end method
