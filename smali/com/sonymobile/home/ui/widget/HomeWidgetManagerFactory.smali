.class public final Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;
.super Ljava/lang/Object;
.source "HomeWidgetManagerFactory.java"


# static fields
.field private static volatile sHomeAdvWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

.field private static volatile sHomeAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;


# direct methods
.method public static getHomeAdvWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->sHomeAdvWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    return-object v0
.end method

.method public static getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->sHomeAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    return-object v0
.end method

.method public static setHomeAdvWidgetManagerInstance(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;)V
    .locals 0
    .param p0, "homeAdvWidgetManager"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    .prologue
    .line 35
    sput-object p0, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->sHomeAdvWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    .line 36
    return-void
.end method

.method public static setHomeAppWidgetManagerInstance(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Lcom/sonymobile/home/model/PackageHandler;)V
    .locals 3
    .param p0, "newHomeAppWidgetManager"    # Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    .param p1, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 46
    sget-object v2, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->sHomeAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    if-eqz v2, :cond_0

    .line 47
    sget-object v2, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->sHomeAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->getHomeAppWidgetHost()Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    move-result-object v1

    .line 48
    .local v1, "oldHomeAppWidgetHost":Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;->setPackageHandler(Lcom/sonymobile/home/model/PackageHandler;)V

    .line 51
    .end local v1    # "oldHomeAppWidgetHost":Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;
    :cond_0
    if-eqz p0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->getHomeAppWidgetHost()Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    move-result-object v0

    .line 53
    .local v0, "newHomeAppWidgetHost":Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;
    invoke-virtual {v0, p1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;->setPackageHandler(Lcom/sonymobile/home/model/PackageHandler;)V

    .line 56
    .end local v0    # "newHomeAppWidgetHost":Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;
    :cond_1
    sput-object p0, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->sHomeAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    .line 57
    return-void
.end method
