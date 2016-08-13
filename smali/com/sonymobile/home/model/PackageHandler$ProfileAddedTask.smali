.class Lcom/sonymobile/home/model/PackageHandler$ProfileAddedTask;
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
    name = "ProfileAddedTask"
.end annotation


# instance fields
.field final mUserHandle:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/sonymobile/home/model/PackageHandler;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/model/PackageHandler;Landroid/os/UserHandle;)V
    .locals 0
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 1829
    iput-object p1, p0, Lcom/sonymobile/home/model/PackageHandler$ProfileAddedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1830
    iput-object p2, p0, Lcom/sonymobile/home/model/PackageHandler$ProfileAddedTask;->mUserHandle:Landroid/os/UserHandle;

    .line 1831
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1835
    iget-object v7, p0, Lcom/sonymobile/home/model/PackageHandler$ProfileAddedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v8, p0, Lcom/sonymobile/home/model/PackageHandler$ProfileAddedTask;->mUserHandle:Landroid/os/UserHandle;

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->getAllActivities(Landroid/os/UserHandle;)Ljava/util/HashMap;
    invoke-static {v7, v8}, Lcom/sonymobile/home/model/PackageHandler;->access$1100(Lcom/sonymobile/home/model/PackageHandler;Landroid/os/UserHandle;)Ljava/util/HashMap;

    move-result-object v1

    .line 1836
    .local v1, "allActivities":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/sonymobile/home/data/ActivityItem;Lcom/sonymobile/home/model/PackageHandler$AppInfo;>;"
    iget-object v7, p0, Lcom/sonymobile/home/model/PackageHandler$ProfileAddedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sonymobile/home/model/PackageHandler$ProfileAddedTask;->mUserHandle:Landroid/os/UserHandle;

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->getInstalledWidgets(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    invoke-static {v7, v8, v9}, Lcom/sonymobile/home/model/PackageHandler;->access$300(Lcom/sonymobile/home/model/PackageHandler;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1837
    .local v5, "installedWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/model/UserComponentName;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v2, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 1840
    .local v2, "allPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/ActivityItem;

    .line 1841
    .local v0, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    invoke-virtual {v0}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1842
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1846
    .end local v0    # "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/model/UserComponentName;

    .line 1847
    .local v3, "componentName":Lcom/sonymobile/home/model/UserComponentName;
    invoke-virtual {v3}, Lcom/sonymobile/home/model/UserComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1848
    .restart local v6    # "packageName":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 1849
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1853
    .end local v3    # "componentName":Lcom/sonymobile/home/model/UserComponentName;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1854
    .restart local v6    # "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonymobile/home/model/PackageHandler$ProfileAddedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v8, p0, Lcom/sonymobile/home/model/PackageHandler$ProfileAddedTask;->mUserHandle:Landroid/os/UserHandle;

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->packageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    invoke-static {v7, v6, v8}, Lcom/sonymobile/home/model/PackageHandler;->access$4200(Lcom/sonymobile/home/model/PackageHandler;Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 1856
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_3
    return-void
.end method
