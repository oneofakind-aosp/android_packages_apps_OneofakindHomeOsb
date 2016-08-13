.class public Lcom/sonymobile/home/desktop/ManualDesktopModel;
.super Lcom/sonymobile/home/desktop/DesktopModel;
.source "ManualDesktopModel.java"


# static fields
.field private static final SEARCH_WIDGETS:[Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/ComponentName;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.googlequicksearchbox"

    const-string v4, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.baidu.searchbox"

    const-string v4, "com.baidu.searchbox.widget.TransSearchWidgetProvider"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/home/desktop/ManualDesktopModel;->SEARCH_WIDGETS:[Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/tip/TipManager;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/data/ItemCreator;ZLcom/sonymobile/home/settings/UserSettings;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storage"    # Lcom/sonymobile/home/storage/Storage;
    .param p3, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p4, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p5, "badgeManager"    # Lcom/sonymobile/home/badge/BadgeManager;
    .param p6, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p7, "tipManager"    # Lcom/sonymobile/home/tip/TipManager;
    .param p8, "resourceManager"    # Lcom/sonymobile/home/resources/ResourceManager;
    .param p9, "itemCreator"    # Lcom/sonymobile/home/data/ItemCreator;
    .param p10, "stageAddedDuringUpgrade"    # Z
    .param p11, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 72
    const-string v11, "desktop"

    new-instance v12, Lcom/sonymobile/home/desktop/ManualDesktopPreferenceManager;

    invoke-direct {v12, p1}, Lcom/sonymobile/home/desktop/ManualDesktopPreferenceManager;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v13, p11

    invoke-direct/range {v0 .. v13}, Lcom/sonymobile/home/desktop/DesktopModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/tip/TipManager;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/data/ItemCreator;ZLjava/lang/String;Lcom/sonymobile/home/desktop/DesktopPreferenceManager;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 76
    return-void
.end method

.method private createSearchWidget()Lcom/sonymobile/home/data/WidgetItem;
    .locals 10

    .prologue
    .line 144
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v0

    .line 146
    .local v0, "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    const/4 v4, 0x0

    .line 147
    .local v4, "searchWidget":Lcom/sonymobile/home/data/WidgetItem;
    if-eqz v0, :cond_0

    .line 148
    iget-object v8, p0, Lcom/sonymobile/home/desktop/ManualDesktopModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v8}, Lcom/sonymobile/home/model/PackageHandler;->getMainUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 149
    .local v5, "user":Landroid/os/UserHandle;
    sget-object v1, Lcom/sonymobile/home/desktop/ManualDesktopModel;->SEARCH_WIDGETS:[Landroid/content/ComponentName;

    .local v1, "arr$":[Landroid/content/ComponentName;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v1, v2

    .line 150
    .local v6, "widgetComponent":Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9, v5}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->registerAppWidgetIdSync(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v7

    .line 152
    .local v7, "widgetId":I
    if-eqz v7, :cond_1

    .line 153
    new-instance v4, Lcom/sonymobile/home/data/WidgetItem;

    .end local v4    # "searchWidget":Lcom/sonymobile/home/data/WidgetItem;
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v7, v8, v9, v5}, Lcom/sonymobile/home/data/WidgetItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 155
    .restart local v4    # "searchWidget":Lcom/sonymobile/home/data/WidgetItem;
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ManualDesktopModel;->getPageViewName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/sonymobile/home/data/WidgetItem;->setPageViewName(Ljava/lang/String;)V

    .line 160
    .end local v1    # "arr$":[Landroid/content/ComponentName;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "user":Landroid/os/UserHandle;
    .end local v6    # "widgetComponent":Landroid/content/ComponentName;
    .end local v7    # "widgetId":I
    :cond_0
    return-object v4

    .line 149
    .restart local v1    # "arr$":[Landroid/content/ComponentName;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "user":Landroid/os/UserHandle;
    .restart local v6    # "widgetComponent":Landroid/content/ComponentName;
    .restart local v7    # "widgetId":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private gridToIndex(Lcom/sonymobile/grid/GridRect;)I
    .locals 2
    .param p1, "grid"    # Lcom/sonymobile/grid/GridRect;

    .prologue
    .line 170
    iget v0, p1, Lcom/sonymobile/grid/GridRect;->row:I

    iget v1, p0, Lcom/sonymobile/home/desktop/ManualDesktopModel;->mColSpan:I

    mul-int/2addr v0, v1

    iget v1, p1, Lcom/sonymobile/grid/GridRect;->col:I

    add-int/2addr v0, v1

    return v0
.end method

.method private insertItemTopLeftAtFirstVacantPage(Lcom/sonymobile/home/data/Item;III)Z
    .locals 4
    .param p1, "itemToAdd"    # Lcom/sonymobile/home/data/Item;
    .param p2, "itemColSpan"    # I
    .param p3, "itemRowSpan"    # I
    .param p4, "startPageId"    # I

    .prologue
    .line 205
    iget-object v3, p0, Lcom/sonymobile/home/desktop/ManualDesktopModel;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-static {v3}, Lcom/sonymobile/home/desktop/ManualDesktopModel;->getPages(Lcom/sonymobile/home/desktop/DesktopPreferenceManager;)[I

    move-result-object v2

    .line 207
    .local v2, "pageArray":[I
    const/4 v0, 0x0

    .line 209
    .local v0, "itemAdded":Z
    if-eqz v2, :cond_1

    .line 210
    invoke-virtual {p0, p2, p3, p4}, Lcom/sonymobile/home/desktop/ManualDesktopModel;->getFirstVacantLocation(III)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    .line 212
    .local v1, "location":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v1, :cond_1

    .line 213
    iget-object v3, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->row:I

    if-lez v3, :cond_0

    .line 214
    invoke-direct {p0, v1}, Lcom/sonymobile/home/desktop/ManualDesktopModel;->moveLocationToTop(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 216
    :cond_0
    invoke-virtual {p1, v1}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 217
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/ManualDesktopModel;->addItemToDesktop(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    .line 221
    .end local v1    # "location":Lcom/sonymobile/home/data/ItemLocation;
    :cond_1
    return v0
.end method

.method private moveLocationToTop(Lcom/sonymobile/home/data/ItemLocation;)V
    .locals 8
    .param p1, "location"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/ManualDesktopModel;->isVacant(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v5, v5, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iget v6, p0, Lcom/sonymobile/home/desktop/ManualDesktopModel;->mColSpan:I

    if-eq v5, v6, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget v5, p1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    invoke-virtual {p0, v5}, Lcom/sonymobile/home/desktop/ManualDesktopModel;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v3

    .line 184
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v5, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    invoke-direct {p0, v5}, Lcom/sonymobile/home/desktop/ManualDesktopModel;->gridToIndex(Lcom/sonymobile/grid/GridRect;)I

    move-result v4

    .line 185
    .local v4, "locationIndex":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 186
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v5

    iget-object v5, v5, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    invoke-direct {p0, v5}, Lcom/sonymobile/home/desktop/ManualDesktopModel;->gridToIndex(Lcom/sonymobile/grid/GridRect;)I

    move-result v2

    .line 187
    .local v2, "itemIndex":I
    if-ltz v2, :cond_2

    if-gt v2, v4, :cond_2

    .line 188
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v5

    iget-object v5, v5, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v6, v5, Lcom/sonymobile/grid/GridRect;->row:I

    iget-object v7, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v7, v7, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v6, v7

    iput v6, v5, Lcom/sonymobile/grid/GridRect;->row:I

    goto :goto_1

    .line 191
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    .end local v2    # "itemIndex":I
    :cond_3
    iget-object v5, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    const/4 v6, 0x0

    iput v6, v5, Lcom/sonymobile/grid/GridRect;->row:I

    goto :goto_0
.end method


# virtual methods
.method public activateModel()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method protected addAllNewlyInstalledApps(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 85
    return-void
.end method

.method public getStagePageViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string v0, "stage"

    return-object v0
.end method

.method protected prepareForHomeV8Upgrade()V
    .locals 4

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/ManualDesktopModel;->createSearchWidget()Lcom/sonymobile/home/data/WidgetItem;

    move-result-object v0

    .line 106
    .local v0, "searchWidget":Lcom/sonymobile/home/data/WidgetItem;
    if-eqz v0, :cond_0

    .line 107
    iget v1, p0, Lcom/sonymobile/home/desktop/ManualDesktopModel;->mColSpan:I

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/ManualDesktopModel;->getHomePageId()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/home/desktop/ManualDesktopModel;->insertItemTopLeftAtFirstVacantPage(Lcom/sonymobile/home/data/Item;III)Z

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/desktop/ManualDesktopModel;->mUpgradePreferences:Lcom/sonymobile/home/storage/UpgradePreferenceManager;

    invoke-virtual {v1}, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->completeAddSearchWidget()V

    .line 111
    return-void
.end method

.method public prepareToActivateModel(Z)V
    .locals 0
    .param p1, "automaticModeIsSelected"    # Z

    .prologue
    .line 127
    return-void
.end method

.method protected prepareToCompressItemsIfNeeded()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ManualDesktopModel;->mUpgradePreferences:Lcom/sonymobile/home/storage/UpgradePreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->shouldCompressDesktopItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ManualDesktopModel;->mStorage:Lcom/sonymobile/home/storage/Storage;

    const-string v1, "stage"

    invoke-interface {v0, v1}, Lcom/sonymobile/home/storage/Storage;->getPageViewItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/desktop/ManualDesktopModel;->mUpgradeStageItems:Ljava/util/List;

    .line 98
    :cond_0
    return-void
.end method
