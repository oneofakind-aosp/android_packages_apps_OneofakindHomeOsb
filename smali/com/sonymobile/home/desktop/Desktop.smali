.class public Lcom/sonymobile/home/desktop/Desktop;
.super Lcom/sonymobile/home/LifeCycleBase;
.source "Desktop.java"

# interfaces
.implements Lcom/sonymobile/home/mainview/MainViewResident;
.implements Lcom/sonymobile/home/transfer/TransferView$TransferViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/desktop/Desktop$12;,
        Lcom/sonymobile/home/desktop/Desktop$CuiFocusComponent;
    }
.end annotation


# static fields
.field private static final DESKTOP_APPTRAY_ANIM_MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MOVE_ITEM_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field protected mAppTrayButtonAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

.field private mAppTrayButtonView:Lcom/sonymobile/home/presenter/view/IconLabelView;

.field private mAppTrayButtonViewCreator:Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;

.field private final mApplicationContext:Landroid/content/Context;

.field private mCuiFabAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

.field private mCuiFabIsVisible:Z

.field private mCuiFabView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

.field private mCuiFocusComponent:Lcom/sonymobile/home/desktop/Desktop$CuiFocusComponent;

.field private final mDeleteDropZoneScreenWrapper:Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;

.field private mDesktopAdapter:Lcom/sonymobile/home/desktop/DesktopAdapter;

.field protected mDesktopAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

.field private final mDesktopListener:Lcom/sonymobile/home/desktop/DesktopListener;

.field private final mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

.field private mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

.field private mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

.field private final mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

.field private final mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

.field private final mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final mScene:Lcom/sonymobile/flix/components/Scene;

.field private final mSoftwareUpgradeListener:Lcom/sonymobile/home/util/SoftwareUpgradeUtils$SoftwareUpgradeListener;

.field private mStage:Lcom/sonymobile/home/stage/Stage;

.field private mStagePresenterListener:Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;

.field private mStageUpgradeTutorial:Lcom/sonymobile/home/tutorial/Tutorial;

.field private final mTransferView:Lcom/sonymobile/home/transfer/TransferView;

