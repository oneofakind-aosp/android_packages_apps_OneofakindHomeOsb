.class public Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;
.super Lcom/sonymobile/home/ui/pageview/PageItemView;
.source "AdvWidgetItemView.java"

# interfaces
.implements Lcom/sonymobile/home/presenter/view/HasViewWrapper;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

.field private mHardwareLayer:Z

.field private mWidgetPlaceholderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)V
    .locals 1
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/ui/pageview/PageItemView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->setAnimateClick(Z)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->setClickSound(Z)V

    .line 67
    invoke-virtual {p2}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->setName(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private createErrorLabel(Lcom/sonymobile/home/ui/widget/HomeAdvWidget;)Ljava/lang/String;
    .locals 3
    .param p1, "widget"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 377
    .local v1, "resources":Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    const v2, 0x7f08009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .local v0, "labelBuilder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 380
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createPlaceHolderLabel(Lcom/sonymobile/home/ui/widget/HomeAdvWidget;)Ljava/lang/String;
    .locals 3
    .param p1, "widget"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "label":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 359
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getAppWidgetInfo()Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;

    move-result-object v1

    .line 361
    .local v1, "widgetProviderInfo":Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;
    if-eqz v1, :cond_2

    .line 362
    iget-object v0, v1, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->label:Ljava/lang/String;

    .line 368
    .end local v1    # "widgetProviderInfo":Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 369
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->createErrorLabel(Lcom/sonymobile/home/ui/widget/HomeAdvWidget;)Ljava/lang/String;

    move-result-object v0

    .line 372
    :cond_1
    return-object v0

    .line 364
    .restart local v1    # "widgetProviderInfo":Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->createErrorLabel(Lcom/sonymobile/home/ui/widget/HomeAdvWidget;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 2

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->getHomeAdvWidget()Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getAppWidgetInfo()Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;

    move-result-object v0

    .line 271
    :cond_0
    return-object v0
.end method

.method private static getComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeCurrentAdvWidgetView()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    const-string v1, "KeyboardFocusManager.NotFocusable"

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->removeProperty(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    .line 176
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->setName(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->getButton()Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setDescription(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method private showWidgetPlaceHolderView(ZLcom/sonymobile/home/ui/widget/HomeAdvWidget;)Z
    .locals 4
    .param p1, "show"    # Z
    .param p2, "widget"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "becameVisible":Z
    if-eqz p1, :cond_3

    .line 191
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mWidgetPlaceholderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    if-nez v1, :cond_2

    .line 192
    new-instance v1, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->createPlaceHolderLabel(Lcom/sonymobile/home/ui/widget/HomeAdvWidget;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;-><init>(Lcom/sonymobile/flix/components/Scene;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mWidgetPlaceholderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    .line 193
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->getBlockingArea()Lcom/sonymobile/flix/components/TouchArea;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mWidgetPlaceholderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->addChildAfter(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)Z

    .line 194
    const/4 v0, 0x1

    .line 198
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mWidgetPlaceholderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->setVisible(Z)V

    .line 206
    :cond_1
    :goto_1
    return v0

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mWidgetPlaceholderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->isSetToVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    const/4 v0, 0x1

    goto :goto_0

    .line 201
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mWidgetPlaceholderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mWidgetPlaceholderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->setVisible(Z)V

    goto :goto_1
.end method

.method private static trackErrorLoadingWidget(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v0, Lcom/sonymobile/home/ui/widget/AdvWidgetException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorLoadingWidget:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/home/ui/widget/AdvWidgetException;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "exception":Lcom/sonymobile/home/ui/widget/AdvWidgetException;
    sget-object v1, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->TAG:Ljava/lang/String;

    const-string v2, "ErrorLoadingWidget"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonymobile/home/statistics/TrackingUtil;->trackException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 170
    return-void
.end method


# virtual methods
.method protected doLongPress(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 217
    invoke-super {p0, p1, p2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->doLongPress(FF)V

    .line 218
    return-void
.end method

.method public getDefaultPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->getWidgetDefaultPaddingFromResources(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getResizeInfo()Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;
    .locals 4

    .prologue
    .line 249
    const/4 v1, 0x0

    .line 250
    .local v1, "resizeInfo":Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 252
    .local v0, "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v2, :cond_0

    .line 253
    new-instance v1, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;

    .end local v1    # "resizeInfo":Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;
    invoke-direct {v1}, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;-><init>()V

    .line 254
    .restart local v1    # "resizeInfo":Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;
    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iput v2, v1, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;->mode:I

    .line 255
    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;->minSpanX:I

    .line 256
    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/sonymobile/home/ui/pageview/PageItemView$ResizeInfo;->minSpanY:I

    .line 258
    :cond_0
    return-object v1
.end method

.method public getViewWrapper()Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    return-object v0
.end method

.method public isResizable()Z
    .locals 2

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 239
    .local v0, "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->onCreate()V

    .line 291
    :cond_0
    return-void
.end method

.method public onDefocus()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->onDefocus()V

    .line 329
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mHardwareLayer:Z

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->setCachedDrawingEnabled(Z)V

    .line 333
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->onDestroy()V

    .line 354
    :cond_0
    return-void
.end method

.method public onFocus()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    if-eqz v0, :cond_1

    .line 310
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mHardwareLayer:Z

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->setCachedDrawingEnabled(Z)V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->onFocus()V

    .line 315
    :cond_1
    return-void
.end method

.method public onLayout(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 233
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->setSize(FF)V

    .line 234
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->onPause()V

    .line 340
    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 276
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 278
    iput-object v1, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mWidgetPlaceholderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mWidgetPlaceholderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 282
    iput-object v1, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mWidgetPlaceholderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    .line 284
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->onResume()V

    .line 305
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->onStart()V

    .line 298
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->onStop()V

    .line 347
    :cond_0
    return-void
.end method

.method public setAdvancedWidget(Lcom/sonymobile/home/ui/widget/HomeAdvWidget;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;ZZ)V
    .locals 8
    .param p1, "widget"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    .param p2, "advWidgetManager"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    .param p3, "isDefault"    # Z
    .param p4, "isSafeMode"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    iget-object v5, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    if-eqz v5, :cond_0

    .line 94
    if-nez p1, :cond_3

    .line 95
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->removeCurrentAdvWidgetView()V

    .line 111
    :cond_0
    :goto_0
    invoke-direct {p0, v3, p1}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->showWidgetPlaceHolderView(ZLcom/sonymobile/home/ui/widget/HomeAdvWidget;)Z

    .line 113
    if-eqz p1, :cond_b

    .line 114
    if-eqz p4, :cond_5

    .line 115
    if-nez p3, :cond_1

    move v3, v4

    :cond_1
    invoke-direct {p0, v3, p1}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->showWidgetPlaceHolderView(ZLcom/sonymobile/home/ui/widget/HomeAdvWidget;)Z

    .line 159
    :cond_2
    :goto_1
    return-void

    .line 97
    :cond_3
    iget-object v5, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    invoke-virtual {v5}, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->getHomeAdvWidget()Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getHostView()Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getHostView()Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    invoke-virtual {v6}, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->getHomeAdvWidget()Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getHostView()Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;

    move-result-object v6

    if-eq v5, v6, :cond_2

    .line 105
    :cond_4
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->removeCurrentAdvWidgetView()V

    goto :goto_0

    .line 119
    :cond_5
    invoke-virtual {p2, p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->initializeWidget(Lcom/sonymobile/home/ui/widget/HomeAdvWidget;)Z

    move-result v2

    .line 120
    .local v2, "initialized":Z
    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getHostView()Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 121
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getHostView()Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;

    move-result-object v1

    .line 125
    .local v1, "hostView":Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;
    invoke-virtual {v1}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;

    if-eqz v3, :cond_6

    .line 126
    invoke-virtual {v1}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 130
    :cond_6
    new-instance v3, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v5

    new-instance v6, Lcom/sonymobile/home/presenter/view/WidgetItemViewCreator$FindBlockingContainer;

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sonymobile/home/presenter/view/WidgetItemViewCreator$FindBlockingContainer;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v5, p1, v6}, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/widget/HomeAdvWidget;Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper$ViewWrapperContainer;)V

    iput-object v3, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    .line 132
    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    const-string v5, "KeyboardFocusManager.NotFocusable"

    invoke-virtual {v3, v5}, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->setProperty(Ljava/lang/Object;)V

    .line 133
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->getBlockingArea()Lcom/sonymobile/flix/components/TouchArea;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    invoke-virtual {p0, v3, v5}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->addChildAfter(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)Z

    .line 134
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getAppWidgetInfo()Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->setName(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->getButton()Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getAppWidgetInfo()Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->setDescription(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->updateLifecycleState()V

    .line 139
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getAppWidgetInfo()Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->hardwareLayer:Z

    iput-boolean v3, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mHardwareLayer:Z

    .line 140
    iget-boolean v3, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mHardwareLayer:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->getLifeCycleState()I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_2

    .line 141
    iget-object v3, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->setCachedDrawingEnabled(Z)V

    goto/16 :goto_1

    .line 145
    .end local v1    # "hostView":Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;
    :cond_7
    if-nez p3, :cond_8

    :goto_2
    invoke-direct {p0, v4, p1}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->showWidgetPlaceHolderView(ZLcom/sonymobile/home/ui/widget/HomeAdvWidget;)Z

    move-result v0

    .line 146
    .local v0, "becameVisible":Z
    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_9

    const-string v3, ""

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getHostView()Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;

    move-result-object v3

    if-eqz v3, :cond_a

    const-string v3, ""

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->getComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->trackErrorLoadingWidget(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v0    # "becameVisible":Z
    :cond_8
    move v4, v3

    .line 145
    goto :goto_2

    .line 147
    .restart local v0    # "becameVisible":Z
    :cond_9
    const-string v3, "initialization failed, "

    goto :goto_3

    :cond_a
    const-string v3, "host view is null, "

    goto :goto_4

    .line 154
    .end local v0    # "becameVisible":Z
    .end local v2    # "initialized":Z
    :cond_b
    if-nez p3, :cond_c

    :goto_5
    const/4 v3, 0x0

    invoke-direct {p0, v4, v3}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->showWidgetPlaceHolderView(ZLcom/sonymobile/home/ui/widget/HomeAdvWidget;)Z

    move-result v0

    .line 155
    .restart local v0    # "becameVisible":Z
    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    .line 156
    const-string v3, "HomeAdvWidget is null"

    invoke-static {v3}, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->trackErrorLoadingWidget(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v0    # "becameVisible":Z
    :cond_c
    move v4, v3

    .line 154
    goto :goto_5
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 222
    invoke-super {p0, p1, p2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setSize(FF)V

    .line 223
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->setSize(FF)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mWidgetPlaceholderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mWidgetPlaceholderView:Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/presenter/view/WidgetPlaceholderView;->setSize(FF)V

    .line 229
    :cond_1
    return-void
.end method

.method public setTouchOnScrollableConsumedListener(Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper$TouchOnScrollableConsumedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper$TouchOnScrollableConsumedListener;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/sonymobile/home/presenter/view/AdvWidgetItemView;->mAdvWidgetComponent:Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/presenter/view/AdvWidgetComponent;->setTouchOnScrollableConsumedListener(Lcom/sonymobile/home/presenter/view/TouchListeningViewWrapper$TouchOnScrollableConsumedListener;)V

    .line 390
    :cond_0
    return-void
.end method

.method public supportResizing()Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x1

    return v0
.end method
