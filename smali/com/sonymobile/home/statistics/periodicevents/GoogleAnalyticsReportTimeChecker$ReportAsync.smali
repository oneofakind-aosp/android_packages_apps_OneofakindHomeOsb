.class Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker$ReportAsync;
.super Landroid/os/AsyncTask;
.source "GoogleAnalyticsReportTimeChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReportAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker$1;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker$ReportAsync;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 206
    check-cast p1, [Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsReportTimeChecker$ReportAsync;->doInBackground([Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;)Ljava/lang/Void;
    .locals 5
    .param p1, "googleAnalyticsReporters"    # [Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;

    .prologue
    .line 209
    if-eqz p1, :cond_1

    .line 210
    move-object v0, p1

    .local v0, "arr$":[Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 211
    .local v3, "reporter":Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;
    if-eqz v3, :cond_0

    .line 212
    invoke-interface {v3}, Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;->reportDataToGoogle()V

    .line 210
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "arr$":[Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "reporter":Lcom/sonymobile/home/statistics/periodicevents/reporters/GoogleAnalyticsReporter;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method
