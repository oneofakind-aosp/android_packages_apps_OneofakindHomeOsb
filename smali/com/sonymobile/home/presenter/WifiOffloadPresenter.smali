.class public Lcom/sonymobile/home/presenter/WifiOffloadPresenter;
.super Ljava/lang/Object;
.source "WifiOffloadPresenter.java"


# direct methods
.method public static sendWifiOffloadBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/HomeApplication;

    invoke-virtual {v2}, Lcom/sonymobile/home/HomeApplication;->getPackageHandler()Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v1

    .line 38
    .local v1, "packageHandler":Lcom/sonymobile/home/model/PackageHandler;
    invoke-virtual {v1}, Lcom/sonymobile/home/model/PackageHandler;->isWifiOffloadEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {v1, p1}, Lcom/sonymobile/home/model/PackageHandler;->isInternetPermissionGranted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sonymobile.vzwwifioffload.action.APP_LAUNCHED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "launchIntent":Landroid/content/Intent;
    const-string v2, "com.sonymobile.vzwwifioffload"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v2, "name"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const v2, 0x30000020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 49
    .end local v0    # "launchIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
