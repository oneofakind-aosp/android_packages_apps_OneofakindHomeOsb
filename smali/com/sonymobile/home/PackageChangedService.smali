.class public Lcom/sonymobile/home/PackageChangedService;
.super Landroid/app/Service;
.source "PackageChangedService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/PackageChangedService$PackageChangedReceiver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 80
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v7, 0x0

    .line 29
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "action":Ljava/lang/String;
    const-string v8, "com.sonymobile.home.intent.extra.PACKAGE_NAME"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 31
    .local v6, "packageName":Ljava/lang/String;
    const-string v8, "com.sonymobile.home.intent.extra.REPLACING"

    invoke-virtual {p1, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 32
    .local v3, "isReplacing":Z
    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .line 34
    .local v4, "isReplacingRemoveEvent":Z
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/home/PackageChangedService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 35
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/sonymobile/home/PackageChangedService;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/HomeApplication;

    .line 36
    .local v2, "homeApplication":Lcom/sonymobile/home/HomeApplication;
    invoke-virtual {v2}, Lcom/sonymobile/home/HomeApplication;->getPackageHandler()Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v5

    .line 38
    .local v5, "packageHandler":Lcom/sonymobile/home/model/PackageHandler;
    new-instance v8, Lcom/sonymobile/home/PackageChangedService$1;

    invoke-direct {v8, p0, v4, v6, v1}, Lcom/sonymobile/home/PackageChangedService$1;-><init>(Lcom/sonymobile/home/PackageChangedService;ZLjava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/sonymobile/home/model/PackageHandler;->getPackageExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v8, v9, v7}, Lcom/sonymobile/home/PackageChangedService$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    const/4 v7, 0x3

    return v7

    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "homeApplication":Lcom/sonymobile/home/HomeApplication;
    .end local v4    # "isReplacingRemoveEvent":Z
    .end local v5    # "packageHandler":Lcom/sonymobile/home/model/PackageHandler;
    :cond_0
    move v4, v7

    .line 32
    goto :goto_0
.end method
