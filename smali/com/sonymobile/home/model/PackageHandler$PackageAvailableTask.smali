.class Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;
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
    name = "PackageAvailableTask"
.end annotation


# instance fields
.field private final mPackageNames:[Ljava/lang/String;

.field private final mUser:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/sonymobile/home/model/PackageHandler;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/model/PackageHandler;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1635
    iput-object p1, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1636
    iput-object p2, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->mPackageNames:[Ljava/lang/String;

    .line 1637
    iput-object p3, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->mUser:Landroid/os/UserHandle;

    .line 1638
    return-void
.end method

.method static synthetic access$3500(Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->mPackageNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;

    .prologue
    .line 1624
    invoke-direct {p0}, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->notifyListeners()V

    return-void
.end method

.method static synthetic access$3700(Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method private notifyListeners()V
    .locals 2

    .prologue
    .line 1675
    new-instance v0, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask$2;-><init>(Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;)V

    .line 1686
    .local v0, "runnable":Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;, "Lcom/sonymobile/home/util/ObserverList$DispatchRunnable<Lcom/sonymobile/home/model/OnPackageChangeListener;>;"
    iget-object v1, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mPackageUpdateObservers:Lcom/sonymobile/home/util/ObserverList;
    invoke-static {v1}, Lcom/sonymobile/home/model/PackageHandler;->access$1000(Lcom/sonymobile/home/model/PackageHandler;)Lcom/sonymobile/home/util/ObserverList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/util/ObserverList;->notifyObservers(Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;)V

    .line 1687
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1642
    iget-object v6, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->mPackageNames:[Ljava/lang/String;

    .local v6, "arr$":[Ljava/lang/String;
    array-length v8, v6

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v4, v6, v7

    .line 1644
    .local v4, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mLauncherApps:Lcom/sonymobile/home/model/HomeLauncherApps;
    invoke-static {v0}, Lcom/sonymobile/home/model/PackageHandler;->access$200(Lcom/sonymobile/home/model/PackageHandler;)Lcom/sonymobile/home/model/HomeLauncherApps;

    move-result-object v0

    iget-object v5, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/home/model/HomeLauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 1646
    .local v1, "resolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v5, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->mUser:Landroid/os/UserHandle;

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->getInstalledWidgets(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    invoke-static {v0, v4, v5}, Lcom/sonymobile/home/model/PackageHandler;->access$300(Lcom/sonymobile/home/model/PackageHandler;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1647
    .local v2, "widgetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/model/UserComponentName;>;"
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->getInstalledAdvancedWidgets(Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v0, v4}, Lcom/sonymobile/home/model/PackageHandler;->access$400(Lcom/sonymobile/home/model/PackageHandler;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1649
    .local v3, "advancedWidgetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v5, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->mUser:Landroid/os/UserHandle;

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->addPackageInfo(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/os/UserHandle;)V
    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/model/PackageHandler;->access$500(Lcom/sonymobile/home/model/PackageHandler;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1642
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1652
    .end local v1    # "resolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v2    # "widgetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/model/UserComponentName;>;"
    .end local v3    # "advancedWidgetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/home/model/PackageHandler;->access$700(Lcom/sonymobile/home/model/PackageHandler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v5, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask$1;

    invoke-direct {v5, p0}, Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask$1;-><init>(Lcom/sonymobile/home/model/PackageHandler$PackageAvailableTask;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1669
    return-void
.end method
