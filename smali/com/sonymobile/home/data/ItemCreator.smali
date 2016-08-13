.class public interface abstract Lcom/sonymobile/home/data/ItemCreator;
.super Ljava/lang/Object;
.source "ItemCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/data/ItemCreator$ResultListener;
    }
.end annotation


# virtual methods
.method public abstract addItemToFolder(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z
.end method

.method public abstract copy(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z
.end method

.method public abstract create(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z
.end method

.method public abstract createFolder(Ljava/util/List;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/data/ItemCreator$ResultListener;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract createItem(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/data/Item;
.end method

.method public abstract createItemsSync(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end method

.method public abstract destroyItem(Lcom/sonymobile/home/data/Item;)V
.end method
