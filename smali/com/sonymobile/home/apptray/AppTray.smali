.class public Lcom/sonymobile/home/apptray/AppTray;
.super Lcom/sonymobile/home/LifeCycleBase;
.source "AppTray.java"

# interfaces
.implements Lcom/sonymobile/home/mainview/MainViewResident;
.implements Lcom/sonymobile/home/transfer/TransferView$TransferViewListener;


# static fields
.field private static final DESKTOP_APPTRAY_ANIM_MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;

.field private mAppTrayAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

.field private mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

.field private final mAppTrayListener:Lcom/sonymobile/home/apptray/AppTrayListener;

.field private mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;

.field private mAppTrayPageIndicatorVerticalOffset:F

.field private mAppTrayPageIndicatorView:Lcom/sonymobile/flix/components/Component;

.field private mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

.field private mAppTraySorter:Lcom/sonymobile/home/apptray/AppTraySorter;

.field private mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

.field private final mApplicationContext:Landroid/content/Context;

.field private final mDropZonePresenter:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

.field private mDropZoneView:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

.field private final mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

.field private final mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

.field private final mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

.field private mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final mScene:Lcom/sonymobile/flix/components/Scene;

.field private final mTransferView:Lcom/sonymobile/home/transfer/TransferView;

.field private final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/sonymobile/home/apptray/AppTray;->DESKTOP_APPTRAY_ANIM_MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Landroid/content/Context;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/apptray/AppTrayDropZoneView$AppTrayDropZoneSpaceCallback;ILcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/transfer/TransferView;Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;Lcom/sonymobile/home/apptray/AppTrayListener;Lcom/sonymobile/home/search/SearchableModelsWrapper;)V
    .locals 17
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "resourceManager"    # Lcom/sonymobile/home/resources/ResourceManager;
    .param p4, "appTrayDropZoneSpaceCallback"    # Lcom/sonymobile/home/apptray/AppTrayDropZoneView$AppTrayDropZoneSpaceCallback;
    .param p5, "width"    # I
    .param p6, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p7, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p8, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p9, "badgeManager"    # Lcom/sonymobile/home/badge/BadgeManager;
    .param p10, "storage"    # Lcom/sonymobile/home/storage/Storage;
    .param p11, "statManager"    # Lcom/sonymobile/home/statistics/StatisticsManager;
    .param p12, "appTrayGrid"    # Lcom/sonymobile/grid/Grid;
    .param p13, "transferHandler"    # Lcom/sonymobile/home/transfer/TransferHandler;
    .param p14, "intentHandler"    # Lcom/sonymobile/home/IntentHandler;
    .param p15, "fragmentHandler"    # Lcom/sonymobile/home/FragmentHandler;
    .param p16, "dialogHandler"    # Lcom/sonymobile/home/DialogHandler;
    .param p17, "creator"    # Lcom/sonymobile/home/data/ItemCreator;
    .param p18, "transferView"    # Lcom/sonymobile/home/transfer/TransferView;
    .param p19, "folderOpener"    # Lcom/sonymobile/home/folder/FolderOpener;
    .param p20, "keyboardFocusManager"    # Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
    .param p21, "appTrayListener"    # Lcom/sonymobile/home/apptray/AppTrayListener;
    .param p22, "searchableModelsWrapper"    # Lcom/sonymobile/home/search/SearchableModelsWrapper;

    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/LifeCycleBase;-><init>()V

    .line 113
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/apptray/AppTray;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 114
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/apptray/AppTray;->mApplicationContext:Landroid/content/Context;

    .line 115
    move-object/from16 v0, p18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/apptray/AppTray;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    .line 116
    move-object/from16 v0, p19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/apptray/AppTray;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    .line 117
    move-object/from16 v0, p20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/apptray/AppTray;->mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    .line 118
    move-object/from16 v0, p21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayListener:Lcom/sonymobile/home/apptray/AppTrayListener;

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/apptray/AppTray;->createAppTrayDropZoneView()Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    .line 120
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/apptray/AppTray;->mDropZoneView:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->setAppTrayDropZoneSpaceCallback(Lcom/sonymobile/home/apptray/AppTrayDropZoneView$AppTrayDropZoneSpaceCallback;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/apptray/AppTray;->mDropZoneView:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    move/from16 v0, p5

    int-to-float v6, v0

    const v7, 0x7f0b0008

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Lcom/sonymobile/home/resources/ResourceManager;->getDimension(I)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->setSize(FF)V

    .line 122
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/apptray/AppTray;->mDropZoneView:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->setVisible(Z)V

    .line 123
    new-instance v5, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/home/apptray/AppTray;->mScene:Lcom/sonymobile/flix/components/Scene;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/home/apptray/AppTray;->mDropZoneView:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    invoke-direct {v5, v6, v7}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/apptray/AppTrayDropZoneView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sonymobile/home/apptray/AppTray;->mDropZonePresenter:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    .line 124
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/apptray/AppTray;->mDropZonePresenter:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    new-instance v6, Lcom/sonymobile/home/apptray/AppTray$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/sonymobile/home/apptray/AppTray$1;-><init>(Lcom/sonymobile/home/apptray/AppTray;)V

    invoke-virtual {v5, v6}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->setDropZoneListener(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$AppTrayDropZoneListener;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTray;->mApplicationContext:Landroid/content/Context;

    move-object/from16 v16, v0

    check-cast v16, Lcom/sonymobile/home/HomeApplication;

    .line 131
    .local v16, "homeApplication":Lcom/sonymobile/home/HomeApplication;
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/home/HomeApplication;->getUserSettings()Lcom/sonymobile/home/settings/UserSettings;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sonymobile/home/apptray/AppTray;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 132
    move-object/from16 v0, p15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/apptray/AppTray;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    move-object/from16 v5, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p17

    .line 134
    invoke-virtual/range {v5 .. v13}, Lcom/sonymobile/home/apptray/AppTray;->createModel(Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/data/ItemCreator;)Lcom/sonymobile/home/apptray/AppTrayModel;

    move-object/from16 v5, p0

    move-object/from16 v6, p13

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    move-object/from16 v9, p14

    move-object/from16 v10, p15

    move-object/from16 v11, p12

    move-object/from16 v12, p16

    move-object/from16 v13, p17

    move-object/from16 v14, p19

    move-object/from16 v15, p22

    .line 136
    invoke-virtual/range {v5 .. v15}, Lcom/sonymobile/home/apptray/AppTray;->createAppTrayPresenter(Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/home/search/SearchableModelsWrapper;)Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .line 139
    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTray;->createAppTrayAdapter(Lcom/sonymobile/grid/Grid;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    .line 140
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p12

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/home/apptray/AppTray;->createAppTrayView(Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/resources/ResourceManager;)V

    .line 141
    return-void
.end method

.method private abortAnimation()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->clearListeners()V

    .line 387
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 389
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/apptray/AppTray;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTray;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTray;->closeAppTrayAndMoveTransferable()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/apptray/AppTray;)Lcom/sonymobile/home/apptray/AppTrayView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTray;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/apptray/AppTray;)Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTray;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/apptray/AppTray;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTray;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method private closeAppTrayAndMoveTransferable()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    const v1, 0x7f0f0009

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/transfer/TransferView;->removeTarget(I)V

    .line 601
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayListener:Lcom/sonymobile/home/apptray/AppTrayListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayListener;->closeAppTray(Z)V

    .line 602
    return-void
.end method

.method private createAppTraySorter(Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/model/PackageHandler;)V
    .locals 6
    .param p1, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 324
    new-instance v0, Lcom/sonymobile/home/apptray/AppTraySorter;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/apptray/AppTraySorter;-><init>(Landroid/content/Context;Lcom/sonymobile/home/apptray/AppTrayModel;Lcom/sonymobile/home/apptray/AppTrayAdapter;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/model/PackageHandler;)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTraySorter:Lcom/sonymobile/home/apptray/AppTraySorter;

    .line 326
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTraySorter:Lcom/sonymobile/home/apptray/AppTraySorter;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->setSorter(Lcom/sonymobile/home/apptray/AppTraySorter;)V

    .line 327
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTraySorter:Lcom/sonymobile/home/apptray/AppTraySorter;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayModel;->addModelObserver(Lcom/sonymobile/home/model/ModelObserver;)V

    .line 328
    return-void
.end method

.method private getPageIndicatorVerticalOffset()F
    .locals 1

    .prologue
    .line 345
    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getYoffset()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPageIndicatorVerticalOffset:F

    goto :goto_0
.end method

.method private updateResourceValues()V
    .locals 4

    .prologue
    .line 175
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 176
    .local v0, "value":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    const v2, 0x7f070003

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/sonymobile/home/resources/ResourceManager;->getValue(ILandroid/util/TypedValue;Z)V

    .line 177
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPageIndicatorVerticalOffset:F

    .line 178
    return-void
.end method


# virtual methods
.method public attachToContainer(Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "containerView"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 188
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mDropZoneView:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 189
    return-void
.end method

.method public createAppTrayAdapter(Lcom/sonymobile/grid/Grid;)Lcom/sonymobile/home/apptray/AppTrayAdapter;
    .locals 4
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    .line 267
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayAdapter;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/sonymobile/home/apptray/AppTrayAdapter;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/apptray/AppTrayModel;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    .line 268
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    return-object v0
.end method

.method public createAppTrayDropZoneView()Lcom/sonymobile/home/apptray/AppTrayDropZoneView;
    .locals 4

    .prologue
    .line 260
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mScene:Lcom/sonymobile/flix/components/Scene;

    const v2, 0x7f0f002c

    const v3, 0x7f0f002d

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;-><init>(Lcom/sonymobile/flix/components/Scene;II)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mDropZoneView:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    .line 262
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mDropZoneView:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    return-object v0
.end method

.method public createAppTrayPresenter(Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/home/search/SearchableModelsWrapper;)Lcom/sonymobile/home/apptray/AppTrayPresenter;
    .locals 16
    .param p1, "transferHandler"    # Lcom/sonymobile/home/transfer/TransferHandler;
    .param p2, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p3, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p4, "intentHandler"    # Lcom/sonymobile/home/IntentHandler;
    .param p5, "fragmentHandler"    # Lcom/sonymobile/home/FragmentHandler;
    .param p6, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p7, "dialogHandler"    # Lcom/sonymobile/home/DialogHandler;
    .param p8, "creator"    # Lcom/sonymobile/home/data/ItemCreator;
    .param p9, "folderOpener"    # Lcom/sonymobile/home/folder/FolderOpener;
    .param p10, "searchableModelsWrapper"    # Lcom/sonymobile/home/search/SearchableModelsWrapper;

    .prologue
    .line 249
    new-instance v1, Lcom/sonymobile/home/apptray/AppTrayPresenter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/apptray/AppTray;->mScene:Lcom/sonymobile/flix/components/Scene;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/apptray/AppTray;->mApplicationContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/sonymobile/home/storage/StorageManager;->getStatistics(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;)Lcom/sonymobile/home/statistics/StatisticsManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonymobile/home/apptray/AppTray;->mDropZonePresenter:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/home/apptray/AppTray;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v15, p10

    invoke-direct/range {v1 .. v15}, Lcom/sonymobile/home/apptray/AppTrayPresenter;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/apptray/AppTrayModel;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/search/SearchableModelsWrapper;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->setFolderOpener(Lcom/sonymobile/home/folder/FolderOpener;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    return-object v1
.end method

.method public createAppTrayView(Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/resources/ResourceManager;)V
    .locals 3
    .param p1, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p3, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p4, "resourceManager"    # Lcom/sonymobile/home/resources/ResourceManager;

    .prologue
    .line 153
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayView;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {v0, v1, p3, v2}, Lcom/sonymobile/home/apptray/AppTrayView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/settings/UserSettings;)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/apptray/AppTray;->createAppTraySorter(Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/model/PackageHandler;)V

    .line 155
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->setAdapter(Lcom/sonymobile/home/ui/pageview/PageViewAdapter;)V

    .line 156
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->setView(Lcom/sonymobile/home/apptray/AppTrayView;)V

    .line 157
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->setAdapter(Lcom/sonymobile/home/apptray/AppTrayAdapter;)V

    .line 158
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->addPageViewGroupListener(Lcom/sonymobile/home/ui/pageview/PageViewGroupListener;)V

    .line 160
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 164
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->getPageIndicatorView()Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPageIndicatorView:Lcom/sonymobile/flix/components/Component;

    .line 165
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPageIndicatorView:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 167
    iput-object p4, p0, Lcom/sonymobile/home/apptray/AppTray;->mResourceManager:Lcom/sonymobile/home/resources/ResourceManager;

    .line 168
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTray;->updateResourceValues()V

    .line 170
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->getActionBarView()Lcom/sonymobile/home/apptray/AppTrayActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;

    .line 171
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 172
    return-void
.end method

.method public createModel(Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/data/ItemCreator;)Lcom/sonymobile/home/apptray/AppTrayModel;
    .locals 9
    .param p1, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p3, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p4, "badgeManager"    # Lcom/sonymobile/home/badge/BadgeManager;
    .param p5, "storage"    # Lcom/sonymobile/home/storage/Storage;
    .param p6, "statManager"    # Lcom/sonymobile/home/statistics/StatisticsManager;
    .param p7, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p8, "creator"    # Lcom/sonymobile/home/data/ItemCreator;

    .prologue
    .line 237
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayModel;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mApplicationContext:Landroid/content/Context;

    move-object v2, p5

    move-object v3, p2

    move-object v4, p1

    move-object v5, p6

    move-object v6, p4

    move-object v7, p3

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/home/apptray/AppTrayModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/ItemCreator;)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    .line 239
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual/range {p7 .. p7}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v1

    invoke-virtual/range {p7 .. p7}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayModel;->setMaxPageItemCount(I)V

    .line 240
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->load()V

    .line 241
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    return-object v0
.end method

.method public focusView()Z
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/FolderOpener;->hasFolderOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    invoke-virtual {v1}, Lcom/sonymobile/home/folder/FolderOpener;->getOpenFolderView()Lcom/sonymobile/home/folder/OpenFolderView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->focus(Lcom/sonymobile/flix/components/Component;)Z

    .line 436
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTray;->getView()Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->focus(Lcom/sonymobile/flix/components/Component;)Z

    goto :goto_0
.end method

.method public getModel()Lcom/sonymobile/home/apptray/AppTrayModel;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    return-object v0
.end method

.method public getSpecialCaseFocusComponent(I)Lcom/sonymobile/flix/components/Component;
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getView()Lcom/sonymobile/flix/components/Component;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTray;->getView()Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v0

    return-object v0
.end method

.method public getView()Lcom/sonymobile/home/apptray/AppTrayView;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    return-object v0
.end method

.method public hide(Z)V
    .locals 5
    .param p1, "animate"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 505
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/apptray/AppTray;->setAnimateBackgroundDim(Z)V

    .line 506
    if-eqz p1, :cond_1

    .line 507
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/apptray/AppTrayView;->setTouchEnabled(Z)V

    .line 508
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 509
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonymobile/home/transfer/TransferView;->isInTransfer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->exitTransferMode(Z)V

    .line 512
    :cond_0
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    const-wide/16 v2, 0x12c

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;J)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 514
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setY(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 515
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v4}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 516
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    sget-object v1, Lcom/sonymobile/home/apptray/AppTray;->DESKTOP_APPTRAY_ANIM_MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 517
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getDescendantAlpha()Lcom/sonymobile/flix/util/Animation;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/util/Animation;->setDuration(J)Lcom/sonymobile/flix/util/Animation;

    .line 518
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInvisibleOnEnd(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 519
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    new-instance v1, Lcom/sonymobile/home/apptray/AppTray$4;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/apptray/AppTray$4;-><init>(Lcom/sonymobile/home/apptray/AppTray;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 540
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 547
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/transfer/TransferView;->removeTransferListener(Lcom/sonymobile/home/transfer/TransferView$TransferViewListener;)V

    .line 548
    return-void

    .line 542
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTray;->onPause()V

    .line 543
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTray;->onStop()V

    .line 544
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/apptray/AppTrayView;->setVisible(Z)V

    .line 545
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTray;->onClose()V

    goto :goto_0
.end method

.method public layout(Lcom/sonymobile/home/mainview/MainViewResident;)V
    .locals 10
    .param p1, "reference"    # Lcom/sonymobile/home/mainview/MainViewResident;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    .line 350
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayView;->setSizeToParent()V

    .line 352
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPageIndicatorView:Lcom/sonymobile/flix/components/Component;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTray;->getPageIndicatorVerticalOffset()F

    move-result v4

    sub-float v5, v2, v4

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 355
    if-eq p1, p0, :cond_0

    .line 356
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-interface {p1}, Lcom/sonymobile/home/mainview/MainViewResident;->getView()Lcom/sonymobile/flix/components/Component;

    move-result-object v6

    move v4, v1

    move v5, v9

    move v7, v1

    move v8, v2

    invoke-static/range {v3 .. v8}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getBottomOffset()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v9, v9, v9, v2}, Lcom/sonymobile/home/apptray/AppTrayView;->setInnerMargin(FFFF)V

    .line 362
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mDropZoneView:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    move v2, v9

    move v4, v1

    move v5, v9

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 365
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->layout()V

    .line 366
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    move v1, v9

    move v2, v9

    move v4, v9

    move v5, v9

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 368
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 553
    return-void
.end method

.method public onBackButtonPressed()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 273
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->onBackButtonPressed()Z

    move-result v0

    .line 274
    .local v0, "consumed":Z
    if-nez v0, :cond_0

    .line 275
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayListener:Lcom/sonymobile/home/apptray/AppTrayListener;

    invoke-interface {v1, v2}, Lcom/sonymobile/home/apptray/AppTrayListener;->closeAppTray(Z)V

    .line 277
    :cond_0
    return v2
.end method

.method public onClose()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->close()V

    .line 321
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTray;->abortAnimation()V

    .line 373
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->onDestroy()V

    .line 374
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->onDestroy()V

    .line 375
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTraySorter:Lcom/sonymobile/home/apptray/AppTraySorter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTraySorter;->onDestroy()V

    .line 376
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->setAdapter(Lcom/sonymobile/home/ui/pageview/PageViewAdapter;)V

    .line 377
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->removePageViewGroupListener(Lcom/sonymobile/home/ui/pageview/PageViewGroupListener;)V

    .line 378
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mDropZonePresenter:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->onDestroy()V

    .line 379
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mDropZoneView:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->onDestroy()V

    .line 381
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sonymobile/home/HomeApplication;->watch(Landroid/content/Context;Ljava/lang/Object;)V

    .line 382
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayView;->onDetach()V

    .line 422
    :cond_0
    return-void
.end method

.method public onHomeButtonPressed(Z)V
    .locals 2
    .param p1, "isHomeScreenInFront"    # Z

    .prologue
    const/4 v0, 0x0

    .line 557
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    invoke-virtual {v1}, Lcom/sonymobile/home/folder/FolderOpener;->hasFolderOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/folder/FolderOpener;->close(Z)V

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->homeButtonPressed()V

    .line 563
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->wasSearchCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 564
    .local v0, "animate":Z
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayListener:Lcom/sonymobile/home/apptray/AppTrayListener;

    invoke-interface {v1, v0}, Lcom/sonymobile/home/apptray/AppTrayListener;->closeAppTray(Z)V

    .line 565
    return-void
.end method

.method public onMenuButtonPressed()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->onMenuButtonPressed()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->onPause()V

    .line 409
    return-void
.end method

.method public onPrepareClose()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->closeFolders()V

    .line 304
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->onResume()V

    .line 414
    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->onScreenOff()V

    .line 570
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->onStart()V

    .line 399
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->onStop()V

    .line 404
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTransferEnd()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->exitTransferMode(Z)V

    .line 594
    return-void
.end method

.method public onTransferStart(Lcom/sonymobile/home/transfer/Transferable;)V
    .locals 1
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/FolderOpener;->hasFolderOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v0}, Lcom/sonymobile/home/settings/UserSettings;->isInStraightToDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->wasInEditStateAtTransferStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->enterTransferMode()V

    .line 589
    :cond_1
    :goto_0
    return-void

    .line 585
    :cond_2
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sonymobile/home/transfer/Transferable;->setIsCancellable(Z)V

    .line 586
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTray;->closeAppTrayAndMoveTransferable()V

    goto :goto_0
