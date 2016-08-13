.class public Lcom/sonymobile/home/HomeApplication;
.super Landroid/app/Application;
.source "HomeApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/HomeApplication$CustomizationListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sUseTabletLayout:Z


# instance fields
.field private mAutomaticDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

.field private mCustomizationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/HomeApplication$CustomizationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomizationState:I

.field private mHandler:Landroid/os/Handler;

.field private mHomePreferences:Lcom/sonymobile/home/configuration/HomePreferences;

.field private mManualDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

.field private mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

.field private mRefWatcher:Lcom/squareup/leakcanary/RefWatcher;

.field private mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

.field private mSearchSuggestionsModel:Lcom/sonymobile/home/search/SearchSuggestionsModel;

.field private mStageAddedDuringUpgrade:Z

.field private mStageDynamicModel:Lcom/sonymobile/home/stage/StageModel;

.field private mStageFixedModel:Lcom/sonymobile/home/stage/StageModel;

.field private mStkManager:Lcom/sonymobile/home/stk/StkManager;

.field private mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

.field private mWorker:Lcom/sonymobile/flix/util/Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/sonymobile/home/HomeApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/HomeApplication;->LOG_TAG:Ljava/lang/String;

    .line 136
    const-string v0, "Home"

    invoke-static {v0}, Lcom/sonymobile/flix/debug/Logx;->setLogTag(Ljava/lang/String;)V

    .line 138
    const-string v0, "<<>>"

    invoke-static {v0}, Lcom/sonymobile/flix/debug/Logx;->setPrefix(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/home/HomeApplication;->mCustomizationState:I

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mCustomizationListeners:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/HomeApplication;)Lcom/sonymobile/home/stage/StageModel;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/HomeApplication;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mStageDynamicModel:Lcom/sonymobile/home/stage/StageModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/HomeApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/HomeApplication;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sonymobile/home/HomeApplication;->doCustomizationIfNeeded()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/sonymobile/home/HomeApplication;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sonymobile/home/HomeApplication;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/HomeApplication;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/sonymobile/home/HomeApplication;->mStageAddedDuringUpgrade:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sonymobile/home/HomeApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/HomeApplication;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sonymobile/home/HomeApplication;->notifyCustomizationDone()V

    return-void
.end method

.method private areDesktopModelsCreated()Z
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mAutomaticDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mManualDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private areStageModelsCreated()Z
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mStageDynamicModel:Lcom/sonymobile/home/stage/StageModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mStageFixedModel:Lcom/sonymobile/home/stage/StageModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createAndRegisterProfileReceiver()V
    .locals 3

    .prologue
    .line 475
    new-instance v1, Lcom/sonymobile/home/model/ProfileReceiver;

    iget-object v2, p0, Lcom/sonymobile/home/HomeApplication;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-direct {v1, v2}, Lcom/sonymobile/home/model/ProfileReceiver;-><init>(Lcom/sonymobile/home/model/PackageHandler;)V

    .line 476
    .local v1, "profileReceiver":Lcom/sonymobile/home/model/ProfileReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 477
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/home/HomeApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 480
    return-void
.end method

