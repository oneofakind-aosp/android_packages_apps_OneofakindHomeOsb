.class public Lcom/sonymobile/home/model/ListModel$PackageChangeListener;
.super Ljava/lang/Object;
.source "ListModel.java"

# interfaces
.implements Lcom/sonymobile/home/model/OnPackageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/model/ListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PackageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/ListModel;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/home/model/ListModel;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sonymobile/home/model/ListModel$PackageChangeListener;->this$0:Lcom/sonymobile/home/model/ListModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 200
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonymobile/home/model/ListModel$PackageChangeListener;->this$0:Lcom/sonymobile/home/model/ListModel;

    iget-object v0, v0, Lcom/sonymobile/home/model/ListModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/model/PackageHandler;->getActivityItemSet(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/Set;

    move-result-object v3

    .line 180
    .local v3, "activityItemsInPackage":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/home/data/ActivityItem;>;"
    iget-object v0, p0, Lcom/sonymobile/home/model/ListModel$PackageChangeListener;->this$0:Lcom/sonymobile/home/model/ListModel;

    iget-object v0, v0, Lcom/sonymobile/home/model/ListModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v0}, Lcom/sonymobile/home/model/PackageHandler;->getUnavailableApps()Ljava/util/Set;

    move-result-object v4

    .line 182
    .local v4, "unavailablePackages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/model/UserPackage;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v9, "itemsRemovedFromModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v0, p0, Lcom/sonymobile/home/model/ListModel$PackageChangeListener;->this$0:Lcom/sonymobile/home/model/ListModel;

    iget-object v0, v0, Lcom/sonymobile/home/model/ListModel;->mRemoveSyncable:Lcom/sonymobile/home/model/RemoveSyncable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonymobile/home/model/ListModel$PackageChangeListener;->this$0:Lcom/sonymobile/home/model/ListModel;

    iget-object v2, v2, Lcom/sonymobile/home/model/ListModel;->mItems:Ljava/util/List;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v0 .. v9}, Lcom/sonymobile/home/model/SyncHelper;->syncPackageChanged(Lcom/sonymobile/home/model/RemoveSyncable;Lcom/sonymobile/home/model/AddSyncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/Collection;)Z

    move-result v10

    .line 191
    .local v10, "modelChanged":Z
    iget-object v0, p0, Lcom/sonymobile/home/model/ListModel$PackageChangeListener;->this$0:Lcom/sonymobile/home/model/ListModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/model/ListModel;->notifyOnModelChanged()V

    .line 192
    if-eqz v10, :cond_0

    .line 193
    iget-object v0, p0, Lcom/sonymobile/home/model/ListModel$PackageChangeListener;->this$0:Lcom/sonymobile/home/model/ListModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/model/ListModel;->onPackageSyncItemsRemoved()V

    .line 194
    iget-object v0, p0, Lcom/sonymobile/home/model/ListModel$PackageChangeListener;->this$0:Lcom/sonymobile/home/model/ListModel;

    invoke-virtual {v0, v9}, Lcom/sonymobile/home/model/ListModel;->writeModelToStorage(Ljava/util/List;)V

    .line 196
    :cond_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "itemsRemovedFromModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v2, p0, Lcom/sonymobile/home/model/ListModel$PackageChangeListener;->this$0:Lcom/sonymobile/home/model/ListModel;

    iget-object v2, v2, Lcom/sonymobile/home/model/ListModel;->mRemoveSyncable:Lcom/sonymobile/home/model/RemoveSyncable;

    iget-object v3, p0, Lcom/sonymobile/home/model/ListModel$PackageChangeListener;->this$0:Lcom/sonymobile/home/model/ListModel;

    iget-object v3, v3, Lcom/sonymobile/home/model/ListModel;->mItems:Ljava/util/List;

    invoke-static {v2, v3, p1, p2, v0}, Lcom/sonymobile/home/model/SyncHelper;->syncPackageRemoved(Lcom/sonymobile/home/model/RemoveSyncable;Ljava/util/Collection;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/Collection;)Z

    move-result v1

    .line 169
    .local v1, "modelChanged":Z
    if-eqz v1, :cond_0

    .line 170
    iget-object v2, p0, Lcom/sonymobile/home/model/ListModel$PackageChangeListener;->this$0:Lcom/sonymobile/home/model/ListModel;

    invoke-virtual {v2}, Lcom/sonymobile/home/model/ListModel;->onPackageSyncItemsRemoved()V

    .line 171
    iget-object v2, p0, Lcom/sonymobile/home/model/ListModel$PackageChangeListener;->this$0:Lcom/sonymobile/home/model/ListModel;

    invoke-virtual {v2}, Lcom/sonymobile/home/model/ListModel;->notifyOnModelChanged()V

    .line 172
    iget-object v2, p0, Lcom/sonymobile/home/model/ListModel$PackageChangeListener;->this$0:Lcom/sonymobile/home/model/ListModel;

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/model/ListModel;->writeModelToStorage(Ljava/util/List;)V

    .line 174
    :cond_0
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonymobile/home/model/ListModel$PackageChangeListener;->this$0:Lcom/sonymobile/home/model/ListModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/model/ListModel;->notifyOnModelChanged()V

    .line 210
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sonymobile/home/model/ListModel$PackageChangeListener;->this$0:Lcom/sonymobile/home/model/ListModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/model/ListModel;->notifyOnModelChanged()V

    .line 205
    return-void
.end method
