.class public abstract Lcom/sonymobile/home/customization/PageViewCustomization;
.super Lcom/sonymobile/home/customization/CustomizationBase;
.source "PageViewCustomization.java"


# instance fields
.field private final mCategories:[Ljava/lang/String;

.field protected final mFolderItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mFolderLocalizedNames:[Ljava/lang/String;

.field private final mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

.field protected final mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p3, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/sonymobile/home/customization/CustomizationBase;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/home/customization/PageViewCustomization;->mFolderItems:Ljava/util/Map;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    .local v0, "res":Landroid/content/res/Resources;
    iput-object p2, p0, Lcom/sonymobile/home/customization/PageViewCustomization;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    .line 90
    iput-object p3, p0, Lcom/sonymobile/home/customization/PageViewCustomization;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    .line 92
    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/customization/PageViewCustomization;->mCategories:[Ljava/lang/String;

    .line 93
    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/customization/PageViewCustomization;->mFolderLocalizedNames:[Ljava/lang/String;

    .line 94
    return-void
.end method

.method private addInternalFunction(IIIILjava/lang/String;Landroid/content/Context;)Z
    .locals 8
    .param p1, "page"    # I
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/sonymobile/home/customization/PageViewCustomization;->getPageViewName()Ljava/lang/String;

    move-result-object v0

    .local v0, "pageViewName":Ljava/lang/String;
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 464
    invoke-static/range {v0 .. v6}, Lcom/sonymobile/home/customization/CustomizationUtils;->createInternalFunctionItem(Ljava/lang/String;IIIILjava/lang/String;Landroid/content/Context;)Lcom/sonymobile/home/data/InternalFunctionItem;

    move-result-object v7

    .line 467
    .local v7, "item":Lcom/sonymobile/home/data/InternalFunctionItem;
    if-eqz v7, :cond_0

    .line 468
    invoke-virtual {p0, v7}, Lcom/sonymobile/home/customization/PageViewCustomization;->addItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    const/4 v1, 0x1

    .line 473
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeFoldersWithTooFewItems()V
    .locals 7

    .prologue
    .line 282
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 283
    .local v2, "foldersToRemove":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;"
    iget-object v6, p0, Lcom/sonymobile/home/customization/PageViewCustomization;->mFolderItems:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 284
    .local v0, "folderEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 285
    .local v1, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Lcom/sonymobile/home/model/Model;->isBelowMinimumNumberOfItemsInFolder(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 286
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 290
    .end local v0    # "folderEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;"
    .end local v1    # "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 291
    .restart local v0    # "folderEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/sonymobile/home/customization/PageViewCustomization;->removeFolder(Ljava/lang/String;)Lcom/sonymobile/home/data/FolderItem;

    move-result-object v5

    .line 292
    .local v5, "removedFolderItem":Lcom/sonymobile/home/data/FolderItem;
    if-eqz v5, :cond_2

    .line 293
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 294
    .restart local v1    # "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 296
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/data/Item;

    .line 297
    .local v4, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v5}, Lcom/sonymobile/home/data/FolderItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 298
    invoke-virtual {p0}, Lcom/sonymobile/home/customization/PageViewCustomization;->getPageViewName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0, v4}, Lcom/sonymobile/home/customization/PageViewCustomization;->addItem(Lcom/sonymobile/home/data/Item;)Z

    goto :goto_1

    .line 303
    .end local v0    # "folderEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/sonymobile/home/data/Item;>;>;"
    .end local v1    # "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .end local v4    # "item":Lcom/sonymobile/home/data/Item;
    .end local v5    # "removedFolderItem":Lcom/sonymobile/home/data/FolderItem;
    :cond_3
    return-void
.end method


# virtual methods
.method protected addActivity(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "page"    # I
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "folderId"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "packageName"    # Ljava/lang/String;

    .prologue
    .line 250
    new-instance v10, Lcom/sonymobile/home/data/ActivityItem;

    move-object/from16 v0, p7

    move-object/from16 v1, p6

    invoke-direct {v10, v0, v1}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .local v10, "item":Lcom/sonymobile/home/data/ActivityItem;
    new-instance v2, Lcom/sonymobile/home/data/ItemLocation;

    const/4 v7, 0x1

    const/4 v8, 0x1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIIII)V

    .line 253
    .local v2, "location":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {v10, v2}, Lcom/sonymobile/home/data/ActivityItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 255
    if-eqz p5, :cond_1

    .line 256
    const-string v3, "folder"

    invoke-virtual {v10, v3}, Lcom/sonymobile/home/data/ActivityItem;->setPageViewName(Ljava/lang/String;)V

    .line 258
    iget-object v3, p0, Lcom/sonymobile/home/customization/PageViewCustomization;->mFolderItems:Ljava/util/Map;

    move-object/from16 v0, p5

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 259
    .local v9, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-eqz v9, :cond_0

    .line 260
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    .end local v9    # "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 263
    .restart local v9    # "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 266
    .end local v9    # "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/home/customization/PageViewCustomization;->getPageViewName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/sonymobile/home/data/ActivityItem;->setPageViewName(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0, v10}, Lcom/sonymobile/home/customization/PageViewCustomization;->addItem(Lcom/sonymobile/home/data/Item;)Z

    goto :goto_0
.end method

.method protected addFolder(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "page"    # I
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "id"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "category"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 362
    new-instance v0, Lcom/sonymobile/home/data/ItemLocation;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIIII)V

    .line 363
    .local v0, "location":Lcom/sonymobile/home/data/ItemLocation;
    new-instance v7, Lcom/sonymobile/home/data/FolderItem;

    invoke-direct {v7, p6, p5}, Lcom/sonymobile/home/data/FolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .local v7, "folderItem":Lcom/sonymobile/home/data/FolderItem;
    invoke-virtual {v7, v0}, Lcom/sonymobile/home/data/FolderItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 365
    invoke-virtual {p0}, Lcom/sonymobile/home/customization/PageViewCustomization;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/sonymobile/home/data/FolderItem;->setPageViewName(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/sonymobile/home/customization/PageViewCustomization;->mFolderItems:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-virtual {p0, v7}, Lcom/sonymobile/home/customization/PageViewCustomization;->addItem(Lcom/sonymobile/home/data/Item;)Z

    .line 373
    return v5
.end method

.method protected addItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "itemAdded":Z
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/customization/PageViewCustomization;->isWithinBounds(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/customization/PageViewCustomization;->removeOverlappingItems(Lcom/sonymobile/home/data/Item;)V

    .line 197
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/customization/PageViewCustomization;->onAddItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    .line 200
    :cond_0
    if-nez v0, :cond_1

    .line 201
    const-string v1, "Customization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addItem failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/home/customization/PageViewCustomization;->getPageViewName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1
    return v0
.end method

.method protected addShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Z
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "iconPackageName"    # Ljava/lang/String;
    .param p4, "iconResourceName"    # Ljava/lang/String;
    .param p5, "iconFilename"    # Ljava/lang/String;
    .param p6, "page"    # I
    .param p7, "position"    # I
    .param p8, "x"    # I
    .param p9, "y"    # I
    .param p10, "folderId"    # Ljava/lang/String;

    .prologue
    .line 431
    if-eqz p10, :cond_0

    .line 432
    const-string v1, "folder"

    .local v1, "pageViewName":Ljava/lang/String;
    :goto_0
    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    .line 438
    invoke-static/range {v1 .. v10}, Lcom/sonymobile/home/customization/CustomizationUtils;->createShortcutItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)Lcom/sonymobile/home/data/ShortcutItem;

    move-result-object v12

    .line 441
    .local v12, "item":Lcom/sonymobile/home/data/ShortcutItem;
    if-eqz v12, :cond_2

    .line 442
    if-eqz p10, :cond_1

    .line 443
    iget-object v2, p0, Lcom/sonymobile/home/customization/PageViewCustomization;->mFolderItems:Ljava/util/Map;

    move-object/from16 v0, p10

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 444
    .local v11, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-eqz v11, :cond_2

    .line 445
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    const/4 v2, 0x1

    .line 455
    .end local v11    # "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :goto_1
    return v2

    .line 434
    .end local v1    # "pageViewName":Ljava/lang/String;
    .end local v12    # "item":Lcom/sonymobile/home/data/ShortcutItem;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/customization/PageViewCustomization;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "pageViewName":Ljava/lang/String;
    goto :goto_0

    .line 449
    .restart local v12    # "item":Lcom/sonymobile/home/data/ShortcutItem;
    :cond_1
    invoke-virtual {p0, v12}, Lcom/sonymobile/home/customization/PageViewCustomization;->addItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 450
    const/4 v2, 0x1

    goto :goto_1

    .line 455
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public applyCustomization()Z
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Lcom/sonymobile/home/customization/CustomizationBase;->applyCustomization()Z

    move-result v0

    .line 276
    .local v0, "success":Z
    invoke-direct {p0}, Lcom/sonymobile/home/customization/PageViewCustomization;->removeFoldersWithTooFewItems()V

    .line 278
    return v0
.end method

.method protected abstract getItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getPageViewName()Ljava/lang/String;
.end method

.method protected final handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 39
    .param p1, "groupType"    # Ljava/lang/String;
    .param p2, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 525
    .local p3, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/sonymobile/home/customization/PageViewCustomization;->supportsGroup(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 526
    const/4 v3, 0x0

    .line 649
    :goto_0
    return v3

    .line 529
    :cond_0
    const/4 v3, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 647
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/customization/PageViewCustomization;->handleKey(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    goto :goto_0

    .line 529
    :sswitch_0
    const-string v11, "activities"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string v11, "remove-activities"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v11, "internal-functions"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v11, "shortcuts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v11, "remove-shortcuts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_5
    const-string v11, "folders"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_6
    const-string v11, "remove-folders"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v3, 0x6

    goto :goto_1

    .line 531
    :pswitch_0
    const-string v3, "package-name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 532
    .local v10, "packageName":Ljava/lang/String;
    const-string v3, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v10}, Lcom/sonymobile/home/customization/CustomizationUtils;->getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 533
    .local v9, "name":Ljava/lang/String;
    const-string v3, "folder"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 534
    .local v8, "folderId":Ljava/lang/String;
    const-string v3, "pane"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v3, v11}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 535
    .local v4, "pane":I
    const-string v3, "position"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v11, -0x1

    invoke-static {v3, v11}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 536
    .local v5, "position":I
    const-string v3, "x"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v3, v11}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 537
    .local v6, "x":I
    const-string v3, "y"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v3, v11}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 540
    .local v7, "y":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/customization/PageViewCustomization;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v3, v10, v9, v11}, Lcom/sonymobile/home/model/PackageHandler;->isActivityInstalled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v3, p0

    .line 542
    invoke-virtual/range {v3 .. v10}, Lcom/sonymobile/home/customization/PageViewCustomization;->addActivity(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 649
    .end local v4    # "pane":I
    .end local v5    # "position":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    .end local v8    # "folderId":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_2
    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 547
    .restart local v4    # "pane":I
    .restart local v5    # "position":I
    .restart local v6    # "x":I
    .restart local v7    # "y":I
    .restart local v8    # "folderId":Ljava/lang/String;
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "packageName":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/customization/PageViewCustomization;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v3, v9, v10}, Lcom/sonymobile/home/model/PackageHandler;->getTargetActivityName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 549
    .local v17, "targetName":Ljava/lang/String;
    if-eqz v17, :cond_4

    move-object/from16 v11, p0

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    move-object/from16 v16, v8

    move-object/from16 v18, v10

    .line 550
    invoke-virtual/range {v11 .. v18}, Lcom/sonymobile/home/customization/PageViewCustomization;->addActivity(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 551
    :cond_4
    if-eqz v9, :cond_5

    if-eqz v10, :cond_5

    const-string v3, "com.android.stk"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v3, p0

    .line 553
    invoke-virtual/range {v3 .. v10}, Lcom/sonymobile/home/customization/PageViewCustomization;->addActivity(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 555
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/customization/PageViewCustomization;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Activity not installed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 562
    .end local v4    # "pane":I
    .end local v5    # "position":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    .end local v8    # "folderId":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v17    # "targetName":Ljava/lang/String;
    :pswitch_1
    const-string v3, "package-name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 563
    .restart local v10    # "packageName":Ljava/lang/String;
    const-string v3, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v10}, Lcom/sonymobile/home/customization/CustomizationUtils;->getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 564
    .restart local v9    # "name":Ljava/lang/String;
    const-string v3, "folder"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 565
    .restart local v8    # "folderId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v8}, Lcom/sonymobile/home/customization/PageViewCustomization;->removeActivityItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v38

    .line 567
    .local v38, "removed":Z
    if-nez v38, :cond_2

    .line 568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/customization/PageViewCustomization;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v3, v10, v9}, Lcom/sonymobile/home/model/PackageHandler;->getTargetActivityName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 570
    .restart local v17    # "targetName":Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 571
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10, v8}, Lcom/sonymobile/home/customization/PageViewCustomization;->removeActivityItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 578
    .end local v8    # "folderId":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v17    # "targetName":Ljava/lang/String;
    .end local v38    # "removed":Z
    :pswitch_2
    const-string v3, "type"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 579
    .local v23, "type":Ljava/lang/String;
    const-string v3, "pane"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v3, v11}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 580
    .restart local v4    # "pane":I
    const-string v3, "position"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v11, -0x1

    invoke-static {v3, v11}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 581
    .restart local v5    # "position":I
    const-string v3, "x"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v3, v11}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 582
    .restart local v6    # "x":I
    const-string v3, "y"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v3, v11}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 584
    .restart local v7    # "y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/customization/PageViewCustomization;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v18, p0

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    invoke-direct/range {v18 .. v24}, Lcom/sonymobile/home/customization/PageViewCustomization;->addInternalFunction(IIIILjava/lang/String;Landroid/content/Context;)Z

    goto/16 :goto_2

    .line 589
    .end local v4    # "pane":I
    .end local v5    # "position":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    .end local v23    # "type":Ljava/lang/String;
    :pswitch_3
    const-string v3, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 590
    .restart local v9    # "name":Ljava/lang/String;
    const-string v3, "uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 591
    .local v26, "uri":Ljava/lang/String;
    const-string v3, "icon-package-name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 592
    .local v27, "iconPackageName":Ljava/lang/String;
    const-string v3, "icon-resource-name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 593
    .local v28, "iconResourceName":Ljava/lang/String;
    const-string v3, "icon-filename"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 594
    .local v29, "iconFilename":Ljava/lang/String;
    const-string v3, "folder"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 595
    .restart local v8    # "folderId":Ljava/lang/String;
    const-string v3, "pane"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v3, v11}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 596
    .restart local v4    # "pane":I
    const-string v3, "position"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v11, -0x1

    invoke-static {v3, v11}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 597
    .restart local v5    # "position":I
    const-string v3, "x"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v3, v11}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 598
    .restart local v6    # "x":I
    const-string v3, "y"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v3, v11}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .restart local v7    # "y":I
    move-object/from16 v24, p0

    move-object/from16 v25, v9

    move/from16 v30, v4

    move/from16 v31, v5

    move/from16 v32, v6

    move/from16 v33, v7

    move-object/from16 v34, v8

    .line 600
    invoke-virtual/range {v24 .. v34}, Lcom/sonymobile/home/customization/PageViewCustomization;->addShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Z

    goto/16 :goto_2

    .line 606
    .end local v4    # "pane":I
    .end local v5    # "position":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    .end local v8    # "folderId":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v26    # "uri":Ljava/lang/String;
    .end local v27    # "iconPackageName":Ljava/lang/String;
    .end local v28    # "iconResourceName":Ljava/lang/String;
    .end local v29    # "iconFilename":Ljava/lang/String;
    :pswitch_4
    const-string v3, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 607
    .restart local v9    # "name":Ljava/lang/String;
    const-string v3, "uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 608
    .restart local v26    # "uri":Ljava/lang/String;
    const-string v3, "folder"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 610
    .restart local v8    # "folderId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v9, v1, v8}, Lcom/sonymobile/home/customization/PageViewCustomization;->removeShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 615
    .end local v8    # "folderId":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v26    # "uri":Ljava/lang/String;
    :pswitch_5
    const-string v3, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 616
    .restart local v9    # "name":Ljava/lang/String;
    const-string v3, "category"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 617
    .local v37, "category":Ljava/lang/String;
    const-string v3, "id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 618
    .local v35, "id":Ljava/lang/String;
    const-string v3, "pane"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v3, v11}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 619
    .restart local v4    # "pane":I
    const-string v3, "position"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v11, -0x1

    invoke-static {v3, v11}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 620
    .restart local v5    # "position":I
    const-string v3, "x"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v3, v11}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 621
    .restart local v6    # "x":I
    const-string v3, "y"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v3, v11}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 623
    .restart local v7    # "y":I
    if-nez v9, :cond_6

    .line 624
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/customization/PageViewCustomization;->mCategories:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonymobile/home/customization/PageViewCustomization;->mFolderLocalizedNames:[Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-static {v3, v11, v0}, Lcom/sonymobile/home/customization/CustomizationUtils;->getFolderName([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 627
    :cond_6
    if-nez v35, :cond_7

    .line 628
    move-object/from16 v35, v9

    :cond_7
    move-object/from16 v30, p0

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v33, v6

    move/from16 v34, v7

    move-object/from16 v36, v9

    .line 631
    invoke-virtual/range {v30 .. v37}, Lcom/sonymobile/home/customization/PageViewCustomization;->addFolder(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 636
    .end local v4    # "pane":I
    .end local v5    # "position":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v35    # "id":Ljava/lang/String;
    .end local v37    # "category":Ljava/lang/String;
    :pswitch_6
    const-string v3, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 637
    .restart local v9    # "name":Ljava/lang/String;
    const-string v3, "id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 639
    .restart local v35    # "id":Ljava/lang/String;
    if-nez v35, :cond_8

    .line 640
    move-object/from16 v35, v9

    .line 642
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/customization/PageViewCustomization;->removeFolder(Ljava/lang/String;)Lcom/sonymobile/home/data/FolderItem;

    goto/16 :goto_2

    .line 529
    nop

    :sswitch_data_0
    .sparse-switch
        -0x78da5313 -> :sswitch_3
        -0x591fd775 -> :sswitch_2
        -0x49087684 -> :sswitch_6
        -0x446e0b2a -> :sswitch_1
        -0x28b98e3b -> :sswitch_5
        0x3eefb2e4 -> :sswitch_4
        0x7a1b3bed -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected abstract isWithinBounds(Lcom/sonymobile/home/data/ItemLocation;)Z
.end method

.method protected abstract onAddItem(Lcom/sonymobile/home/data/Item;)Z
.end method

.method protected abstract onRemoveItem(Lcom/sonymobile/home/data/Item;)Z
.end method

.method protected removeActivityItem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 338
    new-instance v0, Lcom/sonymobile/home/data/ActivityItem;

    invoke-direct {v0, p2, p1}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .local v0, "item":Lcom/sonymobile/home/data/ActivityItem;
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/customization/PageViewCustomization;->removeItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v1

    .line 340
    .local v1, "itemRemoved":Z
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/customization/PageViewCustomization;->removeItemFromFolders(Lcom/sonymobile/home/data/Item;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 341
    return v1
.end method

.method protected removeActivityItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "folderId"    # Ljava/lang/String;

    .prologue
    .line 316
    if-eqz p3, :cond_1

    .line 318
    iget-object v1, p0, Lcom/sonymobile/home/customization/PageViewCustomization;->mFolderItems:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 319
    .local v0, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-eqz v0, :cond_0

    .line 320
    new-instance v1, Lcom/sonymobile/home/data/ActivityItem;

    invoke-direct {v1, p2, p1}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 325
    .end local v0    # "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :goto_0
    return v1

    .line 322
    .restart local v0    # "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 325
    .end local v0    # "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_1
    new-instance v1, Lcom/sonymobile/home/data/ActivityItem;

    invoke-direct {v1, p2, p1}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/customization/PageViewCustomization;->removeItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v1

    goto :goto_0
.end method

.method protected removeFolder(Ljava/lang/String;)Lcom/sonymobile/home/data/FolderItem;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 387
    iget-object v4, p0, Lcom/sonymobile/home/customization/PageViewCustomization;->mFolderItems:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const/4 v1, 0x0

    .line 391
    .local v1, "folderToRemove":Lcom/sonymobile/home/data/FolderItem;
    invoke-virtual {p0}, Lcom/sonymobile/home/customization/PageViewCustomization;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/data/Item;

    .line 392
    .local v3, "item":Lcom/sonymobile/home/data/Item;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 393
    check-cast v0, Lcom/sonymobile/home/data/FolderItem;

    .line 394
    .local v0, "folderItem":Lcom/sonymobile/home/data/FolderItem;
    invoke-virtual {v0}, Lcom/sonymobile/home/data/FolderItem;->getCustId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 395
    move-object v1, v0

    .line 401
    .end local v0    # "folderItem":Lcom/sonymobile/home/data/FolderItem;
    .end local v3    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/customization/PageViewCustomization;->removeItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 405
    .end local v1    # "folderToRemove":Lcom/sonymobile/home/data/FolderItem;
    :goto_0
    return-object v1

    .restart local v1    # "folderToRemove":Lcom/sonymobile/home/data/FolderItem;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected removeItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/customization/PageViewCustomization;->onRemoveItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    return v0
.end method

.method protected removeItemFromFolders(Lcom/sonymobile/home/data/Item;)Z
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 224
    const/4 v2, 0x0

    .line 226
    .local v2, "result":Z
    iget-object v3, p0, Lcom/sonymobile/home/customization/PageViewCustomization;->mFolderItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 227
    .local v0, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    const/4 v2, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_1
    return v2
.end method

.method protected abstract removeOverlappingItems(Lcom/sonymobile/home/data/Item;)V
.end method

.method protected removeShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "folderId"    # Ljava/lang/String;

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/sonymobile/home/customization/PageViewCustomization;->getPageViewName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1, p2}, Lcom/sonymobile/home/customization/CustomizationUtils;->createShortcutItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/home/data/ShortcutItem;

    move-result-object v5

    .line 491
    .local v5, "tempShortcut":Lcom/sonymobile/home/data/ShortcutItem;
    if-eqz v5, :cond_1

    .line 492
    if-eqz p3, :cond_0

    .line 494
    iget-object v6, p0, Lcom/sonymobile/home/customization/PageViewCustomization;->mFolderItems:Ljava/util/Map;

    invoke-interface {v6, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 495
    .local v0, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-eqz v0, :cond_1

    .line 498
    invoke-interface {v0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 499
    .local v3, "position":I
    if-ltz v3, :cond_1

    .line 501
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/data/ShortcutItem;

    .line 503
    .local v4, "shortcut":Lcom/sonymobile/home/data/ShortcutItem;
    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v6

    .line 519
    .end local v0    # "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .end local v3    # "position":I
    .end local v4    # "shortcut":Lcom/sonymobile/home/data/ShortcutItem;
    :goto_0
    return v6

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/customization/PageViewCustomization;->getItems()Ljava/util/List;

    move-result-object v1

    .line 509
    .local v1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 510
    .restart local v3    # "position":I
    if-ltz v3, :cond_1

    .line 512
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/ShortcutItem;

    .line 514
    .local v2, "listItem":Lcom/sonymobile/home/data/ShortcutItem;
    invoke-virtual {p0, v2}, Lcom/sonymobile/home/customization/PageViewCustomization;->removeItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v6

    goto :goto_0

    .line 519
    .end local v1    # "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .end local v2    # "listItem":Lcom/sonymobile/home/data/ShortcutItem;
    .end local v3    # "position":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected abstract store()V
.end method

.method public final storeData()V
    .locals 11

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/sonymobile/home/customization/PageViewCustomization;->getItems()Ljava/util/List;

    move-result-object v7

    .line 100
    .local v7, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-nez v7, :cond_0

    .line 132
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/home/data/Item;

    .line 105
    .local v6, "item":Lcom/sonymobile/home/data/Item;
    if-eqz v6, :cond_1

    .line 106
    instance-of v9, v6, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v9, :cond_1

    move-object v0, v6

    .line 111
    check-cast v0, Lcom/sonymobile/home/data/FolderItem;

    .line 112
    .local v0, "folder":Lcom/sonymobile/home/data/FolderItem;
    iget-object v9, p0, Lcom/sonymobile/home/customization/PageViewCustomization;->mFolderItems:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sonymobile/home/data/FolderItem;->getCustId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 114
    .local v2, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 115
    const/4 v3, 0x0

    .line 116
    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 119
    .local v1, "folderItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v8

    .line 120
    .local v8, "location":Lcom/sonymobile/home/data/ItemLocation;
    iput v3, v8, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 121
    add-int/lit8 v3, v3, 0x1

    .line 122
    goto :goto_2

    .line 125
    .end local v1    # "folderItem":Lcom/sonymobile/home/data/Item;
    .end local v8    # "location":Lcom/sonymobile/home/data/ItemLocation;
    :cond_2
    iget-object v9, p0, Lcom/sonymobile/home/customization/PageViewCustomization;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v0, v2, v10}, Lcom/sonymobile/home/folder/FolderManager;->insertFolder(Lcom/sonymobile/home/data/FolderItem;Ljava/util/List;Z)V

    goto :goto_1

    .line 131
    .end local v0    # "folder":Lcom/sonymobile/home/data/FolderItem;
    .end local v2    # "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .end local v3    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "item":Lcom/sonymobile/home/data/Item;
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/home/customization/PageViewCustomization;->store()V

    goto :goto_0
.end method
