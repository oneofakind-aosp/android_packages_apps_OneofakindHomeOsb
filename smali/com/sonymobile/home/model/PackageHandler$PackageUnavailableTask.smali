.class Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;
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
    name = "PackageUnavailableTask"
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
    .line 1705
    iput-object p1, p0, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1706
    iput-object p2, p0, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;->mPackageNames:[Ljava/lang/String;

    .line 1707
    iput-object p3, p0, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;->mUser:Landroid/os/UserHandle;

    .line 1708
    return-void
.end method

.method static synthetic access$3800(Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;

    .prologue
    .line 1694
    invoke-direct {p0}, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;->notifyListeners()V

    return-void
.end method

.method static synthetic access$3900(Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;->mPackageNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method private notifyListeners()V
    .locals 2

    .prologue
    .line 1734
    new-instance v0, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask$2;-><init>(Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;)V

    .line 1745
    .local v0, "runnable":Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;, "Lcom/sonymobile/home/util/ObserverList$DispatchRunnable<Lcom/sonymobile/home/model/OnPackageChangeListener;>;"
    iget-object v1, p0, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mPackageUpdateObservers:Lcom/sonymobile/home/util/ObserverList;
    invoke-static {v1}, Lcom/sonymobile/home/model/PackageHandler;->access$1000(Lcom/sonymobile/home/model/PackageHandler;)Lcom/sonymobile/home/util/ObserverList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/util/ObserverList;->notifyObservers(Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;)V

    .line 1746
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;->mPackageNames:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1714
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v5, p0, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;->mUser:Landroid/os/UserHandle;

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->removePackageInfo(Ljava/lang/String;Landroid/os/UserHandle;)V
    invoke-static {v4, v3, v5}, Lcom/sonymobile/home/model/PackageHandler;->access$2600(Lcom/sonymobile/home/model/PackageHandler;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1718
    iget-object v4, p0, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mUnavailableApps:Ljava/util/concurrent/CopyOnWriteArraySet;
    invoke-static {v4}, Lcom/sonymobile/home/model/PackageHandler;->access$1900(Lcom/sonymobile/home/model/PackageHandler;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v4

    new-instance v5, Lcom/sonymobile/home/model/UserPackage;

    iget-object v6, p0, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v5, v3, v6}, Lcom/sonymobile/home/model/UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 1712
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1720
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mMainHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sonymobile/home/model/PackageHandler;->access$700(Lcom/sonymobile/home/model/PackageHandler;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask$1;

    invoke-direct {v5, p0}, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask$1;-><init>(Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1728
    return-void
.end method
