.class public Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;
.super Ljava/lang/Object;
.source "GoogleAnalyticsPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences$GoogleAnalyticsNotLoadedException;
    }
.end annotation


# static fields
.field private static sLoadingStarted:Z

.field private static volatile sPreferencesLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;->sPreferencesLoaded:Z

    .line 38
    sput-boolean v0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;->sLoadingStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 22
    sput-boolean p0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;->sPreferencesLoaded:Z

    return p0
.end method

.method public static preloadPreferences(Landroid/content/Context;)V
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 48
    sget-boolean v1, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;->sLoadingStarted:Z

    if-eqz v1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 51
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;->sLoadingStarted:Z

    .line 53
    new-instance v0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences$1;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "loadingPreferenceTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public getNextReportTime(Landroid/content/Context;J)J
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences$GoogleAnalyticsNotLoadedException;
        }
    .end annotation

    .prologue
    .line 77
    sget-boolean v1, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;->sPreferencesLoaded:Z

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences$GoogleAnalyticsNotLoadedException;

    invoke-direct {v1}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences$GoogleAnalyticsNotLoadedException;-><init>()V

    throw v1

    .line 80
    :cond_0
    const-string v1, "GoogleAnalyticsPeriodicEvents"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "NEXT_REPORT_TIME"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public setNextReportTime(Landroid/content/Context;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nextReportTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences$GoogleAnalyticsNotLoadedException;
        }
    .end annotation

    .prologue
    .line 96
    sget-boolean v2, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;->sPreferencesLoaded:Z

    if-nez v2, :cond_0

    .line 97
    new-instance v2, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences$GoogleAnalyticsNotLoadedException;

    invoke-direct {v2}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences$GoogleAnalyticsNotLoadedException;-><init>()V

    throw v2

    .line 99
    :cond_0
    const-string v2, "GoogleAnalyticsPeriodicEvents"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 101
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "NEXT_REPORT_TIME"

    invoke-interface {v0, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    return-void
.end method
