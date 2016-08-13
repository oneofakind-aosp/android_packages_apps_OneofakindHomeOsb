.class public interface abstract Lcom/sonymobile/home/storage/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# virtual methods
.method public abstract clear(Ljava/lang/String;)V
.end method

.method public abstract deleteBadge(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
.end method

.method public abstract deleteFolderItem(Lcom/sonymobile/home/data/Item;)V
.end method

.method public abstract deletePageViewItem(Lcom/sonymobile/home/data/Item;)I
.end method

.method public abstract deleteStatistics(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public abstract deleteStatisticsItem(Lcom/sonymobile/home/statistics/StatisticsItem;)V
.end method

.method public abstract getApplicationStatistics()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/statistics/StatisticsItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBadges()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFolderItems(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/FolderItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPageViewItems(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPopularGenres()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertBadge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public abstract insertFolderItems(Lcom/sonymobile/home/data/FolderItem;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/FolderItem;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract insertPageViewItems(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract insertStatisticsItem(Lcom/sonymobile/home/statistics/StatisticsItem;)J
.end method

.method public abstract isNewDatabase()Z
.end method

.method public abstract syncPageViewItems(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
.end method

.method public abstract updateFolderItems(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract updateGenre(Ljava/lang/String;)V
.end method

.method public abstract updateItem(Lcom/sonymobile/home/data/Item;)I
.end method
