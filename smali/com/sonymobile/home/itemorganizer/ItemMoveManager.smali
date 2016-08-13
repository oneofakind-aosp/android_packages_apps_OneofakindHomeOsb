.class public abstract Lcom/sonymobile/home/itemorganizer/ItemMoveManager;
.super Ljava/lang/Object;
.source "ItemMoveManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/itemorganizer/ItemMoveManager$AutoMoveEventListener;
    }
.end annotation


# instance fields
.field protected final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/itemorganizer/ItemMoveManager$AutoMoveEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->mListeners:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public abstract cancelAutoMove()V
.end method

.method public handleItemOverflow()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public abstract hasMovedItems()Z
.end method

.method protected notifyItemsAutoMoved(Ljava/util/List;)V
    .locals 3
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
    .line 63
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/itemorganizer/ItemMoveManager$AutoMoveEventListener;

    .line 64
    .local v1, "listener":Lcom/sonymobile/home/itemorganizer/ItemMoveManager$AutoMoveEventListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager$AutoMoveEventListener;->onItemsAutoMoved(Ljava/util/List;)V

    goto :goto_0

    .line 66
    .end local v1    # "listener":Lcom/sonymobile/home/itemorganizer/ItemMoveManager$AutoMoveEventListener;
    :cond_0
    return-void
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onItemDragStarted(IIILcom/sonymobile/home/data/Item;)V
.end method

.method public abstract onItemDragged(IILcom/sonymobile/home/data/ItemLocation;I)V
.end method

.method public onItemFolderOverlapped()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public abstract onResizeFramePressed(Lcom/sonymobile/home/data/Item;I)V
.end method

.method public abstract onResizeFrameResized(Lcom/sonymobile/home/data/ItemLocation;)V
.end method

.method public registerListener(Lcom/sonymobile/home/itemorganizer/ItemMoveManager$AutoMoveEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/itemorganizer/ItemMoveManager$AutoMoveEventListener;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    return-void
.end method

.method public abstract reset()V
.end method

.method public abstract restoreLocationsIfNeeded(Z)V
.end method
