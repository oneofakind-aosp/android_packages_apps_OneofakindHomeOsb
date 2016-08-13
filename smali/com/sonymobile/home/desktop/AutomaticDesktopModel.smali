.class public Lcom/sonymobile/home/desktop/AutomaticDesktopModel;
.super Lcom/sonymobile/home/desktop/DesktopModel;
.source "AutomaticDesktopModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/desktop/AutomaticDesktopModel$CallbackForStageItems;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAddSyncable:Lcom/sonymobile/home/model/AddSyncable;

.field private final mCallbackForStageItems:Lcom/sonymobile/home/desktop/AutomaticDesktopModel$CallbackForStageItems;

.field private mDoInitialItemLayoutAtNextModelActivate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/tip/TipManager;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/desktop/AutomaticDesktopModel$CallbackForStageItems;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storage"    # Lcom/sonymobile/home/storage/Storage;
    .param p3, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p4, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p5, "badgeManager"    # Lcom/sonymobile/home/badge/BadgeManager;
    .param p6, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p7, "tipManager"    # Lcom/sonymobile/home/tip/TipManager;
    .param p8, "resourceManager"    # Lcom/sonymobile/home/resources/ResourceManager;
    .param p9, "itemCreator"    # Lcom/sonymobile/home/data/ItemCreator;
    .param p10, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p11, "callbackForStageItems"    # Lcom/sonymobile/home/desktop/AutomaticDesktopModel$CallbackForStageItems;

    .prologue
    .line 78
    const/4 v11, 0x0

    const-string v12, "desktop_automatic"

    new-instance v13, Lcom/sonymobile/home/desktop/AutomaticDesktopPreferenceManager;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/sonymobile/home/desktop/AutomaticDesktopPreferenceManager;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v14, p10

    invoke-direct/range {v1 .. v14}, Lcom/sonymobile/home/desktop/DesktopModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/tip/TipManager;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/data/ItemCreator;ZLjava/lang/String;Lcom/sonymobile/home/desktop/DesktopPreferenceManager;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 82
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mCallbackForStageItems:Lcom/sonymobile/home/desktop/AutomaticDesktopModel$CallbackForStageItems;

    .line 83
    new-instance v1, Lcom/sonymobile/home/model/AddSyncableApps;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mItems:Ljava/util/List;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    new-instance v4, Lcom/sonymobile/home/desktop/AutomaticDesktopModel$1;

    move-object/from16 v0, p6

    invoke-direct {v4, p0, v0}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel$1;-><init>(Lcom/sonymobile/home/desktop/AutomaticDesktopModel;Lcom/sonymobile/home/folder/FolderManager;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/sonymobile/home/model/AddSyncableApps;-><init>(Ljava/util/List;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/model/AddSyncableCallback;)V

    iput-object v1, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mAddSyncable:Lcom/sonymobile/home/model/AddSyncable;

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mDoInitialItemLayoutAtNextModelActivate:Z

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/desktop/AutomaticDesktopModel;)Lcom/sonymobile/home/desktop/AutomaticDesktopModel$CallbackForStageItems;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/AutomaticDesktopModel;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mCallbackForStageItems:Lcom/sonymobile/home/desktop/AutomaticDesktopModel$CallbackForStageItems;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/desktop/AutomaticDesktopModel;Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/AutomaticDesktopModel;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->addItemOnLastPage(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/desktop/AutomaticDesktopModel;)Lcom/sonymobile/home/model/PackageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/AutomaticDesktopModel;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/desktop/AutomaticDesktopModel;)Lcom/sonymobile/home/model/ResourceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/AutomaticDesktopModel;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/desktop/AutomaticDesktopModel;)Lcom/sonymobile/home/folder/FolderManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/AutomaticDesktopModel;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/desktop/AutomaticDesktopModel;)Lcom/sonymobile/home/data/ItemCreator;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/AutomaticDesktopModel;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    return-object v0
.end method

.method private addItemOnLastPage(Lcom/sonymobile/home/data/Item;)Z
    .locals 9
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 234
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->getRightPageId()I

    move-result v8

    .line 235
    .local v8, "lastPage":I
    const/4 v6, 0x1

    .line 236
    .local v6, "itemColSpan":I
    const/4 v7, 0x1

    .line 237
    .local v7, "itemRowSpan":I
    invoke-direct {p0, v8, v4, v4}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->getFirstVacantLocationOnPage(III)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    .line 238
    .local v0, "location":Lcom/sonymobile/home/data/ItemLocation;
    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/sonymobile/home/data/ItemLocation;

    .end local v0    # "location":Lcom/sonymobile/home/data/ItemLocation;
    add-int/lit8 v1, v8, 0x1

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIII)V

    .line 240
    .restart local v0    # "location":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->appendPage()I

    .line 241
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->getRightPageId()I

    move-result v1

    iput v1, v0, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 243
    :cond_0
    invoke-virtual {p1, v0}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 244
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->addItemToDesktop(Lcom/sonymobile/home/data/Item;)Z

    move-result v1

    return v1
.end method

