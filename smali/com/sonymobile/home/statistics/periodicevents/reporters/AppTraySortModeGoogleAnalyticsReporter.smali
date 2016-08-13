.class public Lcom/sonymobile/home/statistics/periodicevents/reporters/AppTraySortModeGoogleAnalyticsReporter;
.super Ljava/lang/Object;
.source "AppTraySortModeGoogleAnalyticsReporter.java"

# interfaces
.implements Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sonymobile/home/statistics/periodicevents/reporters/AppTraySortModeGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public reportDataToGoogle()V
    .locals 6

    .prologue
    .line 40
    iget-object v2, p0, Lcom/sonymobile/home/statistics/periodicevents/reporters/AppTraySortModeGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->readSortOrderChangedBySync(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/home/statistics/periodicevents/reporters/AppTraySortModeGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->readSortOrderSync(Landroid/content/Context;)Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->name()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "label":Ljava/lang/String;
    const-string v2, "PeriodicEvents_AppTraySortMode"

    const-wide/16 v4, 0x0

    invoke-static {v2, v0, v1, v4, v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 43
    return-void
.end method
