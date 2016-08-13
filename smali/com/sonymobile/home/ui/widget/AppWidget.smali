.class public Lcom/sonymobile/home/ui/widget/AppWidget;
.super Ljava/lang/Object;
.source "AppWidget.java"


# instance fields
.field private mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

.field private mAppWidgetId:I

.field private final mClassName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appWidgetPackage"    # Ljava/lang/String;
    .param p2, "appWidgetClassName"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/AppWidget;->mPackageName:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/sonymobile/home/ui/widget/AppWidget;->mClassName:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public getAppWidgetHostView()Landroid/appwidget/AppWidgetHostView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/AppWidget;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    return-object v0
.end method

.method public getAppWidgetId()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/sonymobile/home/ui/widget/AppWidget;->mAppWidgetId:I

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/AppWidget;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/AppWidget;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppWidgetHostView(Landroid/appwidget/AppWidgetHostView;)V
    .locals 0
    .param p1, "appWidgetHostView"    # Landroid/appwidget/AppWidgetHostView;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/AppWidget;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    .line 101
    return-void
.end method

.method public setAppWidgetId(I)V
    .locals 0
    .param p1, "appWidgetId"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/sonymobile/home/ui/widget/AppWidget;->mAppWidgetId:I

    .line 82
    return-void
.end method