.method private createDesktopAndStageModels()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    .line 539
    invoke-direct {p0}, Lcom/sonymobile/home/HomeApplication;->areDesktopModelsCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/home/HomeApplication;->areStageModelsCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    :goto_0
    return-void

    .line 543
    :cond_0
    const-string v0, "Models created before customization done!"

    invoke-direct {p0, v0}, Lcom/sonymobile/home/HomeApplication;->trackCustomizationNotDoneError(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 546
    .local v12, "context":Landroid/content/Context;
    invoke-static {v12}, Lcom/sonymobile/home/storage/StorageManager;->getStorage(Landroid/content/Context;)Lcom/sonymobile/home/storage/Storage;

    move-result-object v2

    .line 547
    .local v2, "storage":Lcom/sonymobile/home/storage/Storage;
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mWorker:Lcom/sonymobile/flix/util/Worker;

    invoke-static {v12, v0, v1}, Lcom/sonymobile/home/storage/StorageManager;->getFolderManager(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/flix/util/Worker;)Lcom/sonymobile/home/folder/FolderManager;

    move-result-object v6

    .line 549
    .local v6, "folderManager":Lcom/sonymobile/home/folder/FolderManager;
    invoke-static {v12}, Lcom/sonymobile/home/storage/StorageManager;->getBadgeManager(Landroid/content/Context;)Lcom/sonymobile/home/badge/BadgeManager;

    move-result-object v5

    .line 550
    .local v5, "badgeManager":Lcom/sonymobile/home/badge/BadgeManager;
    invoke-static {v12}, Lcom/sonymobile/home/storage/StorageManager;->getShortcutManager(Landroid/content/Context;)Lcom/sonymobile/home/shortcut/ShortcutManager;

    move-result-object v13

    .line 552
    .local v13, "shortcutManager":Lcom/sonymobile/home/shortcut/ShortcutManager;
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->initAppWidgetManager()V

    .line 553
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->initAdvWidgetManager()V

    .line 556
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v0}, Lcom/sonymobile/home/model/PackageHandler;->load()V

    .line 558
    invoke-static {}, Lcom/sonymobile/home/tip/TipManager;->getInstance()Lcom/sonymobile/home/tip/TipManager;

    move-result-object v7

    .line 560
    .local v7, "tipManager":Lcom/sonymobile/home/tip/TipManager;
    new-instance v9, Lcom/sonymobile/home/model/ItemCreatorImpl;

    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mHandler:Landroid/os/Handler;

    invoke-direct {v9, v12, v0, v13, v6}, Lcom/sonymobile/home/model/ItemCreatorImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager;Lcom/sonymobile/home/folder/FolderManager;)V

    .line 563
    .local v9, "itemCreator":Lcom/sonymobile/home/data/ItemCreator;
    invoke-direct {p0}, Lcom/sonymobile/home/HomeApplication;->createStageModels()V

    .line 564
    new-instance v0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;

    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/sonymobile/home/HomeApplication;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v8, p0, Lcom/sonymobile/home/HomeApplication;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    iget-object v10, p0, Lcom/sonymobile/home/HomeApplication;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    new-instance v11, Lcom/sonymobile/home/HomeApplication$1;

    invoke-direct {v11, p0}, Lcom/sonymobile/home/HomeApplication$1;-><init>(Lcom/sonymobile/home/HomeApplication;)V

    invoke-direct/range {v0 .. v11}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/tip/TipManager;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/desktop/AutomaticDesktopModel$CallbackForStageItems;)V

    iput-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mAutomaticDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    .line 573
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mAutomaticDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->load()V

    .line 574
    new-instance v0, Lcom/sonymobile/home/desktop/ManualDesktopModel;

    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/sonymobile/home/HomeApplication;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v8, p0, Lcom/sonymobile/home/HomeApplication;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    iget-boolean v10, p0, Lcom/sonymobile/home/HomeApplication;->mStageAddedDuringUpgrade:Z

    iget-object v11, p0, Lcom/sonymobile/home/HomeApplication;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct/range {v0 .. v11}, Lcom/sonymobile/home/desktop/ManualDesktopModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/tip/TipManager;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/data/ItemCreator;ZLcom/sonymobile/home/settings/UserSettings;)V

    iput-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mManualDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    .line 578
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mManualDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->load()V

    .line 580
    iget-boolean v0, p0, Lcom/sonymobile/home/HomeApplication;->mStageAddedDuringUpgrade:Z

    if-eqz v0, :cond_1

    .line 581
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mAutomaticDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v3, p0, Lcom/sonymobile/home/HomeApplication;->mAutomaticDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v4, p0, Lcom/sonymobile/home/HomeApplication;->mStageDynamicModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-static {v0, v1, v3, v4}, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->registerForUpgrades(Landroid/content/Context;Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/stage/StageModel;)V

    .line 583
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mManualDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v3, p0, Lcom/sonymobile/home/HomeApplication;->mManualDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v4, p0, Lcom/sonymobile/home/HomeApplication;->mStageFixedModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-static {v0, v1, v3, v4}, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->registerForUpgrades(Landroid/content/Context;Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/stage/StageModel;)V

    .line 587
    :cond_1
    invoke-static {p0}, Lcom/sonymobile/home/model/EnsureSearchIconExists;->ensureExistOnceModelsAreLoaded(Lcom/sonymobile/home/HomeApplication;)V

    goto/16 :goto_0
.end method

