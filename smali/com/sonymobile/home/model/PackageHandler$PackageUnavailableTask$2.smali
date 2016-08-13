.class Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask$2;
.super Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;
.source "PackageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;->notifyListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonymobile/home/util/ObserverList$DispatchRunnable",
        "<",
        "Lcom/sonymobile/home/model/OnPackageChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;)V
    .locals 0

    .prologue
    .line 1735
    iput-object p1, p0, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask$2;->this$1:Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;

    invoke-direct {p0}, Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/sonymobile/home/model/OnPackageChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/home/model/OnPackageChangeListener;

    .prologue
    .line 1739
    if-eqz p1, :cond_0

    .line 1740
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask$2;->this$1:Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;

    # getter for: Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;->mPackageNames:[Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;->access$3900(Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask$2;->this$1:Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;

    # getter for: Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;->mUser:Landroid/os/UserHandle;
    invoke-static {v1}, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;->access$4000(Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonymobile/home/model/OnPackageChangeListener;->onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1742
    :cond_0
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1735
    check-cast p1, Lcom/sonymobile/home/model/OnPackageChangeListener;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/PackageHandler$PackageUnavailableTask$2;->run(Lcom/sonymobile/home/model/OnPackageChangeListener;)V

    return-void
.end method
