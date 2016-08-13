.class Lcom/sonymobile/home/folder/FolderManager$2;
.super Ljava/lang/Object;
.source "FolderManager.java"

# interfaces
.implements Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/folder/FolderManager;->createBadgeListener()V
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
    .line 481
    iput-object p1, p0, Lcom/sonymobile/home/folder/FolderManager$2;->this$0:Lcom/sonymobile/home/folder/FolderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBadgeChanged(Lcom/sonymobile/home/data/Item;)V
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 484
    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderManager$2;->this$0:Lcom/sonymobile/home/folder/FolderManager;

    # getter for: Lcom/sonymobile/home/folder/FolderManager;->mFolderList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v3}, Lcom/sonymobile/home/folder/FolderManager;->access$000(Lcom/sonymobile/home/folder/FolderManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 485
    .local v0, "folderEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 486
    .local v1, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 488
    .local v4, "key":J
    if-eqz v1, :cond_0

    .line 489
    monitor-enter v1

    .line 490
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderManager$2;->this$0:Lcom/sonymobile/home/folder/FolderManager;

    # invokes: Lcom/sonymobile/home/folder/FolderManager;->folderContainsBadgeItem(Ljava/util/List;Lcom/sonymobile/home/data/Item;)Z
    invoke-static {v3, v1, p1}, Lcom/sonymobile/home/folder/FolderManager;->access$500(Lcom/sonymobile/home/folder/FolderManager;Ljava/util/List;Lcom/sonymobile/home/data/Item;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 491
    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderManager$2;->this$0:Lcom/sonymobile/home/folder/FolderManager;

    # invokes: Lcom/sonymobile/home/folder/FolderManager;->notifyFolderBadgeChanged(J)V
    invoke-static {v3, v4, v5}, Lcom/sonymobile/home/folder/FolderManager;->access$600(Lcom/sonymobile/home/folder/FolderManager;J)V

    .line 493
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 496
    .end local v0    # "folderEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;"
    .end local v1    # "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .end local v4    # "key":J
    :cond_2
    return-void
.end method
