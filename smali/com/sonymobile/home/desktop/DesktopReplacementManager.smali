.class public Lcom/sonymobile/home/desktop/DesktopReplacementManager;
.super Lcom/sonymobile/home/replacements/ReplacementManager;
.source "DesktopReplacementManager.java"


# instance fields
.field private final mAdvWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

.field private final mAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

.field private final mContext:Landroid/content/Context;

.field private final mModel:Lcom/sonymobile/home/desktop/DesktopModel;

.field private final mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/desktop/DesktopReplacementsXmlParser;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;Lcom/sonymobile/home/desktop/DesktopModel;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p3, "parser"    # Lcom/sonymobile/home/desktop/DesktopReplacementsXmlParser;
    .param p4, "appWidgetManager"    # Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    .param p5, "advWidgetManager"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    .param p6, "model"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 63
    invoke-direct {p0, p3}, Lcom/sonymobile/home/replacements/ReplacementManager;-><init>(Lcom/sonymobile/home/replacements/ReplacementsXmlParser;)V

    .line 64
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    .line 66
    iput-object p4, p0, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->mAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    .line 67
    iput-object p5, p0, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->mAdvWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    .line 68
    iput-object p6, p0, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    .line 69
    return-void
.end method

.method private static findItem(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/sonymobile/home/data/Item;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)",
            "Lcom/sonymobile/home/data/Item;"
        }
    .end annotation

    .prologue
    .local p2, "items":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/home/data/Item;>;"
    const/4 v4, 0x0

    .line 314
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v1, v4

    .line 327
    :goto_0
    return-object v1

    .line 318
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 319
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->getClassNameFromItem(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "itemClassName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "itemPackageName":Ljava/lang/String;
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    .end local v2    # "itemClassName":Ljava/lang/String;
    .end local v3    # "itemPackageName":Ljava/lang/String;
    :cond_3
    move-object v1, v4

    .line 327
    goto :goto_0
.end method

.method private static getClassNameFromItem(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;
    .locals 5
    .param p0, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, "className":Ljava/lang/String;
    invoke-static {p0}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->isAdvWidget(Lcom/sonymobile/home/data/Item;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, p0

    .line 339
    check-cast v2, Lcom/sonymobile/home/data/AdvWidgetItem;

    .line 340
    .local v2, "oldAdvWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/AdvWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 348
    .end local v2    # "oldAdvWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    :cond_0
    :goto_0
    return-object v0

    .line 341
    :cond_1
    invoke-static {p0}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->isAppWidget(Lcom/sonymobile/home/data/Item;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, p0

    .line 342
    check-cast v3, Lcom/sonymobile/home/data/WidgetItem;

    .line 343
    .local v3, "oldWidgetItem":Lcom/sonymobile/home/data/WidgetItem;
    invoke-virtual {v3}, Lcom/sonymobile/home/data/WidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 344
    goto :goto_0

    .end local v3    # "oldWidgetItem":Lcom/sonymobile/home/data/WidgetItem;
    :cond_2
    invoke-static {p0}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->isActivityItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, p0

    .line 345
    check-cast v1, Lcom/sonymobile/home/data/ActivityItem;

    .line 346
    .local v1, "oldActivityItem":Lcom/sonymobile/home/data/ActivityItem;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/ActivityItem;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static isActivityItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p0, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 388
    instance-of v0, p0, Lcom/sonymobile/home/data/ActivityItem;

    return v0
.end method

.method private static isAdvWidget(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p0, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 378
    instance-of v0, p0, Lcom/sonymobile/home/data/AdvWidgetItem;

    return v0
.end method

.method private static isAppWidget(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p0, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 368
    instance-of v0, p0, Lcom/sonymobile/home/data/WidgetItem;

    return v0
.end method

.method public static isItemReplaceable(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p0, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 358
    invoke-static {p0}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->isAppWidget(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->isAdvWidget(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->isActivityItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerAppWidget(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/sonymobile/home/data/WidgetItem;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 290
    new-instance v1, Lcom/sonymobile/home/model/UserComponentName;

    invoke-direct {v1, p1, p2, p3}, Lcom/sonymobile/home/model/UserComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 291
    .local v1, "widgetComponent":Lcom/sonymobile/home/model/UserComponentName;
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v4, v1}, Lcom/sonymobile/home/model/PackageHandler;->isWidgetInstalled(Lcom/sonymobile/home/model/UserComponentName;)Z

    move-result v0

    .line 292
    .local v0, "isInstalled":Z
    const/4 v3, 0x0

    .line 294
    .local v3, "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    if-eqz v0, :cond_0

    .line 295
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->mAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    invoke-virtual {v4, p1, p2, p3}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->registerAppWidgetIdSync(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2

    .line 296
    .local v2, "widgetId":I
    if-eqz v2, :cond_0

    .line 297
    new-instance v3, Lcom/sonymobile/home/data/WidgetItem;

    .end local v3    # "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    invoke-direct {v3, v2, p1, p2, p3}, Lcom/sonymobile/home/data/WidgetItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 301
    .end local v2    # "widgetId":I
    .restart local v3    # "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    :cond_0
    return-object v3
.end method

.method private validateLocation(Lcom/sonymobile/home/data/WidgetItem;Ljava/util/List;)Z
    .locals 16
    .param p1, "widgetItem"    # Lcom/sonymobile/home/data/WidgetItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/WidgetItem;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 185
    .local p2, "validatedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v14

    .line 190
    .local v14, "widgetId":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->mAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    invoke-static {v4, v14}, Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;->getMinimumSpan(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;I)[I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 195
    .local v8, "minSpanXY":[I
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/home/data/WidgetItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v10

    .line 196
    .local v10, "oldLocation":Lcom/sonymobile/home/data/ItemLocation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->mAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    invoke-virtual {v4, v14}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->getResizeMode(I)I

    move-result v11

    .line 199
    .local v11, "resizeMode":I
    const/4 v13, 0x0

    .line 201
    .local v13, "success":Z
    packed-switch v11, :pswitch_data_0

    .line 215
    const/4 v4, 0x0

    aget v1, v8, v4

    .line 216
    .local v1, "newSpanX":I
    const/4 v4, 0x1

    aget v2, v8, v4

    .line 220
    .local v2, "newSpanY":I
    :goto_0
    iget-object v4, v10, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v4, v4, Lcom/sonymobile/grid/GridRect;->colSpan:I

    if-ne v1, v4, :cond_0

    iget-object v4, v10, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v4, v4, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    if-ne v2, v4, :cond_0

    .line 223
    const/4 v13, 0x1

    .line 262
    .end local v1    # "newSpanX":I
    .end local v2    # "newSpanY":I
    .end local v8    # "minSpanXY":[I
    .end local v10    # "oldLocation":Lcom/sonymobile/home/data/ItemLocation;
    .end local v11    # "resizeMode":I
    .end local v13    # "success":Z
    :goto_1
    return v13

    .line 191
    :catch_0
    move-exception v7

    .line 192
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const/4 v13, 0x0

    goto :goto_1

    .line 203
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "minSpanXY":[I
    .restart local v10    # "oldLocation":Lcom/sonymobile/home/data/ItemLocation;
    .restart local v11    # "resizeMode":I
    .restart local v13    # "success":Z
    :pswitch_0
    const/4 v4, 0x0

    aget v4, v8, v4

    iget-object v15, v10, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v15, v15, Lcom/sonymobile/grid/GridRect;->colSpan:I

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 204
    .restart local v1    # "newSpanX":I
    const/4 v4, 0x1

    aget v4, v8, v4

    iget-object v15, v10, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v15, v15, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 205
    .restart local v2    # "newSpanY":I
    goto :goto_0

    .line 207
    .end local v1    # "newSpanX":I
    .end local v2    # "newSpanY":I
    :pswitch_1
    const/4 v4, 0x0

    aget v4, v8, v4

    iget-object v15, v10, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v15, v15, Lcom/sonymobile/grid/GridRect;->colSpan:I

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 208
    .restart local v1    # "newSpanX":I
    const/4 v4, 0x1

    aget v2, v8, v4

    .line 209
    .restart local v2    # "newSpanY":I
    goto :goto_0

    .line 211
    .end local v1    # "newSpanX":I
    .end local v2    # "newSpanY":I
    :pswitch_2
    const/4 v4, 0x0

    aget v1, v8, v4

    .line 212
    .restart local v1    # "newSpanX":I
    const/4 v4, 0x1

    aget v4, v8, v4

    iget-object v15, v10, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v15, v15, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 213
    .restart local v2    # "newSpanY":I
    goto :goto_0

    .line 224
    :cond_0
    iget-object v4, v10, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v4, v4, Lcom/sonymobile/grid/GridRect;->colSpan:I

    if-gt v1, v4, :cond_1

    iget-object v4, v10, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v4, v4, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    if-le v2, v4, :cond_5

    .line 227
    :cond_1
    invoke-static {v10}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v9

    .line 228
    .local v9, "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    iget-object v4, v9, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput v1, v4, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 229
    iget-object v4, v9, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput v2, v4, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 231
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/DesktopModel;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 232
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 233
    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 235
    invoke-static {v9, v3}, Lcom/sonymobile/home/model/Model;->isVacant(Lcom/sonymobile/home/data/ItemLocation;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/DesktopModel;->getPages()[I

    move-result-object v5

    .line 238
    .local v5, "pageArray":[I
    if-eqz v5, :cond_3

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v12

    .line 240
    .local v12, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    invoke-static {v12}, Lcom/sonymobile/home/desktop/DesktopPresenter;->createDesktopGrid(Lcom/sonymobile/home/resources/ResourceManager;)Lcom/sonymobile/grid/Grid;

    move-result-object v6

    .line 241
    .local v6, "grid":Lcom/sonymobile/grid/Grid;
    iget v4, v10, Lcom/sonymobile/home/data/ItemLocation;->page:I

    invoke-static/range {v1 .. v6}, Lcom/sonymobile/home/desktop/search/SearchUtil;->getFirstVacantLocation(IILjava/util/List;I[ILcom/sonymobile/grid/Grid;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v9

    .line 248
    .end local v5    # "pageArray":[I
    .end local v6    # "grid":Lcom/sonymobile/grid/Grid;
    .end local v12    # "rm":Lcom/sonymobile/home/resources/ResourceManager;
    :cond_2
    :goto_2
    if-eqz v9, :cond_4

    .line 249
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/sonymobile/home/data/WidgetItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 250
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 244
    .restart local v5    # "pageArray":[I
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 252
    .end local v5    # "pageArray":[I
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 257
    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .end local v9    # "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    :cond_5
    iget-object v4, v10, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput v1, v4, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 258
    iget-object v4, v10, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput v2, v4, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 259
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected getNewItemsFromReplacementMap(Ljava/util/Map;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            "Lcom/sonymobile/home/data/Item;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v6, "newItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 82
    .local v11, "oldItems":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v2

    .line 84
    .local v2, "nbrOfOldItems":I
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonymobile/home/data/Item;

    .line 85
    .local v9, "oldItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v9}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v13

    invoke-static {v13}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v7

    .line 86
    .local v7, "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    move-object v10, v9

    .line 87
    .local v10, "oldItemNext":Lcom/sonymobile/home/data/Item;
    const/4 v5, 0x0

    .line 88
    .local v5, "newItem":Lcom/sonymobile/home/data/Item;
    const/4 v1, 0x0

    .line 92
    .local v1, "nbrOfIterations":I
    :goto_0
    if-eqz v10, :cond_0

    if-nez v5, :cond_0

    if-ge v1, v2, :cond_0

    .line 94
    const/4 v8, 0x0

    .line 95
    .local v8, "newPackageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 96
    .local v4, "newClassName":Ljava/lang/String;
    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "newItem":Lcom/sonymobile/home/data/Item;
    check-cast v5, Lcom/sonymobile/home/data/Item;

    .line 98
    .restart local v5    # "newItem":Lcom/sonymobile/home/data/Item;
    invoke-static {v5}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->isAppWidget(Lcom/sonymobile/home/data/Item;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 100
    invoke-static {v10}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->isAdvWidget(Lcom/sonymobile/home/data/Item;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 101
    iget-object v13, p0, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v13}, Lcom/sonymobile/home/model/PackageHandler;->getMainUser()Landroid/os/UserHandle;

    move-result-object v12

    .line 105
    .local v12, "oldUser":Landroid/os/UserHandle;
    :goto_1
    invoke-virtual {v5}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 106
    invoke-static {v5}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->getClassNameFromItem(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v4

    .line 108
    if-eqz v8, :cond_3

    if-eqz v4, :cond_3

    if-eqz v12, :cond_3

    .line 109
    invoke-direct {p0, v8, v4, v12}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->registerAppWidget(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/sonymobile/home/data/WidgetItem;

    move-result-object v5

    .line 125
    .end local v12    # "oldUser":Landroid/os/UserHandle;
    :cond_1
    :goto_2
    if-eqz v5, :cond_6

    if-eqz v7, :cond_6

    .line 127
    iget-object v13, p0, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v13}, Lcom/sonymobile/home/desktop/DesktopModel;->getPageViewName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v5, v7}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 129
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    const/4 v10, 0x0

    .line 147
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 148
    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {v10}, Lcom/sonymobile/home/data/Item;->getUser()Landroid/os/UserHandle;

    move-result-object v12

    .restart local v12    # "oldUser":Landroid/os/UserHandle;
    goto :goto_1

    .line 111
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 113
    .end local v12    # "oldUser":Landroid/os/UserHandle;
    :cond_4
    invoke-static {v5}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->isActivityItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 114
    invoke-virtual {v10}, Lcom/sonymobile/home/data/Item;->getUser()Landroid/os/UserHandle;

    move-result-object v12

    .line 115
    .restart local v12    # "oldUser":Landroid/os/UserHandle;
    invoke-virtual {v5}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 116
    invoke-static {v5}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->getClassNameFromItem(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v4

    .line 117
    new-instance v3, Lcom/sonymobile/home/data/ActivityItem;

    invoke-direct {v3, v8, v4, v12}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 118
    .local v3, "newActivityItem":Lcom/sonymobile/home/data/ActivityItem;
    iget-object v13, p0, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v13, v3}, Lcom/sonymobile/home/model/PackageHandler;->isActivityInstalled(Lcom/sonymobile/home/data/ActivityItem;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 119
    move-object v5, v3

    goto :goto_2

    .line 121
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 141
    .end local v3    # "newActivityItem":Lcom/sonymobile/home/data/ActivityItem;
    .end local v12    # "oldUser":Landroid/os/UserHandle;
    :cond_6
    invoke-static {v8, v4, v11}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->findItem(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/sonymobile/home/data/Item;

    move-result-object v10

    goto :goto_3

    .line 151
    .end local v1    # "nbrOfIterations":I
    .end local v4    # "newClassName":Ljava/lang/String;
    .end local v5    # "newItem":Lcom/sonymobile/home/data/Item;
    .end local v7    # "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    .end local v8    # "newPackageName":Ljava/lang/String;
    .end local v9    # "oldItem":Lcom/sonymobile/home/data/Item;
    .end local v10    # "oldItemNext":Lcom/sonymobile/home/data/Item;
    :cond_7
    return-object v6
.end method

.method public unregisterItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 272
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->isAdvWidget(Lcom/sonymobile/home/data/Item;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->mAdvWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    check-cast v1, Lcom/sonymobile/home/data/AdvWidgetItem;

    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/AdvWidgetItem;->getId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->removeWidget(Ljava/util/UUID;)V

    goto :goto_0

    .line 274
    .restart local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->isAppWidget(Lcom/sonymobile/home/data/Item;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->mAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    check-cast v1, Lcom/sonymobile/home/data/WidgetItem;

    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->removeAppWidget(I)V

    goto :goto_0

    .line 278
    :cond_2
    return-void
.end method

.method protected validateItems(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "itemsToValidate":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v3, "validatedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 159
    .local v1, "itemToValidate":Lcom/sonymobile/home/data/Item;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->isAppWidget(Lcom/sonymobile/home/data/Item;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v4, v1

    .line 162
    check-cast v4, Lcom/sonymobile/home/data/WidgetItem;

    .line 163
    .local v4, "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    invoke-direct {p0, v4, v3}, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->validateLocation(Lcom/sonymobile/home/data/WidgetItem;Ljava/util/List;)Z

    move-result v2

    .line 164
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 165
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopReplacementManager;->mAppWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    invoke-virtual {v4}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->removeAppWidget(I)V

    goto :goto_0

    .line 170
    .end local v2    # "success":Z
    .end local v4    # "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    .end local v1    # "itemToValidate":Lcom/sonymobile/home/data/Item;
    :cond_2
    return-object v3
.end method
