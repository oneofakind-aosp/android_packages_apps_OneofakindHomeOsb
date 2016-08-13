.class public Lcom/sonymobile/home/statistics/periodicevents/reporters/OnlineSearchGoogleAnalyticsReporter;
.super Ljava/lang/Object;
.source "OnlineSearchGoogleAnalyticsReporter.java"

# interfaces
.implements Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sonymobile/home/statistics/periodicevents/reporters/OnlineSearchGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public reportDataToGoogle()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 42
    iget-object v4, p0, Lcom/sonymobile/home/statistics/periodicevents/reporters/OnlineSearchGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->getSourceForOnlineSearchOn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/home/statistics/periodicevents/reporters/OnlineSearchGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->isOnlineSuggestionsOn(Landroid/content/Context;)Z

    move-result v1

    .line 45
    .local v1, "onlineSuggestionsOn":Z
    const-string v4, "PeriodicEvents_OnlineSuggestionsFeatureEnabled"

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5, v6, v7}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 48
    iget-object v4, p0, Lcom/sonymobile/home/statistics/periodicevents/reporters/OnlineSearchGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->getSourceForPersonalizeRecommendations(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "personalizationAction":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/sonymobile/home/statistics/periodicevents/reporters/OnlineSearchGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->usePersonalizedRecommendations(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 52
    .local v3, "personalize":Z
    :goto_0
    const-string v4, "PeriodicEvents_OnlineSuggestionsPersonalizationEnabled"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v5, v6, v7}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 54
    return-void

    .line 50
    .end local v3    # "personalize":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
