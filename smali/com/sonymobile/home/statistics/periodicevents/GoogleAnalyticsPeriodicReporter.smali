.class public Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPeriodicReporter;
.super Ljava/lang/Object;
.source "GoogleAnalyticsPeriodicReporter.java"


# instance fields
.field private final mGoogleAnalyticsReportTimeChecker:Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "reporters":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPeriodicReporter;->mHandler:Landroid/os/Handler;

    .line 40
    new-instance v0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;

    new-instance v1, Lcom/sonymobile/home/time/SystemCurrentTimeClock;

    invoke-direct {v1}, Lcom/sonymobile/home/time/SystemCurrentTimeClock;-><init>()V

    new-instance v2, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;

    invoke-direct {v2}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;-><init>()V

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;-><init>(Landroid/content/Context;Lcom/sonymobile/home/time/Clock;Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;Ljava/util/List;)V

    iput-object v0, p0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPeriodicReporter;->mGoogleAnalyticsReportTimeChecker:Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;

    .line 42
    return-void
.end method


# virtual methods
.method public checkTimeAndReportDelayed(I)V
    .locals 4
    .param p1, "delayMs"    # I

    .prologue
    .line 52
    invoke-static {}, Lcom/sonymobile/home/statistics/TrackingUtil;->isTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPeriodicReporter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPeriodicReporter;->mGoogleAnalyticsReportTimeChecker:Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    iget-object v0, p0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPeriodicReporter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPeriodicReporter;->mGoogleAnalyticsReportTimeChecker:Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    :cond_0
    return-void
.end method
