.class public Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "HomeAppWidgetHost.java"


# instance fields
.field private mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostId"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 45
    new-instance v0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostView;

    invoke-direct {v0, p1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onProvidersChanged()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->onProvidersChanged()V

    .line 91
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v0}, Lcom/sonymobile/home/model/PackageHandler;->handleWidgetProviderChange()V

    .line 94
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->clearViews()V

    .line 85
    return-void
.end method

.method public setPackageHandler(Lcom/sonymobile/home/model/PackageHandler;)V
    .locals 0
    .param p1, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    .line 55
    return-void
.end method

.method public startListening()V
    .locals 2

    .prologue
    .line 61
    :try_start_0
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->startListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/os/TransactionTooLargeException;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopListening()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 77
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;->clearViews()V

    .line 78
    return-void
.end method
