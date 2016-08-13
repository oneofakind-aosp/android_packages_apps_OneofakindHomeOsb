.class public Lcom/sonymobile/home/model/AddSyncableApps;
.super Ljava/lang/Object;
.source "AddSyncableApps.java"

# interfaces
.implements Lcom/sonymobile/home/model/AddSyncable;


# instance fields
.field private final mAddSyncableCallback:Lcom/sonymobile/home/model/AddSyncableCallback;

.field private final mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/model/AddSyncableCallback;)V
    .locals 0
    .param p2, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p3, "addSyncableCallback"    # Lcom/sonymobile/home/model/AddSyncableCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/folder/FolderManager;",
            "Lcom/sonymobile/home/model/AddSyncableCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sonymobile/home/model/AddSyncableApps;->mItems:Ljava/util/List;

    .line 40
    iput-object p2, p0, Lcom/sonymobile/home/model/AddSyncableApps;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    .line 41
    iput-object p3, p0, Lcom/sonymobile/home/model/AddSyncableApps;->mAddSyncableCallback:Lcom/sonymobile/home/model/AddSyncableCallback;

    .line 42
    return-void
.end method

.method private existsInFolder(Lcom/sonymobile/home/data/Item;)Z
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/sonymobile/home/model/AddSyncableApps;->getFolders()Ljava/util/List;

    move-result-object v1

    .line 83
    .local v1, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/FolderItem;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/FolderItem;

    .line 85
    .local v0, "folder":Lcom/sonymobile/home/data/FolderItem;
    iget-object v3, p0, Lcom/sonymobile/home/model/AddSyncableApps;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    invoke-virtual {v3, v0, p1}, Lcom/sonymobile/home/folder/FolderManager;->folderContainsItem(Lcom/sonymobile/home/data/FolderItem;Lcom/sonymobile/home/data/Item;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    const/4 v3, 0x1

    .line 89
    .end local v0    # "folder":Lcom/sonymobile/home/data/FolderItem;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getFolders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/FolderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/FolderItem;>;"
    iget-object v3, p0, Lcom/sonymobile/home/model/AddSyncableApps;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 67
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    instance-of v3, v2, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v3, :cond_0

    .line 68
    check-cast v2, Lcom/sonymobile/home/data/FolderItem;

    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_1
    return-object v0
.end method


# virtual methods
.method public addDuringSync(Lcom/sonymobile/home/data/Item;)Z
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 46
    instance-of v2, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v2, :cond_0

    .line 47
    new-instance v1, Lcom/sonymobile/home/data/ActivityItem;

    check-cast p1, Lcom/sonymobile/home/data/ActivityItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-direct {v1, p1}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Lcom/sonymobile/home/data/ActivityItem;)V

    .line 48
    .local v1, "itemToAdd":Lcom/sonymobile/home/data/ActivityItem;
    invoke-direct {p0, v1}, Lcom/sonymobile/home/model/AddSyncableApps;->existsInFolder(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    .line 52
    .local v0, "existsInFolder":Z
    if-nez v0, :cond_0

    .line 53
    iget-object v2, p0, Lcom/sonymobile/home/model/AddSyncableApps;->mAddSyncableCallback:Lcom/sonymobile/home/model/AddSyncableCallback;

    invoke-interface {v2, v1}, Lcom/sonymobile/home/model/AddSyncableCallback;->addItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v2

    .line 56
    .end local v0    # "existsInFolder":Z
    .end local v1    # "itemToAdd":Lcom/sonymobile/home/data/ActivityItem;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
