.class Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;
.super Ljava/lang/Object;
.source "DesktopModel.java"

# interfaces
.implements Lcom/sonymobile/home/model/OnPackageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DesktopOnPackageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopModel;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/desktop/DesktopModel;)V
    .locals 0

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/desktop/DesktopModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p2, "x1"    # Lcom/sonymobile/home/desktop/DesktopModel$1;

    .prologue
    .line 1047
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;-><init>(Lcom/sonymobile/home/desktop/DesktopModel;)V

    return-void
.end method

.method private handleAvailabilityChange([Ljava/lang/String;Landroid/os/UserHandle;Lcom/sonymobile/home/model/RemoveSyncable;)V
    .locals 8
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "removeSyncable"    # Lcom/sonymobile/home/model/RemoveSyncable;

    .prologue
    .line 1095
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1096
    .local v0, "allItemsRemovedFromModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v5, 0x0

    .line 1097
    .local v5, "modelChanged":Z
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v6, v1, v2

    .line 1098
    .local v6, "packageName":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1099
    .local v3, "itemsRemovedFromModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {p0, v6, v3, p2, p3}, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->syncPackageChange(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Lcom/sonymobile/home/model/RemoveSyncable;)Z

    move-result v7

    or-int/2addr v5, v7

    .line 1101
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1097
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1104
    .end local v3    # "itemsRemovedFromModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # invokes: Lcom/sonymobile/home/desktop/DesktopModel;->notifyOnModelChanged()V
    invoke-static {v7}, Lcom/sonymobile/home/desktop/DesktopModel;->access$3400(Lcom/sonymobile/home/desktop/DesktopModel;)V

    .line 1105
    if-eqz v5, :cond_1

    .line 1106
    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v7, v0}, Lcom/sonymobile/home/desktop/DesktopModel;->writeModelToStorage(Ljava/util/List;)V

    .line 1108
    :cond_1
    return-void
.end method

.method private syncPackageChange(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Lcom/sonymobile/home/model/RemoveSyncable;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "removeSyncable"    # Lcom/sonymobile/home/model/RemoveSyncable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Landroid/os/UserHandle;",
            "Lcom/sonymobile/home/model/RemoveSyncable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1114
    .local p2, "outItemsRemovedFromModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->access$3500(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/sonymobile/home/model/PackageHandler;->getActivityItemSet(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/Set;

    move-result-object v3

    .line 1116
    .local v3, "activityItemsInPackage":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/home/data/ActivityItem;>;"
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->access$3600(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/model/PackageHandler;->getUnavailableApps()Ljava/util/Set;

    move-result-object v4

    .line 1118
    .local v4, "unavailablePackages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/model/UserPackage;>;"
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->access$3700(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/model/PackageHandler;->getWidgets()Ljava/util/Set;

    move-result-object v5

    .line 1119
    .local v5, "installedWidgets":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/home/model/UserComponentName;>;"
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->access$3800(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/model/PackageHandler;->getAdvancedWidgets()Ljava/util/Set;

    move-result-object v6

    .line 1120
    .local v6, "installedAdvWidgets":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->getAddSyncable()Lcom/sonymobile/home/model/AddSyncable;

    move-result-object v1

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->access$3900(Lcom/sonymobile/home/desktop/DesktopModel;)Ljava/util/List;

    move-result-object v2

    move-object v0, p4

    move-object v7, p1

    move-object v8, p3

    move-object v9, p2

    invoke-static/range {v0 .. v9}, Lcom/sonymobile/home/model/SyncHelper;->syncPackageChanged(Lcom/sonymobile/home/model/RemoveSyncable;Lcom/sonymobile/home/model/AddSyncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/desktop/DesktopModel;->addAllNewlyInstalledApps(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1051
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1055
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    .local v0, "itemsRemovedFromModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mRemoveSyncable:Lcom/sonymobile/home/model/RemoveSyncable;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopModel;->access$3000(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/RemoveSyncable;

    move-result-object v2

    invoke-direct {p0, p1, v0, p2, v2}, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->syncPackageChange(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Lcom/sonymobile/home/model/RemoveSyncable;)Z

    move-result v1

    .line 1059
    .local v1, "modelChanged":Z
    if-eqz v1, :cond_0

    .line 1060
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # invokes: Lcom/sonymobile/home/desktop/DesktopModel;->packItems(Ljava/util/List;)Z
    invoke-static {v2, v0}, Lcom/sonymobile/home/desktop/DesktopModel;->access$3100(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/List;)Z

    .line 1061
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/desktop/DesktopModel;->writeModelToStorage(Ljava/util/List;)V

    .line 1066
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # invokes: Lcom/sonymobile/home/desktop/DesktopModel;->notifyOnModelChanged()V
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopModel;->access$3200(Lcom/sonymobile/home/desktop/DesktopModel;)V

    .line 1067
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1071
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1072
    .local v0, "itemsRemovedFromModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mRemoveSyncable:Lcom/sonymobile/home/model/RemoveSyncable;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopModel;->access$3000(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/RemoveSyncable;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mItems:Ljava/util/List;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopModel;->access$3300(Lcom/sonymobile/home/desktop/DesktopModel;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3, p1, p2, v0}, Lcom/sonymobile/home/model/SyncHelper;->syncPackageRemoved(Lcom/sonymobile/home/model/RemoveSyncable;Ljava/util/Collection;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/Collection;)Z

    move-result v1

    .line 1075
    .local v1, "modelChanged":Z
    if-eqz v1, :cond_0

    .line 1076
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # invokes: Lcom/sonymobile/home/desktop/DesktopModel;->packItems(Ljava/util/List;)Z
    invoke-static {v2, v0}, Lcom/sonymobile/home/desktop/DesktopModel;->access$3100(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/List;)Z

    .line 1077
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/desktop/DesktopModel;->updateModel(Ljava/util/List;)V

    .line 1079
    :cond_0
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1088
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->handleAvailabilityChange([Ljava/lang/String;Landroid/os/UserHandle;Lcom/sonymobile/home/model/RemoveSyncable;)V

    .line 1089
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mRemoveSyncable:Lcom/sonymobile/home/model/RemoveSyncable;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->access$3000(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/model/RemoveSyncable;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackageChangeListener;->handleAvailabilityChange([Ljava/lang/String;Landroid/os/UserHandle;Lcom/sonymobile/home/model/RemoveSyncable;)V

    .line 1084
    return-void
.end method
