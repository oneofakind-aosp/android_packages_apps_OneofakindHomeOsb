.class Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;
.super Ljava/lang/Object;
.source "DesktopModel.java"

# interfaces
.implements Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DesktopOnPackagesLoadedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopModel;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/desktop/DesktopModel;)V
    .locals 0

    .prologue
    .line 825
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/desktop/DesktopModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p2, "x1"    # Lcom/sonymobile/home/desktop/DesktopModel$1;

    .prologue
    .line 825
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;-><init>(Lcom/sonymobile/home/desktop/DesktopModel;)V

    return-void
.end method


# virtual methods
.method public onPackagesLoaded()V
    .locals 10

    .prologue
    .line 829
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 830
    .local v5, "itemsRemovedFromModel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 831
    .local v2, "notReplacableItemsRemovedFromModel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # invokes: Lcom/sonymobile/home/desktop/DesktopModel;->syncPreferences()Z
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->access$500(Lcom/sonymobile/home/desktop/DesktopModel;)Z

    move-result v8

    .line 833
    .local v8, "modelChanged":Z
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v1, v1, Lcom/sonymobile/home/desktop/DesktopModel;->mUpgradePreferences:Lcom/sonymobile/home/storage/UpgradePreferenceManager;

    invoke-virtual {v1}, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->shouldCompressDesktopItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 834
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # invokes: Lcom/sonymobile/home/desktop/DesktopModel;->removeStageItemsFromDesktop(Ljava/util/List;)Z
    invoke-static {v1, v2}, Lcom/sonymobile/home/desktop/DesktopModel;->access$600(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/List;)Z

    move-result v1

    or-int/2addr v8, v1

    .line 839
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # invokes: Lcom/sonymobile/home/desktop/DesktopModel;->compressItemsIfNeeded(Ljava/util/List;)Z
    invoke-static {v1, v2}, Lcom/sonymobile/home/desktop/DesktopModel;->access$700(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/List;)Z

    move-result v1

    or-int/2addr v8, v1

    .line 841
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1, v5}, Lcom/sonymobile/home/desktop/DesktopModel;->syncItems(Ljava/util/Collection;)Z

    move-result v1

    or-int/2addr v8, v1

    .line 843
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # invokes: Lcom/sonymobile/home/desktop/DesktopModel;->removeDuplicateWidgets(Ljava/util/Collection;)Z
    invoke-static {v1, v5}, Lcom/sonymobile/home/desktop/DesktopModel;->access$800(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/Collection;)Z

    move-result v1

    or-int/2addr v8, v1

    .line 845
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # invokes: Lcom/sonymobile/home/desktop/DesktopModel;->syncPreferences()Z
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->access$500(Lcom/sonymobile/home/desktop/DesktopModel;)Z

    move-result v1

    or-int/2addr v8, v1

    .line 847
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 850
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # invokes: Lcom/sonymobile/home/desktop/DesktopModel;->replaceItemsIfNeededAsync(Ljava/util/List;)V
    invoke-static {v1, v5}, Lcom/sonymobile/home/desktop/DesktopModel;->access$900(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/List;)V

    .line 853
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 855
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener$1;

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener$1;-><init>(Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;Ljava/util/ArrayList;)V

    .line 861
    .local v0, "notReplacableRemoveSyncable":Lcom/sonymobile/home/model/RemoveSyncable;
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopModel;->access$1000(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopModel;->access$1100(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/folder/FolderManager;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/model/SyncHelper;->sync(Lcom/sonymobile/home/model/RemoveSyncable;Lcom/sonymobile/home/model/AddSyncable;Ljava/util/Collection;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Ljava/util/Collection;)Z

    .line 866
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 869
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener$2;

    invoke-direct {v3, p0, v2}, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener$2;-><init>(Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;Ljava/util/ArrayList;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 881
    .end local v0    # "notReplacableRemoveSyncable":Lcom/sonymobile/home/model/RemoveSyncable;
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->access$1300(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/ResourceHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 882
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->access$1600(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/ResourceHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mOnResourceLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopModel;->access$1400(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopModel;->access$1500(Lcom/sonymobile/home/desktop/DesktopModel;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sonymobile/home/model/ResourceHandler;->addOnResourceLoadedCallback(Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;Landroid/os/Handler;)V

    .line 883
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # invokes: Lcom/sonymobile/home/desktop/DesktopModel;->loadAllResources()V
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->access$1700(Lcom/sonymobile/home/desktop/DesktopModel;)V

    .line 887
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->access$1800(Lcom/sonymobile/home/desktop/DesktopModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/home/data/Item;

    .line 888
    .local v7, "item":Lcom/sonymobile/home/data/Item;
    instance-of v1, v7, Lcom/sonymobile/home/data/TipItem;

    if-eqz v1, :cond_4

    move-object v9, v7

    .line 889
    check-cast v9, Lcom/sonymobile/home/data/TipItem;

    .line 890
    .local v9, "tipItem":Lcom/sonymobile/home/data/TipItem;
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mTipManager:Lcom/sonymobile/home/tip/TipManager;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->access$1900(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/tip/TipManager;

    move-result-object v1

    invoke-virtual {v9}, Lcom/sonymobile/home/data/TipItem;->getTipId()I

    move-result v3

    invoke-virtual {v1, v3, v9}, Lcom/sonymobile/home/tip/TipManager;->registerTipItem(ILcom/sonymobile/home/data/TipItem;)V

    goto :goto_0

    .line 894
    .end local v7    # "item":Lcom/sonymobile/home/data/Item;
    .end local v9    # "tipItem":Lcom/sonymobile/home/data/TipItem;
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v1, v1, Lcom/sonymobile/home/desktop/DesktopModel;->mUpgradePreferences:Lcom/sonymobile/home/storage/UpgradePreferenceManager;

    invoke-virtual {v1}, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->shouldAddSearchWidget()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 895
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->prepareForHomeV8Upgrade()V

    .line 897
    :cond_6
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # invokes: Lcom/sonymobile/home/desktop/DesktopModel;->setModelLoaded()V
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->access$2000(Lcom/sonymobile/home/desktop/DesktopModel;)V

    .line 900
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->access$2300(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/folder/FolderManager;

    move-result-object v1

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mFolderChangeListener:Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopModel;->access$2100(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/DesktopModel;->access$2200(Lcom/sonymobile/home/desktop/DesktopModel;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sonymobile/home/folder/FolderManager;->addFolderChangeListener(Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;Landroid/os/Handler;)V

    .line 902
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # invokes: Lcom/sonymobile/home/desktop/DesktopModel;->notifyOnModelChanged()V
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->access$2400(Lcom/sonymobile/home/desktop/DesktopModel;)V

    .line 904
    if-eqz v8, :cond_7

    .line 905
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1, v5}, Lcom/sonymobile/home/desktop/DesktopModel;->writeModelToStorage(Ljava/util/List;)V

    .line 907
    :cond_7
    return-void
.end method