.method private createResourceManager()V
    .locals 10

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 487
    .local v0, "appContext":Landroid/content/Context;
    new-instance v6, Lcom/sonymobile/home/resources/ResourceManager;

    invoke-direct {v6, v0}, Lcom/sonymobile/home/resources/ResourceManager;-><init>(Landroid/content/Context;)V

    .line 489
    .local v6, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 490
    .local v5, "res":Landroid/content/res/Resources;
    const v9, 0x7f0a0009

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 493
    .local v7, "supportsAlternateResources":Z
    invoke-static {v7}, Lcom/sonymobile/home/HomeConfigStateHandler;->setEnabled(Z)V

    .line 494
    if-eqz v7, :cond_0

    .line 498
    new-instance v1, Lcom/sonymobile/home/ConfigPreferenceManager;

    invoke-direct {v1, v0}, Lcom/sonymobile/home/ConfigPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 499
    .local v1, "configManager":Lcom/sonymobile/home/ConfigPreferenceManager;
    const-string v8, "6x6"

    .line 500
    .local v8, "wantedGrid":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sonymobile/home/ConfigPreferenceManager;->getCurrentGrid()Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, "currentGrid":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 504
    invoke-static {v0}, Lcom/sonymobile/home/customization/CustomizationProcess;->readCustomization(Landroid/content/Context;)I

    move-result v4

    .line 505
    .local v4, "custCompletedBitmask":I
    if-nez v4, :cond_1

    .line 507
    sget-object v2, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;->ONGOING_FIRST_INITIALIZATION:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    .line 526
    .end local v4    # "custCompletedBitmask":I
    .local v2, "configState":Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;
    :goto_0
    invoke-static {v2}, Lcom/sonymobile/home/HomeConfigStateHandler;->setState(Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;)V

    .line 529
    const-string v9, "6x6"

    invoke-virtual {v6, v9}, Lcom/sonymobile/home/resources/ResourceManager;->loadConfiguration(Ljava/lang/String;)V

    .line 532
    .end local v1    # "configManager":Lcom/sonymobile/home/ConfigPreferenceManager;
    .end local v2    # "configState":Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;
    .end local v3    # "currentGrid":Ljava/lang/String;
    .end local v8    # "wantedGrid":Ljava/lang/String;
    :cond_0
    iput-object v6, p0, Lcom/sonymobile/home/HomeApplication;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    .line 533
    return-void

    .line 510
    .restart local v1    # "configManager":Lcom/sonymobile/home/ConfigPreferenceManager;
    .restart local v3    # "currentGrid":Ljava/lang/String;
    .restart local v4    # "custCompletedBitmask":I
    .restart local v8    # "wantedGrid":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;->UNCHANGED:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    .line 511
    .restart local v2    # "configState":Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;
    const-string v9, "6x6"

    invoke-virtual {v1, v9}, Lcom/sonymobile/home/ConfigPreferenceManager;->setWantedGrid(Ljava/lang/String;)V

    .line 512
    const-string v9, "6x6"

    invoke-virtual {v1, v9}, Lcom/sonymobile/home/ConfigPreferenceManager;->setCurrentGrid(Ljava/lang/String;)V

    goto :goto_0

    .line 514
    .end local v2    # "configState":Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;
    .end local v4    # "custCompletedBitmask":I
    :cond_2
    const-string v9, "6x6"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 516
    sget-object v2, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;->UNCHANGED:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    .restart local v2    # "configState":Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;
    goto :goto_0

    .line 520
    .end local v2    # "configState":Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;
    :cond_3
    invoke-static {v0}, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/home/storage/UpgradePreferenceManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/home/storage/UpgradePreferenceManager;->forceCompressDesktopItems()V

    .line 521
    sget-object v2, Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;->UNCHANGED:Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;

    .line 522
    .restart local v2    # "configState":Lcom/sonymobile/home/HomeConfigStateHandler$ConfigState;
    const-string v9, "6x6"

    invoke-virtual {v1, v9}, Lcom/sonymobile/home/ConfigPreferenceManager;->setWantedGrid(Ljava/lang/String;)V

    .line 523
    const-string v9, "6x6"

    invoke-virtual {v1, v9}, Lcom/sonymobile/home/ConfigPreferenceManager;->setCurrentGrid(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createSearchSuggestionsModel()Lcom/sonymobile/home/search/SearchSuggestionsModel;
    .locals 9

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 421
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/sonymobile/home/storage/StorageManager;->getStorage(Landroid/content/Context;)Lcom/sonymobile/home/storage/Storage;

    move-result-object v2

    .line 422
    .local v2, "storage":Lcom/sonymobile/home/storage/Storage;
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v3, p0, Lcom/sonymobile/home/HomeApplication;->mWorker:Lcom/sonymobile/flix/util/Worker;

    invoke-static {v1, v0, v3}, Lcom/sonymobile/home/storage/StorageManager;->getFolderManager(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/flix/util/Worker;)Lcom/sonymobile/home/folder/FolderManager;

    move-result-object v5

    .line 424
    .local v5, "folderManager":Lcom/sonymobile/home/folder/FolderManager;
    invoke-static {v1}, Lcom/sonymobile/home/storage/StorageManager;->getBadgeManager(Landroid/content/Context;)Lcom/sonymobile/home/badge/BadgeManager;

    move-result-object v4

    .line 425
    .local v4, "badgeManager":Lcom/sonymobile/home/badge/BadgeManager;
    invoke-static {v1}, Lcom/sonymobile/home/storage/StorageManager;->getShortcutManager(Landroid/content/Context;)Lcom/sonymobile/home/shortcut/ShortcutManager;

    move-result-object v8

    .line 428
    .local v8, "shortcutManager":Lcom/sonymobile/home/shortcut/ShortcutManager;
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v0}, Lcom/sonymobile/home/model/PackageHandler;->load()V

    .line 430
    new-instance v6, Lcom/sonymobile/home/model/ItemCreatorImpl;

    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, v1, v0, v8, v5}, Lcom/sonymobile/home/model/ItemCreatorImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager;Lcom/sonymobile/home/folder/FolderManager;)V

    .line 433
    .local v6, "itemCreator":Lcom/sonymobile/home/data/ItemCreator;
    new-instance v0, Lcom/sonymobile/home/search/SearchSuggestionsModel;

    iget-object v3, p0, Lcom/sonymobile/home/HomeApplication;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v7, p0, Lcom/sonymobile/home/HomeApplication;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/home/search/SearchSuggestionsModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/settings/UserSettings;)V

    iput-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mSearchSuggestionsModel:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    .line 436
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mSearchSuggestionsModel:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->load()V

    .line 438
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mSearchSuggestionsModel:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    return-object v0
.end method

