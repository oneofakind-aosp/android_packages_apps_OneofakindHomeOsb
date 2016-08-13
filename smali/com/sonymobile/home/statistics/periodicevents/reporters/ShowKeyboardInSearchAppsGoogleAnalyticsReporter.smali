.class public Lcom/sonymobile/home/statistics/periodicevents/reporters/ShowKeyboardInSearchAppsGoogleAnalyticsReporter;
.super Ljava/lang/Object;
.source "ShowKeyboardInSearchAppsGoogleAnalyticsReporter.java"

# interfaces
.implements Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sonymobile/home/statistics/periodicevents/reporters/ShowKeyboardInSearchAppsGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public reportDataToGoogle()V
    .locals 6

    .prologue
    .line 31
    iget-object v2, p0, Lcom/sonymobile/home/statistics/periodicevents/reporters/ShowKeyboardInSearchAppsGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->getSourceForShowKeyboardInSearchApps(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/home/statistics/periodicevents/reporters/ShowKeyboardInSearchAppsGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->isKeyboardShownWhenEnteringSearchApps(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "label":Ljava/lang/String;
    const-string v2, "PeriodicEvents_ShowKeyboardInSearchApps"

    const-wide/16 v4, 0x0

    invoke-static {v2, v0, v1, v4, v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 34
    return-void
.end method