.field private final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/sonymobile/home/desktop/Desktop;->DESKTOP_APPTRAY_ANIM_MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 86
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/sonymobile/home/desktop/Desktop;->MOVE_ITEM_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/tip/TipManager;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/transfer/TransferView;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/home/desktop/DesktopListener;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/search/SearchableModelsWrapper;)V
    .locals 23
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p4, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p5, "resourceManager"    # Lcom/sonymobile/home/resources/ResourceManager;
    .param p6, "tipManager"    # Lcom/sonymobile/home/tip/TipManager;
    .param p7, "statManager"    # Lcom/sonymobile/home/statistics/StatisticsManager;
    .param p8, "transferView"    # Lcom/sonymobile/home/transfer/TransferView;
    .param p9, "desktopGrid"    # Lcom/sonymobile/grid/Grid;
    .param p10, "cuiLayer"    # Lcom/sonymobile/flix/components/Component;
    .param p11, "dialogHandler"    # Lcom/sonymobile/home/DialogHandler;
    .param p12, "itemCreator"    # Lcom/sonymobile/home/data/ItemCreator;
    .param p13, "keyboardFocusManager"    # Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
    .param p14, "folderOpener"    # Lcom/sonymobile/home/folder/FolderOpener;
    .param p15, "desktopListener"    # Lcom/sonymobile/home/desktop/DesktopListener;
    .param p16, "containerView"    # Lcom/sonymobile/flix/components/Component;
    .param p17, "advWidgetExceptionHandler"    # Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;
    .param p18, "intentHandler"    # Lcom/sonymobile/home/IntentHandler;
    .param p19, "fragmentHandler"    # Lcom/sonymobile/home/FragmentHandler;
    .param p20, "searchableModelsWrapper"    # Lcom/sonymobile/home/search/SearchableModelsWrapper;

    .prologue
    .line 157
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/LifeCycleBase;-><init>()V

    .line 147
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabIsVisible:Z

    .line 159
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 160
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/desktop/Desktop;->mApplicationContext:Landroid/content/Context;

    .line 161
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/desktop/Desktop;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    .line 162
    move-object/from16 v0, p15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/desktop/Desktop;->mDesktopListener:Lcom/sonymobile/home/desktop/DesktopListener;

    .line 163
    move-object/from16 v0, p14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/desktop/Desktop;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    .line 164
    move-object/from16 v0, p13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/desktop/Desktop;->mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    .line 165
    move-object/from16 v0, p19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/desktop/Desktop;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    .line 168
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/desktop/Desktop;->createUpgradeListener()Lcom/sonymobile/home/util/SoftwareUpgradeUtils$SoftwareUpgradeListener;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonymobile/home/desktop/Desktop;->mSoftwareUpgradeListener:Lcom/sonymobile/home/util/SoftwareUpgradeUtils$SoftwareUpgradeListener;

    .line 169
    invoke-static {}, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->getInstance()Lcom/sonymobile/home/util/SoftwareUpgradeUtils;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/desktop/Desktop;->mSoftwareUpgradeListener:Lcom/sonymobile/home/util/SoftwareUpgradeUtils$SoftwareUpgradeListener;

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->setSoftwareUpgradeListener(Lcom/sonymobile/home/util/SoftwareUpgradeUtils$SoftwareUpgradeListener;)V

    move-object/from16 v22, p2

    .line 171
    check-cast v22, Lcom/sonymobile/home/HomeApplication;

    .line 172
    .local v22, "homeApplication":Lcom/sonymobile/home/HomeApplication;
    new-instance v20, Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;

    invoke-direct/range {v20 .. v20}, Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;-><init>()V

    .line 173
    .local v20, "touchConsumedHandler":Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;
    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/home/HomeApplication;->getUserSettings()Lcom/sonymobile/home/settings/UserSettings;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonymobile/home/desktop/Desktop;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p7

    move-object/from16 v10, p12

    move-object/from16 v11, p16

    move-object/from16 v12, p18

    move-object/from16 v13, p11

    move-object/from16 v14, p19

    move-object/from16 v15, p20

    .line 176
    invoke-direct/range {v4 .. v15}, Lcom/sonymobile/home/desktop/Desktop;->createStage(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/search/SearchableModelsWrapper;)V

    .line 179
    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/home/HomeApplication;->getDesktopModel()Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    .line 180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/sonymobile/home/desktop/DesktopModel;->setResourceHandler(Lcom/sonymobile/home/model/ResourceHandler;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/DesktopModel;->activateModel()V

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p6

    move-object/from16 v15, p14

    move-object/from16 v16, p17

    move-object/from16 v17, p18

    move-object/from16 v18, p19

    move-object/from16 v19, p20

    .line 183
    invoke-direct/range {v4 .. v20}, Lcom/sonymobile/home/desktop/Desktop;->createPresenter(Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;Lcom/sonymobile/home/tip/TipManager;Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/search/SearchableModelsWrapper;Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;)Lcom/sonymobile/home/desktop/DesktopPresenter;

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/DesktopModel;->getPreferences()Lcom/sonymobile/home/desktop/DesktopPreferences;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v4, v2}, Lcom/sonymobile/home/desktop/Desktop;->createDesktopView(Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/desktop/DesktopPreferences;Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-virtual {v5}, Lcom/sonymobile/home/stage/Stage;->getView()Lcom/sonymobile/home/stage/StageView;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setStageView(Lcom/sonymobile/home/stage/StageView;)V

    .line 192
    new-instance v21, Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-virtual {v4}, Lcom/sonymobile/home/stage/Stage;->getModel()Lcom/sonymobile/home/stage/StageModel;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-virtual {v6}, Lcom/sonymobile/home/stage/Stage;->getPresenter()Lcom/sonymobile/home/stage/StagePresenter;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5, v6}, Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;-><init>(Lcom/sonymobile/home/stage/StageModel;Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/stage/StagePresenter;)V

    .line 196
    .local v21, "desktopAndStageSearchHandler":Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setSearchHandler(Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-virtual {v4}, Lcom/sonymobile/home/stage/Stage;->getPresenter()Lcom/sonymobile/home/stage/StagePresenter;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/sonymobile/home/stage/StagePresenter;->setSearchHandler(Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;)V

    .line 199
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p16

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/home/desktop/Desktop;->createAppTrayButton(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/flix/components/Component;)V

    .line 202
    new-instance v4, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    move-object/from16 v0, p1

    move-object/from16 v1, p11

    move-object/from16 v2, p19

    invoke-direct {v4, v0, v5, v1, v2}, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneWrapper;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/FragmentHandler;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonymobile/home/desktop/Desktop;->mDeleteDropZoneScreenWrapper:Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;

    .line 205
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/desktop/Desktop;->mDeleteDropZoneScreenWrapper:Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setDeleteAreaScreenWrapper(Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;)V

    .line 207
    move-object/from16 v0, p0

    move-object/from16 v1, p16

    invoke-direct {v0, v1}, Lcom/sonymobile/home/desktop/Desktop;->createCuiFab(Lcom/sonymobile/flix/components/Component;)V

    .line 208
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/tutorial/Tutorial;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/Desktop;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mStageUpgradeTutorial:Lcom/sonymobile/home/tutorial/Tutorial;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonymobile/home/desktop/Desktop;Lcom/sonymobile/home/tutorial/Tutorial;)Lcom/sonymobile/home/tutorial/Tutorial;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/Desktop;
    .param p1, "x1"    # Lcom/sonymobile/home/tutorial/Tutorial;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sonymobile/home/desktop/Desktop;->mStageUpgradeTutorial:Lcom/sonymobile/home/tutorial/Tutorial;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/Desktop;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/Desktop;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopListener:Lcom/sonymobile/home/desktop/DesktopListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/Desktop;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/Desktop$CuiFocusComponent;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/Desktop;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFocusComponent:Lcom/sonymobile/home/desktop/Desktop$CuiFocusComponent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/stage/Stage;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/Desktop;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/Desktop;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopModel;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/Desktop;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/transfer/TransferView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/Desktop;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/Desktop;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDeleteDropZoneScreenWrapper:Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/Desktop;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/presenter/view/IconLabelView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/Desktop;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonView:Lcom/sonymobile/home/presenter/view/IconLabelView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/home/desktop/Desktop;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/Desktop;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/Desktop;->layoutAppTrayButton()V

    return-void
.end method