.method private createStageModels()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 606
    invoke-direct {p0}, Lcom/sonymobile/home/HomeApplication;->areStageModelsCreated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 611
    .local v7, "context":Landroid/content/Context;
    invoke-static {v7}, Lcom/sonymobile/home/storage/StorageManager;->getStorage(Landroid/content/Context;)Lcom/sonymobile/home/storage/Storage;

    move-result-object v1

    .line 612
    .local v1, "storage":Lcom/sonymobile/home/storage/Storage;
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v2, p0, Lcom/sonymobile/home/HomeApplication;->mWorker:Lcom/sonymobile/flix/util/Worker;

    invoke-static {v7, v0, v2}, Lcom/sonymobile/home/storage/StorageManager;->getFolderManager(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/flix/util/Worker;)Lcom/sonymobile/home/folder/FolderManager;

    move-result-object v5

    .line 614
    .local v5, "folderManager":Lcom/sonymobile/home/folder/FolderManager;
    invoke-static {v7}, Lcom/sonymobile/home/storage/StorageManager;->getBadgeManager(Landroid/content/Context;)Lcom/sonymobile/home/badge/BadgeManager;

    move-result-object v4

    .line 615
    .local v4, "badgeManager":Lcom/sonymobile/home/badge/BadgeManager;
    invoke-static {v7}, Lcom/sonymobile/home/storage/StorageManager;->getShortcutManager(Landroid/content/Context;)Lcom/sonymobile/home/shortcut/ShortcutManager;

    move-result-object v8

    .line 618
    .local v8, "shortcutManager":Lcom/sonymobile/home/shortcut/ShortcutManager;
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v0}, Lcom/sonymobile/home/model/PackageHandler;->load()V

    .line 620
    new-instance v6, Lcom/sonymobile/home/model/ItemCreatorImpl;

    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, v7, v0, v8, v5}, Lcom/sonymobile/home/model/ItemCreatorImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager;Lcom/sonymobile/home/folder/FolderManager;)V

    .line 623
    .local v6, "itemCreator":Lcom/sonymobile/home/data/ItemCreator;
    new-instance v0, Lcom/sonymobile/home/stage/dynamic/DynamicStageModel;

    iget-object v2, p0, Lcom/sonymobile/home/HomeApplication;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/home/stage/dynamic/DynamicStageModel;-><init>(Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/ItemCreator;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mStageDynamicModel:Lcom/sonymobile/home/stage/StageModel;

    .line 625
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mStageDynamicModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StageModel;->load()V

    .line 626
    new-instance v0, Lcom/sonymobile/home/stage/fixed/FixedStageModel;

    iget-object v2, p0, Lcom/sonymobile/home/HomeApplication;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/home/stage/fixed/FixedStageModel;-><init>(Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/ItemCreator;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mStageFixedModel:Lcom/sonymobile/home/stage/StageModel;

    .line 628
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mStageFixedModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StageModel;->load()V

    .line 630
    iget-boolean v0, p0, Lcom/sonymobile/home/HomeApplication;->mStageAddedDuringUpgrade:Z

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/home/HomeApplication;->mStageDynamicModel:Lcom/sonymobile/home/stage/StageModel;

    iget-object v3, p0, Lcom/sonymobile/home/HomeApplication;->mAutomaticDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v9, p0, Lcom/sonymobile/home/HomeApplication;->mStageDynamicModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-static {v0, v2, v3, v9}, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->registerForUpgrades(Landroid/content/Context;Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/stage/StageModel;)V

    .line 633
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/home/HomeApplication;->mStageFixedModel:Lcom/sonymobile/home/stage/StageModel;

    iget-object v3, p0, Lcom/sonymobile/home/HomeApplication;->mManualDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v9, p0, Lcom/sonymobile/home/HomeApplication;->mStageFixedModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-static {v0, v2, v3, v9}, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->registerForUpgrades(Landroid/content/Context;Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/stage/StageModel;)V

    goto :goto_0
.end method

.method private doCustomizationIfNeeded()V
    .locals 8

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 713
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/sonymobile/home/storage/StorageManager;->getStorage(Landroid/content/Context;)Lcom/sonymobile/home/storage/Storage;

    move-result-object v4

    .line 714
    .local v4, "storage":Lcom/sonymobile/home/storage/Storage;
    iget-object v2, p0, Lcom/sonymobile/home/HomeApplication;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v5, p0, Lcom/sonymobile/home/HomeApplication;->mWorker:Lcom/sonymobile/flix/util/Worker;

    invoke-static {v1, v2, v5}, Lcom/sonymobile/home/storage/StorageManager;->getFolderManager(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/flix/util/Worker;)Lcom/sonymobile/home/folder/FolderManager;

    move-result-object v3

    .line 716
    .local v3, "folderManager":Lcom/sonymobile/home/folder/FolderManager;
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->initAppWidgetManager()V

    .line 717
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->initAdvWidgetManager()V

    .line 719
    new-instance v7, Lcom/sonymobile/home/customization/CustomizationProcess;

    invoke-direct {v7}, Lcom/sonymobile/home/customization/CustomizationProcess;-><init>()V

    .line 720
    .local v7, "custProcess":Lcom/sonymobile/home/customization/CustomizationProcess;
    new-instance v0, Lcom/sonymobile/home/ApplicationCustomizationFactory;

    iget-object v2, p0, Lcom/sonymobile/home/HomeApplication;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v5, p0, Lcom/sonymobile/home/HomeApplication;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    iget-object v6, p0, Lcom/sonymobile/home/HomeApplication;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/ApplicationCustomizationFactory;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 723
    .local v0, "factory":Lcom/sonymobile/home/ApplicationCustomizationFactory;
    invoke-virtual {v7}, Lcom/sonymobile/home/customization/CustomizationProcess;->initialize()V

    .line 724
    new-instance v2, Lcom/sonymobile/home/HomeApplication$3;

    invoke-direct {v2, p0, v7}, Lcom/sonymobile/home/HomeApplication$3;-><init>(Lcom/sonymobile/home/HomeApplication;Lcom/sonymobile/home/customization/CustomizationProcess;)V

    iget-object v5, p0, Lcom/sonymobile/home/HomeApplication;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v2, v5}, Lcom/sonymobile/home/customization/CustomizationProcess;->addCustomizationListener(Lcom/sonymobile/home/customization/CustomizationProcess$CustomizeListener;Landroid/os/Handler;)V

    .line 751
    iget-object v2, p0, Lcom/sonymobile/home/HomeApplication;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v7, v1, v2, v0}, Lcom/sonymobile/home/customization/CustomizationProcess;->customize(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/customization/CustomizationFactory;)V

    .line 752
    return-void
