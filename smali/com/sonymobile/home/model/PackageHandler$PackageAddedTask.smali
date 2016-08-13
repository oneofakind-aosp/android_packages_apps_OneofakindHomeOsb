.class Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;
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
    name = "PackageAddedTask"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mUser:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/sonymobile/home/model/PackageHandler;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/model/PackageHandler;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1407
    iput-object p2, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;->mPackageName:Ljava/lang/String;

    .line 1408
    iput-object p3, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;->mUser:Landroid/os/UserHandle;

    .line 1409
    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;

    .prologue
    .line 1396
    invoke-direct {p0}, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;->notifyListeners()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method private notifyListeners()V
    .locals 2

    .prologue
    .line 1435
    new-instance v0, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask$2;-><init>(Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;)V

    .line 1444
    .local v0, "runnable":Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;, "Lcom/sonymobile/home/util/ObserverList$DispatchRunnable<Lcom/sonymobile/home/model/OnPackageChangeListener;>;"
    iget-object v1, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mPackageUpdateObservers:Lcom/sonymobile/home/util/ObserverList;
    invoke-static {v1}, Lcom/sonymobile/home/model/PackageHandler;->access$1000(Lcom/sonymobile/home/model/PackageHandler;)Lcom/sonymobile/home/util/ObserverList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/util/ObserverList;->notifyObservers(Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;)V

    .line 1445
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mLauncherApps:Lcom/sonymobile/home/model/HomeLauncherApps;
    invoke-static {v0}, Lcom/sonymobile/home/model/PackageHandler;->access$200(Lcom/sonymobile/home/model/PackageHandler;)Lcom/sonymobile/home/model/HomeLauncherApps;

    move-result-object v0

    iget-object v4, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/home/model/HomeLauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 1416
    .local v1, "resolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v4, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;->mUser:Landroid/os/UserHandle;

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->getInstalledWidgets(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    invoke-static {v0, v4, v5}, Lcom/sonymobile/home/model/PackageHandler;->access$300(Lcom/sonymobile/home/model/PackageHandler;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1417
    .local v2, "widgetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/model/UserComponentName;>;"
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v4, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;->mPackageName:Ljava/lang/String;

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->getInstalledAdvancedWidgets(Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v0, v4}, Lcom/sonymobile/home/model/PackageHandler;->access$400(Lcom/sonymobile/home/model/PackageHandler;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1419
    .local v3, "advancedWidgetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v4, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;->mUser:Landroid/os/UserHandle;

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->addPackageInfo(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/os/UserHandle;)V
    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/model/PackageHandler;->access$500(Lcom/sonymobile/home/model/PackageHandler;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1421
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/home/model/PackageHandler;->access$700(Lcom/sonymobile/home/model/PackageHandler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v4, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask$1;

    invoke-direct {v4, p0}, Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask$1;-><init>(Lcom/sonymobile/home/model/PackageHandler$PackageAddedTask;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1429
    return-void
.end method
