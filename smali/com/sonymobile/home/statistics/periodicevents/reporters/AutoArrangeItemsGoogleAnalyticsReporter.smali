.class public Lcom/sonymobile/home/statistics/periodicevents/reporters/AutoArrangeItemsGoogleAnalyticsReporter;
.super Ljava/lang/Object;
.source "AutoArrangeItemsGoogleAnalyticsReporter.java"

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
    iput-object p1, p0, Lcom/sonymobile/home/statistics/periodicevents/reporters/AutoArrangeItemsGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private getUserReadableString(Z)Ljava/lang/String;
    .locals 1
    .param p1, "automaticDesktopMode"    # Z

    .prologue
    .line 53
    if-eqz p1, :cond_0

    const-string v0, "AutoArrangeItems"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "FreePlacementAndPush"

    goto :goto_0
.end method


# virtual methods
.method public reportDataToGoogle()V
    .locals 6

    .prologue
    .line 39
    iget-object v2, p0, Lcom/sonymobile/home/statistics/periodicevents/reporters/AutoArrangeItemsGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->isAutomaticDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/statistics/periodicevents/reporters/AutoArrangeItemsGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->getSourceAutoArrange(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/home/statistics/periodicevents/reporters/AutoArrangeItemsGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->isAutoArrangeEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/sonymobile/home/statistics/periodicevents/reporters/AutoArrangeItemsGoogleAnalyticsReporter;->getUserReadableString(Z)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "label":Ljava/lang/String;
    const-string v2, "PeriodicEvents_AutoArrangeItems"

    const-wide/16 v4, 0x0

    invoke-static {v2, v0, v1, v4, v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method
