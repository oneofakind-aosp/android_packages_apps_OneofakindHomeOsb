.class public Lcom/sonymobile/home/ui/widget/HomeAppWidgetProviderLoader;
.super Ljava/lang/Object;
.source "HomeAppWidgetProviderLoader.java"


# instance fields
.field private final mAppWidgetManager:Landroid/appwidget/AppWidgetManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetProviderLoader;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 29
    return-void
.end method


# virtual methods
.method public getAppWidgetProviderInfoList(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetProviderLoader;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
