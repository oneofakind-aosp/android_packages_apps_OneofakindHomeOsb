.class Lcom/sonymobile/home/model/ResourceHandler$1;
.super Ljava/lang/Object;
.source "ResourceHandler.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceCache$IteratorAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/ResourceHandler;->getResources(Ljava/util/List;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/ResourceHandler;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$resources:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/ResourceHandler;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/sonymobile/home/model/ResourceHandler$1;->this$0:Lcom/sonymobile/home/model/ResourceHandler;

    iput-object p2, p0, Lcom/sonymobile/home/model/ResourceHandler$1;->val$items:Ljava/util/List;

    iput-object p3, p0, Lcom/sonymobile/home/model/ResourceHandler$1;->val$resources:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeAction(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceCacheItem;)V
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "cacheItem"    # Lcom/sonymobile/home/model/ResourceCacheItem;

    .prologue
    .line 297
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sonymobile/home/model/ResourceHandler$1;->val$items:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/model/ResourceHandler$1;->val$items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    :cond_0
    invoke-virtual {p2}, Lcom/sonymobile/home/model/ResourceCacheItem;->getResource()Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v0

    .line 299
    .local v0, "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    if-nez v0, :cond_1

    .line 300
    iget-object v1, p0, Lcom/sonymobile/home/model/ResourceHandler$1;->this$0:Lcom/sonymobile/home/model/ResourceHandler;

    # invokes: Lcom/sonymobile/home/model/ResourceHandler;->getDefaultResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;
    invoke-static {v1, p1}, Lcom/sonymobile/home/model/ResourceHandler;->access$100(Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v0

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/model/ResourceHandler$1;->val$resources:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .end local v0    # "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    :cond_2
    return-void
.end method
