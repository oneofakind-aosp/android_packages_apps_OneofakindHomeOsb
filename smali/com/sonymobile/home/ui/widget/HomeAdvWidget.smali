.class public Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
.super Ljava/lang/Object;
.source "HomeAdvWidget.java"

# interfaces
.implements Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;


# instance fields
.field private final mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

.field private final mAdvWidgetProviderInfo:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;

.field private mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mFwkVersion:I

.field private mHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

.field private mHostActivity:Landroid/app/Activity;

.field private final mHostContext:Landroid/content/Context;

.field private mHostView:Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;

.field private mId:Ljava/util/UUID;

.field private mLifeCycleState:I

.field private mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

.field private mWidgetContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "advWidgetExceptionHandler"    # Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;
    .param p3, "advWidgetProviderInfo"    # Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mAdvWidgetProviderInfo:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;

    .line 65
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mHostContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    .line 67
    return-void
.end method

.method private addAdvWidgetExceptionObserver()V
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->addAdvWidgetExceptionObserver(Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;)V

    .line 753
    return-void
.end method

.method private handleException(Ljava/lang/Exception;Ljava/util/UUID;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 745
    iget v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 749
    :goto_0
    return-void

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method private removeAdvWidgetExceptionObserver()V
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->removeAdvWidgetExceptionObserver(Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;)V

    .line 757
    return-void
.end method


# virtual methods
.method public createClazz()V
    .locals 9

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "className":Ljava/lang/String;
    const/4 v5, 0x0

    .line 229
    .local v5, "caughtException":Ljava/lang/Exception;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mHostContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    .line 232
    .local v8, "widgetContext":Landroid/content/Context;
    invoke-virtual {p0, v8}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->setWidgetContext(Landroid/content/Context;)V

    .line 235
    invoke-static {v8, v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->createAdvWidgetClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mClazz:Ljava/lang/Class;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 247
    .end local v8    # "widgetContext":Landroid/content/Context;
    :goto_0
    if-eqz v5, :cond_0

    .line 248
    const-string v0, "AdvWidget"

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mHostContext:Landroid/content/Context;

    const-string v4, "Failed to create advanced widget class due to "

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->logTrackAndPushExceptionToGA(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    :cond_0
    return-void

    .line 236
    :catch_0
    move-exception v6

    .line 237
    .local v6, "e":Ljava/lang/Exception;
    :goto_1
    move-object v5, v6

    .line 245
    goto :goto_0

    .line 238
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 239
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 240
    .local v7, "isEngVariant":Z
    if-eqz v7, :cond_1

    .line 241
    const-string v0, "HomeAdvWidget"

    const-string v1, "Advanced widgets are currently not supported in eng builds."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    :cond_1
    move-object v5, v6

    goto :goto_0

    .line 236
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    .end local v7    # "isEngVariant":Z
    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method public createHostView()Z
    .locals 13

    .prologue
    .line 295
    iget-object v10, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mHostContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 296
    .local v3, "hostResources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getProxy()Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v5

    .line 297
    .local v5, "proxy":Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    const/4 v7, 0x0

    .line 298
    .local v7, "success":Z
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getSpanXY()[I

    move-result-object v6

    .line 299
    .local v6, "spanXY":[I
    const v10, 0x7f0b0018

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 300
    .local v1, "cellWidth":I
    const v10, 0x7f0b0017

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 301
    .local v0, "cellHeight":I
    const/4 v10, 0x0

    aget v10, v6, v10

    mul-int v9, v10, v1

    .line 302
    .local v9, "widgetWidth":I
    const/4 v10, 0x1

    aget v10, v6, v10

    mul-int v8, v10, v0

    .line 304
    .local v8, "widgetHeight":I
    :try_start_0
    new-instance v4, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;

    iget-object v10, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mHostContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    iget-object v12, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mAdvWidgetProviderInfo:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;

    iget-boolean v12, v12, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->isScrollable:Z

    invoke-direct {v4, v10, v5, v11, v12}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;-><init>(Landroid/content/Context;Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;Z)V

    .line 306
    .local v4, "hostView":Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v9, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v10}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    invoke-virtual {p0, v4}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->setHostView(Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    const/4 v7, 0x1

    .line 313
    .end local v4    # "hostView":Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;
    :goto_0
    if-nez v7, :cond_0

    .line 314
    const-string v10, "HomeAdvWidget"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createHostView failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mAdvWidgetProviderInfo:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;

    iget-object v12, v12, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    return v7

    .line 309
    :catch_0
    move-exception v2

    .line 310
    .local v2, "e":Ljava/lang/IllegalStateException;
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->setHostView(Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;)V

    goto :goto_0
.end method

.method public createProxy()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 263
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "className":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mClazz:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mClazz:Ljava/lang/Class;

    invoke-static {v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->createAdvWidgetProxy(Ljava/lang/Class;)Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v6

    .line 270
    .local v6, "proxy":Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    if-eqz v6, :cond_0

    .line 272
    invoke-virtual {p0, v6}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->setProxy(Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;)V

    .line 273
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->setId(Ljava/util/UUID;)V

    .line 274
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mHostActivity:Landroid/app/Activity;

    invoke-virtual {v6, v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->setActivity(Landroid/app/Activity;)V

    .line 275
    const/4 v0, 0x1

    .line 286
    .end local v6    # "proxy":Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    :goto_0
    return v0

    .line 277
    .restart local v6    # "proxy":Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create AdvWidgetProxy for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/flix/debug/Logx$Short;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    .line 278
    goto :goto_0

    .line 281
    .end local v6    # "proxy":Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    :catch_0
    move-exception v5

    .line 282
    .local v5, "e":Ljava/lang/RuntimeException;
    const-string v0, "AdvWidget"

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mHostContext:Landroid/content/Context;

    const-string v4, "Failed to create proxy for advanced widget due to "

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->logTrackAndPushExceptionToGA(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v5    # "e":Ljava/lang/RuntimeException;
    :cond_1
    move v0, v7

    .line 286
    goto :goto_0
.end method

.method public getAppWidgetInfo()Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mAdvWidgetProviderInfo:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mAdvWidgetProviderInfo:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;

    iget-object v0, v0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mAdvWidgetProviderInfo:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;

    iget-object v0, v0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHostView()Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mHostView:Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;

    return-object v0
.end method

.method public getId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mId:Ljava/util/UUID;

    return-object v0
.end method

.method public getLifeCycleState()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mAdvWidgetProviderInfo:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;

    iget-object v0, v0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mAdvWidgetProviderInfo:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;

    iget-object v0, v0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProxy()Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    return-object v0
.end method

.method public getSpanXY()[I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 326
    const/4 v0, 0x0

    .line 328
    .local v0, "span":[I
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getAppWidgetInfo()Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;

    move-result-object v1

    .line 330
    .local v1, "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-eqz v2, :cond_0

    .line 332
    new-array v0, v4, [I

    .end local v0    # "span":[I
    const/4 v2, 0x0

    iget v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    aput v3, v0, v2

    const/4 v2, 0x1

    iget v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    aput v3, v0, v2

    .line 339
    .restart local v0    # "span":[I
    :cond_0
    if-nez v0, :cond_1

    .line 340
    const-string v2, "getSpanXY could not get widget size"

    invoke-static {v2}, Lcom/sonymobile/flix/debug/Logx$Short;->w(Ljava/lang/String;)V

    .line 341
    new-array v0, v4, [I

    .end local v0    # "span":[I
    fill-array-data v0, :array_0

    .line 346
    .restart local v0    # "span":[I
    :cond_1
    return-object v0

    .line 341
    nop

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method public getWidgetContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mWidgetContext:Landroid/content/Context;

    return-object v0
.end method

.method public onCaughtException(Ljava/lang/Exception;Ljava/util/UUID;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 726
    return-void
.end method

.method public onConfigurationFail()V
    .locals 3

    .prologue
    .line 405
    iget v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    :try_start_0
    iget v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getProxy()Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onConfigured(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public onConfigurationSuccess()V
    .locals 3

    .prologue
    .line 389
    iget v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    :try_start_0
    iget v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getProxy()Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onConfigured(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public onConfigure()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 374
    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 381
    :goto_0
    return v1

    .line 378
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getProxy()Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->configure(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 449
    iget v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v1

    .line 453
    :cond_1
    :try_start_0
    iget v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    if-ge v3, v2, :cond_2

    .line 454
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onInit()Z

    .line 456
    :cond_2
    iget v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    if-ge v3, v5, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getProxy()Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getWidgetContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onCreate(Landroid/content/Context;)V

    .line 461
    const/4 v3, 0x2

    iput v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    .line 462
    invoke-direct {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->addAdvWidgetExceptionObserver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 463
    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public onCustomize(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "settings"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 356
    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 363
    :goto_0
    return v1

    .line 360
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getProxy()Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->customize(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public onDefocus()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 562
    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 577
    :cond_0
    :goto_0
    return v1

    .line 566
    :cond_1
    :try_start_0
    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getProxy()Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onDefocus()V

    .line 571
    const/4 v2, 0x4

    iput v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    const/4 v1, 0x1

    goto :goto_0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public onDestroy()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 644
    invoke-direct {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->removeAdvWidgetExceptionObserver()V

    .line 645
    iget v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 665
    :goto_0
    return v1

    .line 649
    :cond_0
    :try_start_0
    iget v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    .line 650
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onStop()Z

    .line 652
    :cond_1
    iget v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 656
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getProxy()Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onDestroy()V

    .line 657
    const/4 v3, 0x1

    iput v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    invoke-virtual {p0, v5}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->setHostView(Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;)V

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v5}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->setHostView(Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;)V

    goto :goto_0

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    invoke-virtual {p0, v5}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->setHostView(Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v5}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->setHostView(Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;)V

    throw v1
.end method

.method public onExceptionUpdateState(Ljava/util/UUID;)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 734
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mId:Ljava/util/UUID;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mId:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    const/4 v0, 0x6

    iput v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    .line 737
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mHostView:Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mHostView:Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->setVisibility(I)V

    .line 742
    :cond_0
    return-void
.end method

.method public onFocus()Z
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x0

    .line 534
    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 552
    :cond_0
    :goto_0
    return v1

    .line 538
    :cond_1
    :try_start_0
    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    .line 539
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onResume()Z

    .line 541
    :cond_2
    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    if-ge v2, v4, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getProxy()Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onFocus()V

    .line 546
    const/4 v2, 0x5

    iput v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    const/4 v1, 0x1

    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public onInit()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 423
    iget v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v1

    .line 427
    :cond_1
    :try_start_0
    iget v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    if-nez v3, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getProxy()Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->init(Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;)V

    .line 432
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getProxy()Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getFrameworkVersion()I

    move-result v3

    iput v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mFwkVersion:I

    .line 433
    const/4 v3, 0x1

    iput v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 434
    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public onPause()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 587
    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 605
    :cond_0
    :goto_0
    return v1

    .line 591
    :cond_1
    :try_start_0
    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    .line 592
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onDefocus()Z

    .line 594
    :cond_2
    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getProxy()Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onPause()V

    .line 599
    const/4 v2, 0x3

    iput v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    const/4 v1, 0x1

    goto :goto_0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public onRemove()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 675
    invoke-direct {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->removeAdvWidgetExceptionObserver()V

    .line 676
    iget v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 694
    :cond_0
    :goto_0
    return v1

    .line 680
    :cond_1
    :try_start_0
    iget v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 681
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onDestroy()Z

    .line 683
    :cond_2
    iget v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    if-lt v3, v2, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getProxy()Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->remove()V

    .line 688
    const/4 v3, 0x0

    iput v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 689
    goto :goto_0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public onResume()Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 506
    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 524
    :cond_0
    :goto_0
    return v1

    .line 510
    :cond_1
    :try_start_0
    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 511
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onStart()Z

    .line 513
    :cond_2
    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    if-ge v2, v4, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getProxy()Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onResume()V

    .line 518
    const/4 v2, 0x4

    iput v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    const/4 v1, 0x1

    goto :goto_0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public onStart()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 478
    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 496
    :cond_0
    :goto_0
    return v1

    .line 482
    :cond_1
    :try_start_0
    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 483
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onCreate()Z

    .line 485
    :cond_2
    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    if-ge v2, v4, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getProxy()Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onStart()V

    .line 490
    const/4 v2, 0x3

    iput v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    const/4 v1, 0x1

    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public onStop()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 615
    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 634
    :cond_0
    :goto_0
    return v1

    .line 619
    :cond_1
    :try_start_0
    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_2

    .line 620
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onPause()Z

    .line 622
    :cond_2
    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 626
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getProxy()Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onStop()V

    .line 627
    const/4 v2, 0x2

    iput v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    const/4 v1, 0x1

    goto :goto_0

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 705
    iget v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    :try_start_0
    iget v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mFwkVersion:I

    const/16 v2, 0x301

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 710
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onTrimMemory(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mId:Ljava/util/UUID;

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public onUncaughtException(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 730
    return-void
.end method

.method public setHost(Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;)V
    .locals 0
    .param p1, "host"    # Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

    .line 114
    return-void
.end method

.method public setHostActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "hostActivity"    # Landroid/app/Activity;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mHostActivity:Landroid/app/Activity;

    .line 96
    return-void
.end method

.method public setHostView(Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;)V
    .locals 1
    .param p1, "hostView"    # Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mHostView:Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mHostView:Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;->unregisterObservingCaughtException()V

    .line 188
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mHostView:Lcom/sonymobile/home/ui/widget/AdvWidgetHostView;

    .line 189
    return-void
.end method

.method public setId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "id"    # Ljava/util/UUID;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mId:Ljava/util/UUID;

    .line 150
    return-void
.end method

.method public setProxy(Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;)V
    .locals 0
    .param p1, "proxy"    # Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    .line 168
    return-void
.end method

.method public setWidgetContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mWidgetContext:Landroid/content/Context;

    .line 132
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLifeCycleState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mLifeCycleState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrwkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->mFwkVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
