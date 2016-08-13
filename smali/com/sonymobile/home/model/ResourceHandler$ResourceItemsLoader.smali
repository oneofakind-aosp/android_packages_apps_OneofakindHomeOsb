.class Lcom/sonymobile/home/model/ResourceHandler$ResourceItemsLoader;
.super Ljava/lang/Object;
.source "ResourceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/model/ResourceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourceItemsLoader"
.end annotation


# instance fields
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonymobile/home/model/ResourceHandler;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/model/ResourceHandler;Ljava/util/List;)V
    .locals 1
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
    .line 863
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iput-object p1, p0, Lcom/sonymobile/home/model/ResourceHandler$ResourceItemsLoader;->this$0:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 864
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler$ResourceItemsLoader;->mItems:Ljava/util/ArrayList;

    .line 865
    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/home/model/ResourceHandler$ResourceItemsLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/ResourceHandler$ResourceItemsLoader;

    .prologue
    .line 853
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler$ResourceItemsLoader;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 869
    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler$ResourceItemsLoader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 870
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 872
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler$ResourceItemsLoader;->this$0:Lcom/sonymobile/home/model/ResourceHandler;

    # invokes: Lcom/sonymobile/home/model/ResourceHandler;->doLoad(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;
    invoke-static {v3, v1}, Lcom/sonymobile/home/model/ResourceHandler;->access$700(Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 873
    :catch_0
    move-exception v2

    .line 875
    .local v2, "throwable":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler$ResourceItemsLoader;->this$0:Lcom/sonymobile/home/model/ResourceHandler;

    # invokes: Lcom/sonymobile/home/model/ResourceHandler;->removePendingItem(Lcom/sonymobile/home/data/Item;)Z
    invoke-static {v3, v1}, Lcom/sonymobile/home/model/ResourceHandler;->access$800(Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/data/Item;)Z

    .line 877
    # getter for: Lcom/sonymobile/home/model/ResourceHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/home/model/ResourceHandler;->access$900()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t load item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 881
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/model/ResourceHandler$ResourceItemsLoader;->this$0:Lcom/sonymobile/home/model/ResourceHandler;

    # invokes: Lcom/sonymobile/home/model/ResourceHandler;->removePendingItem(Lcom/sonymobile/home/data/Item;)Z
    invoke-static {v3, v1}, Lcom/sonymobile/home/model/ResourceHandler;->access$800(Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/data/Item;)Z

    goto :goto_0

    .line 884
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    return-void
.end method
