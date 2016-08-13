.class Lcom/sonymobile/home/model/PackageHandler$WidgetProvidersChangedTask;
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
    name = "WidgetProvidersChangedTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/PackageHandler;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/model/PackageHandler;)V
    .locals 0

    .prologue
    .line 1783
    iput-object p1, p0, Lcom/sonymobile/home/model/PackageHandler$WidgetProvidersChangedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/PackageHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p2, "x1"    # Lcom/sonymobile/home/model/PackageHandler$1;

    .prologue
    .line 1783
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/PackageHandler$WidgetProvidersChangedTask;-><init>(Lcom/sonymobile/home/model/PackageHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1786
    iget-object v6, p0, Lcom/sonymobile/home/model/PackageHandler$WidgetProvidersChangedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->getAllInstalledWidgets()Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sonymobile/home/model/PackageHandler;->access$1400(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1787
    .local v4, "installedWidgetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/model/UserComponentName;>;"
    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sonymobile/home/model/PackageHandler$WidgetProvidersChangedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mAllWidgets:Ljava/util/concurrent/CopyOnWriteArraySet;
    invoke-static {v6}, Lcom/sonymobile/home/model/PackageHandler;->access$1600(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1788
    .local v2, "currentWidgetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/model/UserComponentName;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 1789
    .local v1, "changedWidgetSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/home/model/UserPackage;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/home/model/UserComponentName;

    .line 1791
    .local v5, "userComponentName":Lcom/sonymobile/home/model/UserComponentName;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1792
    new-instance v6, Lcom/sonymobile/home/model/UserPackage;

    invoke-virtual {v5}, Lcom/sonymobile/home/model/UserComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sonymobile/home/model/UserComponentName;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sonymobile/home/model/UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1798
    .end local v5    # "userComponentName":Lcom/sonymobile/home/model/UserComponentName;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/home/model/UserComponentName;

    .line 1800
    .restart local v5    # "userComponentName":Lcom/sonymobile/home/model/UserComponentName;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1801
    new-instance v6, Lcom/sonymobile/home/model/UserPackage;

    invoke-virtual {v5}, Lcom/sonymobile/home/model/UserComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sonymobile/home/model/UserComponentName;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sonymobile/home/model/UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1808
    .end local v5    # "userComponentName":Lcom/sonymobile/home/model/UserComponentName;
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/model/UserPackage;

    .line 1809
    .local v0, "changedWidget":Lcom/sonymobile/home/model/UserPackage;
    iget-object v6, p0, Lcom/sonymobile/home/model/PackageHandler$WidgetProvidersChangedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v7, v0, Lcom/sonymobile/home/model/UserPackage;->packageName:Ljava/lang/String;

    iget-object v8, v0, Lcom/sonymobile/home/model/UserPackage;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Lcom/sonymobile/home/model/PackageHandler;->packageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 1811
    .end local v0    # "changedWidget":Lcom/sonymobile/home/model/UserPackage;
    :cond_4
    return-void
.end method
