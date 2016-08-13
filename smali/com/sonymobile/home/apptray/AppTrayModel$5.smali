.class Lcom/sonymobile/home/apptray/AppTrayModel$5;
.super Ljava/lang/Object;
.source "AppTrayModel.java"

# interfaces
.implements Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/apptray/AppTrayModel;->createOnPackagesLoadedListener()Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTrayModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTrayModel;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackagesLoaded()V
    .locals 7

    .prologue
    .line 323
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$800(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/model/PackageHandler;->isSafeMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 324
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$900(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/statistics/StatisticsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/statistics/StatisticsManager;->syncStatisticsData()V

    .line 325
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayModel;->syncBadges()V
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$1000(Lcom/sonymobile/home/apptray/AppTrayModel;)V

    .line 329
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v1, "itemsRemovedFromModel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual {v3, v1}, Lcom/sonymobile/home/apptray/AppTrayModel;->syncItems(Ljava/util/Collection;)Z

    move-result v2

    .line 331
    .local v2, "modelChanged":Z
    new-instance v0, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$1100(Lcom/sonymobile/home/apptray/AppTrayModel;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 335
    .local v0, "allItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/home/data/Item;>;"
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$1200(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/model/PackageHandler;->getActivityItemSet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 337
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mNeedsResourceUpdate:Z
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$700(Lcom/sonymobile/home/apptray/AppTrayModel;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 338
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    const/4 v4, 0x0

    # setter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mNeedsResourceUpdate:Z
    invoke-static {v3, v4}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$702(Lcom/sonymobile/home/apptray/AppTrayModel;Z)Z

    .line 339
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$1500(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/ResourceHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mOnResourceBatchLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;
    invoke-static {v5}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$1300(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$1400(Lcom/sonymobile/home/apptray/AppTrayModel;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Lcom/sonymobile/home/model/ResourceHandler;->updateResources(Ljava/util/Collection;Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;Landroid/os/Handler;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    move-result-object v4

    # setter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mPendingLoadRequest:Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;
    invoke-static {v3, v4}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$602(Lcom/sonymobile/home/apptray/AppTrayModel;Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    .line 346
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$1800(Lcom/sonymobile/home/apptray/AppTrayModel;)Ljava/util/List;

    move-result-object v4

    # invokes: Lcom/sonymobile/home/apptray/AppTrayModel;->removeGapsAndEmptyPages(Ljava/util/List;)Z
    invoke-static {v3, v4}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$1900(Lcom/sonymobile/home/apptray/AppTrayModel;Ljava/util/List;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 349
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayModel;->setModelLoaded()V
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$2000(Lcom/sonymobile/home/apptray/AppTrayModel;)V

    .line 352
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$2300(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/folder/FolderManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mFolderChangeListener:Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$2100(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$2200(Lcom/sonymobile/home/apptray/AppTrayModel;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/home/folder/FolderManager;->addFolderChangeListener(Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;Landroid/os/Handler;)V

    .line 354
    if-eqz v2, :cond_1

    .line 355
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual {v3, v1}, Lcom/sonymobile/home/apptray/AppTrayModel;->writeModelToStorage(Ljava/util/List;)V

    .line 357
    :cond_1
    return-void

    .line 342
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$1700(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/ResourceHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mOnResourceBatchLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;
    invoke-static {v5}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$1300(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/home/apptray/AppTrayModel$5;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$1600(Lcom/sonymobile/home/apptray/AppTrayModel;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Lcom/sonymobile/home/model/ResourceHandler;->loadResources(Ljava/util/Collection;Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;Landroid/os/Handler;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    move-result-object v4

    # setter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mPendingLoadRequest:Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;
    invoke-static {v3, v4}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$602(Lcom/sonymobile/home/apptray/AppTrayModel;Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    goto :goto_0
.end method
