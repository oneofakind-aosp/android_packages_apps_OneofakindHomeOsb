.class Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$PendingAppWidget;
.super Ljava/lang/Object;
.source "HomeAppWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingAppWidget"
.end annotation


# instance fields
.field final mCallback:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;

.field final mComponentName:Landroid/content/ComponentName;

.field final mHandler:Landroid/os/Handler;

.field final mWidgetId:I


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "widgetId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "callback"    # Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$PendingAppWidget;->mWidgetId:I

    .line 126
    iput-object p2, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$PendingAppWidget;->mComponentName:Landroid/content/ComponentName;

    .line 127
    iput-object p3, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$PendingAppWidget;->mCallback:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;

    .line 128
    iput-object p4, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$PendingAppWidget;->mHandler:Landroid/os/Handler;

    .line 129
    return-void
.end method
