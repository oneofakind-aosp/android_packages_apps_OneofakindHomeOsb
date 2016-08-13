.class public Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;
.super Landroid/appwidget/AppWidgetProviderInfo;
.source "AdvWidgetProviderInfo.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field public hardwareLayer:Z

.field public isScrollable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->isScrollable:Z

    return-void
.end method
