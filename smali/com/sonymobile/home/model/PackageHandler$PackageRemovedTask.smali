.class Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;
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
    name = "PackageRemovedTask"
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
    .line 1579
    iput-object p1, p0, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1580
    iput-object p2, p0, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;->mPackageName:Ljava/lang/String;

    .line 1581
    iput-object p3, p0, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;->mUser:Landroid/os/UserHandle;

    .line 1582
    return-void
.end method

.method static synthetic access$3100(Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;

    .prologue
    .line 1569
    invoke-direct {p0}, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;->notifyListeners()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method private notifyListeners()V
    .locals 2

    .prologue
    .line 1605
    new-instance v0, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask$2;-><init>(Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;)V

    .line 1616
    .local v0, "runnable":Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;, "Lcom/sonymobile/home/util/ObserverList$DispatchRunnable<Lcom/sonymobile/home/model/OnPackageChangeListener;>;"
    iget-object v1, p0, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mPackageUpdateObservers:Lcom/sonymobile/home/util/ObserverList;
    invoke-static {v1}, Lcom/sonymobile/home/model/PackageHandler;->access$1000(Lcom/sonymobile/home/model/PackageHandler;)Lcom/sonymobile/home/util/ObserverList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/util/ObserverList;->notifyObservers(Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;)V

    .line 1617
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v1, p0, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;->mUser:Landroid/os/UserHandle;

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->removePackageInfo(Ljava/lang/String;Landroid/os/UserHandle;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/model/PackageHandler;->access$2600(Lcom/sonymobile/home/model/PackageHandler;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1589
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # getter for: Lcom/sonymobile/home/model/PackageHandler;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/home/model/PackageHandler;->access$700(Lcom/sonymobile/home/model/PackageHandler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask$1;-><init>(Lcom/sonymobile/home/model/PackageHandler$PackageRemovedTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1599
    return-void
.end method
