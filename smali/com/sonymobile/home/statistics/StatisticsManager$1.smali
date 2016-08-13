.class Lcom/sonymobile/home/statistics/StatisticsManager$1;
.super Ljava/lang/Object;
.source "StatisticsManager.java"

# interfaces
.implements Lcom/sonymobile/home/model/OnPackageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/statistics/StatisticsManager;-><init>(Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/statistics/StatisticsManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/statistics/StatisticsManager;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sonymobile/home/statistics/StatisticsManager$1;->this$0:Lcom/sonymobile/home/statistics/StatisticsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 95
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 79
    iget-object v4, p0, Lcom/sonymobile/home/statistics/StatisticsManager$1;->this$0:Lcom/sonymobile/home/statistics/StatisticsManager;

    # getter for: Lcom/sonymobile/home/statistics/StatisticsManager;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;
    invoke-static {v4}, Lcom/sonymobile/home/statistics/StatisticsManager;->access$000(Lcom/sonymobile/home/statistics/StatisticsManager;)Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/sonymobile/home/model/PackageHandler;->getActivityItemSet(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/Set;

    move-result-object v3

    .line 81
    .local v3, "itemSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/home/data/ActivityItem;>;"
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 84
    .local v0, "activityNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/ActivityItem;

    .line 85
    .local v2, "item":Lcom/sonymobile/home/data/ActivityItem;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/ActivityItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    .end local v2    # "item":Lcom/sonymobile/home/data/ActivityItem;
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/home/statistics/StatisticsManager$1;->this$0:Lcom/sonymobile/home/statistics/StatisticsManager;

    invoke-virtual {v4, p1, p2, v0}, Lcom/sonymobile/home/statistics/StatisticsManager;->removeStatisticsData(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/Set;)V

    .line 90
    .end local v0    # "activityNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/statistics/StatisticsManager$1;->this$0:Lcom/sonymobile/home/statistics/StatisticsManager;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/statistics/StatisticsManager;->removeStatisticsData(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 75
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 105
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 100
    return-void
.end method
