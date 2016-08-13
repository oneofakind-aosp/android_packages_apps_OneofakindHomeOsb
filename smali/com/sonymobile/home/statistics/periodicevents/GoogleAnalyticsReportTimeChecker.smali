.class public Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;
.super Ljava/lang/Object;
.source "GoogleAnalyticsReportTimeChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker$1;,
        Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker$ReportAsync;
    }
.end annotation


# static fields
.field public static final INTERNAL_REPORT_INTERVAL_MS:J

.field public static final REPORT_INTERVAL_MS:J

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentTimeClock:Lcom/sonymobile/home/time/Clock;

.field private final mGoogleAnalyticsPreferences:Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;

.field private final mGoogleAnalyticsReporters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    const-class v0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->TAG:Ljava/lang/String;

    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->REPORT_INTERVAL_MS:J

    .line 62
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->INTERNAL_REPORT_INTERVAL_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/time/Clock;Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentTimeClock"    # Lcom/sonymobile/home/time/Clock;
    .param p3, "googleAnalyticsPreferences"    # Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonymobile/home/time/Clock;",
            "Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p4, "googleAnalyticsReporters":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->mCurrentTimeClock:Lcom/sonymobile/home/time/Clock;

    .line 101
    iput-object p3, p0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->mGoogleAnalyticsPreferences:Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;

    .line 102
    iput-object p4, p0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->mGoogleAnalyticsReporters:Ljava/util/List;

    .line 103
    return-void
.end method

.method private checkAndUpdateNextReportTime()Z
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    .line 126
    const/4 v4, 0x0

    .line 128
    .local v4, "timeToReport":Z
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->mGoogleAnalyticsPreferences:Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;

    iget-object v6, p0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->mContext:Landroid/content/Context;

    const-wide/16 v8, -0x1

    invoke-virtual {v5, v6, v8, v9}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;->getNextReportTime(Landroid/content/Context;J)J

    move-result-wide v2

    .line 130
    .local v2, "nextReportTime":J
    iget-object v5, p0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->mCurrentTimeClock:Lcom/sonymobile/home/time/Clock;

    invoke-interface {v5}, Lcom/sonymobile/home/time/Clock;->getTimeInMillis()J

    move-result-wide v0

    .line 132
    .local v0, "currentTime":J
    cmp-long v5, v2, v10

    if-eqz v5, :cond_0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->isReportTimeInvalid(JJ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->setNextReportTime()V

    .line 144
    .end local v0    # "currentTime":J
    .end local v2    # "nextReportTime":J
    :cond_1
    :goto_0
    return v4

    .line 135
    .restart local v0    # "currentTime":J
    .restart local v2    # "nextReportTime":J
    :cond_2
    cmp-long v5, v0, v2

    if-lez v5, :cond_3

    const/4 v4, 0x1

    .line 136
    :goto_1
    if-eqz v4, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->setNextReportTime()V
    :try_end_0
    .catch Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences$GoogleAnalyticsNotLoadedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    .end local v0    # "currentTime":J
    .end local v2    # "nextReportTime":J
    :catch_0
    move-exception v5

    goto :goto_0

    .line 135
    .restart local v0    # "currentTime":J
    .restart local v2    # "nextReportTime":J
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getReportTimeInterval()J
    .locals 2

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->isEngOrUserdebugVariant()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    sget-wide v0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->INTERNAL_REPORT_INTERVAL_MS:J

    .line 169
    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->REPORT_INTERVAL_MS:J

    goto :goto_0
.end method

.method private isEngOrUserdebugVariant()Z
    .locals 2

    .prologue
    .line 203
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReportTimeInvalid(JJ)Z
    .locals 7
    .param p1, "nextReportTime"    # J
    .param p3, "currentTime"    # J

    .prologue
    .line 156
    sub-long v0, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-direct {p0}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->getReportTimeInterval()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private report()V
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->mGoogleAnalyticsReporters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;

    .line 181
    .local v0, "googleAnalyticsReporters":[Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;
    new-instance v1, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker$ReportAsync;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker$ReportAsync;-><init>(Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker$1;)V

    iget-object v2, p0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->mGoogleAnalyticsReporters:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker$ReportAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 182
    return-void
.end method

.method private setNextReportTime()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences$GoogleAnalyticsNotLoadedException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v2, p0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->mCurrentTimeClock:Lcom/sonymobile/home/time/Clock;

    invoke-interface {v2}, Lcom/sonymobile/home/time/Clock;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->getReportTimeInterval()J

    move-result-wide v4

    add-long v0, v2, v4

    .line 192
    .local v0, "nextReportTime":J
    iget-object v2, p0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->mGoogleAnalyticsPreferences:Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;

    iget-object v3, p0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;->setNextReportTime(Landroid/content/Context;J)V

    .line 193
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;->isSomcGaEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->checkAndUpdateNextReportTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;->report()V

    goto :goto_0
.end method
