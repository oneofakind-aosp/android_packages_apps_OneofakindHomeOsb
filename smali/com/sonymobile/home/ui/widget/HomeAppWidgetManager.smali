.class public Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
.super Ljava/lang/Object;
.source "HomeAppWidgetManager.java"

# interfaces
.implements Lcom/sonymobile/home/ActivityResultHandler$ActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$PendingAppWidget;,
        Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;
    }
.end annotation


# static fields
.field protected static final PADDING_NONE:Landroid/graphics/Rect;


# instance fields
.field protected final mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mCellPadding:I

.field protected final mContext:Landroid/content/Context;

.field protected final mHomeAppWidgetHost:Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

.field private mIntentHandler:Lcom/sonymobile/home/IntentHandler;

.field protected mListening:Z

.field private mMaxCellHeight:I

.field private mMaxCellWidth:I

.field private mMinCellHeight:I

.field private mMinCellWidth:I

.field private final mPendingWidgets:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$PendingAppWidget;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonymobile/home/ui/widget/AppWidget;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetAutoAdvanceManager:Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;

.field private final mWidgetSizeCalculator:Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;

.field protected final mWorker:Lcom/sonymobile/flix/util/Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->PADDING_NONE:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/flix/util/Worker;Lcom/sonymobile/home/resources/ResourceManager;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "worker"    # Lcom/sonymobile/flix/util/Worker;
    .param p3, "resourceManager"    # Lcom/sonymobile/home/resources/ResourceManager;

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    .line 142
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mPendingWidgets:Ljava/util/concurrent/ConcurrentMap;

    .line 145
    new-instance v0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;

    invoke-direct {v0}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mWidgetAutoAdvanceManager:Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;

    .line 158
    iput-object p2, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mWorker:Lcom/sonymobile/flix/util/Worker;

    .line 159
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mContext:Landroid/content/Context;

    .line 160
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 161
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostFactory;->createInstance(Landroid/content/Context;)Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mHomeAppWidgetHost:Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    .line 162
    new-instance v0, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;

    invoke-direct {v0, p3}, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;-><init>(Lcom/sonymobile/home/resources/ResourceManager;)V

    iput-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mWidgetSizeCalculator:Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->isConfigurationNeeded(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;)Lcom/sonymobile/home/IntentHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mPendingWidgets:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Ljava/lang/String;Ljava/lang/String;I)Lcom/sonymobile/home/ui/widget/AppWidget;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->createAppWidget(Ljava/lang/String;Ljava/lang/String;I)Lcom/sonymobile/home/ui/widget/AppWidget;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Landroid/content/ComponentName;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;
    .param p3, "x3"    # Landroid/content/ComponentName;
    .param p4, "x4"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->notifyAppWidgetRegistered(Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;ILandroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/ComponentName;
    .param p3, "x3"    # Landroid/os/UserHandle;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->getWidgetBindIntent(ILandroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->notifyAppWidgetRegistrationFailed(Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Ljava/lang/String;Z)V

    return-void
.end method

.method private addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1
    .param p1, "hostView"    # Landroid/view/View;
    .param p2, "appWidgetInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mWidgetAutoAdvanceManager:Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->addWidgetIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 282
    return-void
.end method

.method private createAppWidget(Ljava/lang/String;Ljava/lang/String;I)Lcom/sonymobile/home/ui/widget/AppWidget;
    .locals 5
    .param p1, "appWidgetPackage"    # Ljava/lang/String;
    .param p2, "appWidgetClassName"    # Ljava/lang/String;
    .param p3, "appWidgetId"    # I

    .prologue
    .line 322
    const/4 v1, 0x0

    .line 323
    .local v1, "retVal":Lcom/sonymobile/home/ui/widget/AppWidget;
    new-instance v0, Lcom/sonymobile/home/ui/widget/AppWidget;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/home/ui/widget/AppWidget;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .local v0, "appWidget":Lcom/sonymobile/home/ui/widget/AppWidget;
    invoke-virtual {v0, p3}, Lcom/sonymobile/home/ui/widget/AppWidget;->setAppWidgetId(I)V

    .line 325
    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/ui/widget/AppWidget;

    .line 326
    .local v2, "value":Lcom/sonymobile/home/ui/widget/AppWidget;
    if-nez v2, :cond_0

    .line 329
    move-object v1, v0

    .line 333
    :goto_0
    return-object v1

    .line 331
    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method private getAppWidgetIdFromIntent(Landroid/content/Intent;)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 821
    if-eqz p1, :cond_0

    .line 822
    const-string v1, "appWidgetId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 825
    :cond_0
    return v0
.end method

.method private getWidgetBindIntent(ILandroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/Intent;
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 642
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 643
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 644
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 645
    const-string v1, "appWidgetProviderProfile"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 646
    const-string v1, "appWidgetProvider"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 649
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isConfigurationNeeded(I)Z
    .locals 2
    .param p1, "appWidgetId"    # I

    .prologue
    .line 627
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->getAppWidgetProviderInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 628
    .local v0, "widgetProviderInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHomeScreenCategory(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 2
    .param p0, "providerInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    const/4 v0, 0x1

    .line 566
    if-eqz p0, :cond_0

    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUniqueWidgetId(Ljava/util/List;Lcom/sonymobile/home/data/WidgetItem;)Z
    .locals 6
    .param p1, "newWidget"    # Lcom/sonymobile/home/data/WidgetItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/data/WidgetItem;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<+Lcom/sonymobile/home/data/Item;>;"
    const/4 v3, 0x1

    .line 603
    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v4

    if-nez v4, :cond_1

    .line 616
    :cond_0
    :goto_0
    return v3

    .line 607
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 608
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    instance-of v4, v1, Lcom/sonymobile/home/data/WidgetItem;

    if-eqz v4, :cond_2

    if-eq v1, p1, :cond_2

    move-object v2, v1

    .line 609
    check-cast v2, Lcom/sonymobile/home/data/WidgetItem;

    .line 611
    .local v2, "widget":Lcom/sonymobile/home/data/WidgetItem;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v4

    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 612
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isValidAppWidget(Landroid/content/Context;Lcom/sonymobile/home/data/WidgetItem;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "widget"    # Lcom/sonymobile/home/data/WidgetItem;

    .prologue
    .line 579
    const/4 v2, 0x0

    .line 580
    .local v2, "valid":Z
    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v3

    .line 581
    .local v3, "widgetId":I
    if-eqz v3, :cond_0

    .line 582
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 583
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 584
    .local v1, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v1, :cond_0

    .line 585
    iget-object v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 589
    .end local v0    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v1    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    :goto_0
    return v2

    .line 585
    .restart local v0    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .restart local v1    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private notifyAppWidgetRegistered(Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Landroid/content/ComponentName;I)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "id"    # I

    .prologue
    .line 831
    new-instance v0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$2;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$2;-><init>(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Landroid/content/ComponentName;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 839
    return-void
.end method

.method private notifyAppWidgetRegistrationFailed(Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;
    .param p3, "widgetName"    # Ljava/lang/String;
    .param p4, "userInterrupted"    # Z

    .prologue
    .line 843
    const-string v0, "HomeAppWidgetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": AppWidget failed to load:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    new-instance v0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$3;

    invoke-direct {v0, p0, p2, p4}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$3;-><init>(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 852
    return-void
.end method

.method private removeWidgetFromAutoAdvance(Landroid/view/View;)V
    .locals 1
    .param p1, "hostView"    # Landroid/view/View;

    .prologue
    .line 290
    if-eqz p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mWidgetAutoAdvanceManager:Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->removeWidget(Landroid/view/View;)V

    .line 293
    :cond_0
    return-void
.end method


# virtual methods
.method protected bindAppWidgetId(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Z
    .locals 4
    .param p1, "appWidgetPackage"    # Ljava/lang/String;
    .param p2, "appWidgetClassName"    # Ljava/lang/String;
    .param p3, "appWidgetId"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 660
    const/4 v1, 0x0

    .line 661
    .local v1, "result":Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    .line 662
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    .local v0, "appWidgetProvider":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, p4, v0, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v1

    .line 667
    .end local v0    # "appWidgetProvider":Landroid/content/ComponentName;
    :cond_0
    return v1
.end method

.method public calculateCellDimensions(Landroid/view/Display;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 171
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v0

    .line 173
    .local v0, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    const v1, 0x7f0b0034

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mMinCellWidth:I

    .line 174
    const v1, 0x7f0b0033

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mMaxCellWidth:I

    .line 175
    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mMinCellHeight:I

    .line 177
    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mMaxCellHeight:I

    .line 178
    const v1, 0x7f0b0106

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mCellPadding:I

    .line 179
    return-void
.end method

.method public createAppWidgetHostView(I)Landroid/appwidget/AppWidgetHostView;
    .locals 8
    .param p1, "appWidgetId"    # I

    .prologue
    .line 671
    const/4 v3, 0x0

    .line 677
    .local v3, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    .line 683
    if-eqz v3, :cond_0

    .line 688
    iget-object v4, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mHomeAppWidgetHost:Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    iget-object v5, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, p1, v3}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 690
    .local v0, "appWidgetView":Landroid/appwidget/AppWidgetHostView;
    iget v4, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mCellPadding:I

    iget v5, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mCellPadding:I

    iget v6, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mCellPadding:I

    iget v7, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mCellPadding:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 691
    invoke-direct {p0, v0, v3}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    .end local v0    # "appWidgetView":Landroid/appwidget/AppWidgetHostView;
    :goto_0
    return-object v0

    .line 699
    :catch_0
    move-exception v1

    .line 700
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Landroid/os/TransactionTooLargeException;

    if-eqz v4, :cond_2

    .line 706
    if-eqz v3, :cond_1

    .line 707
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createView failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 712
    .local v2, "exception":Ljava/lang/RuntimeException;
    :goto_1
    const-string v4, "HomeAppWidgetManager"

    const-string v5, "createAppWidgetHostView failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/sonymobile/home/statistics/TrackingUtil;->trackException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 719
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "exception":Ljava/lang/RuntimeException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 709
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "getAppWidgetInfo failed"

    invoke-direct {v2, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v2    # "exception":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 715
    .end local v2    # "exception":Ljava/lang/RuntimeException;
    :cond_2
    throw v1
.end method

.method public deleteAllWidgets()V
    .locals 1

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->stopListening()V

    .line 553
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 554
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mHomeAppWidgetHost:Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;->deleteHost()V

    .line 555
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mWidgetAutoAdvanceManager:Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->removeAllWidgets()V

    .line 556
    return-void
.end method

.method public deleteAppWidgetId(I)V
    .locals 1
    .param p1, "widgetId"    # I

    .prologue
    .line 543
    if-eqz p1, :cond_0

    .line 544
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mHomeAppWidgetHost:Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;->deleteAppWidgetId(I)V

    .line 546
    :cond_0
    return-void
.end method

.method public destroyAppWidget(I)V
    .locals 3
    .param p1, "widgetId"    # I

    .prologue
    .line 525
    if-eqz p1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ui/widget/AppWidget;

    .line 528
    .local v0, "widget":Lcom/sonymobile/home/ui/widget/AppWidget;
    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/AppWidget;->getAppWidgetHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->removeWidgetFromAutoAdvance(Landroid/view/View;)V

    .line 530
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/widget/AppWidget;->setAppWidgetHostView(Landroid/appwidget/AppWidgetHostView;)V

    .line 533
    .end local v0    # "widget":Lcom/sonymobile/home/ui/widget/AppWidget;
    :cond_0
    return-void
.end method

.method public enableAutoAdvance(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mWidgetAutoAdvanceManager:Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->enable(Z)V

    .line 272
    return-void
.end method

.method protected getAppWidgetProviderInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1
    .param p1, "appWidgetId"    # I

    .prologue
    .line 653
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSpanXY(I)[I
    .locals 3
    .param p1, "appWidgetId"    # I

    .prologue
    .line 761
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 762
    .local v0, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v0, :cond_0

    .line 763
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid appWidgetId"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mWidgetSizeCalculator:Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;

    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->getDefaultWidgetSpanXY(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v1

    return-object v1
.end method

.method public getHomeAppWidgetHost()Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mHomeAppWidgetHost:Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    return-object v0
.end method

.method public getMaxCellHeight()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mMaxCellHeight:I

    return v0
.end method

.method public getMaxCellWidth()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mMaxCellWidth:I

    return v0
.end method

.method public getMinCellHeight()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mMinCellHeight:I

    return v0
.end method

.method public getMinCellWidth()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mMinCellWidth:I

    return v0
.end method

.method public getMinimumSpanXY(I)[I
    .locals 3
    .param p1, "appWidgetId"    # I

    .prologue
    .line 776
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 777
    .local v0, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v0, :cond_0

    .line 778
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid appWidgetId"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 780
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mWidgetSizeCalculator:Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;

    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->getMinimumSpan(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v1

    return-object v1
.end method

.method public getRegisteredAppWidget(ILjava/lang/String;Ljava/lang/String;)Lcom/sonymobile/home/ui/widget/AppWidget;
    .locals 3
    .param p1, "appWidgetId"    # I
    .param p2, "appWidgetPackageName"    # Ljava/lang/String;
    .param p3, "appWidgetClassName"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ui/widget/AppWidget;

    .line 306
    .local v0, "appWidget":Lcom/sonymobile/home/ui/widget/AppWidget;
    if-nez v0, :cond_0

    .line 307
    invoke-direct {p0, p2, p3, p1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->createAppWidget(Ljava/lang/String;Ljava/lang/String;I)Lcom/sonymobile/home/ui/widget/AppWidget;

    move-result-object v0

    .line 309
    :cond_0
    return-object v0
.end method

.method public getResizeMode(I)I
    .locals 2
    .param p1, "appWidgetId"    # I

    .prologue
    .line 723
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 727
    .local v0, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_0

    .line 728
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 730
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadLabel(I)Ljava/lang/String;
    .locals 4
    .param p1, "appWidgetId"    # I

    .prologue
    .line 741
    const/4 v0, 0x0

    .line 742
    .local v0, "label":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 743
    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 745
    .local v2, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v2, :cond_0

    .line 746
    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 747
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    .line 750
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 785
    invoke-direct {p0, p3}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->getAppWidgetIdFromIntent(Landroid/content/Intent;)I

    move-result v0

    .line 786
    .local v0, "appWidgetId":I
    iget-object v6, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mPendingWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$PendingAppWidget;

    .line 788
    .local v4, "pendingWidget":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$PendingAppWidget;
    if-nez v4, :cond_0

    .line 818
    :goto_0
    return-void

    .line 792
    :cond_0
    if-nez v0, :cond_1

    .line 794
    const/4 p2, 0x0

    .line 797
    :cond_1
    const/4 v6, -0x1

    if-ne p2, v6, :cond_2

    .line 798
    iget-object v1, v4, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$PendingAppWidget;->mCallback:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;

    .line 799
    .local v1, "callback":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;
    iget-object v3, v4, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$PendingAppWidget;->mHandler:Landroid/os/Handler;

    .line 800
    .local v3, "handler":Landroid/os/Handler;
    iget-object v2, v4, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$PendingAppWidget;->mComponentName:Landroid/content/ComponentName;

    .line 802
    .local v2, "component":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->createAppWidget(Ljava/lang/String;Ljava/lang/String;I)Lcom/sonymobile/home/ui/widget/AppWidget;

    .line 805
    invoke-direct {p0, v3, v1, v2, v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->notifyAppWidgetRegistered(Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 807
    .end local v1    # "callback":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v3    # "handler":Landroid/os/Handler;
    :cond_2
    const-string v5, ""

    .line 809
    .local v5, "widgetName":Ljava/lang/String;
    iget-object v6, v4, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$PendingAppWidget;->mComponentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_3

    .line 810
    iget-object v6, v4, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$PendingAppWidget;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 813
    :cond_3
    iget-object v6, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mHomeAppWidgetHost:Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    iget v7, v4, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$PendingAppWidget;->mWidgetId:I

    invoke-virtual {v6, v7}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;->deleteAppWidgetId(I)V

    .line 815
    iget-object v6, v4, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$PendingAppWidget;->mHandler:Landroid/os/Handler;

    iget-object v7, v4, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$PendingAppWidget;->mCallback:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v5, v8}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->notifyAppWidgetRegistrationFailed(Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->stopListening()V

    .line 226
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 227
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mHomeAppWidgetHost:Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;->removeAllViews()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    .line 229
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mWidgetAutoAdvanceManager:Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->onDestroy()V

    .line 230
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sonymobile/home/HomeApplication;->watch(Landroid/content/Context;Ljava/lang/Object;)V

    .line 231
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 183
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mHomeAppWidgetHost:Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;->removeAllViews()V

    .line 184
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mWidgetAutoAdvanceManager:Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->removeAllWidgets()V

    .line 185
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->stopListening()V

    .line 186
    return-void
.end method

.method public registerAppWidgetAsync(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Landroid/os/Handler;)V
    .locals 8
    .param p1, "appWidgetPackage"    # Ljava/lang/String;
    .param p2, "appWidgetClassName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "callback"    # Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 388
    iget-object v7, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mWorker:Lcom/sonymobile/flix/util/Worker;

    new-instance v0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;-><init>(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Landroid/os/Handler;)V

    invoke-virtual {v7, v0}, Lcom/sonymobile/flix/util/Worker;->post(Lcom/sonymobile/flix/util/Worker$Task;)V

    .line 464
    return-void
.end method

.method public registerAppWidgetIdSync(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 6
    .param p1, "appWidgetPackage"    # Ljava/lang/String;
    .param p2, "appWidgetClassName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 348
    if-nez p3, :cond_1

    .line 349
    const/4 v2, 0x0

    .line 370
    :cond_0
    :goto_0
    return v2

    .line 352
    :cond_1
    const/4 v2, 0x0

    .line 353
    .local v2, "retVal":I
    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mHomeAppWidgetHost:Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    invoke-virtual {v3}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 355
    .local v0, "appWidgetId":I
    if-eqz v0, :cond_0

    .line 357
    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->bindAppWidgetId(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 358
    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->createAppWidget(Ljava/lang/String;Ljava/lang/String;I)Lcom/sonymobile/home/ui/widget/AppWidget;

    .line 360
    move v2, v0

    goto :goto_0

    .line 363
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mHomeAppWidgetHost:Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    invoke-virtual {v3, v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mHomeAppWidgetHost:Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    invoke-virtual {v3, v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;->deleteAppWidgetId(I)V

    .line 367
    const-string v3, "HomeAppWidgetManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to bind widget"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeAppWidget(I)V
    .locals 3
    .param p1, "widgetId"    # I

    .prologue
    .line 508
    if-eqz p1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ui/widget/AppWidget;

    .line 510
    .local v0, "widget":Lcom/sonymobile/home/ui/widget/AppWidget;
    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->destroyAppWidget(I)V

    .line 512
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mHomeAppWidgetHost:Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;->deleteAppWidgetId(I)V

    .line 515
    .end local v0    # "widget":Lcom/sonymobile/home/ui/widget/AppWidget;
    :cond_0
    return-void
.end method

.method public removeAppWidget(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 474
    const/4 v3, 0x0

    .line 475
    .local v3, "result":Z
    const/4 v6, 0x0

    .line 477
    .local v6, "widgetIdToRemove":I
    iget-object v7, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 478
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonymobile/home/ui/widget/AppWidget;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 479
    .local v5, "widgetId":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ui/widget/AppWidget;

    .line 480
    .local v0, "appWidget":Lcom/sonymobile/home/ui/widget/AppWidget;
    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/AppWidget;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/AppWidget;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 482
    iget-object v7, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mHomeAppWidgetHost:Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    invoke-virtual {v7, v5}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;->deleteAppWidgetId(I)V

    .line 483
    move v6, v5

    .line 484
    const/4 v3, 0x1

    .line 490
    .end local v0    # "appWidget":Lcom/sonymobile/home/ui/widget/AppWidget;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonymobile/home/ui/widget/AppWidget;>;"
    .end local v5    # "widgetId":I
    :cond_1
    if-eqz v3, :cond_2

    if-eqz v6, :cond_2

    .line 491
    iget-object v7, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/ui/widget/AppWidget;

    .line 492
    .local v4, "widget":Lcom/sonymobile/home/ui/widget/AppWidget;
    if-eqz v4, :cond_2

    .line 493
    invoke-virtual {v4}, Lcom/sonymobile/home/ui/widget/AppWidget;->getAppWidgetHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->removeWidgetFromAutoAdvance(Landroid/view/View;)V

    .line 494
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/sonymobile/home/ui/widget/AppWidget;->setAppWidgetHostView(Landroid/appwidget/AppWidgetHostView;)V

    .line 498
    .end local v4    # "widget":Lcom/sonymobile/home/ui/widget/AppWidget;
    :cond_2
    return v3
.end method

.method public setIntentHandler(Lcom/sonymobile/home/IntentHandler;)V
    .locals 0
    .param p1, "intentHandler"    # Lcom/sonymobile/home/IntentHandler;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    .line 263
    return-void
.end method

.method public startListening()V
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mListening:Z

    if-nez v0, :cond_0

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mListening:Z

    .line 240
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mHomeAppWidgetHost:Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;->startListening()V

    .line 245
    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mListening:Z

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mListening:Z

    .line 250
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mHomeAppWidgetHost:Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;->stopListening()V

    .line 255
    :cond_0
    return-void
.end method
