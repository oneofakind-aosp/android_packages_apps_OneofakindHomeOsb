.class public final Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporterList;
.super Ljava/lang/Object;
.source "GoogleAnalyticsReporterList.java"


# direct methods
.method public static getReporters(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    .local v0, "reporters":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;>;"
    new-instance v1, Lcom/sonymobile/home/statistics/periodicevents/reporters/AppTraySortModeGoogleAnalyticsReporter;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/statistics/periodicevents/reporters/AppTraySortModeGoogleAnalyticsReporter;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lcom/sonymobile/home/statistics/periodicevents/reporters/HomeModeGoogleAnalyticsReporter;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/statistics/periodicevents/reporters/HomeModeGoogleAnalyticsReporter;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Lcom/sonymobile/home/statistics/periodicevents/reporters/AutoArrangeItemsGoogleAnalyticsReporter;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/statistics/periodicevents/reporters/AutoArrangeItemsGoogleAnalyticsReporter;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lcom/sonymobile/home/statistics/periodicevents/reporters/PageTransitionGoogleAnalyticsReporter;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/statistics/periodicevents/reporters/PageTransitionGoogleAnalyticsReporter;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Lcom/sonymobile/home/statistics/periodicevents/reporters/ShowKeyboardInSearchAppsGoogleAnalyticsReporter;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/statistics/periodicevents/reporters/ShowKeyboardInSearchAppsGoogleAnalyticsReporter;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Lcom/sonymobile/home/statistics/periodicevents/reporters/OnlineSearchGoogleAnalyticsReporter;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/statistics/periodicevents/reporters/OnlineSearchGoogleAnalyticsReporter;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
