.class Lcom/sonymobile/home/model/ResourceHandler$3;
.super Ljava/lang/Object;
.source "ResourceHandler.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceCache$IteratorAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/ResourceHandler;->releaseAllResourcesForLoader(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/ResourceHandler;

.field final synthetic val$itemsToRemove:Ljava/util/ArrayList;

.field final synthetic val$loaderId:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/ResourceHandler;ILjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/sonymobile/home/model/ResourceHandler$3;->this$0:Lcom/sonymobile/home/model/ResourceHandler;

    iput p2, p0, Lcom/sonymobile/home/model/ResourceHandler$3;->val$loaderId:I

    iput-object p3, p0, Lcom/sonymobile/home/model/ResourceHandler$3;->val$itemsToRemove:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeAction(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceCacheItem;)V
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "cacheItem"    # Lcom/sonymobile/home/model/ResourceCacheItem;

    .prologue
    .line 359
    invoke-virtual {p2}, Lcom/sonymobile/home/model/ResourceCacheItem;->getLoaderId()I

    move-result v0

    iget v1, p0, Lcom/sonymobile/home/model/ResourceHandler$3;->val$loaderId:I

    if-ne v0, v1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler$3;->val$itemsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_0
    return-void
.end method
