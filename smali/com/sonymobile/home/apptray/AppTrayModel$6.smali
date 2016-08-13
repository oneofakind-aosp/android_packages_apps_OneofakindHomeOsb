.class Lcom/sonymobile/home/apptray/AppTrayModel$6;
.super Ljava/lang/Object;
.source "AppTrayModel.java"

# interfaces
.implements Lcom/sonymobile/home/model/OnPackageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/apptray/AppTrayModel;->createOnPackageChangeListener()Lcom/sonymobile/home/model/OnPackageChangeListener;
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
    .line 363
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayModel$6;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updatePackageItems(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel$6;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$3200(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/model/PackageHandler;->getActivityItemSet(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/Set;

    move-result-object v3

    .line 422
    .local v3, "activityItemsInPackage":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/home/data/ActivityItem;>;"
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel$6;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$3300(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/model/PackageHandler;->getUnavailableApps()Ljava/util/Set;

    move-result-object v4

    .line 423
    .local v4, "unavailablePackages":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/home/model/UserPackage;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v9, "itemsRemovedFromModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel$6;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mRemoveSyncable:Lcom/sonymobile/home/model/RemoveSyncable;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$2800(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/RemoveSyncable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayModel$6;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mAddSyncable:Lcom/sonymobile/home/model/AddSyncable;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$2500(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/AddSyncable;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayModel$6;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$3400(Lcom/sonymobile/home/apptray/AppTrayModel;)Ljava/util/List;

    move-result-object v2

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v0 .. v9}, Lcom/sonymobile/home/model/SyncHelper;->syncPackageChanged(Lcom/sonymobile/home/model/RemoveSyncable;Lcom/sonymobile/home/model/AddSyncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/Collection;)Z

    move-result v10

    .line 432
    .local v10, "modelChanged":Z
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel$6;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$3500(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/ResourceHandler;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/model/ResourceHandler;->loadResources(Ljava/util/Collection;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    .line 434
    if-eqz v10, :cond_0

    .line 435
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel$6;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual {v0, v9}, Lcom/sonymobile/home/apptray/AppTrayModel;->updateModel(Ljava/util/List;)V

    .line 437
    :cond_0
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 367
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayModel$6;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$2400(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sonymobile/home/model/PackageHandler;->getActivityItemSet(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/Set;

    move-result-object v0

    .line 369
    .local v0, "activityItemsInPackage":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/home/data/ActivityItem;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 370
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayModel$6;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mAddSyncable:Lcom/sonymobile/home/model/AddSyncable;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$2500(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/AddSyncable;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel$6;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$2600(Lcom/sonymobile/home/apptray/AppTrayModel;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/sonymobile/home/model/SyncHelper;->syncPackageAdded(Lcom/sonymobile/home/model/AddSyncable;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    .line 372
    .local v1, "modelChanged":Z
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayModel$6;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$2700(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/ResourceHandler;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/model/ResourceHandler;->loadResources(Ljava/util/Collection;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    .line 374
    if-eqz v1, :cond_0

    .line 375
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayModel$6;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayModel;->updateModel()V

    .line 378
    .end local v1    # "modelChanged":Z
    :cond_0
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 382
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/apptray/AppTrayModel$6;->updatePackageItems(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 383
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel$6;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayModel;->syncBadges()V
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$1000(Lcom/sonymobile/home/apptray/AppTrayModel;)V

    .line 384
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v0, "itemsRemovedFromModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayModel$6;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mRemoveSyncable:Lcom/sonymobile/home/model/RemoveSyncable;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$2800(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/RemoveSyncable;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayModel$6;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mItems:Ljava/util/List;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$2900(Lcom/sonymobile/home/apptray/AppTrayModel;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3, p1, p2, v0}, Lcom/sonymobile/home/model/SyncHelper;->syncPackageRemoved(Lcom/sonymobile/home/model/RemoveSyncable;Ljava/util/Collection;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/Collection;)Z

    move-result v1

    .line 392
    .local v1, "modelChanged":Z
    if-eqz v1, :cond_0

    .line 393
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayModel$6;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->updateModel(Ljava/util/List;)V

    .line 396
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayModel$6;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayModel;->syncBadges()V
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$1000(Lcom/sonymobile/home/apptray/AppTrayModel;)V

    .line 397
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 406
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 407
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Lcom/sonymobile/home/apptray/AppTrayModel$6;->updatePackageItems(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayModel$6;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayModel;->notifyOnModelChanged()V
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$3100(Lcom/sonymobile/home/apptray/AppTrayModel;)V

    .line 411
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel$6;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayModel;->notifyOnModelChanged()V
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$3000(Lcom/sonymobile/home/apptray/AppTrayModel;)V

    .line 402
    return-void
.end method
