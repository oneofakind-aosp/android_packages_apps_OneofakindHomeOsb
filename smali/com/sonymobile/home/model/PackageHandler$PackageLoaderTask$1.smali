.class Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask$1;
.super Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;
.source "PackageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;->notifyListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonymobile/home/util/ObserverList$DispatchRunnable",
        "<",
        "Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;)V
    .locals 0

    .prologue
    .line 1491
    iput-object p1, p0, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask$1;->this$1:Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask;

    invoke-direct {p0}, Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;

    .prologue
    .line 1495
    invoke-interface {p1}, Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;->onPackagesLoaded()V

    .line 1496
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1491
    check-cast p1, Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/PackageHandler$PackageLoaderTask$1;->run(Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;)V

    return-void
.end method