.method private getFirstVacantLocationOnPage(III)Lcom/sonymobile/home/data/ItemLocation;
    .locals 10
    .param p1, "page"    # I
    .param p2, "itemColSpan"    # I
    .param p3, "itemRowSpan"    # I

    .prologue
    .line 252
    new-instance v9, Lcom/sonymobile/home/itemorganizer/GroupItemMover;

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->getColumnSpan()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->getRowSpan()I

    move-result v4

    invoke-direct {v9, v1, v4}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;-><init>(II)V

    .line 253
    .local v9, "itemMap":Lcom/sonymobile/home/itemorganizer/GroupItemMover;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/home/data/Item;

    .line 254
    .local v7, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v7}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    iget-object v1, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    invoke-virtual {v9, v1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->addToMap(Lcom/sonymobile/grid/GridRect;)V

    goto :goto_0

    .line 256
    .end local v7    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    new-instance v8, Lcom/sonymobile/grid/GridRect;

    invoke-direct {v8}, Lcom/sonymobile/grid/GridRect;-><init>()V

    .line 257
    .local v8, "itemGrid":Lcom/sonymobile/grid/GridRect;
    iput p2, v8, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 258
    iput p3, v8, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "location":Lcom/sonymobile/home/data/ItemLocation;
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->getRowSpan()I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 262
    const/4 v2, 0x0

    .local v2, "col":I
    :goto_2
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->getColumnSpan()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 263
    iput v2, v8, Lcom/sonymobile/grid/GridRect;->col:I

    .line 264
    iput v3, v8, Lcom/sonymobile/grid/GridRect;->row:I

    .line 265
    invoke-virtual {v9, v8}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->isFree(Lcom/sonymobile/grid/GridRect;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    new-instance v0, Lcom/sonymobile/home/data/ItemLocation;

    .end local v0    # "location":Lcom/sonymobile/home/data/ItemLocation;
    move v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIII)V

    .line 262
    .restart local v0    # "location":Lcom/sonymobile/home/data/ItemLocation;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 261
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 274
    .end local v2    # "col":I
    :cond_3
    return-object v0
.end method

.method private isShortcutActivityInstalled(Lcom/sonymobile/home/data/ShortcutItem;)Z
    .locals 5
    .param p1, "shortcutItem"    # Lcom/sonymobile/home/data/ShortcutItem;

    .prologue
    .line 223
    invoke-virtual {p1}, Lcom/sonymobile/home/data/ShortcutItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/home/data/ShortcutItem;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 225
    .local v3, "user":Landroid/os/UserHandle;
    const/4 v2, 0x1

    .line 226
    .local v2, "shortcutActivityInstalled":Z
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 227
    iget-object v4, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v4, v1, v3}, Lcom/sonymobile/home/model/PackageHandler;->getLauncherActivityInfo(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 228
    .local v0, "activityInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-static {p1, v0}, Lcom/sonymobile/home/shortcut/ShortcutUtils;->containsDuplicate(Lcom/sonymobile/home/data/ShortcutItem;Ljava/util/List;)Z

    move-result v2

    .line 230
    .end local v0    # "activityInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    :cond_0
    return v2
.end method


# virtual methods
.method public activateModel()V
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mDoInitialItemLayoutAtNextModelActivate:Z

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mDoInitialItemLayoutAtNextModelActivate:Z

    .line 177
    new-instance v0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel$2;-><init>(Lcom/sonymobile/home/desktop/AutomaticDesktopModel;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->addOnLoadedRunnable(Ljava/lang/Runnable;)V

    .line 188
    :cond_0
    return-void
.end method

.method protected addAllNewlyInstalledApps(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 145
    iget-object v1, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v1, p1, p2}, Lcom/sonymobile/home/model/PackageHandler;->getActivityItemSet(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/Set;

    move-result-object v0

    .line 147
    .local v0, "activityItemsInPackage":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/home/data/ActivityItem;>;"
    iget-object v1, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mAddSyncable:Lcom/sonymobile/home/model/AddSyncable;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mItems:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/sonymobile/home/model/SyncHelper;->syncPackageAdded(Lcom/sonymobile/home/model/AddSyncable;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/model/ResourceHandler;->loadResources(Ljava/util/Collection;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    .line 151
    :cond_0
    return-void
.end method

.method protected getAddSyncable()Lcom/sonymobile/home/model/AddSyncable;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mAddSyncable:Lcom/sonymobile/home/model/AddSyncable;

    return-object v0
.end method

.method public getStagePageViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "stage_dynamic"

    return-object v0
.end method

.method public isItemRemovable(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 122
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sonymobile/home/data/WidgetItem;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isShortcutAccepted(Lcom/sonymobile/home/data/ShortcutItem;Z)Z
    .locals 2
    .param p1, "itemToAdd"    # Lcom/sonymobile/home/data/ShortcutItem;
    .param p2, "foundDuplicateActivityItem"    # Z

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, Lcom/sonymobile/home/desktop/DesktopModel;->isShortcutAccepted(Lcom/sonymobile/home/data/ShortcutItem;Z)Z

    move-result v0

    .line 205
    .local v0, "shortcutAccepted":Z
    if-eqz v0, :cond_1

    .line 208
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/home/data/ShortcutItem;->isActivityShortcut()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->isShortcutActivityInstalled(Lcom/sonymobile/home/data/ShortcutItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    :cond_0
    const/4 v0, 0x0

    .line 213
    :cond_1
    return v0
.end method

.method public prepareToActivateModel(Z)V
    .locals 1
    .param p1, "automaticModeIsSelected"    # Z

    .prologue
    .line 159
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->hasAutomaticDesktopModeBeenUsed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mDoInitialItemLayoutAtNextModelActivate:Z

    .line 168
    :cond_0
    return-void
.end method