.end method

.method public refreshViewContent()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->refreshViewContent()V

    .line 575
    return-void
.end method

.method public setAnimateBackgroundDim(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 312
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/apptray/AppTrayView;->setAnimateBackgroundDim(Z)V

    .line 313
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 426
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/apptray/AppTrayView;->setPosition(FF)V

    .line 427
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/apptray/AppTrayView;->setVisible(Z)V

    .line 333
    return-void
.end method

.method public show(Z)V
    .locals 8
    .param p1, "animate"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 441
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    invoke-interface {v2, v4}, Lcom/sonymobile/home/FragmentHandler;->showStatusBar(Z)V

    .line 442
    if-eqz p1, :cond_0

    .line 443
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v2, v4}, Lcom/sonymobile/home/apptray/AppTrayView;->setTouchEnabled(Z)V

    .line 444
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 445
    new-instance v2, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    const-wide/16 v4, 0x12c

    invoke-direct {v2, v3, v4, v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;J)V

    iput-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 447
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTray;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v3

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3, v6}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setY(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 451
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const v3, 0x3089705f    # 1.0E-9f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 452
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    sget-object v3, Lcom/sonymobile/home/apptray/AppTray;->DESKTOP_APPTRAY_ANIM_MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 453
    const-wide/16 v0, 0xc8

    .line 454
    .local v0, "duration":J
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getDescendantAlpha()Lcom/sonymobile/flix/util/Animation;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Lcom/sonymobile/flix/util/Animation;->setDuration(J)Lcom/sonymobile/flix/util/Animation;

    .line 455
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v2, v7}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setVisibleOnStart(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 456
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getY()Lcom/sonymobile/flix/util/Animation;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/home/apptray/AppTray$2;

    invoke-direct {v3, p0}, Lcom/sonymobile/home/apptray/AppTray$2;-><init>(Lcom/sonymobile/home/apptray/AppTray;)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/util/Animation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 468
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    new-instance v3, Lcom/sonymobile/home/apptray/AppTray$3;

    invoke-direct {v3, p0}, Lcom/sonymobile/home/apptray/AppTray$3;-><init>(Lcom/sonymobile/home/apptray/AppTray;)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 487
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 499
    .end local v0    # "duration":J
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    invoke-virtual {v2, p0}, Lcom/sonymobile/home/transfer/TransferView;->addTransferListener(Lcom/sonymobile/home/transfer/TransferView$TransferViewListener;)V

    .line 500
    return-void

    .line 489
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTray;->onStart()V

    .line 490
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTray;->onResume()V

    .line 491
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mScene:Lcom/sonymobile/flix/components/Scene;

    const v3, 0x7f0f002c

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Scene;->findById(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 492
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v2, v7}, Lcom/sonymobile/home/apptray/AppTrayView;->setVisible(Z)V

    .line 493
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v2, v6, v6}, Lcom/sonymobile/home/apptray/AppTrayView;->setPosition(FF)V

    .line 494
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayView;->gotoDefaultPage()V

    .line 497
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTray;->focusView()Z

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;

    .prologue
    .line 231
    return-void
.end method

.method public updateConfiguration()V
    .locals 5

    .prologue
    .line 196
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v1

    .line 197
    .local v1, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->createAppTrayGrid(Lcom/sonymobile/home/resources/ResourceManager;)Lcom/sonymobile/grid/Grid;

    move-result-object v0

    .line 199
    .local v0, "grid":Lcom/sonymobile/grid/Grid;
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual {v0}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v3

    invoke-virtual {v0}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/apptray/AppTrayModel;->setMaxPageItemCount(I)V

    .line 200
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayPresenter:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->updateConfiguration(Lcom/sonymobile/grid/Grid;)V

    .line 201
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->updateConfiguration(Lcom/sonymobile/grid/Grid;)V

    .line 202
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/apptray/AppTrayView;->updateConfiguration(Lcom/sonymobile/grid/Grid;)V

    .line 203
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTray;->mDropZoneView:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->updateConfiguration()V

    .line 205
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTray;->updateResourceValues()V

    .line 212
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->updateResources()V

    .line 221
    return-void
.end method
