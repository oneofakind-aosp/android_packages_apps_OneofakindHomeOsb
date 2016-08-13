.class public Lcom/sonymobile/home/statistics/periodicevents/reporters/HomeModeGoogleAnalyticsReporter;
.super Ljava/lang/Object;
.source "HomeModeGoogleAnalyticsReporter.java"

# interfaces
.implements Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sonymobile/home/statistics/periodicevents/reporters/HomeModeGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private getUserReadableString(Z)Ljava/lang/String;
    .locals 1
    .param p1, "automaticDesktopMode"    # Z

    .prologue
    .line 46
    if-eqz p1, :cond_0

    const-string v0, "ModernMode"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ClassicMode"

    goto :goto_0
.end method


# virtual methods
.method public reportDataToGoogle()V
    .locals 6

    .prologue
    .line 39
    iget-object v2, p0, Lcom/sonymobile/home/statistics/periodicevents/reporters/HomeModeGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->getSourceForHomeMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/home/statistics/periodicevents/reporters/HomeModeGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->isAutomaticDesktopMode(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/sonymobile/home/statistics/periodicevents/reporters/HomeModeGoogleAnalyticsReporter;->getUserReadableString(Z)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "label":Ljava/lang/String;
    const-string v2, "PeriodicEvents_HomeMode"

    const-wide/16 v4, 0x0

    invoke-static {v2, v0, v1, v4, v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 43
    return-void
.end method
