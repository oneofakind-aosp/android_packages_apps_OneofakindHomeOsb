.class final Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences$1;
.super Landroid/os/AsyncTask;
.source "GoogleAnalyticsPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;->preloadPreferences(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences$1;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 56
    iget-object v1, p0, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences$1;->val$applicationContext:Landroid/content/Context;

    const-string v2, "GoogleAnalyticsPeriodicEvents"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 59
    const/4 v1, 0x1

    # setter for: Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;->sPreferencesLoaded:Z
    invoke-static {v1}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;->access$002(Z)Z

    .line 60
    const/4 v1, 0x0

    return-object v1
.end method
