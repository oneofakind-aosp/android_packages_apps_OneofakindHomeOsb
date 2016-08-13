.class public Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;
.super Ljava/lang/Object;
.source "CuiWidgetLoadHelper.java"


# instance fields
.field private final mAdvWidgetProviderHelper:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

.field private final mContext:Landroid/content/Context;

.field private final mMainUser:Landroid/os/UserHandle;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mWidgetSizeCalculator:Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "widgetSizeCalculator"    # Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 86
    iput-object p3, p0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mWidgetSizeCalculator:Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;

    .line 87
    new-instance v0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;-><init>(Lcom/sonymobile/home/resources/ResourceManager;)V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mAdvWidgetProviderHelper:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

    .line 89
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mMainUser:Landroid/os/UserHandle;

    .line 90
    return-void
.end method

.method private addAdvWidget(Landroid/content/pm/ActivityInfo;Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p2, "widgetGroupMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;>;"
    .local p3, "widgetItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;>;"
    iget-object v5, p0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mMainUser:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v5}, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->categorizeWidget(Landroid/content/pm/ActivityInfo;Ljava/util/Map;Landroid/os/UserHandle;)Z

    move-result v0

    .line 159
    .local v0, "added":Z
    if-nez v0, :cond_1

    .line 160
    new-instance v4, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v4}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 161
    .local v4, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    iget v5, p1, Landroid/content/pm/ActivityInfo;->icon:I

    iput v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 162
    iget-object v5, p0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 163
    .local v2, "label":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 164
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 166
    :cond_0
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 168
    new-instance v3, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-direct {v3, v5, v6, v4, v7}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/appwidget/AppWidgetProviderInfo;I)V

    .line 172
    .local v3, "leafItem":Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
    invoke-direct {p0, p1}, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->getWidgetSpan(Landroid/content/pm/ActivityInfo;)[I

    move-result-object v1

    .line 173
    .local v1, "bounds":[I
    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-virtual {v3, v5}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->setSpanX(I)V

    .line 174
    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-virtual {v3, v5}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->setSpanY(I)V

    .line 176
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v1    # "bounds":[I
    .end local v2    # "label":Ljava/lang/CharSequence;
    .end local v3    # "leafItem":Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
    .end local v4    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    return-void
.end method

.method public static getWidgetPreviewBitmap(Landroid/content/Context;Landroid/content/pm/PackageManager;IILcom/sonymobile/home/cui/CuiGridWidgetBaseItem;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "widgetItem"    # Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;
    .param p5, "mainUser"    # Landroid/os/UserHandle;

    .prologue
    .line 254
    invoke-static/range {p0 .. p5}, Lcom/sonymobile/home/cui/CuiWidgetPreviewLoader;->loadWidgetPreviewBitmap(Landroid/content/Context;Landroid/content/pm/PackageManager;IILcom/sonymobile/home/cui/CuiGridWidgetBaseItem;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetSpan(Landroid/content/pm/ActivityInfo;)[I
    .locals 6
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 237
    const/4 v3, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 240
    .local v2, "result":[I
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 242
    .local v1, "packageResource":Landroid/content/res/Resources;
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mAdvWidgetProviderHelper:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

    invoke-virtual {v4, p1, v1}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getMinWidgetSpanX(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)I

    move-result v4

    aput v4, v2, v3

    .line 243
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mAdvWidgetProviderHelper:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

    invoke-virtual {v4, p1, v1}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getMinWidgetSpanY(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)I

    move-result v4

    aput v4, v2, v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v1    # "packageResource":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "CuiWidgetLoadHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource not found for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    nop

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method private isAvailable(Landroid/content/pm/ActivityInfo;)Z
    .locals 13
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 129
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 130
    .local v6, "metaData":Landroid/os/Bundle;
    const/4 v5, 0x1

    .line 131
    .local v5, "isAvailable":Z
    if-eqz v6, :cond_0

    .line 132
    const-string v8, "com.sonyericsson.advwidget.configclass"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "configClassName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 136
    :try_start_0
    iget-object v8, p0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mContext:Landroid/content/Context;

    iget-object v9, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 138
    .local v0, "c":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 139
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 140
    .local v4, "instance":Ljava/lang/Object;
    const-string v8, "isAvailable"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Landroid/content/ComponentName;

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 143
    .local v7, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v8, v9

    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 153
    .end local v0    # "c":Landroid/content/Context;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "configClassName":Ljava/lang/String;
    .end local v4    # "instance":Ljava/lang/Object;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v5

    .line 145
    .restart local v2    # "configClassName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 146
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "CuiWidgetLoadHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot load or call Config class"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private loadActivityInfo(Landroid/content/ComponentName;Z)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "isAdvWidget"    # Z

    .prologue
    .line 382
    const/4 v0, 0x0

    .line 385
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz p2, :cond_0

    .line 386
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    .line 389
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v1

    .line 393
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "CuiWidgetLoadHelper"

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadProviderInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/util/Pair;
    .locals 12
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 337
    .local v7, "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 338
    .local v8, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    const/4 v3, 0x0

    .line 342
    .local v3, "isAdvWidget":Z
    iget-object v10, p0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    invoke-virtual {v10, p2}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v6

    .line 344
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    .line 345
    .local v4, "it":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-static {v4}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->isHomeScreenCategory(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 347
    move-object v8, v4

    move-object v9, v8

    .line 352
    .end local v4    # "it":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v8    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .local v9, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :goto_0
    if-nez v9, :cond_4

    .line 355
    :try_start_0
    const-string v10, "com.sonyericsson.advancedwidget."

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "com.sonymobile.advancedwidget."

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 357
    :cond_1
    iget-object v10, p0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v11, 0x80

    invoke-virtual {v10, p1, v11}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 360
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    new-instance v8, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v8}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .end local v9    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v8    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :try_start_1
    iget v10, v0, Landroid/content/pm/ActivityInfo;->icon:I

    iput v10, v8, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 362
    iput-object p1, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 363
    iget-object v10, p0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 364
    .local v5, "label":Ljava/lang/CharSequence;
    if-eqz v5, :cond_2

    .line 365
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 367
    :cond_2
    const/4 v3, 0x1

    .line 374
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "label":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v8, :cond_3

    .line 375
    new-instance v10, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v10, v11, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 378
    :goto_2
    return-object v10

    .line 369
    .end local v8    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v9    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :catch_0
    move-exception v1

    move-object v8, v9

    .line 370
    .end local v9    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :goto_3
    const-string v10, "CuiWidgetLoadHelper"

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 378
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 369
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :catch_1
    move-exception v1

    goto :goto_3

    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v8    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v9    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_4
    move-object v8, v9

    .end local v9    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v8    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    goto :goto_1

    :cond_5
    move-object v9, v8

    .end local v8    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v9    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    goto :goto_0
.end method


# virtual methods
.method public categorizeWidget(Landroid/content/pm/ActivityInfo;Ljava/util/Map;Landroid/os/UserHandle;)Z
    .locals 11
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;",
            ">;",
            "Landroid/os/UserHandle;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 192
    .local p2, "widgetGroupMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;>;"
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 193
    .local v6, "metaData":Landroid/os/Bundle;
    if-eqz v6, :cond_4

    .line 194
    const-string v8, "com.sonyericsson.widget.category.id"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "cat":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 197
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "catLowerCase":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;

    .line 199
    .local v2, "groupItem":Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;
    if-nez v2, :cond_0

    .line 200
    new-instance v2, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;

    .end local v2    # "groupItem":Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;
    invoke-direct {v2, v1}, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;-><init>(Ljava/lang/String;)V

    .line 201
    .restart local v2    # "groupItem":Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_0
    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->getLabel()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 204
    const-string v8, "com.sonyericsson.widget.category.label"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 205
    .local v5, "labelId":I
    if-eqz v5, :cond_1

    .line 206
    iget-object v8, p0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v9, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9, v5, v10}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 208
    .local v4, "label":Ljava/lang/CharSequence;
    if-eqz v4, :cond_1

    .line 209
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->setLabel(Ljava/lang/String;)V

    .line 213
    .end local v4    # "label":Ljava/lang/CharSequence;
    .end local v5    # "labelId":I
    :cond_1
    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->getIconResourceId()I

    move-result v8

    if-nez v8, :cond_2

    .line 214
    const-string v8, "com.sonyericsson.widget.category.preview"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 215
    .local v3, "id":I
    if-eqz v3, :cond_2

    .line 216
    invoke-virtual {v2, v3}, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->setIconResourceId(I)V

    .line 217
    iget-object v8, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->setIconPackageName(Ljava/lang/String;)V

    .line 220
    .end local v3    # "id":I
    :cond_2
    new-instance v7, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v7}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 221
    .local v7, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v10, ""

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 222
    iget v8, p1, Landroid/content/pm/ActivityInfo;->icon:I

    iput v8, v7, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 223
    iget-object v8, p0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 224
    .restart local v4    # "label":Ljava/lang/CharSequence;
    if-eqz v4, :cond_3

    .line 225
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 227
    :cond_3
    iget-object v8, v2, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v8, Lcom/sonymobile/home/model/UserComponentName;

    iget-object v9, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10, p3}, Lcom/sonymobile/home/model/UserComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v2, v8}, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->addWidgetProvider(Lcom/sonymobile/home/model/UserComponentName;)V

    .line 230
    const/4 v8, 0x1

    .line 233
    .end local v0    # "cat":Ljava/lang/String;
    .end local v1    # "catLowerCase":Ljava/lang/String;
    .end local v2    # "groupItem":Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;
    .end local v4    # "label":Ljava/lang/CharSequence;
    .end local v7    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :goto_0
    return v8

    :cond_4
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public loadWidget(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
    .locals 18
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 267
    invoke-direct/range {p0 .. p2}, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->loadProviderInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/util/Pair;

    move-result-object v13

    .line 268
    .local v13, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-nez v13, :cond_1

    .line 269
    const/4 v2, 0x0

    .line 330
    :cond_0
    :goto_0
    return-object v2

    .line 271
    :cond_1
    iget-object v3, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 272
    .local v11, "isAdvWidget":Z
    iget-object v5, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    .line 273
    .local v5, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->loadActivityInfo(Landroid/content/ComponentName;Z)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 274
    .local v9, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v9, :cond_2

    .line 275
    const/4 v2, 0x0

    goto :goto_0

    .line 279
    :cond_2
    const/4 v14, 0x0

    .line 280
    .local v14, "spanX":I
    const/16 v16, 0x0

    .line 282
    .local v16, "spanY":I
    if-eqz v11, :cond_5

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mAdvWidgetProviderHelper:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

    invoke-virtual {v3, v9}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getVersion(Landroid/content/pm/ActivityInfo;)F

    move-result v17

    .line 284
    .local v17, "version":F
    invoke-static/range {v17 .. v17}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->isVersionSupported(F)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 285
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->getWidgetSpan(Landroid/content/pm/ActivityInfo;)[I

    move-result-object v10

    .line 286
    .local v10, "bounds":[I
    const/4 v3, 0x0

    aget v14, v10, v3

    .line 287
    const/4 v3, 0x1

    aget v16, v10, v3

    .line 288
    const/4 v6, 0x2

    .line 307
    .end local v10    # "bounds":[I
    .end local v17    # "version":F
    .local v6, "type":I
    :goto_1
    const/4 v2, 0x0

    .line 308
    .local v2, "leafItem":Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
    if-eqz v5, :cond_0

    .line 310
    if-eqz v11, :cond_7

    .line 311
    iget-object v8, v5, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 316
    .local v8, "label":Ljava/lang/String;
    :goto_2
    new-instance v2, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;

    .end local v2    # "leafItem":Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
    iget-object v3, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mMainUser:Landroid/os/UserHandle;

    :goto_3
    invoke-direct/range {v2 .. v8}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/appwidget/AppWidgetProviderInfo;ILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 320
    .restart local v2    # "leafItem":Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
    iget-object v12, v9, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 321
    .local v12, "metaData":Landroid/os/Bundle;
    if-eqz v12, :cond_3

    .line 322
    const-string v3, "com.sonyericsson.widget.category.order"

    const/16 v4, 0x32

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->setOrder(I)V

    .line 326
    :cond_3
    invoke-virtual {v2, v14}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->setSpanX(I)V

    .line 327
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->setSpanY(I)V

    goto :goto_0

    .line 291
    .end local v2    # "leafItem":Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
    .end local v6    # "type":I
    .end local v8    # "label":Ljava/lang/String;
    .end local v12    # "metaData":Landroid/os/Bundle;
    .restart local v17    # "version":F
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 295
    .end local v17    # "version":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mWidgetSizeCalculator:Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->getResizedWidgetSpanXY(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v15

    .line 297
    .local v15, "spanXY":[I
    if-eqz v15, :cond_6

    .line 298
    const/4 v3, 0x0

    aget v14, v15, v3

    .line 299
    const/4 v3, 0x1

    aget v16, v15, v3

    .line 304
    const/4 v6, 0x1

    .restart local v6    # "type":I
    goto :goto_1

    .line 302
    .end local v6    # "type":I
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 313
    .end local v15    # "spanXY":[I
    .restart local v2    # "leafItem":Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
    .restart local v6    # "type":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v3}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "label":Ljava/lang/String;
    goto :goto_2

    .end local v2    # "leafItem":Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
    :cond_8
    move-object/from16 v7, p2

    .line 316
    goto :goto_3
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public setupAdvWidget(Ljava/util/ArrayList;Ljava/util/Map;Ljava/lang/String;)V
    .locals 11
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "widgetItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;>;"
    .local p2, "widgetGroupMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;>;"
    :try_start_0
    iget-object v8, p0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v9, 0x81

    invoke-virtual {v8, p3, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 103
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_2

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v8, :cond_2

    .line 104
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_2

    .line 105
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .local v1, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 107
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 108
    .local v5, "metaData":Landroid/os/Bundle;
    if-eqz v5, :cond_0

    .line 109
    iget-object v8, p0, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->mAdvWidgetProviderHelper:Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

    invoke-virtual {v8, v0}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->getVersion(Landroid/content/pm/ActivityInfo;)F

    move-result v7

    .line 110
    .local v7, "version":F
    invoke-static {v7}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;->isVersionSupported(F)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 111
    invoke-direct {p0, v0}, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->isAvailable(Landroid/content/pm/ActivityInfo;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 105
    .end local v7    # "version":F
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    .restart local v7    # "version":F
    :cond_1
    invoke-direct {p0, v0, p2, p1}, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->addAdvWidget(Landroid/content/pm/ActivityInfo;Ljava/util/Map;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 121
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "metaData":Landroid/os/Bundle;
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "version":F
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "CuiWidgetLoadHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NameNotFoundException "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    return-void
.end method
