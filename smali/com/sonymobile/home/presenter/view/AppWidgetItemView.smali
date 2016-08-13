.class public Lcom/sonymobile/home/presenter/view/AppWidgetItemView;
.super Lcom/sonymobile/home/ui/pageview/PageItemView;
.source "AppWidgetItemView.java"

# interfaces
.implements Lcom/sonymobile/home/presenter/view/HasViewWrapper;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

.field private mColSpan:I

.field private mContentDescription:Ljava/lang/String;

.field private mHomeAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

.field private mRowSpan:I

.field private mWidgetPlaceHolderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/ui/pageview/PageItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mHomeAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mContentDescription:Ljava/lang/String;

    .line 72
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->setAnimateClick(Z)V

    .line 73
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->setClickSound(Z)V

    .line 76
    invoke-virtual {p2}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->setName(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/ui/widget/AppWidget;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/ui/widget/AppWidget;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->trackWidgetLoadSuccess(Lcom/sonymobile/home/ui/widget/AppWidget;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/sonymobile/home/ui/widget/AppWidget;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/sonymobile/home/ui/widget/AppWidget;
    .param p2, "x2"    # I

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->scheduleRetryInitAppWidgetHostView(Landroid/content/Context;Lcom/sonymobile/home/ui/widget/AppWidget;I)V

    return-void
.end method

.method private convertPxToDp(I)I
    .locals 3
    .param p1, "pixels"    # I

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 323
    .local v0, "dm":Landroid/util/DisplayMetrics;
    int-to-float v1, p1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private createErrorLabel(Lcom/sonymobile/home/ui/widget/AppWidget;)Ljava/lang/String;
    .locals 3
    .param p1, "appWidget"    # Lcom/sonymobile/home/ui/widget/AppWidget;

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 467
    .local v1, "resources":Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    const v2, 0x7f08009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, "labelBuilder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 470
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/AppWidget;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createPlaceHolderLabel(Lcom/sonymobile/home/ui/widget/AppWidget;)Ljava/lang/String;
    .locals 5
    .param p1, "appWidget"    # Lcom/sonymobile/home/ui/widget/AppWidget;

    .prologue
    .line 444
    const/4 v3, 0x0

    .line 445
    .local v3, "label":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 447
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 448
    .local v1, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/AppWidget;->getAppWidgetId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 449
    .local v0, "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v3

    .line 454
    .end local v0    # "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v1    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v2    # "context":Landroid/content/Context;
    :cond_0
    if-nez v3, :cond_1

    .line 455
    iget-object v4, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mContentDescription:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 456
    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mContentDescription:Ljava/lang/String;

    .line 462
    :cond_1
    :goto_0
    return-object v3

    .line 458
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->createErrorLabel(Lcom/sonymobile/home/ui/widget/AppWidget;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private removeCurrentWidgetView()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    const-string v1, "KeyboardFocusManager.NotFocusable"

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;->removeProperty(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    .line 416
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->setName(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getButton()Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setDescription(Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method private static scheduleRetryInitAppWidgetHostView(Landroid/content/Context;Lcom/sonymobile/home/ui/widget/AppWidget;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidget"    # Lcom/sonymobile/home/ui/widget/AppWidget;
    .param p2, "attemptNbr"    # I

    .prologue
    .line 225
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;

    invoke-direct {v1, p2, p1, p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;-><init>(ILcom/sonymobile/home/ui/widget/AppWidget;Landroid/content/Context;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    return-void
.end method

.method private showWidgetPlaceHolderView(ZLcom/sonymobile/home/ui/widget/AppWidget;)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "appWidget"    # Lcom/sonymobile/home/ui/widget/AppWidget;

    .prologue
    .line 428
    if-eqz p1, :cond_2

    .line 429
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mWidgetPlaceHolderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->createPlaceHolderLabel(Lcom/sonymobile/home/ui/widget/AppWidget;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;-><init>(Lcom/sonymobile/flix/components/Scene;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mWidgetPlaceHolderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    .line 431
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mWidgetPlaceHolderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->setSize(FF)V

    .line 432
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getBlockingArea()Lcom/sonymobile/flix/components/TouchArea;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mWidgetPlaceHolderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->addChildAfter(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)Z

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mWidgetPlaceHolderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->setVisible(Z)V

    .line 441
    :cond_1
    :goto_0
    return-void

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mWidgetPlaceHolderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mWidgetPlaceHolderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->setVisible(Z)V

    goto :goto_0
.end method

.method private static trackWidgetLoadError(Lcom/sonymobile/home/ui/widget/AppWidget;)V
    .locals 6
    .param p0, "appWidget"    # Lcom/sonymobile/home/ui/widget/AppWidget;

    .prologue
    .line 191
    if-nez p0, :cond_0

    const-string v0, "appWidget is null, "

    .line 195
    .local v0, "log":Ljava/lang/String;
    :goto_0
    const-string v1, "General"

    const-string v2, "ErrorLoadingWidget"

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v0, v4, v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 197
    sget-object v1, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void

    .line 191
    .end local v0    # "log":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appWidgetManager is null, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/AppWidget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/AppWidget;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static trackWidgetLoadFailure(Lcom/sonymobile/home/ui/widget/AppWidget;)V
    .locals 8
    .param p0, "appWidget"    # Lcom/sonymobile/home/ui/widget/AppWidget;

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/AppWidget;->getAppWidgetId()I

    move-result v2

    .line 180
    .local v2, "widgetId":I
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 181
    .local v1, "validId":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appWidgetHostView is null, widget id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/AppWidget;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/AppWidget;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "log":Ljava/lang/String;
    const-string v3, "General"

    const-string v4, "ErrorLoadingWidget"

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v0, v6, v7}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 187
    sget-object v3, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void

    .line 180
    .end local v0    # "log":Ljava/lang/String;
    .end local v1    # "validId":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 181
    .restart local v1    # "validId":Z
    :cond_1
    const-string v3, "invalid"

    goto :goto_1
.end method

.method private static trackWidgetLoadSuccess(Lcom/sonymobile/home/ui/widget/AppWidget;I)V
    .locals 6
    .param p0, "appWidget"    # Lcom/sonymobile/home/ui/widget/AppWidget;
    .param p1, "attemptNbr"    # I

    .prologue
    .line 202
    if-lez p1, :cond_0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App widget host view loaded on retry # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Widget id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/AppWidget;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/AppWidget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/AppWidget;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "log":Ljava/lang/String;
    const-string v1, "General"

    const-string v2, "LoadedWidgetAfterRetry"

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v0, v4, v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 209
    sget-object v1, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .end local v0    # "log":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected doLongPress(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 394
    invoke-super {p0, p1, p2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->doLongPress(FF)V

    .line 395
    return-void
.end method

.method public getDefaultPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->getWidgetDefaultPaddingFromResources(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getResizeInfo()Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v2

    .line 345
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    if-eqz v2, :cond_0

    iget-object v7, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mHomeAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    if-eqz v7, :cond_0

    .line 346
    check-cast v2, Lcom/sonymobile/home/data/WidgetItem;

    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v0

    .line 347
    .local v0, "appWidgetId":I
    iget-object v7, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mHomeAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    invoke-virtual {v7, v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->getResizeMode(I)I

    move-result v5

    .line 348
    .local v5, "resizeMode":I
    if-eqz v5, :cond_0

    .line 350
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mHomeAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    invoke-virtual {v7, v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->getMinimumSpanXY(I)[I

    move-result-object v3

    .line 351
    .local v3, "minSpanXY":[I
    new-instance v4, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;

    invoke-direct {v4}, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;-><init>()V

    .line 352
    .local v4, "resizeInfo":Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;
    iput v5, v4, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;->mode:I

    .line 353
    const/4 v7, 0x0

    aget v7, v3, v7

    iput v7, v4, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;->minSpanX:I

    .line 354
    const/4 v7, 0x1

    aget v7, v3, v7

    iput v7, v4, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;->minSpanY:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v0    # "appWidgetId":I
    .end local v3    # "minSpanXY":[I
    .end local v4    # "resizeInfo":Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;
    .end local v5    # "resizeMode":I
    :goto_0
    return-object v4

    .line 356
    .restart local v0    # "appWidgetId":I
    .restart local v5    # "resizeMode":I
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal appWidgetId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/flix/debug/Logx;->e(Ljava/lang/String;)V

    move-object v4, v6

    .line 358
    goto :goto_0

    .end local v0    # "appWidgetId":I
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "resizeMode":I
    :cond_0
    move-object v4, v6

    .line 363
    goto :goto_0
.end method

.method public getViewWrapper()Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    return-object v0
.end method

.method public isResizable()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 328
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    .line 329
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mHomeAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    if-eqz v4, :cond_0

    .line 330
    check-cast v1, Lcom/sonymobile/home/data/WidgetItem;

    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v0

    .line 331
    .local v0, "appWidgetId":I
    iget-object v4, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mHomeAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    invoke-virtual {v4, v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->getResizeMode(I)I

    move-result v2

    .line 332
    .local v2, "resizeMode":I
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 334
    .end local v0    # "appWidgetId":I
    .end local v2    # "resizeMode":I
    :cond_0
    return v3
.end method

.method public onDefocus()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;->setCachedDrawingEnabled(Z)V

    .line 409
    :cond_0
    return-void
.end method

.method public onFocus()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;->setCachedDrawingEnabled(Z)V

    .line 402
    :cond_0
    return-void
.end method

.method public onLayout(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    .line 288
    .local v0, "loc":Lcom/sonymobile/home/data/ItemLocation;
    iget-object v1, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iget-object v2, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->onResizeLayout(II)V

    .line 289
    return-void
.end method

.method public onRelease()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 368
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 370
    iput-object v1, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mWidgetPlaceHolderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mWidgetPlaceHolderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 374
    iput-object v1, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mWidgetPlaceHolderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    .line 376
    :cond_1
    iput-object v1, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mHomeAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    .line 377
    return-void
.end method

.method public onRemove()V
    .locals 3

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    .line 383
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mHomeAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    if-eqz v2, :cond_0

    .line 385
    check-cast v1, Lcom/sonymobile/home/data/WidgetItem;

    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v0

    .line 386
    .local v0, "appId":I
    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mHomeAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->removeAppWidget(I)V

    .line 388
    .end local v0    # "appId":I
    :cond_0
    return-void
.end method

.method public onResizeLayout(II)V
    .locals 13
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I

    .prologue
    const/4 v1, 0x0

    .line 293
    iget-object v11, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mHomeAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    if-eqz v11, :cond_1

    .line 294
    iget v11, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mColSpan:I

    if-ne p1, v11, :cond_0

    iget v11, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mRowSpan:I

    if-eq p2, v11, :cond_1

    .line 295
    :cond_0
    iput p1, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mColSpan:I

    .line 296
    iput p2, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mRowSpan:I

    .line 298
    iget-object v11, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    invoke-virtual {v11}, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 299
    .local v0, "appWidgetHostView":Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {v11, v12, v1}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    .line 301
    .local v9, "platformDefaultPadding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 302
    .local v10, "resources":Landroid/content/res/Resources;
    const v11, 0x7f0b0106

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 303
    .local v6, "cellPadding":I
    iget v11, v9, Landroid/graphics/Rect;->left:I

    iget v12, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    mul-int/lit8 v12, v6, 0x2

    sub-int v8, v11, v12

    .line 304
    .local v8, "paddingCompensationWidth":I
    iget v11, v9, Landroid/graphics/Rect;->top:I

    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    mul-int/lit8 v12, v6, 0x2

    sub-int v7, v11, v12

    .line 306
    .local v7, "paddingCompensationHeight":I
    iget-object v11, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mHomeAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    invoke-virtual {v11}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->getMinCellWidth()I

    move-result v11

    mul-int/2addr v11, p1

    add-int/2addr v11, v8

    invoke-direct {p0, v11}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->convertPxToDp(I)I

    move-result v2

    .line 308
    .local v2, "minWidth":I
    iget-object v11, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mHomeAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    invoke-virtual {v11}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->getMinCellHeight()I

    move-result v11

    mul-int/2addr v11, p2

    add-int/2addr v11, v7

    invoke-direct {p0, v11}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->convertPxToDp(I)I

    move-result v3

    .line 310
    .local v3, "minHeight":I
    iget-object v11, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mHomeAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    invoke-virtual {v11}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->getMaxCellWidth()I

    move-result v11

    mul-int/2addr v11, p1

    add-int/2addr v11, v8

    invoke-direct {p0, v11}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->convertPxToDp(I)I

    move-result v4

    .line 312
    .local v4, "maxWidth":I
    iget-object v11, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mHomeAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    invoke-virtual {v11}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->getMaxCellHeight()I

    move-result v11

    mul-int/2addr v11, p2

    add-int/2addr v11, v7

    invoke-direct {p0, v11}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->convertPxToDp(I)I

    move-result v5

    .line 315
    .local v5, "maxHeight":I
    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    .line 319
    .end local v0    # "appWidgetHostView":Landroid/appwidget/AppWidgetHostView;
    .end local v2    # "minWidth":I
    .end local v3    # "minHeight":I
    .end local v4    # "maxWidth":I
    .end local v5    # "maxHeight":I
    .end local v6    # "cellPadding":I
    .end local v7    # "paddingCompensationHeight":I
    .end local v8    # "paddingCompensationWidth":I
    .end local v9    # "platformDefaultPadding":Landroid/graphics/Rect;
    .end local v10    # "resources":Landroid/content/res/Resources;
    :cond_1
    return-void
.end method

.method public setAppWidget(Lcom/sonymobile/home/ui/widget/AppWidget;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;ZZ)V
    .locals 9
    .param p1, "appWidget"    # Lcom/sonymobile/home/ui/widget/AppWidget;
    .param p2, "appWidgetManager"    # Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    .param p3, "isDefault"    # Z
    .param p4, "isSafeMode"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 99
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    if-eqz v1, :cond_0

    .line 100
    if-nez p1, :cond_4

    .line 102
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->removeCurrentWidgetView()V

    .line 117
    :cond_0
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->showWidgetPlaceHolderView(ZLcom/sonymobile/home/ui/widget/AppWidget;)V

    .line 119
    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    .line 120
    iput-object p2, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mHomeAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    .line 123
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/AppWidget;->getAppWidgetHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    .line 124
    .local v2, "appWidgetHostView":Landroid/appwidget/AppWidgetHostView;
    if-nez v2, :cond_1

    .line 126
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/AppWidget;->getAppWidgetId()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->createAppWidgetHostView(I)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    .line 129
    invoke-virtual {p1, v2}, Lcom/sonymobile/home/ui/widget/AppWidget;->setAppWidgetHostView(Landroid/appwidget/AppWidgetHostView;)V

    .line 132
    :cond_1
    if-eqz v2, :cond_8

    .line 133
    if-eqz p4, :cond_6

    .line 134
    if-nez p3, :cond_2

    move v0, v7

    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->showWidgetPlaceHolderView(ZLcom/sonymobile/home/ui/widget/AppWidget;)V

    .line 176
    .end local v2    # "appWidgetHostView":Landroid/appwidget/AppWidgetHostView;
    :cond_3
    :goto_1
    return-void

    .line 104
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/AppWidget;->getAppWidgetHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    if-eq v1, v3, :cond_3

    .line 111
    :cond_5
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->removeCurrentWidgetView()V

    goto :goto_0

    .line 140
    .restart local v2    # "appWidgetHostView":Landroid/appwidget/AppWidgetHostView;
    :cond_6
    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 141
    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 144
    :cond_7
    new-instance v0, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getHeight()F

    move-result v4

    new-instance v5, Lcom/sonymobile/home/presenter/view/WidgetItemViewCreator$FindBlockingContainer;

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/sonymobile/home/presenter/view/WidgetItemViewCreator$FindBlockingContainer;-><init>(Landroid/content/Context;)V

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/view/View;FFLcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;)V

    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    .line 146
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    const-string v1, "KeyboardFocusManager.NotFocusable"

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;->setProperty(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    invoke-virtual {v0, v7}, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;->setAutoUpdateViewBounds(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getBlockingArea()Lcom/sonymobile/flix/components/TouchArea;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->addChildAfter(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)Z

    .line 149
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mContentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->setName(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getButton()Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setDescription(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->updateLifecycleState()V

    .line 154
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getLifeCycleState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 155
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    invoke-virtual {v0, v7}, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;->setCachedDrawingEnabled(Z)V

    goto :goto_1

    .line 160
    :cond_8
    if-nez p3, :cond_9

    :goto_2
    invoke-direct {p0, v7, p1}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->showWidgetPlaceHolderView(ZLcom/sonymobile/home/ui/widget/AppWidget;)V

    .line 161
    if-nez p4, :cond_3

    if-nez p3, :cond_3

    .line 162
    sget-object v1, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProviderInfo not found, failed to init "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {p1}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->trackWidgetLoadFailure(Lcom/sonymobile/home/ui/widget/AppWidget;)V

    .line 164
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 165
    .local v6, "context":Landroid/content/Context;
    invoke-static {v6, p1, v0}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->scheduleRetryInitAppWidgetHostView(Landroid/content/Context;Lcom/sonymobile/home/ui/widget/AppWidget;I)V

    goto/16 :goto_1

    .end local v6    # "context":Landroid/content/Context;
    :cond_9
    move v7, v0

    .line 160
    goto :goto_2

    .line 171
    .end local v2    # "appWidgetHostView":Landroid/appwidget/AppWidgetHostView;
    :cond_a
    if-nez p3, :cond_b

    :goto_3
    invoke-direct {p0, v7, p1}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->showWidgetPlaceHolderView(ZLcom/sonymobile/home/ui/widget/AppWidget;)V

    .line 172
    if-nez p4, :cond_3

    if-nez p3, :cond_3

    .line 173
    invoke-static {p1}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->trackWidgetLoadError(Lcom/sonymobile/home/ui/widget/AppWidget;)V

    goto/16 :goto_1

    :cond_b
    move v7, v0

    .line 171
    goto :goto_3
.end method

.method public setAppWidgetContentDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mContentDescription:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 276
    invoke-super {p0, p1, p2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setSize(FF)V

    .line 277
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;->setSize(FF)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mWidgetPlaceHolderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mWidgetPlaceHolderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->setSize(FF)V

    .line 283
    :cond_1
    return-void
.end method

.method public setTouchOnScrollableConsumedListener(Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper$TouchOnScrollableConsumedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper$TouchOnScrollableConsumedListener;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->mAppWidgetView:Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper;->setTouchOnScrollableConsumedListener(Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper$TouchOnScrollableConsumedListener;)V

    .line 480
    :cond_0
    return-void
.end method

.method public supportResizing()Z
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x1

    return v0
.end method
