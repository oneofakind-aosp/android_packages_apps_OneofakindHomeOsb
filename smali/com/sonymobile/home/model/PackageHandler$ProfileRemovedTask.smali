.class Lcom/sonymobile/home/model/PackageHandler$ProfileRemovedTask;
.super Ljava/lang/Object;
.source "PackageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/model/PackageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileRemovedTask"
.end annotation


# instance fields
.field final mUserHandle:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/sonymobile/home/model/PackageHandler;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/model/PackageHandler;Landroid/os/UserHandle;)V
    .locals 0
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 1880
    iput-object p1, p0, Lcom/sonymobile/home/model/PackageHandler$ProfileRemovedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1881
    iput-object p2, p0, Lcom/sonymobile/home/model/PackageHandler$ProfileRemovedTask;->mUserHandle:Landroid/os/UserHandle;

    .line 1882
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1886
    new-instance v1, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/sonymobile/home/model/PackageHandler$ProfileRemovedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mAllActivities:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v9}, Lcom/sonymobile/home/model/PackageHandler;->access$1800(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1887
    .local v1, "allActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/ActivityItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/sonymobile/home/model/PackageHandler$ProfileRemovedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mUnavailableApps:Ljava/util/concurrent/CopyOnWriteArraySet;
    invoke-static {v9}, Lcom/sonymobile/home/model/PackageHandler;->access$1900(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1888
    .local v3, "allUnavailableApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/model/UserPackage;>;"
    new-instance v4, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/sonymobile/home/model/PackageHandler$ProfileRemovedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mAllWidgets:Ljava/util/concurrent/CopyOnWriteArraySet;
    invoke-static {v9}, Lcom/sonymobile/home/model/PackageHandler;->access$1600(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1889
    .local v4, "allWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/model/UserComponentName;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v2, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 1892
    .local v2, "allPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/ActivityItem;

    .line 1893
    .local v0, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    iget-object v9, p0, Lcom/sonymobile/home/model/PackageHandler$ProfileRemovedTask;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ActivityItem;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1894
    invoke-virtual {v0}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1895
    .local v6, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1896
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1901
    .end local v0    # "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/home/model/UserPackage;

    .line 1902
    .local v8, "userPackage":Lcom/sonymobile/home/model/UserPackage;
    iget-object v9, p0, Lcom/sonymobile/home/model/PackageHandler$ProfileRemovedTask;->mUserHandle:Landroid/os/UserHandle;

    iget-object v10, v8, Lcom/sonymobile/home/model/UserPackage;->user:Landroid/os/UserHandle;

    invoke-virtual {v9, v10}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1903
    iget-object v6, v8, Lcom/sonymobile/home/model/UserPackage;->packageName:Ljava/lang/String;

    .line 1904
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1908
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "userPackage":Lcom/sonymobile/home/model/UserPackage;
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/home/model/UserComponentName;

    .line 1909
    .local v7, "userComponentName":Lcom/sonymobile/home/model/UserComponentName;
    iget-object v9, p0, Lcom/sonymobile/home/model/PackageHandler$ProfileRemovedTask;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v7, v9}, Lcom/sonymobile/home/model/UserComponentName;->hasUser(Landroid/os/UserHandle;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1910
    invoke-virtual {v7}, Lcom/sonymobile/home/model/UserComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1911
    .restart local v6    # "packageName":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 1912
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1917
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "userComponentName":Lcom/sonymobile/home/model/UserComponentName;
    :cond_5
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1918
    .restart local v6    # "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonymobile/home/model/PackageHandler$ProfileRemovedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v10, p0, Lcom/sonymobile/home/model/PackageHandler$ProfileRemovedTask;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v9, v6, v10}, Lcom/sonymobile/home/model/PackageHandler;->packageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_3

    .line 1920
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_6
    return-void
.end method
