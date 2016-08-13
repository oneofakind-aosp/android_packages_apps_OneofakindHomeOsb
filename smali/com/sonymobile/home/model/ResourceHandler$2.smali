.class Lcom/sonymobile/home/model/ResourceHandler$2;
.super Ljava/lang/Object;
.source "ResourceHandler.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceCache$IteratorAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/ResourceHandler;->releaseResources(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/ResourceHandler;

.field final synthetic val$itemsToRemove:Ljava/util/ArrayList;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/ResourceHandler;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/sonymobile/home/model/ResourceHandler$2;->this$0:Lcom/sonymobile/home/model/ResourceHandler;

    iput-object p2, p0, Lcom/sonymobile/home/model/ResourceHandler$2;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonymobile/home/model/ResourceHandler$2;->val$itemsToRemove:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeAction(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceCacheItem;)V
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "cacheItem"    # Lcom/sonymobile/home/model/ResourceCacheItem;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler$2;->val$itemsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_0
    return-void
.end method