.end method

.method public static getPackageHandler(Landroid/content/Context;)Lcom/sonymobile/home/model/PackageHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/HomeApplication;

    invoke-virtual {v0}, Lcom/sonymobile/home/HomeApplication;->getPackageHandler()Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v0

    return-object v0
.end method

.method public static getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/HomeApplication;

    iget-object v0, v0, Lcom/sonymobile/home/HomeApplication;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    return-object v0
.end method

.method private getSearchSuggestionsModel()Lcom/sonymobile/home/search/SearchSuggestionsModel;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mSearchSuggestionsModel:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    if-nez v0, :cond_0

    .line 413
    invoke-direct {p0}, Lcom/sonymobile/home/HomeApplication;->createSearchSuggestionsModel()Lcom/sonymobile/home/search/SearchSuggestionsModel;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mSearchSuggestionsModel:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mSearchSuggestionsModel:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    return-object v0
.end method

.method public static getSearchSuggestionsModel(Landroid/content/Context;)Lcom/sonymobile/home/search/SearchSuggestionsModel;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 408
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/HomeApplication;

    invoke-direct {v0}, Lcom/sonymobile/home/HomeApplication;->getSearchSuggestionsModel()Lcom/sonymobile/home/search/SearchSuggestionsModel;

    move-result-object v0

    return-object v0