.method private createAppTrayButton(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/flix/components/Component;)V
    .locals 3
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "resourceManager"    # Lcom/sonymobile/home/resources/ResourceManager;
    .param p3, "containerView"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    const/4 v2, 0x0

    .line 313
    new-instance v0, Lcom/sonymobile/home/desktop/Desktop$3;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {v0, p0, p2, v1}, Lcom/sonymobile/home/desktop/Desktop$3;-><init>(Lcom/sonymobile/home/desktop/Desktop;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/settings/UserSettings;)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonViewCreator:Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;

    .line 357
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonViewCreator:Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;

    new-instance v1, Lcom/sonymobile/home/desktop/Desktop$4;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/desktop/Desktop$4;-><init>(Lcom/sonymobile/home/desktop/Desktop;)V

    invoke-virtual {v0, v2, v2, p1, v1}, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->createPageItemView(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/presenter/view/IconLabelView;

    iput-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonView:Lcom/sonymobile/home/presenter/view/IconLabelView;

    .line 370
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonView:Lcom/sonymobile/home/presenter/view/IconLabelView;

    invoke-direct {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 373
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    new-instance v1, Lcom/sonymobile/home/desktop/Desktop$5;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/desktop/Desktop$5;-><init>(Lcom/sonymobile/home/desktop/Desktop;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 387
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonView:Lcom/sonymobile/home/presenter/view/IconLabelView;

    invoke-virtual {p3, v0}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 388
    return-void
.end method

.method private createCuiFab(Lcom/sonymobile/flix/components/Component;)V
    .locals 9
    .param p1, "containerView"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    const/4 v8, 0x0

    .line 391
    iget-object v6, p0, Lcom/sonymobile/home/desktop/Desktop;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    invoke-interface {v6}, Lcom/sonymobile/home/FragmentHandler;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    .line 392
    .local v0, "activityContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 396
    :cond_0
    new-instance v5, Landroid/view/ContextThemeWrapper;

    const v6, 0x7f0c0082

    invoke-direct {v5, v0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 399
    .local v5, "themedContext":Landroid/view/ContextThemeWrapper;
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 400
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f030024

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 401
    .local v3, "cuiFabLayout":Landroid/view/View;
    const v6, 0x7f0f00a6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/FloatingActionButton;

    .line 402
    .local v2, "cuiFab":Landroid/support/design/widget/FloatingActionButton;
    invoke-direct {p0, v0}, Lcom/sonymobile/home/desktop/Desktop;->getAccentColor(Landroid/content/Context;)I

    move-result v1

    .line 403
    .local v1, "color":I
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 404
    new-instance v6, Lcom/sonymobile/home/desktop/Desktop$6;

    invoke-direct {v6, p0}, Lcom/sonymobile/home/desktop/Desktop$6;-><init>(Lcom/sonymobile/home/desktop/Desktop;)V

    invoke-virtual {v2, v6}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    new-instance v6, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    iget-object v7, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v6, v7, v3}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/view/View;)V

    iput-object v6, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    .line 413
    iget-object v6, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    const v7, 0x7f0f000f

    invoke-virtual {v6, v7}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->setId(I)V

    .line 414
    iget-object v6, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->setAutoUpdateViewBounds(Z)V

    .line 416
    iget-object v6, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    const-string v7, "CuiFabView"

    invoke-virtual {v6, v7}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->setName(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0, v8, v8}, Lcom/sonymobile/home/desktop/Desktop;->setCuiFabVisible(ZZ)V

    .line 418
    iget-object v6, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    invoke-virtual {p1, v6}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 420
    new-instance v6, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v7, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    invoke-direct {v6, v7}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;)V

    iput-object v6, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 423
    iget-object v6, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    new-instance v7, Lcom/sonymobile/home/desktop/Desktop$7;

    invoke-direct {v7, p0}, Lcom/sonymobile/home/desktop/Desktop$7;-><init>(Lcom/sonymobile/home/desktop/Desktop;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    goto :goto_0
.end method

.method private createDesktopView(Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/desktop/DesktopPreferences;Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;)V
    .locals 6
    .param p1, "res"    # Lcom/sonymobile/home/resources/ResourceManager;
    .param p2, "desktopPreferences"    # Lcom/sonymobile/home/desktop/DesktopPreferences;
    .param p3, "touchConsumedHandler"    # Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;

    .prologue
    .line 519
    invoke-static {p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->createDesktopGrid(Lcom/sonymobile/home/resources/ResourceManager;)Lcom/sonymobile/grid/Grid;

    move-result-object v2

    .line 520
    .local v2, "grid":Lcom/sonymobile/grid/Grid;
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopView;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/Desktop;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/desktop/DesktopView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/desktop/DesktopPreferences;Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    .line 523
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->addInteractionListener(Lcom/sonymobile/home/ui/pageview/PageViewInteractionListener;)V

    .line 524
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->addPageViewGroupListener(Lcom/sonymobile/home/ui/pageview/PageViewGroupListener;)V

    .line 525
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->addTouchListener(Lcom/sonymobile/home/desktop/DesktopViewTouchListener;)V

    .line 526
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->addSelectionListener(Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;)V

    .line 527
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->setSelectHomePageListener(Lcom/sonymobile/home/desktop/SelectHomePageListener;)V

    .line 528
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->setDeletePageListener(Lcom/sonymobile/home/desktop/DeletePageListener;)V

    .line 529
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->setResizableFrameListener(Lcom/sonymobile/home/desktop/ResizableFrameListener;)V

    .line 531
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/Desktop;->updateStatusAndNavBarMargins()V

    .line 536
    new-instance v0, Lcom/sonymobile/home/desktop/Desktop$CuiFocusComponent;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/home/desktop/Desktop$CuiFocusComponent;-><init>(Lcom/sonymobile/home/desktop/Desktop;Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFocusComponent:Lcom/sonymobile/home/desktop/Desktop$CuiFocusComponent;

    .line 537
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFocusComponent:Lcom/sonymobile/home/desktop/Desktop$CuiFocusComponent;

    const-string v1, "CuiFocusComponent"

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/Desktop$CuiFocusComponent;->setName(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFocusComponent:Lcom/sonymobile/home/desktop/Desktop$CuiFocusComponent;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 539
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mApplicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-direct {v0, v1, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 542
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    new-instance v1, Lcom/sonymobile/home/desktop/Desktop$8;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/desktop/Desktop$8;-><init>(Lcom/sonymobile/home/desktop/Desktop;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->addCuiListener(Lcom/sonymobile/home/desktop/cui/CuiPresenterListener;)V

    .line 550
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    new-instance v1, Lcom/sonymobile/home/desktop/Desktop$9;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/desktop/Desktop$9;-><init>(Lcom/sonymobile/home/desktop/Desktop;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->addDesktopPresenterListener(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopPresenterListener;)V

    .line 636
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setView(Lcom/sonymobile/home/desktop/DesktopView;)V

    .line 637
    return-void
.end method

.method private createPresenter(Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;Lcom/sonymobile/home/tip/TipManager;Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/search/SearchableModelsWrapper;Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;)Lcom/sonymobile/home/desktop/DesktopPresenter;
    .locals 20
    .param p1, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p2, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p3, "statManager"    # Lcom/sonymobile/home/statistics/StatisticsManager;
    .param p4, "transferHandler"    # Lcom/sonymobile/home/transfer/TransferHandler;
    .param p5, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p6, "cuiLayer"    # Lcom/sonymobile/flix/components/Component;
    .param p7, "dialogHandler"    # Lcom/sonymobile/home/DialogHandler;
    .param p8, "creator"    # Lcom/sonymobile/home/data/ItemCreator;
    .param p9, "keyboardFocusManager"    # Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
    .param p10, "tipManager"    # Lcom/sonymobile/home/tip/TipManager;
    .param p11, "folderOpener"    # Lcom/sonymobile/home/folder/FolderOpener;
    .param p12, "advWidgetExceptionHandler"    # Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;
    .param p13, "intentHandler"    # Lcom/sonymobile/home/IntentHandler;
    .param p14, "fragmentHandler"    # Lcom/sonymobile/home/FragmentHandler;
    .param p15, "searchableModelsWrapper"    # Lcom/sonymobile/home/search/SearchableModelsWrapper;
    .param p16, "touchConsumedHandler"    # Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;

    .prologue
    .line 492
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/desktop/Desktop;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/home/desktop/WallpaperWorker;->getInstance(Landroid/content/Context;)Lcom/sonymobile/home/desktop/WallpaperWorker;

    move-result-object v3

    .line 494
    .local v3, "wallpaperWorker":Lcom/sonymobile/home/desktop/WallpaperWorker;
    new-instance v1, Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/desktop/Desktop;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    move-object/from16 v16, v0

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p1

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    move-object/from16 v19, p15

    invoke-direct/range {v1 .. v19}, Lcom/sonymobile/home/desktop/DesktopPresenter;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/desktop/WallpaperWorker;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;Lcom/sonymobile/home/tip/TipManager;Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/search/SearchableModelsWrapper;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    .line 500
    new-instance v1, Lcom/sonymobile/home/desktop/DesktopAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-object/from16 v0, p16

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/sonymobile/home/desktop/DesktopAdapter;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAdapter:Lcom/sonymobile/home/desktop/DesktopAdapter;

    .line 501
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAdapter:Lcom/sonymobile/home/desktop/DesktopAdapter;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/desktop/DesktopModel;->addModelObserver(Lcom/sonymobile/home/model/ModelObserver;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/desktop/DesktopModel;->addUpdateWidgetIdsListener(Lcom/sonymobile/home/desktop/DesktopModel$UpdateAppWidgetIdsListener;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setFolderOpener(Lcom/sonymobile/home/folder/FolderOpener;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    return-object v1
.end method

.method private createStage(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/search/SearchableModelsWrapper;)V
    .locals 16
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "resourceManager"    # Lcom/sonymobile/home/resources/ResourceManager;
    .param p3, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p4, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p5, "statisticsManager"    # Lcom/sonymobile/home/statistics/StatisticsManager;
    .param p6, "itemCreator"    # Lcom/sonymobile/home/data/ItemCreator;
    .param p7, "containerView"    # Lcom/sonymobile/flix/components/Component;
    .param p8, "intentHandler"    # Lcom/sonymobile/home/IntentHandler;
    .param p9, "dialogHandler"    # Lcom/sonymobile/home/DialogHandler;
    .param p10, "fragmentHandler"    # Lcom/sonymobile/home/FragmentHandler;
    .param p11, "searchableModelsWrapper"    # Lcom/sonymobile/home/search/SearchableModelsWrapper;

    .prologue
    .line 261
    invoke-static/range {p2 .. p2}, Lcom/sonymobile/home/stage/StagePresenter;->createStageGrid(Lcom/sonymobile/home/resources/ResourceManager;)Lcom/sonymobile/grid/Grid;

    move-result-object v7

    .line 262
    .local v7, "stageGrid":Lcom/sonymobile/grid/Grid;
    new-instance v1, Lcom/sonymobile/home/stage/Stage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/Desktop;->mApplicationContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/home/desktop/Desktop;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonymobile/home/desktop/Desktop;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonymobile/home/desktop/Desktop;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    invoke-direct/range {v1 .. v15}, Lcom/sonymobile/home/stage/Stage;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/transfer/TransferView;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/search/SearchableModelsWrapper;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    .line 265
    new-instance v1, Lcom/sonymobile/home/desktop/Desktop$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/sonymobile/home/desktop/Desktop$2;-><init>(Lcom/sonymobile/home/desktop/Desktop;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sonymobile/home/desktop/Desktop;->mStagePresenterListener:Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/Desktop;->mStagePresenterListener:Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/stage/Stage;->addStagePresenterListener(Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/Stage;->getView()Lcom/sonymobile/home/stage/StageView;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 303
    return-void
.end method

.method private createUpgradeListener()Lcom/sonymobile/home/util/SoftwareUpgradeUtils$SoftwareUpgradeListener;
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/sonymobile/home/desktop/Desktop$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/desktop/Desktop$1;-><init>(Lcom/sonymobile/home/desktop/Desktop;)V

    return-object v0
.end method

.method private getAccentColor(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 439
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 440
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010435

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 441
    iget v1, v0, Landroid/util/TypedValue;->data:I

    return v1
.end method

.method private isStageUpgradeTutorialInProgress()Z
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mStageUpgradeTutorial:Lcom/sonymobile/home/tutorial/Tutorial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mStageUpgradeTutorial:Lcom/sonymobile/home/tutorial/Tutorial;

    invoke-virtual {v0}, Lcom/sonymobile/home/tutorial/Tutorial;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutAppTrayButton()V
    .locals 7

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1048
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/Stage;->getPresenter()Lcom/sonymobile/home/stage/StagePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StagePresenter;->getGrid()Lcom/sonymobile/grid/Grid;

    move-result-object v6

    .line 1049
    .local v6, "stageGrid":Lcom/sonymobile/grid/Grid;
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonView:Lcom/sonymobile/home/presenter/view/IconLabelView;

    invoke-virtual {v6}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v2

    invoke-virtual {v6}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/home/presenter/view/IconLabelView;->layout(II)V

    .line 1050
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonView:Lcom/sonymobile/home/presenter/view/IconLabelView;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-virtual {v2}, Lcom/sonymobile/home/stage/Stage;->getView()Lcom/sonymobile/home/stage/StageView;

    move-result-object v3

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 1052
    return-void
.end method

.method private layoutCuiFab()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1055
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/Stage;->getView()Lcom/sonymobile/home/stage/StageView;

    move-result-object v3

    .line 1056
    .local v3, "stageView":Lcom/sonymobile/flix/components/Component;
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v12

    .line 1057
    .local v12, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    const v0, 0x7f0b001a

    invoke-virtual {v12, v0}, Lcom/sonymobile/home/resources/ResourceManager;->getDimension(I)F

    move-result v13

    .line 1058
    .local v13, "verticalOffset":F
    const v0, 0x7f0b0019

    invoke-virtual {v12, v0}, Lcom/sonymobile/home/resources/ResourceManager;->getDimension(I)F

    move-result v11

    .line 1060
    .local v11, "horizontalOffset":F
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-static {v0}, Lcom/sonymobile/home/util/LayoutUtils;->useLandscapeLayout(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    move v2, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 1073
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    invoke-virtual {v0, v11, v13}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->move(FF)V

    .line 1074
    return-void

    .line 1064
    :cond_0
    invoke-virtual {v12}, Lcom/sonymobile/home/resources/ResourceManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1065
    iget-object v5, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    move v6, v4

    move v7, v1

    move-object v8, v3

    move v9, v4

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 1067
    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr v11, v0

    goto :goto_0

    .line 1069
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    move v6, v1

    move v7, v1

    move-object v8, v3

    move v9, v1

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    goto :goto_0
.end method

.method private layoutStage()V
    .locals 10

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 1033
    iget-object v3, p0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-virtual {v3}, Lcom/sonymobile/home/stage/Stage;->getView()Lcom/sonymobile/home/stage/StageView;

    move-result-object v0

    .line 1035
    .local v0, "stageView":Lcom/sonymobile/flix/components/Component;
    iget-object v3, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-static {v3}, Lcom/sonymobile/home/util/LayoutUtils;->useLandscapeLayout(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1038
    iget-object v3, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    move v4, v1

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 1040
    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getRightOffset()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/Component;->move(FF)V

    .line 1045
    :goto_0
    return-void

    .line 1042
    :cond_0
    iget-object v6, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    const/4 v9, 0x2

    move-object v3, v0

    move v4, v2

    move v5, v1

    move v7, v2

    move v8, v1

    invoke-static/range {v3 .. v9}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FFI)V

    goto :goto_0
.end method

.method private setBackgroundAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/desktop/DesktopView;->setBackgroundAlpha(F)V

    .line 1230
    return-void
.end method

.method private updateStatusAndNavBarMargins()V
    .locals 5

    .prologue
    .line 777
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    const/4 v1, 0x0

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getTopOffset()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getRightOffset()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getBottomOffset()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/home/desktop/DesktopView;->setInnerMargin(FFFF)V

    .line 779
    return-void
.end method


# virtual methods
.method public focusView()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    .line 708
    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    invoke-virtual {v2}, Lcom/sonymobile/home/folder/FolderOpener;->hasFolderOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 709
    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop;->mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/Desktop;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    invoke-virtual {v3}, Lcom/sonymobile/home/folder/FolderOpener;->getOpenFolderView()Lcom/sonymobile/home/folder/OpenFolderView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->focus(Lcom/sonymobile/flix/components/Component;)Z

    .line 718
    :goto_0
    return v1

    .line 712
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop;->mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v3

    mul-float/2addr v3, v5

    iget-object v4, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v4

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->findClosest(FF)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 714
    .local v0, "first":Lcom/sonymobile/flix/components/Component;
    if-eqz v0, :cond_1

    .line 715
    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop;->mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    invoke-virtual {v2, v0}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->focus(Lcom/sonymobile/flix/components/Component;)Z

    goto :goto_0

    .line 718
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getModel()Lcom/sonymobile/home/desktop/DesktopModel;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    return-object v0
.end method

.method public getPresenter()Lcom/sonymobile/home/desktop/DesktopPresenter;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    return-object v0
.end method

.method public getSpecialCaseFocusComponent(I)Lcom/sonymobile/flix/components/Component;
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 789
    const/16 v0, 0x21

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonView:Lcom/sonymobile/home/presenter/view/IconLabelView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStage()Lcom/sonymobile/home/stage/Stage;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    return-object v0
.end method

.method public getView()Lcom/sonymobile/flix/components/Component;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    return-object v0
.end method

.method public hide(Z)V
    .locals 6
    .param p1, "animate"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 899
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->cancelDelayedStatusbarChanges()V

    .line 900
    if-eqz p1, :cond_1

    .line 901
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->setTouchEnabled(Z)V

    .line 902
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 903
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    const-wide/16 v2, 0x12c

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;J)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 905
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v1

    neg-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setY(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 906
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v4}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 907
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    sget-object v1, Lcom/sonymobile/home/desktop/Desktop;->DESKTOP_APPTRAY_ANIM_MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 908
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getDescendantAlpha()Lcom/sonymobile/flix/util/Animation;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/util/Animation;->setDuration(J)Lcom/sonymobile/flix/util/Animation;

    .line 909
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInvisibleOnEnd(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 910
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    new-instance v1, Lcom/sonymobile/home/desktop/Desktop$11;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/desktop/Desktop$11;-><init>(Lcom/sonymobile/home/desktop/Desktop;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 938
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 948
    :goto_0
    invoke-direct {p0, v4}, Lcom/sonymobile/home/desktop/Desktop;->setBackgroundAlpha(F)V

    .line 949
    invoke-virtual {p0, v5}, Lcom/sonymobile/home/desktop/Desktop;->hideAppTrayButton(Z)V

    .line 950
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/Desktop;->hideStage(Z)V

    .line 951
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->isSetToVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    invoke-virtual {p0, v5}, Lcom/sonymobile/home/desktop/Desktop;->hideCuiFab(Z)V

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/transfer/TransferView;->removeTransferListener(Lcom/sonymobile/home/transfer/TransferView$TransferViewListener;)V

    .line 955
    return-void

    .line 940
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonView:Lcom/sonymobile/home/presenter/view/IconLabelView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setVisible(Z)V

    .line 942
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/Desktop;->onPause()V

    .line 943
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/Desktop;->onStop()V

    .line 944
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->setVisible(Z)V

    .line 945
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->NORMAL:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V

    goto :goto_0
.end method

.method public hideAppTrayButton(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 989
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonView:Lcom/sonymobile/home/presenter/view/IconLabelView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setTouchEnabled(Z)V

    .line 990
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonView:Lcom/sonymobile/home/presenter/view/IconLabelView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setVisible(Z)V

    .line 991
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/Desktop;->layoutAppTrayButton()V

    .line 993
    if-eqz p1, :cond_0

    .line 994
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 995
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/desktop/Desktop;->runHideComponentAnimation(Lcom/sonymobile/flix/components/util/ComponentAnimation;Z)V

    .line 997
    :cond_0
    return-void
.end method

.method public hideCuiFab(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 958
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabIsVisible:Z

    if-nez v0, :cond_1

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    iput-boolean v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabIsVisible:Z

    .line 963
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->setTouchEnabled(Z)V

    .line 964
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->setVisible(Z)V

    .line 966
    if-eqz p1, :cond_0

    .line 967
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 968
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/desktop/Desktop;->runHideComponentAnimation(Lcom/sonymobile/flix/components/util/ComponentAnimation;Z)V

    goto :goto_0
.end method

.method public hideStage(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 1013
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/Stage;->getView()Lcom/sonymobile/home/stage/StageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/stage/StageView;->setVisible(Z)V

    .line 1014
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/Desktop;->layoutStage()V

    .line 1015
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/Desktop;->layoutAppTrayButton()V

    .line 1016
    if-eqz p1, :cond_0

    .line 1017
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/Stage;->getPresenter()Lcom/sonymobile/home/stage/StagePresenter;

    move-result-object v0

    .line 1018
    .local v0, "stagePresenter":Lcom/sonymobile/home/stage/StagePresenter;
    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StagePresenter;->startHideAnimation()V

    .line 1020
    .end local v0    # "stagePresenter":Lcom/sonymobile/home/stage/StagePresenter;
    :cond_0
    return-void
.end method

.method public isOnHomePage()Z
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->isOnHomePage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layout(Lcom/sonymobile/home/mainview/MainViewResident;)V
    .locals 7
    .param p1, "reference"    # Lcom/sonymobile/home/mainview/MainViewResident;

    .prologue
    const/high16 v6, 0x42ca0000    # 101.0f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 746
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->setSizeToParent()V

    .line 748
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/Desktop;->updateStatusAndNavBarMargins()V

    .line 750
    if-eq p1, p0, :cond_0

    .line 751
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/Desktop;->getView()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/sonymobile/home/mainview/MainViewResident;->getView()Lcom/sonymobile/flix/components/Component;

    move-result-object v3

    const/high16 v5, 0x3f800000    # 1.0f

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 756
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/Desktop;->layoutStage()V

    .line 758
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->layoutDesktop()V

    .line 761
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFocusComponent:Lcom/sonymobile/home/desktop/Desktop$CuiFocusComponent;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-static {v0, v1, v6, v6}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;FF)V

    .line 764
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/Desktop;->layoutAppTrayButton()V

    .line 766
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/Desktop;->isStageUpgradeTutorialInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mStageUpgradeTutorial:Lcom/sonymobile/home/tutorial/Tutorial;

    invoke-virtual {v0}, Lcom/sonymobile/home/tutorial/Tutorial;->layout()V

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDeleteDropZoneScreenWrapper:Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;

    invoke-interface {v0}, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;->layout()V

    .line 772
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/Desktop;->layoutCuiFab()V

    .line 773
    return-void
.end method

.method public onAttachedToScene()V
    .locals 2

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAdapter:Lcom/sonymobile/home/desktop/DesktopAdapter;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setAdapter(Lcom/sonymobile/home/desktop/DesktopAdapter;)V

    .line 1220
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAdapter:Lcom/sonymobile/home/desktop/DesktopAdapter;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->setAdapter(Lcom/sonymobile/home/ui/pageview/PageViewAdapter;)V

    .line 1221
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->updateWallpaperOffsets()V

    .line 815
    return-void
.end method

.method public onBackButtonPressed()Z
    .locals 1

    .prologue
    .line 1163
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/Desktop;->isStageUpgradeTutorialInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mStageUpgradeTutorial:Lcom/sonymobile/home/tutorial/Tutorial;

    invoke-virtual {v0}, Lcom/sonymobile/home/tutorial/Tutorial;->onBackButtonPressed()Z

    move-result v0

    .line 1166
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->backButtonPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1116
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAdapter:Lcom/sonymobile/home/desktop/DesktopAdapter;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/desktop/DesktopModel;->removeModelObserver(Lcom/sonymobile/home/model/ModelObserver;)V

    .line 1117
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/desktop/DesktopModel;->removeUpdateWidgetIdsListener(Lcom/sonymobile/home/desktop/DesktopModel$UpdateAppWidgetIdsListener;)V

    .line 1118
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->onDestroy()V

    .line 1119
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonViewCreator:Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;

    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->onDestroy()V

    .line 1120
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/desktop/DesktopView;->setResizableFrameListener(Lcom/sonymobile/home/desktop/ResizableFrameListener;)V

    .line 1121
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/desktop/DesktopView;->setSelectHomePageListener(Lcom/sonymobile/home/desktop/SelectHomePageListener;)V

    .line 1122
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/desktop/DesktopView;->setDeletePageListener(Lcom/sonymobile/home/desktop/DeletePageListener;)V

    .line 1123
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/desktop/DesktopView;->setAdapter(Lcom/sonymobile/home/ui/pageview/PageViewAdapter;)V

    .line 1124
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/desktop/DesktopView;->removeInteractionListener(Lcom/sonymobile/home/ui/pageview/PageViewInteractionListener;)V

    .line 1125
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/desktop/DesktopView;->removePageViewGroupListener(Lcom/sonymobile/home/ui/pageview/PageViewGroupListener;)V

    .line 1126
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/desktop/DesktopView;->removeTouchListener(Lcom/sonymobile/home/desktop/DesktopViewTouchListener;)V

    .line 1127
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/desktop/DesktopView;->removeSelectionListener(Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;)V

    .line 1128
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    if-eqz v1, :cond_1

    .line 1129
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/Stage;->getPresenter()Lcom/sonymobile/home/stage/StagePresenter;

    move-result-object v0

    .line 1130
    .local v0, "presenter":Lcom/sonymobile/home/stage/StagePresenter;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mStagePresenterListener:Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;

    if-eqz v1, :cond_0

    .line 1131
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mStagePresenterListener:Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/stage/StagePresenter;->removeStagePresenterListener(Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;)V

    .line 1133
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/Stage;->onDestroy()V

    .line 1136
    .end local v0    # "presenter":Lcom/sonymobile/home/stage/StagePresenter;
    :cond_1
    invoke-static {}, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->getInstance()Lcom/sonymobile/home/util/SoftwareUpgradeUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop;->mSoftwareUpgradeListener:Lcom/sonymobile/home/util/SoftwareUpgradeUtils$SoftwareUpgradeListener;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/util/SoftwareUpgradeUtils;->removeSoftwareUpgradeListener(Lcom/sonymobile/home/util/SoftwareUpgradeUtils$SoftwareUpgradeListener;)V

    .line 1137
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/sonymobile/home/HomeApplication;->watch(Landroid/content/Context;Ljava/lang/Object;)V

    .line 1138
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->onDetach()V

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    if-eqz v0, :cond_1

    .line 1181
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/Stage;->onDetach()V

    .line 1183
    :cond_1
    return-void
.end method

.method public onHomeButtonPressed(Z)V
    .locals 2
    .param p1, "isHomeScreenInFront"    # Z

    .prologue
    .line 725
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/FolderOpener;->hasFolderOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/Desktop;->isOnHomePage()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonymobile/home/folder/FolderOpener;->close(Z)V

    .line 729
    :cond_0
    if-eqz p1, :cond_1

    .line 730
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->homeButtonPressed()V

    .line 732
    :cond_1
    return-void

    .line 726
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuButtonPressed()Z
    .locals 1

    .prologue
    .line 1171
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->onPause()V

    .line 1153
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->onResume()V

    .line 1158
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/Stage;->getPresenter()Lcom/sonymobile/home/stage/StagePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StagePresenter;->onResume()V

    .line 1159
    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->onScreenOff()V

    .line 737
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->onStart()V

    .line 1143
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->onStop()V

    .line 1148
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/Desktop;->isStageUpgradeTutorialInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTransferEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1201
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isCuiMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1202
    invoke-virtual {p0, v2}, Lcom/sonymobile/home/desktop/Desktop;->hideStage(Z)V

    .line 1203
    invoke-virtual {p0, v1, v1}, Lcom/sonymobile/home/desktop/Desktop;->setAppTrayButtonVisible(ZZ)V

    .line 1204
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->showCuiMenu()V

    .line 1209
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1210
    invoke-virtual {p0, v2}, Lcom/sonymobile/home/desktop/Desktop;->showCuiFab(Z)V

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0, v1, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->updateTopComponentsVisibility(ZZ)V

    .line 1213
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->deleteEmptyPagesAddedOnPageSwitchIfNeeded()V

    .line 1214
    return-void

    .line 1206
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->exitTransferMode()V

    .line 1207
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/Desktop;->showStage(Z)V

    goto :goto_0
.end method

.method public onTransferStart(Lcom/sonymobile/home/transfer/Transferable;)V
    .locals 4
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;

    .prologue
    const/4 v3, 0x1

    .line 1187
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/FolderOpener;->hasFolderOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->enterTransferMode()V

    .line 1190
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/sonymobile/home/desktop/Desktop;->setAppTrayButtonVisible(ZZ)V

    .line 1191
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/desktop/DesktopModel;->isItemRemovable(Lcom/sonymobile/home/data/Item;)Z

    move-result v1

    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->isCancellable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->updateTopComponentsVisibility(ZZ)V

    .line 1194
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1195
    invoke-virtual {p0, v3}, Lcom/sonymobile/home/desktop/Desktop;->hideCuiFab(Z)V

    .line 1197
    :cond_1
    return-void
.end method

.method public refreshViewContent()V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->refreshViewContent()V

    .line 800
    return-void
.end method

.method public runHideComponentAnimation(Lcom/sonymobile/flix/components/util/ComponentAnimation;Z)V
    .locals 4
    .param p1, "animation"    # Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .param p2, "toFront"    # Z

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1103
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->reset()V

    .line 1104
    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1105
    if-eqz p2, :cond_0

    const v0, 0x3fa66666    # 1.3f

    :goto_0
    invoke-virtual {p1, v2, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setScaling(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1107
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1108
    sget-object v0, Lcom/sonymobile/home/desktop/Desktop;->MOVE_ITEM_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1109
    invoke-virtual {p1, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setVisibleOnStart(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1110
    invoke-virtual {p1, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInvisibleOnEnd(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1111
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 1112
    return-void

    .line 1105
    :cond_0
    const v0, 0x3f44ec4f

    goto :goto_0
.end method

.method public runShowComponentAnimation(Lcom/sonymobile/flix/components/util/ComponentAnimation;Z)V
    .locals 3
    .param p1, "animation"    # Lcom/sonymobile/flix/components/util/ComponentAnimation;
    .param p2, "fromFront"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1084
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->reset()V

    .line 1085
    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDuration(J)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1086
    if-eqz p2, :cond_0

    const v0, 0x3fa66666    # 1.3f

    :goto_0
    invoke-virtual {p1, v0, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setScaling(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1088
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1089
    sget-object v0, Lcom/sonymobile/home/desktop/Desktop;->MOVE_ITEM_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1090
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setVisibleOnStart(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1091
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInvisibleOnEnd(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1092
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 1093
    return-void

    .line 1086
    :cond_0
    const v0, 0x3f44ec4f

    goto :goto_0
.end method

.method public setAppTrayButtonVisible(ZZ)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "animation"    # Z

    .prologue
    .line 681
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->getPreferences()Lcom/sonymobile/home/desktop/DesktopPreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/home/desktop/DesktopPreferences;->allowAppTrayKeyToBeVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    if-eqz p1, :cond_0

    .line 683
    invoke-virtual {p0, p2}, Lcom/sonymobile/home/desktop/Desktop;->showAppTrayButton(Z)V

    .line 690
    :goto_0
    return-void

    .line 685
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sonymobile/home/desktop/Desktop;->hideAppTrayButton(Z)V

    goto :goto_0

    .line 688
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/Desktop;->hideAppTrayButton(Z)V

    goto :goto_0
.end method

.method public setCuiFabVisible(ZZ)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "animation"    # Z

    .prologue
    .line 667
    if-eqz p1, :cond_0

    .line 668
    invoke-virtual {p0, p2}, Lcom/sonymobile/home/desktop/Desktop;->showCuiFab(Z)V

    .line 672
    :goto_0
    return-void

    .line 670
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sonymobile/home/desktop/Desktop;->hideCuiFab(Z)V

    goto :goto_0
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 741
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/desktop/DesktopView;->setPosition(FF)V

    .line 742
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 809
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/desktop/DesktopView;->setVisible(Z)V

    .line 810
    return-void
.end method

.method public show(Z)V
    .locals 6
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 834
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonymobile/home/transfer/TransferView;->isInTransfer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    invoke-interface {v0, v4}, Lcom/sonymobile/home/FragmentHandler;->showStatusBar(Z)V

    .line 837
    :cond_0
    if-eqz p1, :cond_2

    .line 838
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0, v4}, Lcom/sonymobile/home/desktop/DesktopView;->setTouchEnabled(Z)V

    .line 839
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 840
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonymobile/home/transfer/TransferView;->isInTransfer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    invoke-interface {v0, v2}, Lcom/sonymobile/home/FragmentHandler;->showStatusBar(Z)V

    .line 844
    :cond_1
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    const-wide/16 v2, 0x12c

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;J)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 846
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v1

    neg-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1, v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setY(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 847
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 848
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    sget-object v1, Lcom/sonymobile/home/desktop/Desktop;->DESKTOP_APPTRAY_ANIM_MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 849
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->getDescendantAlpha()Lcom/sonymobile/flix/util/Animation;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/util/Animation;->setDuration(J)Lcom/sonymobile/flix/util/Animation;

    .line 850
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v4}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setVisibleOnStart(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 851
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    new-instance v1, Lcom/sonymobile/home/desktop/Desktop$10;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/desktop/Desktop$10;-><init>(Lcom/sonymobile/home/desktop/Desktop;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 879
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopAnim:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 893
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/Desktop;->showStage(Z)V

    .line 894
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/transfer/TransferView;->addTransferListener(Lcom/sonymobile/home/transfer/TransferView$TransferViewListener;)V

    .line 895
    return-void

    .line 882
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/Desktop;->onStart()V

    .line 883
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/Desktop;->onResume()V

    .line 884
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0, v4}, Lcom/sonymobile/home/desktop/DesktopView;->setVisible(Z)V

    .line 885
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0, v5, v5}, Lcom/sonymobile/home/desktop/DesktopView;->setPosition(FF)V

    .line 886
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDeleteDropZoneScreenWrapper:Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;

    invoke-interface {v0}, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;->layout()V

    .line 887
    invoke-virtual {p0, v4, v2}, Lcom/sonymobile/home/desktop/Desktop;->setAppTrayButtonVisible(ZZ)V

    .line 888
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    const v1, 0x7f0f002c

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->findById(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 891
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/Desktop;->focusView()Z

    goto :goto_0
.end method

.method public showAppTrayButton(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1002
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonView:Lcom/sonymobile/home/presenter/view/IconLabelView;

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setTouchEnabled(Z)V

    .line 1003
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonView:Lcom/sonymobile/home/presenter/view/IconLabelView;

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setVisible(Z)V

    .line 1004
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/Desktop;->layoutAppTrayButton()V

    .line 1006
    if-eqz p1, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 1008
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/home/desktop/Desktop;->runShowComponentAnimation(Lcom/sonymobile/flix/components/util/ComponentAnimation;Z)V

    .line 1010
    :cond_0
    return-void
.end method

.method public showCuiFab(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x1

    .line 973
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabIsVisible:Z

    if-eqz v0, :cond_1

    .line 986
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    iput-boolean v2, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabIsVisible:Z

    .line 979
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->setTouchEnabled(Z)V

    .line 980
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabView:Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    invoke-virtual {v0, v2}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->setVisible(Z)V

    .line 982
    if-eqz p1, :cond_0

    .line 983
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 984
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mCuiFabAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/home/desktop/Desktop;->runShowComponentAnimation(Lcom/sonymobile/flix/components/util/ComponentAnimation;Z)V

    goto :goto_0
.end method

.method public showStage(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 1023
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/Stage;->getView()Lcom/sonymobile/home/stage/StageView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/stage/StageView;->setVisible(Z)V

    .line 1024
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/Desktop;->layoutStage()V

    .line 1025
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/Desktop;->layoutAppTrayButton()V

    .line 1026
    if-eqz p1, :cond_0

    .line 1027
    iget-object v1, p0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/Stage;->getPresenter()Lcom/sonymobile/home/stage/StagePresenter;

    move-result-object v0

    .line 1028
    .local v0, "stagePresenter":Lcom/sonymobile/home/stage/StagePresenter;
    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StagePresenter;->startShowAnimation()V

    .line 1030
    .end local v0    # "stagePresenter":Lcom/sonymobile/home/stage/StagePresenter;
    :cond_0
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 1
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 795
    return-void
.end method

.method public updateConfiguration()V
    .locals 3

    .prologue
    .line 644
    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v1

    .line 645
    .local v1, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->createDesktopGrid(Lcom/sonymobile/home/resources/ResourceManager;)Lcom/sonymobile/grid/Grid;

    move-result-object v0

    .line 646
    .local v0, "grid":Lcom/sonymobile/grid/Grid;
    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->updateConfiguration(Lcom/sonymobile/grid/Grid;)V

    .line 647
    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/desktop/DesktopView;->updateConfiguration(Lcom/sonymobile/grid/Grid;)V

    .line 648
    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop;->mDeleteDropZoneScreenWrapper:Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;

    invoke-interface {v2}, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;->updateConfiguration()V

    .line 650
    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop;->mStage:Lcom/sonymobile/home/stage/Stage;

    invoke-virtual {v2}, Lcom/sonymobile/home/stage/Stage;->updateConfiguration()V

    .line 651
    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonView:Lcom/sonymobile/home/presenter/view/IconLabelView;

    if-eqz v2, :cond_0

    .line 652
    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop;->mAppTrayButtonViewCreator:Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;

    invoke-virtual {v2, v1}, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;->updateConfiguration(Lcom/sonymobile/home/resources/ResourceManager;)V

    .line 655
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/Desktop;->isStageUpgradeTutorialInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 656
    iget-object v2, p0, Lcom/sonymobile/home/desktop/Desktop;->mStageUpgradeTutorial:Lcom/sonymobile/home/tutorial/Tutorial;

    invoke-virtual {v2}, Lcom/sonymobile/home/tutorial/Tutorial;->updateConfiguration()V

    .line 658
    :cond_1
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->updateResources()V

    .line 785
    return-void
.end method
