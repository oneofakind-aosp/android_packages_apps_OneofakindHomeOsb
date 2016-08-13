.class public abstract Lcom/sonymobile/home/stage/StageModel;
.super Lcom/sonymobile/home/model/ListModel;
.source "StageModel.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/stage/StageModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/ItemCreator;I)V
    .locals 0
    .param p1, "pageViewName"    # Ljava/lang/String;
    .param p2, "storage"    # Lcom/sonymobile/home/storage/Storage;
    .param p3, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p4, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p5, "badgeManager"    # Lcom/sonymobile/home/badge/BadgeManager;
    .param p6, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p7, "itemCreator"    # Lcom/sonymobile/home/data/ItemCreator;
    .param p8, "maxNbrOfItems"    # I

    .prologue
    .line 61
    invoke-direct/range {p0 .. p8}, Lcom/sonymobile/home/model/ListModel;-><init>(Ljava/lang/String;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/ItemCreator;I)V

    .line 63
    return-void
.end method

.method private isLocationEqual(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;)Z
    .locals 2
    .param p1, "itemLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "itemLocationToCompare"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 192
    iget v0, p1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iget v1, p2, Lcom/sonymobile/home/data/ItemLocation;->page:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    iget v1, p2, Lcom/sonymobile/home/data/ItemLocation;->position:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 158
    instance-of v0, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sonymobile/home/data/ShortcutItem;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sonymobile/home/data/FolderItem;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sonymobile/home/data/InternalFunctionItem;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addItemInNextAvailablePosition(Lcom/sonymobile/home/data/Item;)V
    .locals 5
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "attemptCounter":I
    const/4 v1, 0x0

    .line 94
    .local v1, "itemAdded":Z
    :goto_0
    iget v2, p0, Lcom/sonymobile/home/stage/StageModel;->mMaxNbrOfItems:I

    if-ge v0, v2, :cond_1

    if-nez v1, :cond_1

    .line 95
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/stage/StageModel;->addItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v1

    .line 96
    if-nez v1, :cond_0

    .line 98
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget v3, v3, Lcom/sonymobile/home/data/ItemLocation;->position:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/sonymobile/home/stage/StageModel;->mMaxNbrOfItems:I

    rem-int/2addr v3, v4

    iput v3, v2, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 100
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StageModel;->notifyOnModelOrderChanged()V

    .line 105
    if-nez v1, :cond_2

    .line 106
    sget-object v2, Lcom/sonymobile/home/stage/StageModel;->TAG:Ljava/lang/String;

    const-string v3, "Failed to add item back to stage. Item missing now!."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_2
    return-void
.end method

.method public addItemToStage(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "itemToAdd"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/stage/StageModel;->addItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    .line 137
    .local v0, "added":Z
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StageModel;->notifyOnModelChanged()V

    .line 139
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StageModel;->writeModelToStorage()V

    .line 141
    :cond_0
    return v0
.end method

.method public configureModel(Lcom/sonymobile/home/configuration/Config;Lcom/sonymobile/home/model/OnConfigCompletedCallback;)V
    .locals 4
    .param p1, "config"    # Lcom/sonymobile/home/configuration/Config;
    .param p2, "onConfigCompletedCallback"    # Lcom/sonymobile/home/model/OnConfigCompletedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 113
    instance-of v0, p1, Lcom/sonymobile/home/configuration/StageConfig;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/sonymobile/home/configuration/ConfigException;

    const-string v1, "Wrong config type"

    invoke-direct {v0, v1}, Lcom/sonymobile/home/configuration/ConfigException;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sonymobile/home/stage/StageModel;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/home/configuration/Config;->getItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/sonymobile/home/stage/StageModel;->configureModel(Ljava/util/List;Lcom/sonymobile/home/model/Model$ModelStateConfigurable;Lcom/sonymobile/home/model/OnConfigCompletedCallback;)V

    .line 118
    return-void
.end method

.method public createConfig()Lcom/sonymobile/home/configuration/Config;
    .locals 4

    .prologue
    .line 122
    new-instance v0, Lcom/sonymobile/home/configuration/StageConfig;

    iget v2, p0, Lcom/sonymobile/home/stage/StageModel;->mMaxNbrOfItems:I

    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StageModel;->getPageViewName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/sonymobile/home/configuration/StageConfig;-><init>(ILjava/lang/String;)V

    .line 123
    .local v0, "config":Lcom/sonymobile/home/configuration/StageConfig;
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StageModel;->getConfigItems()Ljava/util/List;

    move-result-object v1

    .line 124
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {v0, v1}, Lcom/sonymobile/home/configuration/StageConfig;->addItems(Ljava/util/List;)V

    .line 126
    return-object v0
.end method

.method public getItemAtLocation(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/Item;
    .locals 4
    .param p1, "itemLocation"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 146
    iget-object v3, p0, Lcom/sonymobile/home/stage/StageModel;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 147
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 148
    iget-object v3, p0, Lcom/sonymobile/home/stage/StageModel;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 149
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/sonymobile/home/stage/StageModel;->isLocationEqual(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :goto_1
    return-object v1

    .line 147
    .restart local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public abstract getMaximumMovementRange()I
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageModel;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageModel;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/sonymobile/home/stage/StageModel;->mMaxNbrOfItems:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyOrderChanged()V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StageModel;->notifyOnModelOrderChanged()V

    .line 84
    return-void
.end method

.method public packItems()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/stage/StageModel;->packItems(I)V

    .line 70
    return-void
.end method

.method public abstract packItems(I)V
.end method

.method public setResourceHandler(Lcom/sonymobile/home/model/ResourceHandler;)V
    .locals 2
    .param p1, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    iget-object v1, p0, Lcom/sonymobile/home/stage/StageModel;->mOnResourceLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/model/ResourceHandler;->removeOnResourceLoadedCallback(Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;)V

    .line 174
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StageModel;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageModel;->mOnResourceLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    iget-object v1, p0, Lcom/sonymobile/home/stage/StageModel;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/home/model/ResourceHandler;->addOnResourceLoadedCallback(Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;Landroid/os/Handler;)V

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/home/stage/StageModel;->mItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/model/ResourceHandler;->loadResources(Ljava/util/Collection;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    .line 180
    :cond_1
    iput-object p1, p0, Lcom/sonymobile/home/stage/StageModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    .line 181
    return-void
.end method