.end method

.method private static initLayoutType(Landroid/content/res/Resources;)V
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 227
    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/home/HomeApplication;->sUseTabletLayout:Z

    .line 228
    return-void
.end method

.method private notifyCustomizationDone()V
    .locals 3

    .prologue
    .line 758
    const/4 v2, 0x2

    iput v2, p0, Lcom/sonymobile/home/HomeApplication;->mCustomizationState:I

    .line 759
    iget-object v2, p0, Lcom/sonymobile/home/HomeApplication;->mCustomizationListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/HomeApplication$CustomizationListener;

    .line 760
    .local v1, "listener":Lcom/sonymobile/home/HomeApplication$CustomizationListener;
    invoke-interface {v1}, Lcom/sonymobile/home/HomeApplication$CustomizationListener;->onCustomizationDone()V

    goto :goto_0

    .line 762
    .end local v1    # "listener":Lcom/sonymobile/home/HomeApplication$CustomizationListener;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonymobile/home/HomeApplication;->mCustomizationListeners:Ljava/util/ArrayList;

    .line 763
    return-void
.end method

.method private trackCustomizationNotDoneError(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->isCustomizationDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    sget-object v0, Lcom/sonymobile/home/HomeApplication;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sonymobile/home/statistics/TrackingUtil;->trackException(Ljava/lang/Throwable;)V

    .line 600
    :cond_0
    return-void
.end method

.method public static useTabletLayout()Z
    .locals 1

    .prologue
    .line 236
    sget-boolean v0, Lcom/sonymobile/home/HomeApplication;->sUseTabletLayout:Z

    return v0
.end method

.method public static watch(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "watchedReference"    # Ljava/lang/Object;

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/HomeApplication;

    .line 151
    .local v0, "application":Lcom/sonymobile/home/HomeApplication;
    iget-object v1, v0, Lcom/sonymobile/home/HomeApplication;->mRefWatcher:Lcom/squareup/leakcanary/RefWatcher;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, v0, Lcom/sonymobile/home/HomeApplication;->mRefWatcher:Lcom/squareup/leakcanary/RefWatcher;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/squareup/leakcanary/RefWatcher;->watch(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method


# virtual methods
.method public customize(Lcom/sonymobile/home/HomeApplication$CustomizationListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sonymobile/home/HomeApplication$CustomizationListener;

    .prologue
    const/4 v2, 0x1

    .line 664
    iget v0, p0, Lcom/sonymobile/home/HomeApplication;->mCustomizationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 665
    if-eqz p1, :cond_0

    .line 666
    invoke-interface {p1}, Lcom/sonymobile/home/HomeApplication$CustomizationListener;->onCustomizationDone()V

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    if-eqz p1, :cond_2

    .line 672
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mCustomizationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_2
    iget v0, p0, Lcom/sonymobile/home/HomeApplication;->mCustomizationState:I

    if-eq v0, v2, :cond_0

    .line 680
    iput v2, p0, Lcom/sonymobile/home/HomeApplication;->mCustomizationState:I

    .line 682
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mHomePreferences:Lcom/sonymobile/home/configuration/HomePreferences;

    new-instance v1, Lcom/sonymobile/home/HomeApplication$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/HomeApplication$2;-><init>(Lcom/sonymobile/home/HomeApplication;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/configuration/HomePreferences;->addOnLoadedListener(Lcom/sonymobile/home/configuration/HomePreferences$OnPreferencesLoadedListener;)V

    goto :goto_0
.end method

.method public getDesktopModel()Lcom/sonymobile/home/desktop/DesktopModel;
    .locals 2

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/sonymobile/home/HomeApplication;->createDesktopAndStageModels()V

    .line 298
    iget-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v1}, Lcom/sonymobile/home/settings/UserSettings;->isAutomaticDesktopEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mAutomaticDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    .line 303
    .local v0, "desktopModel":Lcom/sonymobile/home/desktop/DesktopModel;
    :goto_0
    return-object v0

    .line 301
    .end local v0    # "desktopModel":Lcom/sonymobile/home/desktop/DesktopModel;
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mManualDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    .restart local v0    # "desktopModel":Lcom/sonymobile/home/desktop/DesktopModel;
    goto :goto_0
.end method

.method public getDesktopModels()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/desktop/DesktopModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/sonymobile/home/HomeApplication;->createDesktopAndStageModels()V

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 341
    .local v0, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/desktop/DesktopModel;>;"
    iget-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mManualDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mAutomaticDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    return-object v0
.end method

.method public getMainThreadHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getModel(Ljava/lang/String;)Lcom/sonymobile/home/model/Model;
    .locals 5
    .param p1, "pageViewName"    # Ljava/lang/String;

    .prologue
    .line 392
    if-nez p1, :cond_1

    .line 393
    const/4 v1, 0x0

    .line 404
    :cond_0
    return-object v1

    .line 395
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->getModels()Ljava/util/List;

    move-result-object v3

    .line 397
    .local v3, "models":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/model/Model;>;"
    const/4 v1, 0x0

    .line 398
    .local v1, "model":Lcom/sonymobile/home/model/Model;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-nez v1, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 399
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/model/Model;

    .line 400
    .local v2, "modelCandidate":Lcom/sonymobile/home/model/Model;
    invoke-virtual {v2}, Lcom/sonymobile/home/model/Model;->getPageViewName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 401
    move-object v1, v2

    .line 398
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getModels()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/sonymobile/home/HomeApplication;->createDesktopAndStageModels()V

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 354
    .local v0, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/model/Model;>;"
    iget-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mStageDynamicModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mStageFixedModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mManualDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mAutomaticDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    return-object v0
.end method

.method public getPackageHandler()Lcom/sonymobile/home/model/PackageHandler;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    return-object v0
.end method

.method public getPreferences()Lcom/sonymobile/home/configuration/HomePreferences;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mHomePreferences:Lcom/sonymobile/home/configuration/HomePreferences;

    return-object v0
.end method

.method public getStageModel()Lcom/sonymobile/home/stage/StageModel;
    .locals 2

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/sonymobile/home/HomeApplication;->createStageModels()V

    .line 324
    iget-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v1}, Lcom/sonymobile/home/settings/UserSettings;->isAutomaticDesktopEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mStageDynamicModel:Lcom/sonymobile/home/stage/StageModel;

    .line 330
    .local v0, "stageModel":Lcom/sonymobile/home/stage/StageModel;
    :goto_0
    return-object v0

    .line 327
    .end local v0    # "stageModel":Lcom/sonymobile/home/stage/StageModel;
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mStageFixedModel:Lcom/sonymobile/home/stage/StageModel;

    .restart local v0    # "stageModel":Lcom/sonymobile/home/stage/StageModel;
    goto :goto_0
.end method

.method public declared-synchronized getStkManager()Lcom/sonymobile/home/stk/StkManager;
    .locals 4

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mStkManager:Lcom/sonymobile/home/stk/StkManager;

    if-nez v1, :cond_0

    .line 265
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/HomeApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 267
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    new-instance v1, Lcom/sonymobile/home/stk/StkManager;

    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->getPackageHandler()Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/sonymobile/home/stk/StkManager;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Landroid/telephony/TelephonyManager;)V

    iput-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mStkManager:Lcom/sonymobile/home/stk/StkManager;

    .line 270
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mStkManager:Lcom/sonymobile/home/stk/StkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 264
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getUserSettings()Lcom/sonymobile/home/settings/UserSettings;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    return-object v0
.end method

.method public getWorker()Lcom/sonymobile/flix/util/Worker;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mWorker:Lcom/sonymobile/flix/util/Worker;

    return-object v0
.end method

.method public initAdvWidgetManager()V
    .locals 5

    .prologue
    .line 458
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAdvWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    move-result-object v1

    .line 460
    .local v1, "advWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    if-nez v1, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 462
    .local v2, "context":Landroid/content/Context;
    new-instance v0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    iget-object v3, p0, Lcom/sonymobile/home/HomeApplication;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v3}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;-><init>(Landroid/os/Handler;)V

    .line 464
    .local v0, "advWidgetExceptionHandler":Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;
    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->setDefaultUncaughtExceptionHandler()V

    .line 465
    new-instance v1, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    .end local v1    # "advWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    new-instance v3, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

    invoke-static {v2}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;-><init>(Lcom/sonymobile/home/resources/ResourceManager;)V

    iget-object v4, p0, Lcom/sonymobile/home/HomeApplication;->mWorker:Lcom/sonymobile/flix/util/Worker;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;-><init>(Landroid/content/Context;Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;Lcom/sonymobile/flix/util/Worker;Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;)V

    .line 467
    .restart local v1    # "advWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    invoke-static {v1}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->setHomeAdvWidgetManagerInstance(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;)V

    .line 469
    .end local v0    # "advWidgetExceptionHandler":Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;
    .end local v2    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method public initAppWidgetManager()V
    .locals 4

    .prologue
    .line 445
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v0

    .line 447
    .local v0, "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    if-nez v0, :cond_0

    .line 448
    new-instance v0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    .end local v0    # "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/HomeApplication;->mWorker:Lcom/sonymobile/flix/util/Worker;

    iget-object v3, p0, Lcom/sonymobile/home/HomeApplication;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;-><init>(Landroid/content/Context;Lcom/sonymobile/flix/util/Worker;Lcom/sonymobile/home/resources/ResourceManager;)V

    .line 450
    .restart local v0    # "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    iget-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-static {v0, v1}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->setHomeAppWidgetManagerInstance(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Lcom/sonymobile/home/model/PackageHandler;)V

    .line 452
    :cond_0
    return-void
.end method

.method public isCustomizationDone()Z
    .locals 2

    .prologue
    .line 652
    iget v0, p0, Lcom/sonymobile/home/HomeApplication;->mCustomizationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 161
    invoke-static {p0}, Lcom/sonymobile/home/ga/HomeGtmContainerLoadHelper;->initGaGtmUtils(Landroid/content/Context;)V

    .line 163
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/home/HomeApplication;->initLayoutType(Landroid/content/res/Resources;)V

    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 167
    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->install(Landroid/app/Application;)Lcom/squareup/leakcanary/RefWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mRefWatcher:Lcom/squareup/leakcanary/RefWatcher;

    .line 195
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mHandler:Landroid/os/Handler;

    .line 196
    new-instance v0, Lcom/sonymobile/flix/util/Worker;

    const-string v2, "MainWorker"

    const/16 v4, 0xa

    invoke-direct {v0, v2, v4}, Lcom/sonymobile/flix/util/Worker;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mWorker:Lcom/sonymobile/flix/util/Worker;

    .line 198
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 202
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/settings/UserSettings;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 203
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v0}, Lcom/sonymobile/home/settings/UserSettings;->load()V

    .line 206
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/home/statistics/periodicevents/GoogleAnalyticsPreferences;->preloadPreferences(Landroid/content/Context;)V

    .line 209
    invoke-direct {p0}, Lcom/sonymobile/home/HomeApplication;->createResourceManager()V

    .line 211
    new-instance v3, Lcom/sonymobile/home/model/HomeLauncherApps;

    const-string v0, "launcherapps"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    invoke-direct {v3, v0}, Lcom/sonymobile/home/model/HomeLauncherApps;-><init>(Landroid/content/pm/LauncherApps;)V

    .line 214
    .local v3, "launcherApps":Lcom/sonymobile/home/model/HomeLauncherApps;
    new-instance v5, Lcom/sonymobile/home/ui/widget/HomeAppWidgetProviderLoader;

    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetProviderLoader;-><init>(Landroid/content/Context;)V

    .line 217
    .local v5, "appWidgetProviderLoader":Lcom/sonymobile/home/ui/widget/HomeAppWidgetProviderLoader;
    new-instance v0, Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v4, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;

    iget-object v6, p0, Lcom/sonymobile/home/HomeApplication;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    invoke-direct {v4, v6}, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;-><init>(Lcom/sonymobile/home/resources/ResourceManager;)V

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/model/PackageHandler;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/sonymobile/home/model/HomeLauncherApps;Lcom/sonymobile/home/ui/widget/AdvWidgetProviderHelper;Lcom/sonymobile/home/ui/widget/HomeAppWidgetProviderLoader;)V

    iput-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    .line 220
    invoke-direct {p0}, Lcom/sonymobile/home/HomeApplication;->createAndRegisterProfileReceiver()V

    .line 222
    new-instance v0, Lcom/sonymobile/home/configuration/HomePreferences;

    invoke-direct {v0, v1}, Lcom/sonymobile/home/configuration/HomePreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mHomePreferences:Lcom/sonymobile/home/configuration/HomePreferences;

    .line 223
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mHomePreferences:Lcom/sonymobile/home/configuration/HomePreferences;

    invoke-virtual {v0}, Lcom/sonymobile/home/configuration/HomePreferences;->load()V

    .line 224
    return-void
.end method

.method public peekModels()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 369
    .local v0, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/model/Model;>;"
    iget-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mStageDynamicModel:Lcom/sonymobile/home/stage/StageModel;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mStageDynamicModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mStageFixedModel:Lcom/sonymobile/home/stage/StageModel;

    if-eqz v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mStageFixedModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mManualDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    if-eqz v1, :cond_2

    .line 376
    iget-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mManualDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mAutomaticDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    if-eqz v1, :cond_3

    .line 379
    iget-object v1, p0, Lcom/sonymobile/home/HomeApplication;->mAutomaticDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_3
    return-object v0
.end method

.method public removeCustomizationListener(Lcom/sonymobile/home/HomeApplication$CustomizationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/HomeApplication$CustomizationListener;

    .prologue
    .line 706
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mCustomizationListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication;->mCustomizationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 709
    :cond_0
    return-void
.end method
