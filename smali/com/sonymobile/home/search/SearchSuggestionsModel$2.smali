.class Lcom/sonymobile/home/search/SearchSuggestionsModel$2;
.super Ljava/lang/Object;
.source "SearchSuggestionsModel.java"

# interfaces
.implements Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/SearchSuggestionsModel;->createOnPackagesLoadedListener()Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/SearchSuggestionsModel;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$2;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackagesLoaded()V
    .locals 11

    .prologue
    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 387
    .local v6, "currentTime":J
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v5, "itemsRemovedFromModel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$2;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    # invokes: Lcom/sonymobile/home/search/SearchSuggestionsModel;->updateLowestPosition()V
    invoke-static {v0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->access$400(Lcom/sonymobile/home/search/SearchSuggestionsModel;)V

    .line 390
    new-instance v1, Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;

    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$2;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;-><init>(Lcom/sonymobile/home/search/SearchSuggestionsModel;Lcom/sonymobile/home/search/SearchSuggestionsModel$1;)V

    .line 391
    .local v1, "addSyncable":Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$2;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    # getter for: Lcom/sonymobile/home/search/SearchSuggestionsModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;
    invoke-static {v0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->access$600(Lcom/sonymobile/home/search/SearchSuggestionsModel;)Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/model/PackageHandler;->getInstallTimes()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v6, v7, v0}, Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;->prepareSync(JLjava/util/Map;)V

    .line 392
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$2;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    # getter for: Lcom/sonymobile/home/search/SearchSuggestionsModel;->mRemoveSyncable:Lcom/sonymobile/home/model/RemoveSyncable;
    invoke-static {v0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->access$700(Lcom/sonymobile/home/search/SearchSuggestionsModel;)Lcom/sonymobile/home/model/RemoveSyncable;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$2;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    # getter for: Lcom/sonymobile/home/search/SearchSuggestionsModel;->mItems:Ljava/util/List;
    invoke-static {v2}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->access$800(Lcom/sonymobile/home/search/SearchSuggestionsModel;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$2;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    # getter for: Lcom/sonymobile/home/search/SearchSuggestionsModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;
    invoke-static {v3}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->access$900(Lcom/sonymobile/home/search/SearchSuggestionsModel;)Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$2;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    # getter for: Lcom/sonymobile/home/search/SearchSuggestionsModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;
    invoke-static {v4}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->access$1000(Lcom/sonymobile/home/search/SearchSuggestionsModel;)Lcom/sonymobile/home/folder/FolderManager;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/model/SyncHelper;->sync(Lcom/sonymobile/home/model/RemoveSyncable;Lcom/sonymobile/home/model/AddSyncable;Ljava/util/Collection;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Ljava/util/Collection;)Z

    move-result v9

    .line 394
    .local v9, "modelChanged":Z
    invoke-virtual {v1}, Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;->getNewItems()Ljava/util/List;

    move-result-object v10

    .line 397
    .local v10, "newItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ActivityItem;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_0

    .line 398
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$2;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/Item;

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->addItemFirst(Lcom/sonymobile/home/data/Item;)V

    .line 397
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$2;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    # invokes: Lcom/sonymobile/home/search/SearchSuggestionsModel;->trimToMaxSize()Z
    invoke-static {v0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->access$200(Lcom/sonymobile/home/search/SearchSuggestionsModel;)Z

    move-result v0

    or-int/2addr v9, v0

    .line 403
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$2;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    invoke-virtual {v0, v6, v7}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->updateLastPackageSyncTime(J)V

    .line 405
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$2;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    # invokes: Lcom/sonymobile/home/search/SearchSuggestionsModel;->setModelLoaded()V
    invoke-static {v0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->access$1100(Lcom/sonymobile/home/search/SearchSuggestionsModel;)V

    .line 407
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$2;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    # invokes: Lcom/sonymobile/home/search/SearchSuggestionsModel;->notifyOnModelChanged()V
    invoke-static {v0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->access$1200(Lcom/sonymobile/home/search/SearchSuggestionsModel;)V

    .line 409
    if-eqz v9, :cond_1

    .line 410
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$2;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    invoke-virtual {v0, v5}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->writeModelToStorage(Ljava/util/List;)V

    .line 412
    :cond_1
    return-void
.end method
