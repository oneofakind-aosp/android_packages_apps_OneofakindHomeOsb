.class Lcom/sonymobile/home/desktop/DesktopModel$6;
.super Ljava/lang/Object;
.source "DesktopModel.java"

# interfaces
.implements Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopModel;->replaceItemsIfNeededAsync(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopModel;

.field final synthetic val$replacementManager:Lcom/sonymobile/home/desktop/DesktopReplacementManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/desktop/DesktopReplacementManager;)V
    .locals 0

    .prologue
    .line 975
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopModel$6;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    iput-object p2, p0, Lcom/sonymobile/home/desktop/DesktopModel$6;->val$replacementManager:Lcom/sonymobile/home/desktop/DesktopReplacementManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReplacingItemsFound(Ljava/util/List;)V
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
    .line 979
    .local p1, "replacingItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$6;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mIsDestroyed:Z
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->access$2500(Lcom/sonymobile/home/desktop/DesktopModel;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 980
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$6;->val$replacementManager:Lcom/sonymobile/home/desktop/DesktopReplacementManager;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->unregisterItems(Ljava/util/List;)V

    .line 998
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$6;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->addItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 985
    .local v0, "notAddedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 986
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 987
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$6;->val$replacementManager:Lcom/sonymobile/home/desktop/DesktopReplacementManager;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->unregisterItems(Ljava/util/List;)V

    .line 990
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 991
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$6;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->access$2600(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/ResourceHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 992
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$6;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->access$2700(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/ResourceHandler;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/model/ResourceHandler;->loadResources(Ljava/util/Collection;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    .line 995
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$6;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # invokes: Lcom/sonymobile/home/desktop/DesktopModel;->notifyOnModelChanged()V
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->access$2800(Lcom/sonymobile/home/desktop/DesktopModel;)V

    .line 996
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$6;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->writeModelToStorage()V

    goto :goto_0
.end method
