.class Lcom/sonymobile/home/folder/FolderManager$1;
.super Ljava/lang/Object;
.source "FolderManager.java"

# interfaces
.implements Lcom/sonymobile/home/model/OnPackageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/folder/FolderManager;-><init>(Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/flix/util/Worker;Lcom/sonymobile/home/badge/BadgeManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/FolderManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/folder/FolderManager;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sonymobile/home/folder/FolderManager$1;->this$0:Lcom/sonymobile/home/folder/FolderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleAvailabilityChange(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 164
    iget-object v5, p0, Lcom/sonymobile/home/folder/FolderManager$1;->this$0:Lcom/sonymobile/home/folder/FolderManager;

    # getter for: Lcom/sonymobile/home/folder/FolderManager;->mFolderList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v5}, Lcom/sonymobile/home/folder/FolderManager;->access$000(Lcom/sonymobile/home/folder/FolderManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 165
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 166
    .local v2, "folderId":J
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 168
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    monitor-enter v4

    .line 169
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/home/folder/FolderManager$1;->this$0:Lcom/sonymobile/home/folder/FolderManager;

    # invokes: Lcom/sonymobile/home/folder/FolderManager;->containsPackage(Ljava/lang/String;Ljava/util/List;)Z
    invoke-static {v5, p1, v4}, Lcom/sonymobile/home/folder/FolderManager;->access$300(Lcom/sonymobile/home/folder/FolderManager;Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 170
    iget-object v5, p0, Lcom/sonymobile/home/folder/FolderManager$1;->this$0:Lcom/sonymobile/home/folder/FolderManager;

    # invokes: Lcom/sonymobile/home/folder/FolderManager;->notifyFolderChanged(J)V
    invoke-static {v5, v2, v3}, Lcom/sonymobile/home/folder/FolderManager;->access$400(Lcom/sonymobile/home/folder/FolderManager;J)V

    .line 172
    :cond_0
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 174
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;"
    .end local v2    # "folderId":J
    .end local v4    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 147
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 136
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderManager$1;->this$0:Lcom/sonymobile/home/folder/FolderManager;

    # getter for: Lcom/sonymobile/home/folder/FolderManager;->mFolderList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lcom/sonymobile/home/folder/FolderManager;->access$000(Lcom/sonymobile/home/folder/FolderManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 137
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 138
    .local v2, "folderId":J
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 140
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderManager$1;->this$0:Lcom/sonymobile/home/folder/FolderManager;

    move-object v5, p1

    move-object v6, p2

    # invokes: Lcom/sonymobile/home/folder/FolderManager;->syncFolderItemsPackageChanged(JLjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;)V
    invoke-static/range {v1 .. v6}, Lcom/sonymobile/home/folder/FolderManager;->access$200(Lcom/sonymobile/home/folder/FolderManager;JLjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 142
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;"
    .end local v2    # "folderId":J
    .end local v4    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 127
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderManager$1;->this$0:Lcom/sonymobile/home/folder/FolderManager;

    # getter for: Lcom/sonymobile/home/folder/FolderManager;->mFolderList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lcom/sonymobile/home/folder/FolderManager;->access$000(Lcom/sonymobile/home/folder/FolderManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 128
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 129
    .local v2, "folderId":J
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 130
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderManager$1;->this$0:Lcom/sonymobile/home/folder/FolderManager;

    move-object v5, p1

    move-object v6, p2

    # invokes: Lcom/sonymobile/home/folder/FolderManager;->syncFolderItemsPackageRemoved(JLjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;)V
    invoke-static/range {v1 .. v6}, Lcom/sonymobile/home/folder/FolderManager;->access$100(Lcom/sonymobile/home/folder/FolderManager;JLjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 132
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;"
    .end local v2    # "folderId":J
    .end local v4    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 158
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 159
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Lcom/sonymobile/home/folder/FolderManager$1;->handleAvailabilityChange(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 151
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 152
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Lcom/sonymobile/home/folder/FolderManager$1;->handleAvailabilityChange(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method
