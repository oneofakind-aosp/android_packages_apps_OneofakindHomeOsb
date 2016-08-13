.class public Lcom/sonymobile/home/BootCompletedService;
.super Landroid/app/Service;
.source "BootCompletedService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/BootCompletedService$BootCompletedReceiver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/sonymobile/home/BootCompletedService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/HomeApplication;

    .line 26
    .local v0, "homeApplication":Lcom/sonymobile/home/HomeApplication;
    invoke-virtual {v0}, Lcom/sonymobile/home/HomeApplication;->getPackageHandler()Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v1

    .line 27
    .local v1, "packageHandler":Lcom/sonymobile/home/model/PackageHandler;
    new-instance v2, Lcom/sonymobile/home/BootCompletedService$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/BootCompletedService$1;-><init>(Lcom/sonymobile/home/BootCompletedService;)V

    invoke-virtual {v1}, Lcom/sonymobile/home/model/PackageHandler;->getPackageExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/home/BootCompletedService$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    const/4 v2, 0x3

    return v2
.end method
