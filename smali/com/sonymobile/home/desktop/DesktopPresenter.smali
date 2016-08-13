.class public Lcom/sonymobile/home/desktop/DesktopPresenter;
.super Lcom/sonymobile/home/search/SearchablePageViewPresenter;
.source "DesktopPresenter.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/sonymobile/home/desktop/DeletePageListener;
.implements Lcom/sonymobile/home/desktop/DesktopModel$PageChangeListener;
.implements Lcom/sonymobile/home/desktop/DesktopModel$UpdateAppWidgetIdsListener;
.implements Lcom/sonymobile/home/desktop/DesktopViewTouchListener;
.implements Lcom/sonymobile/home/desktop/ResizableFrameListener;
.implements Lcom/sonymobile/home/desktop/SelectHomePageListener;
.implements Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;
.implements Lcom/sonymobile/home/ui/pageview/PageItemViewListener;
.implements Lcom/sonymobile/home/ui/pageview/PageViewGroupListener;
.implements Lcom/sonymobile/home/ui/pageview/PageViewInteractionListener;
.implements Lcom/sonymobile/home/ui/pageview/PageViewSelectionListener;
.implements Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/desktop/DesktopPresenter$15;,
        Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopOpenFolderListener;,
        Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopResizeFrameHandler;,
        Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;,
        Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;,
        Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopPresenterListener;,
        Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sonymobile/home/desktop/DesktopPresenter;

.field private static sSessionAppStartCount:I


# instance fields
.field private mAdapter:Lcom/sonymobile/home/desktop/DesktopAdapter;

.field private final mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

.field private mAutoHidePageIndicator:Z

.field private final mAutoMoveEventListener:Lcom/sonymobile/home/itemorganizer/ItemMoveManager$AutoMoveEventListener;

.field private mAutoMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

.field private mCuiExitState:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

.field private final mCuiPresenter:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

.field private mDeleteDropZoneScreenWrapper:Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;

.field private mDeletePageAnimationFinishedListener:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;

.field private final mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

.field private mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

.field private mDragItem:Lcom/sonymobile/home/ui/pageview/PageItemView;

.field private final mDragSource:Lcom/sonymobile/home/transfer/DragSource;

.field private final mDropTarget:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

.field private mGrid:Lcom/sonymobile/grid/Grid;

.field private final mHomeSearchManager:Lcom/sonymobile/home/search/HomeSearchManager;

.field private mInTransferMode:Z

.field private mIsOpen:Z

.field private mIsPortrait:Z

.field private mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopPresenterListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberOfPages:I

.field private mOnResourceBatchLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

.field private mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

.field private mPreviousMaxScrollPosition:F

.field private mPreviousMinScrollPosition:F

.field private final mResizedItemOriginalCellBounds:Lcom/sonymobile/grid/GridRect;

.field private mSearchHandler:Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;

.field private mShowLoadingProgress:Z

.field private mShowStatusbarRunnable:Ljava/lang/Runnable;

.field private mState:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

.field private final mTipManager:Lcom/sonymobile/home/tip/TipManager;

.field private final mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

.field private final mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mWallpaperWorker:Lcom/sonymobile/home/desktop/WallpaperWorker;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/desktop/WallpaperWorker;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;Lcom/sonymobile/home/tip/TipManager;Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/search/SearchableModelsWrapper;)V
    .locals 17
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "wallpaperWorker"    # Lcom/sonymobile/home/desktop/WallpaperWorker;
    .param p3, "desktopModel"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p4, "statisticsManager"    # Lcom/sonymobile/home/statistics/StatisticsManager;
    .param p5, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p6, "transferHandler"    # Lcom/sonymobile/home/transfer/TransferHandler;
    .param p7, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p8, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p9, "cuiLayer"    # Lcom/sonymobile/flix/components/Component;
    .param p10, "dialogHandler"    # Lcom/sonymobile/home/DialogHandler;
    .param p11, "creator"    # Lcom/sonymobile/home/data/ItemCreator;
    .param p12, "keyboardFocusManager"    # Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
    .param p13, "tipManager"    # Lcom/sonymobile/home/tip/TipManager;
    .param p14, "advWidgetExceptionHandler"    # Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;
    .param p15, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p16, "intentHandler"    # Lcom/sonymobile/home/IntentHandler;
    .param p17, "fragmentHandler"    # Lcom/sonymobile/home/FragmentHandler;
    .param p18, "searchableModelsWrapper"    # Lcom/sonymobile/home/search/SearchableModelsWrapper;

    .prologue
    .line 1558
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p16

    move-object/from16 v6, p10

    move-object/from16 v7, p17

    move-object/from16 v8, p7

    move-object/from16 v9, p4

    move-object/from16 v10, p18

    move-object/from16 v11, p15

    invoke-direct/range {v2 .. v11}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/search/SearchableModelsWrapper;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 214
    sget-object v2, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->NORMAL:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mState:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    .line 222
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPreviousMinScrollPosition:F

    .line 224
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPreviousMaxScrollPosition:F

    .line 226
    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mNumberOfPages:I

    .line 234
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mIsPortrait:Z

    .line 246
    sget-object v2, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->EDIT:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mCuiExitState:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    .line 249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mListeners:Ljava/util/ArrayList;

    .line 252
    new-instance v2, Lcom/sonymobile/grid/GridRect;

    invoke-direct {v2}, Lcom/sonymobile/grid/GridRect;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mResizedItemOriginalCellBounds:Lcom/sonymobile/grid/GridRect;

    .line 255
    new-instance v2, Lcom/sonymobile/home/desktop/DesktopPresenter$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter$1;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoMoveEventListener:Lcom/sonymobile/home/itemorganizer/ItemMoveManager$AutoMoveEventListener;

    .line 271
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    .line 274
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDragItem:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 278
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDeletePageAnimationFinishedListener:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;

    .line 281
    new-instance v2, Lcom/sonymobile/home/desktop/DesktopPresenter$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter$2;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDragSource:Lcom/sonymobile/home/transfer/DragSource;

    .line 2986
    new-instance v2, Lcom/sonymobile/home/desktop/DesktopPresenter$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter$10;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mShowStatusbarRunnable:Ljava/lang/Runnable;

    .line 1560
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    .line 1561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/desktop/DesktopModel;->addPageChangeListener(Lcom/sonymobile/home/desktop/DesktopModel$PageChangeListener;)V

    .line 1562
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/desktop/DesktopPresenter;->mWallpaperWorker:Lcom/sonymobile/home/desktop/WallpaperWorker;

    .line 1563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonymobile/home/storage/StorageManager;->getShortcutManager(Landroid/content/Context;)Lcom/sonymobile/home/shortcut/ShortcutManager;

    move-result-object v11

    .line 1564
    .local v11, "shortcutManager":Lcom/sonymobile/home/shortcut/ShortcutManager;
    move-object/from16 v0, p13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/desktop/DesktopPresenter;->mTipManager:Lcom/sonymobile/home/tip/TipManager;

    .line 1565
    move-object/from16 v0, p14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    .line 1566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->addAdvWidgetExceptionObserver(Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;)V

    .line 1567
    new-instance v2, Lcom/sonymobile/home/search/HomeSearchManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sonymobile/home/search/HomeSearchManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mHomeSearchManager:Lcom/sonymobile/home/search/HomeSearchManager;

    .line 1568
    new-instance v2, Lcom/sonymobile/home/desktop/DesktopPresenter$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter$3;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 1574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/settings/UserSettings;->addUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 1576
    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->DELETE_PAGE:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v2}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v2

    new-instance v3, Lcom/sonymobile/home/desktop/DesktopPresenter$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter$4;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter;)V

    move-object/from16 v0, p10

    invoke-interface {v0, v2, v3}, Lcom/sonymobile/home/DialogHandler;->addDialogActionListener(ILcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;)V

    .line 1597
    new-instance v2, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopOpenFolderListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopOpenFolderListener;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/desktop/DesktopPresenter$1;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setOpenFolderListener(Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;)V

    .line 1598
    new-instance v2, Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mMainThreadHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v5}, Lcom/sonymobile/home/desktop/DesktopModel;->getPreferences()Lcom/sonymobile/home/desktop/DesktopPreferences;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v5}, Lcom/sonymobile/home/desktop/DesktopModel;->getPageViewName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v5, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p6

    move-object/from16 v9, p9

    move-object/from16 v10, p12

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    invoke-direct/range {v2 .. v16}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;-><init>(Landroid/content/Context;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;Lcom/sonymobile/home/shortcut/ShortcutManager;Landroid/os/Handler;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/desktop/DesktopPreferences;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mCuiPresenter:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    .line 1601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mCuiPresenter:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    new-instance v3, Lcom/sonymobile/home/desktop/DesktopPresenter$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter$5;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter;)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addListener(Lcom/sonymobile/home/desktop/cui/CuiPresenterListener;)V

    .line 1619
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/desktop/DesktopPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    .line 1620
    new-instance v2, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/flix/components/Scene;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDropTarget:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    .line 1622
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->updateConfiguration(Lcom/sonymobile/grid/Grid;)V

    .line 1623
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->createPageIndicatorView()V

    .line 1625
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setupAutoMoveManager()V

    .line 1627
    move-object/from16 v0, p11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/desktop/DesktopPresenter;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    .line 1630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mVibrator:Landroid/os/Vibrator;

    .line 1632
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setupProgressBar()V

    .line 1633
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAdapter:Lcom/sonymobile/home/desktop/DesktopAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/transfer/TransferHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonymobile/home/desktop/DesktopPresenter;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isLeftExpandBoundsPage(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sonymobile/home/desktop/DesktopPresenter;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isRightExpandBoundsPage(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/sonymobile/home/desktop/DesktopPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->removeExpandBoundsPagesIfNeeded()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDragItem:Lcom/sonymobile/home/ui/pageview/PageItemView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/ui/pageview/PageItemView;)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDragItem:Lcom/sonymobile/home/ui/pageview/PageItemView;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sonymobile/home/desktop/DesktopPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->appendPage()I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/sonymobile/home/desktop/DesktopPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->prependPage()I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sonymobile/home/desktop/DesktopPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isAutoPackEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/settings/UserSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/data/ItemCreator;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/data/Item;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;
    .param p2, "x2"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->addItemToDesktop(Lcom/sonymobile/home/data/Item;Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/itemorganizer/ItemMoveManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/grid/Grid;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mGrid:Lcom/sonymobile/grid/Grid;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/ui/pageview/PageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/ui/pageview/PageView;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->deletePage(Lcom/sonymobile/home/ui/pageview/PageView;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/ui/pageview/PageView;Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/ui/pageview/PageView;
    .param p2, "x2"    # Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->deletePage(Lcom/sonymobile/home/ui/pageview/PageView;Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/flix/components/Component;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;
    .param p1, "x1"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "x2"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->addResizeFrameToItemViewIfNeeded(Lcom/sonymobile/flix/components/Component;I)V

    return-void
.end method

.method static synthetic access$5100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mOpenFolderListener:Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/folder/FolderOpener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->handleUninstall(Lcom/sonymobile/home/data/Item;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->showCannotUninstallDialog(Lcom/sonymobile/home/data/Item;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/folder/FolderOpener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/folder/FolderOpener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/sonymobile/home/desktop/DesktopPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setupAutoMoveManager()V

    return-void
.end method

.method static synthetic access$5900(Lcom/sonymobile/home/desktop/DesktopPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mIsPortrait:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDropTarget:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/cui/CuiPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mCuiPresenter:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mOnResourceBatchLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;)Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mOnResourceBatchLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/sonymobile/home/desktop/DesktopPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mTrackUninstallCount:I

    return v0
.end method

.method static synthetic access$7000(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/FragmentHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDeletePageAnimationFinishedListener:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;)Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDeletePageAnimationFinishedListener:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;

    return-object p1
.end method

.method private addItemToDesktop(Lcom/sonymobile/home/data/Item;Z)V
    .locals 8
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "allowResize"    # Z

    .prologue
    .line 1855
    if-eqz p2, :cond_0

    .line 1856
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v2

    new-instance v4, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopResizeFrameHandler;

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v6

    const/4 v5, 0x0

    invoke-direct {v4, p0, v6, v7, v5}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopResizeFrameHandler;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter;JLcom/sonymobile/home/desktop/DesktopPresenter$1;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonymobile/home/desktop/DesktopView;->setPageItemViewListener(JLcom/sonymobile/home/desktop/DesktopView$DesktopItemViewChangeListener;)V

    .line 1860
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->addItemToDesktop(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    .line 1861
    .local v0, "added":Z
    if-nez v0, :cond_1

    .line 1862
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopView;->removePageItemViewListener()V

    .line 1864
    :cond_1
    return-void
.end method

.method private addResizeFrameToItemViewIfNeeded(Lcom/sonymobile/flix/components/Component;I)V
    .locals 2
    .param p1, "itemView"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "page"    # I

    .prologue
    .line 2460
    instance-of v1, p1, Lcom/sonymobile/home/ui/pageview/PageItemView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 2461
    check-cast v0, Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 2462
    .local v0, "pageItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->isResizable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2463
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v1, v0, p2}, Lcom/sonymobile/home/desktop/DesktopView;->showResizableFrame(Lcom/sonymobile/home/ui/pageview/PageItemView;I)V

    .line 2466
    .end local v0    # "pageItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_0
    return-void
.end method

.method private appendPage()I
    .locals 1

    .prologue
    .line 2860
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->appendPage()I

    move-result v0

    return v0
.end method

.method private backCustomizeMode()V
    .locals 1

    .prologue
    .line 2782
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mCuiPresenter:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->onBackButtonPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2783
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mCuiExitState:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V

    .line 2785
    :cond_0
    return-void
.end method

.method private calculateWallpaperOffset(FFF)F
    .locals 3
    .param p1, "currentPos"    # F
    .param p2, "minPos"    # F
    .param p3, "maxPos"    # F

    .prologue
    .line 2277
    sub-float v1, p1, p2

    sub-float v2, p3, p2

    div-float v0, v1, v2

    .line 2278
    .local v0, "offset":F
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/sonymobile/flix/util/Utils;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method public static createDesktopGrid(Lcom/sonymobile/home/resources/ResourceManager;)Lcom/sonymobile/grid/Grid;
    .locals 5
    .param p0, "rm"    # Lcom/sonymobile/home/resources/ResourceManager;

    .prologue
    .line 2938
    const v4, 0x7f0d0010

    invoke-virtual {p0, v4}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v2

    .line 2939
    .local v2, "cols":I
    const v4, 0x7f0d0011

    invoke-virtual {p0, v4}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v3

    .line 2940
    .local v3, "rows":I
    const v4, 0x7f0b0018

    invoke-virtual {p0, v4}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    .line 2941
    .local v1, "cellWidth":I
    const v4, 0x7f0b0017

    invoke-virtual {p0, v4}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v0

    .line 2942
    .local v0, "cellHeight":I
    new-instance v4, Lcom/sonymobile/grid/Grid;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/sonymobile/grid/Grid;-><init>(IIII)V

    return-object v4
.end method

.method private createPageIndicatorView()V
    .locals 4

    .prologue
    .line 2885
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    const v2, 0x7f020080

    const v3, 0x7f020082

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;-><init>(Lcom/sonymobile/flix/components/Scene;II)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    .line 2887
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    const-string v1, "DesktopPageIndicatorView"

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->setName(Ljava/lang/String;)V

    .line 2888
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->updatePageIndicatorView()V

    .line 2889
    return-void
.end method

.method private deletePage(Lcom/sonymobile/home/ui/pageview/PageView;)V
    .locals 2
    .param p1, "pageView"    # Lcom/sonymobile/home/ui/pageview/PageView;

    .prologue
    .line 2443
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageView;->getPageIndex()I

    move-result v0

    .line 2444
    .local v0, "pageIndex":I
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/desktop/DesktopModel;->deletePage(I)V

    .line 2445
    return-void
.end method

.method private deletePage(Lcom/sonymobile/home/ui/pageview/PageView;Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;)V
    .locals 0
    .param p1, "pageView"    # Lcom/sonymobile/home/ui/pageview/PageView;
    .param p2, "listener"    # Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;

    .prologue
    .line 2449
    iput-object p2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDeletePageAnimationFinishedListener:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;

    .line 2450
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->deletePage(Lcom/sonymobile/home/ui/pageview/PageView;)V

    .line 2451
    return-void
.end method

.method private static doIncrementTrackSessionAppStartCount()I
    .locals 1

    .prologue
    .line 1943
    sget v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->sSessionAppStartCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->sSessionAppStartCount:I

    .line 1944
    sget v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->sSessionAppStartCount:I

    return v0
.end method

.method private enableWidgetAutoAdvance(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2654
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v0

    .line 2656
    .local v0, "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    if-eqz v0, :cond_0

    .line 2657
    invoke-virtual {v0, p1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->enableAutoAdvance(Z)V

    .line 2659
    :cond_0
    return-void
.end method

.method private getIndicatorHomepagePosition()I
    .locals 5

    .prologue
    .line 2733
    const/high16 v3, -0x80000000

    .line 2735
    .local v3, "position":I
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAdapter:Lcom/sonymobile/home/desktop/DesktopAdapter;

    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/DesktopAdapter;->getPages()[I

    move-result-object v2

    .line 2736
    .local v2, "pages":[I
    if-eqz v2, :cond_0

    .line 2737
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAdapter:Lcom/sonymobile/home/desktop/DesktopAdapter;

    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/DesktopAdapter;->getHomePage()I

    move-result v0

    .line 2738
    .local v0, "homepageIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 2739
    aget v4, v2, v1

    if-ne v4, v0, :cond_1

    .line 2740
    move v3, v1

    .line 2746
    .end local v0    # "homepageIndex":I
    .end local v1    # "i":I
    :cond_0
    return v3

    .line 2738
    .restart local v0    # "homepageIndex":I
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/sonymobile/home/desktop/DesktopPresenter;
    .locals 1

    .prologue
    .line 1736
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter;->sInstance:Lcom/sonymobile/home/desktop/DesktopPresenter;

    return-object v0
.end method

.method private getZoomLevelFromState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;Z)Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;
    .locals 2
    .param p1, "state"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;
    .param p2, "isLandscape"    # Z

    .prologue
    .line 2110
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$15;->$SwitchMap$com$sonymobile$home$desktop$DesktopPresenter$DesktopState:[I

    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2126
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->NONE:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    :goto_0
    return-object v0

    .line 2112
    :pswitch_0
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->LOW:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    goto :goto_0

    .line 2115
    :pswitch_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-static {v0}, Lcom/sonymobile/home/util/LayoutUtils;->usePortraitLayoutInLandscapeOrientation(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2116
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->HIGH:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    goto :goto_0

    .line 2118
    :cond_0
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->LOW:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    goto :goto_0

    .line 2122
    :pswitch_2
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->HIGH:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    goto :goto_0

    .line 2110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleExpandBoundsPageClicked(I)V
    .locals 1
    .param p1, "clickedPage"    # I

    .prologue
    .line 2845
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->disableTouch()V

    .line 2846
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isLeftExpandBoundsPage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2847
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->prependPage()I

    .line 2851
    :cond_0
    :goto_0
    return-void

    .line 2848
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isRightExpandBoundsPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2849
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->appendPage()I

    goto :goto_0
.end method

.method private handlePageIndicatorViewUpdate(FF)V
    .locals 3
    .param p1, "position"    # F
    .param p2, "min"    # F

    .prologue
    .line 2928
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->isExpandBoundsPagesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2931
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    sub-float v1, p1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->setIndicatorPosition(F)V

    .line 2935
    :goto_0
    return-void

    .line 2933
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    sub-float v1, p1, p2

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->setIndicatorPosition(F)V

    goto :goto_0
.end method

.method private isActionOngoing()Z
    .locals 1

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    invoke-interface {v0}, Lcom/sonymobile/home/FragmentHandler;->hasOpenDialog()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    invoke-interface {v0}, Lcom/sonymobile/home/IntentHandler;->isRequestPending()Z

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

.method private isAutoPackEnabled()Z
    .locals 1

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->getPreferences()Lcom/sonymobile/home/desktop/DesktopPreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/home/desktop/DesktopPreferences;->allowAutoPackingOfItems()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v0}, Lcom/sonymobile/home/settings/UserSettings;->isAutoPackItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExpandBoundsPage(I)Z
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 2804
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isLeftExpandBoundsPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isRightExpandBoundsPage(I)Z

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

.method private isInCuiState()Z
    .locals 1

    .prologue
    .line 2175
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInCuiSubMenuState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInCuiMainMenuState()Z

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

.method private isLeftExpandBoundsPage(I)Z
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 2814
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->getLeftPageId()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLocationInsideGrid(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/grid/Grid;)Z
    .locals 4
    .param p0, "location"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    .line 2559
    invoke-virtual {p1}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->colSpan:I

    sub-int v0, v2, v3

    .line 2560
    .local v0, "MAX_CELL_X":I
    invoke-virtual {p1}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    sub-int v1, v2, v3

    .line 2561
    .local v1, "MAX_CELL_Y":I
    iget-object v2, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->col:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->col:I

    if-gt v2, v0, :cond_0

    iget-object v2, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->row:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->row:I

    if-gt v2, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isPageClosestToLeftBound(I)Z
    .locals 4
    .param p1, "page"    # I

    .prologue
    .line 2834
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopModel;->getLeftPageId()I

    move-result v0

    .line 2835
    .local v0, "leftPage":I
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopModel;->getRightPageId()I

    move-result v1

    .line 2836
    .local v1, "rightPage":I
    sub-int v2, p1, v0

    sub-int v3, v1, p1

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRightExpandBoundsPage(I)Z
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 2824
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->getRightPageId()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDesktopStateChanged(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V
    .locals 3
    .param p1, "oldState"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;
    .param p2, "newState"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    .prologue
    .line 2203
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopPresenterListener;

    .line 2204
    .local v1, "listener":Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopPresenterListener;
    invoke-interface {v1, p1, p2}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopPresenterListener;->onStateChanged(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V

    goto :goto_0

    .line 2206
    .end local v1    # "listener":Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopPresenterListener;
    :cond_0
    return-void
.end method

.method private prependPage()I
    .locals 1

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->prependPage()I

    move-result v0

    return v0
.end method

.method private removeExpandBoundsPagesIfNeeded()V
    .locals 2

    .prologue
    .line 2791
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->getPageCount()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->getMaxNumberOfPages()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2792
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->removeExpandBoundsPages()V

    .line 2794
    :cond_0
    return-void
.end method

.method private removeTipItem(I)V
    .locals 2
    .param p1, "tipId"    # I

    .prologue
    .line 1879
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mTipManager:Lcom/sonymobile/home/tip/TipManager;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/tip/TipManager;->getTipItem(I)Lcom/sonymobile/home/data/TipItem;

    move-result-object v0

    .line 1880
    .local v0, "tipItem":Lcom/sonymobile/home/data/TipItem;
    if-eqz v0, :cond_0

    .line 1881
    invoke-direct {p0, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->removeTipItem(Lcom/sonymobile/home/data/TipItem;)V

    .line 1883
    :cond_0
    return-void
.end method

.method private removeTipItem(Lcom/sonymobile/home/data/TipItem;)V
    .locals 1
    .param p1, "tipItem"    # Lcom/sonymobile/home/data/TipItem;

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->removeItemAndUpdate(Lcom/sonymobile/home/data/Item;)V

    .line 1892
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mTipManager:Lcom/sonymobile/home/tip/TipManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/tip/TipManager;->unregisterTipItem(Lcom/sonymobile/home/data/TipItem;)V

    .line 1893
    return-void
.end method

.method private resizeItemViewIfNeeded(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/desktop/ResizableFrame;)V
    .locals 8
    .param p1, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "resizableFrame"    # Lcom/sonymobile/home/desktop/ResizableFrame;

    .prologue
    .line 2531
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v0

    .line 2532
    .local v0, "currentPage":I
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v4, v0}, Lcom/sonymobile/home/desktop/DesktopModel;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2533
    .local v3, "itemsOnPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v2

    .line 2534
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2536
    new-instance v1, Lcom/sonymobile/home/data/ItemLocation;

    const/4 v4, -0x1

    invoke-direct {v1, v0, v4}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    .line 2537
    .local v1, "frameLocation":Lcom/sonymobile/home/data/ItemLocation;
    iget-object v4, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    invoke-virtual {p2}, Lcom/sonymobile/home/desktop/ResizableFrame;->getCellBounds()Lcom/sonymobile/grid/GridRect;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/grid/GridRect;->set(Lcom/sonymobile/grid/GridRect;)V

    .line 2539
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-static {v1, v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isLocationInsideGrid(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/grid/Grid;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1, v3}, Lcom/sonymobile/home/model/Model;->isVacant(Lcom/sonymobile/home/data/ItemLocation;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2540
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/desktop/DesktopView;->enableItemAnimations(Z)V

    .line 2542
    invoke-virtual {p2}, Lcom/sonymobile/home/desktop/ResizableFrame;->updateAllowedCellBounds()V

    .line 2543
    iget-object v4, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v4, v4, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iget-object v5, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v5, v5, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    invoke-virtual {p1, v4, v5}, Lcom/sonymobile/home/ui/pageview/PageItemView;->onResizeLayout(II)V

    .line 2544
    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v4

    iget-object v4, v4, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget-object v5, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    invoke-virtual {v4, v5}, Lcom/sonymobile/grid/GridRect;->set(Lcom/sonymobile/grid/GridRect;)V

    .line 2545
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAdapter:Lcom/sonymobile/home/desktop/DesktopAdapter;

    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/sonymobile/home/desktop/DesktopAdapter;->notifyPageItemChanged(J)V

    .line 2547
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/desktop/DesktopView;->enableItemAnimations(Z)V

    .line 2549
    :cond_0
    return-void
.end method

.method private sendWallpaperCommand(Ljava/lang/String;II)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v6, 0x0

    .line 2874
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v1, v6

    .line 2876
    .local v1, "windowToken":Landroid/os/IBinder;
    :goto_0
    if-eqz v1, :cond_0

    .line 2877
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mWallpaperWorker:Lcom/sonymobile/home/desktop/WallpaperWorker;

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/home/desktop/WallpaperWorker;->sendCommandAsync(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 2879
    :cond_0
    return-void

    .line 2874
    .end local v1    # "windowToken":Landroid/os/IBinder;
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0
.end method

.method private setupAutoMoveManager()V
    .locals 4

    .prologue
    .line 1641
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    if-eqz v1, :cond_0

    .line 1642
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    invoke-virtual {v1}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->onDestroy()V

    .line 1644
    :cond_0
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mGrid:Lcom/sonymobile/grid/Grid;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;-><init>(Landroid/content/Context;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/desktop/DesktopModel;)V

    .line 1646
    .local v0, "freePlacementMoveManager":Lcom/sonymobile/home/itemorganizer/ItemMoveManager;
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isAutoPackEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1647
    new-instance v1, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-direct {v1, v2, v3, v0}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;-><init>(Landroid/content/Context;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/itemorganizer/ItemMoveManager;)V

    iput-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    .line 1652
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoMoveEventListener:Lcom/sonymobile/home/itemorganizer/ItemMoveManager$AutoMoveEventListener;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->registerListener(Lcom/sonymobile/home/itemorganizer/ItemMoveManager$AutoMoveEventListener;)V

    .line 1653
    return-void

    .line 1650
    :cond_1
    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    goto :goto_0
.end method

.method private setupProgressBar()V
    .locals 2

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mShowLoadingProgress:Z

    .line 1658
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mShowLoadingProgress:Z

    if-eqz v0, :cond_0

    .line 1659
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopPresenter$6;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$6;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter;)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mOnResourceBatchLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    .line 1684
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mOnResourceBatchLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopModel;->addOnResourceBatchLoadedListener(Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;)V

    .line 1686
    :cond_0
    return-void
.end method

.method private static shouldShowPageIndicator(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)Z
    .locals 1
    .param p0, "state"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    .prologue
    .line 2924
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->NORMAL:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->EDIT:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showErrorRunningWidgetToast(Ljava/util/UUID;)V
    .locals 9
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    const/4 v8, 0x1

    .line 3050
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;

    const v4, 0x7f08009c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3051
    .local v2, "labelUnknownWidget":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAdvWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    move-result-object v0

    .line 3053
    .local v0, "homeAdvWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    if-eqz v0, :cond_1

    .line 3054
    invoke-virtual {v0, p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->getLabel(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    .line 3055
    .local v1, "label":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3056
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f08009b

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 3065
    .end local v1    # "label":Ljava/lang/String;
    :goto_0
    return-void

    .line 3060
    .restart local v1    # "label":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3063
    .end local v1    # "label":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private updateGrid(Lcom/sonymobile/grid/Grid;)V
    .locals 0
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    .line 2720
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mGrid:Lcom/sonymobile/grid/Grid;

    .line 2721
    return-void
.end method

.method private updateOrientation()V
    .locals 2

    .prologue
    .line 2724
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mIsPortrait:Z

    .line 2725
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mCuiPresenter:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    iget-boolean v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mIsPortrait:Z

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->updateOrientation(Z)V

    .line 2726
    return-void

    .line 2724
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePageIndicatorView()V
    .locals 2

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoHidePageIndicator:Z

    .line 2897
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mState:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->shouldShowPageIndicator(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2898
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    iget-boolean v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoHidePageIndicator:Z

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->setAutoHide(Z)V

    .line 2900
    :cond_0
    return-void
.end method

.method private updatePageIndicatorVisibility(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 2908
    if-eqz p1, :cond_0

    .line 2909
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    iget-boolean v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoHidePageIndicator:Z

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->setAutoHide(Z)V

    .line 2910
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->showPageIndicator()V

    .line 2915
    :goto_0
    return-void

    .line 2912
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->setAutoHide(Z)V

    .line 2913
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->hidePageIndicator()V

    goto :goto_0
.end method


# virtual methods
.method public addCuiListener(Lcom/sonymobile/home/desktop/cui/CuiPresenterListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/desktop/cui/CuiPresenterListener;

    .prologue
    .line 2729
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mCuiPresenter:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addListener(Lcom/sonymobile/home/desktop/cui/CuiPresenterListener;)V

    .line 2730
    return-void
.end method

.method public addDesktopPresenterListener(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopPresenterListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopPresenterListener;

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1695
    return-void
.end method

.method public addItemToDesktop(Lcom/sonymobile/home/data/Item;II)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .prologue
    .line 1749
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->addItemToDesktop(Lcom/sonymobile/home/data/Item;IIZ)Z

    move-result v0

    return v0
.end method

.method public addItemToDesktop(Lcom/sonymobile/home/data/Item;IIZ)Z
    .locals 10
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I
    .param p4, "allowResize"    # Z

    .prologue
    const/4 v9, 0x0

    .line 1763
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1764
    :cond_0
    const-string v0, "DesktopPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with spanX "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spanY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to the desktop failed due to model loaded is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopModel;->isLoaded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 1845
    :cond_1
    :goto_0
    return v8

    .line 1771
    :cond_2
    const/4 v8, 0x1

    .line 1772
    .local v8, "result":Z
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v3

    .line 1773
    .local v3, "startPage":I
    invoke-direct {p0, v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isLeftExpandBoundsPage(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1774
    add-int/lit8 v3, v3, 0x1

    .line 1779
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->getPages()[I

    move-result-object v4

    .line 1781
    .local v4, "pageArray":[I
    const/4 v7, 0x0

    .line 1783
    .local v7, "location":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v4, :cond_4

    .line 1784
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->getItems()Ljava/util/List;

    move-result-object v2

    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mGrid:Lcom/sonymobile/grid/Grid;

    move v0, p2

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/desktop/search/SearchUtil;->getFirstVacantLocation(IILjava/util/List;I[ILcom/sonymobile/grid/Grid;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v7

    .line 1787
    :cond_4
    if-nez v7, :cond_5

    if-eqz v4, :cond_5

    .line 1790
    invoke-direct {p0, v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isPageClosestToLeftBound(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1791
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->prependPage()I

    move-result v3

    .line 1796
    :goto_2
    const v0, 0x7fffffff

    if-eq v3, v0, :cond_5

    .line 1797
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->getPages()[I

    move-result-object v4

    .line 1798
    if-eqz v4, :cond_5

    .line 1799
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->getItems()Ljava/util/List;

    move-result-object v2

    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mGrid:Lcom/sonymobile/grid/Grid;

    move v0, p2

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/desktop/search/SearchUtil;->getFirstVacantLocation(IILjava/util/List;I[ILcom/sonymobile/grid/Grid;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v7

    .line 1805
    :cond_5
    if-eqz v7, :cond_9

    .line 1806
    invoke-virtual {p1, v7}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 1807
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->getPageViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 1810
    iget v0, v7, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 1813
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->disableTouch()V

    .line 1814
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    iget v1, v7, Lcom/sonymobile/home/data/ItemLocation;->page:I

    new-instance v2, Lcom/sonymobile/home/desktop/DesktopPresenter$7;

    invoke-direct {v2, p0, p1, p4}, Lcom/sonymobile/home/desktop/DesktopPresenter$7;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/data/Item;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/desktop/DesktopView;->setCurrentPage(ILcom/sonymobile/flix/util/Animation$Listener;)V

    goto :goto_0

    .line 1775
    .end local v4    # "pageArray":[I
    .end local v7    # "location":Lcom/sonymobile/home/data/ItemLocation;
    :cond_6
    invoke-direct {p0, v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isRightExpandBoundsPage(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1776
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1793
    .restart local v4    # "pageArray":[I
    .restart local v7    # "location":Lcom/sonymobile/home/data/ItemLocation;
    :cond_7
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->appendPage()I

    move-result v3

    goto :goto_2

    .line 1830
    :cond_8
    invoke-direct {p0, p1, p4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->addItemToDesktop(Lcom/sonymobile/home/data/Item;Z)V

    .line 1831
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->removeExpandBoundsPagesIfNeeded()V

    .line 1833
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v6

    .line 1834
    .local v6, "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    invoke-virtual {v6}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1836
    const/16 v0, 0x4000

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f080052

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->sendEvent(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1841
    .end local v6    # "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    :cond_9
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f080099

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1842
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public backButtonPressed()Z
    .locals 1

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->hideResizableFrame()V

    .line 2663
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->removePageItemViewListener()V

    .line 2665
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInNormalState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2666
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/FolderOpener;->hasFolderOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2667
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/FolderOpener;->onBackButtonPressed()Z

    .line 2675
    :goto_0
    const/4 v0, 0x1

    .line 2678
    :goto_1
    return v0

    .line 2669
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isCuiMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2670
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->backCustomizeMode()V

    goto :goto_0

    .line 2672
    :cond_1
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->NORMAL:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V

    goto :goto_0

    .line 2678
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/FolderOpener;->onBackButtonPressed()Z

    move-result v0

    goto :goto_1
.end method

.method public cancelDelayedStatusbarChanges()V
    .locals 2

    .prologue
    .line 2999
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mShowStatusbarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3000
    return-void
.end method

.method public deleteEmptyPagesAddedOnPageSwitchIfNeeded()V
    .locals 1

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDropTarget:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->deleteEmptyPagesAddedOnPageSwitchIfNeeded()V
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->access$6800(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;)V

    .line 1871
    return-void
.end method

.method public enterTransferMode()V
    .locals 4

    .prologue
    .line 2750
    iget-boolean v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mInTransferMode:Z

    if-nez v2, :cond_1

    .line 2751
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mInTransferMode:Z

    .line 2752
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInNormalState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2754
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDeleteDropZoneScreenWrapper:Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;

    invoke-interface {v2}, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2755
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sonymobile/home/FragmentHandler;->showStatusBar(Z)V

    .line 2758
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopPresenterListener;

    .line 2759
    .local v1, "listener":Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopPresenterListener;
    invoke-interface {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopPresenterListener;->onTransferModeEnter()V

    goto :goto_0

    .line 2763
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopPresenterListener;
    :cond_1
    return-void
.end method

.method public exitTransferMode()V
    .locals 3

    .prologue
    .line 2766
    iget-boolean v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mInTransferMode:Z

    if-eqz v2, :cond_0

    .line 2767
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mInTransferMode:Z

    .line 2768
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInNormalState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2769
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopPresenterListener;

    .line 2770
    .local v1, "listener":Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopPresenterListener;
    invoke-interface {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopPresenterListener;->onTransferModeExit()V

    goto :goto_0

    .line 2774
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopPresenterListener;
    :cond_0
    return-void
.end method

.method public getAllAdvWidgetItemsInPackageCausingException(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 12
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3127
    .local v1, "advWidgetItemsInPackage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    .line 3131
    .local v10, "stackTraceElements":[Ljava/lang/StackTraceElement;
    iget-object v11, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v11}, Lcom/sonymobile/home/desktop/DesktopModel;->getItems()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/home/data/Item;

    .line 3132
    .local v6, "item":Lcom/sonymobile/home/data/Item;
    instance-of v11, v6, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-eqz v11, :cond_0

    move-object v0, v6

    .line 3133
    check-cast v0, Lcom/sonymobile/home/data/AdvWidgetItem;

    .line 3134
    .local v0, "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    invoke-virtual {v6}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 3136
    .local v8, "packageName":Ljava/lang/String;
    move-object v2, v10

    .local v2, "arr$":[Ljava/lang/StackTraceElement;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v9, v2, v5

    .line 3137
    .local v9, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 3138
    .local v3, "className":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3139
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3136
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3148
    .end local v0    # "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    .end local v2    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v3    # "className":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "item":Lcom/sonymobile/home/data/Item;
    .end local v7    # "len$":I
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_2
    return-object v1
.end method

.method protected getPageViewGroupToOpenFolderOn(Lcom/sonymobile/home/data/FolderItem;)Lcom/sonymobile/home/ui/pageview/PageViewGroup;
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    .line 3201
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mSearchHandler:Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;->getPageViewGroupToOpenFolderOn(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getZTransferCoordinate()F
    .locals 1

    .prologue
    .line 3172
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->getScrollableContent()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getWorldZ()F

    move-result v0

    return v0
.end method

.method protected handleItemViewClickInEditMode(Lcom/sonymobile/home/ui/pageview/PageItemView;)Z
    .locals 2
    .param p1, "clickedView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 1922
    invoke-super {p0, p1}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->handleItemViewClickInEditMode(Lcom/sonymobile/home/ui/pageview/PageItemView;)Z

    move-result v0

    .line 1923
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 1924
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->supportResizing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1925
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    iget v1, v1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    invoke-direct {p0, p1, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->addResizeFrameToItemViewIfNeeded(Lcom/sonymobile/flix/components/Component;I)V

    .line 1926
    const/4 v0, 0x1

    .line 1929
    :cond_0
    return v0
.end method

.method public hideCuiMenu()Z
    .locals 1

    .prologue
    .line 2430
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mCuiPresenter:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->hide()V

    .line 2431
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInCuiSubMenuState()Z

    move-result v0

    return v0
.end method

.method public homeButtonPressed()V
    .locals 3

    .prologue
    .line 2682
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopView;->hideResizableFrame()V

    .line 2683
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopView;->removePageItemViewListener()V

    .line 2684
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    invoke-virtual {v1}, Lcom/sonymobile/home/folder/FolderOpener;->hasFolderOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2685
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/folder/FolderOpener;->close(Z)V

    .line 2688
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInNormalState()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2689
    sget-object v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->NORMAL:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V

    .line 2708
    :cond_1
    :goto_0
    return-void

    .line 2691
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->getHomePageId()I

    move-result v0

    .line 2692
    .local v0, "homePage":I
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 2693
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    new-instance v2, Lcom/sonymobile/home/desktop/DesktopPresenter$9;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$9;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter;)V

    invoke-virtual {v1, v0, v2}, Lcom/sonymobile/home/desktop/DesktopView;->setCurrentPage(ILcom/sonymobile/flix/util/Animation$Listener;)V

    goto :goto_0
.end method

.method protected incrementTrackSessionAppStartCount()I
    .locals 1

    .prologue
    .line 1934
    invoke-static {}, Lcom/sonymobile/home/desktop/DesktopPresenter;->doIncrementTrackSessionAppStartCount()I

    move-result v0

    return v0
.end method

.method public isCuiMenuOpen()Z
    .locals 1

    .prologue
    .line 2184
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInCuiMainMenuState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInCuiSubMenuState()Z

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

.method public isInCuiMainMenuState()Z
    .locals 2

    .prologue
    .line 2146
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mState:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->CUI_MAIN_MENU:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInCuiSubMenuState()Z
    .locals 2

    .prologue
    .line 2156
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mState:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->CUI_SUB_MENU:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInEditMode()Z
    .locals 2

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mState:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->EDIT:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInNormalState()Z
    .locals 2

    .prologue
    .line 2189
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mState:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->NORMAL:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpaceAvailable(II)Z
    .locals 2
    .param p1, "colSpan"    # I
    .param p2, "rowSpan"    # I

    .prologue
    .line 2586
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v0, v1, p1, p2}, Lcom/sonymobile/home/desktop/DesktopModel;->isSpaceAvailable(Lcom/sonymobile/grid/Grid;II)Z

    move-result v0

    return v0
.end method

.method protected locateSearchItem(Lcom/sonymobile/home/data/Item;Landroid/content/Intent;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3193
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mSearchHandler:Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;->locateSearchItem(Lcom/sonymobile/home/data/Item;Landroid/content/Intent;)V

    .line 3194
    return-void
.end method

.method public onCaughtException(Ljava/lang/Exception;Ljava/util/UUID;)V
    .locals 7
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 3023
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0, p2}, Lcom/sonymobile/home/desktop/DesktopModel;->findAdvWidgetItemWithUuid(Ljava/util/UUID;)Lcom/sonymobile/home/data/AdvWidgetItem;

    move-result-object v6

    .line 3024
    .local v6, "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    if-eqz v6, :cond_0

    .line 3027
    invoke-direct {p0, p2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->showErrorRunningWidgetToast(Ljava/util/UUID;)V

    .line 3030
    const-string v0, "AdvWidget"

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/sonymobile/home/data/AdvWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/sonymobile/home/data/AdvWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Caught exception due to "

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->logTrackAndPushExceptionToGA(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3034
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    new-instance v1, Lcom/sonymobile/home/desktop/DesktopPresenter$11;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$11;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter;)V

    invoke-virtual {v0, v6, v1}, Lcom/sonymobile/home/desktop/DesktopModel;->deleteItem(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)V

    .line 3047
    :cond_0
    return-void
.end method

.method public onClick(FF)V
    .locals 3
    .param p1, "rawX"    # F
    .param p2, "rawY"    # F

    .prologue
    .line 2322
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$15;->$SwitchMap$com$sonymobile$home$desktop$DesktopPresenter$DesktopState:[I

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mState:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2329
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->NORMAL:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V

    .line 2332
    :goto_0
    return-void

    .line 2325
    :pswitch_0
    const-string v0, "android.wallpaper.tap"

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->sendWallpaperCommand(Ljava/lang/String;II)V

    goto :goto_0

    .line 2322
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onClicked(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 4
    .param p1, "clickedView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 1897
    instance-of v3, p1, Lcom/sonymobile/home/presenter/view/TipItemView;

    if-eqz v3, :cond_1

    .line 1898
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v2

    .line 1899
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    instance-of v3, v2, Lcom/sonymobile/home/data/TipItem;

    if-eqz v3, :cond_0

    .line 1900
    check-cast v2, Lcom/sonymobile/home/data/TipItem;

    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    invoke-direct {p0, v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->removeTipItem(Lcom/sonymobile/home/data/TipItem;)V

    .line 1918
    :cond_0
    :goto_0
    return-void

    .line 1905
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 1906
    .local v0, "clickedItem":Lcom/sonymobile/home/data/Item;
    if-eqz v0, :cond_0

    .line 1910
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInNormalState()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1911
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->handleItemViewClickInNormalMode(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;)Z

    goto :goto_0

    .line 1913
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->handleItemViewClickInEditMode(Lcom/sonymobile/home/ui/pageview/PageItemView;)Z

    move-result v1

    .line 1914
    .local v1, "handled":Z
    if-nez v1, :cond_0

    .line 1915
    sget-object v3, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->NORMAL:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-virtual {p0, v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V

    goto :goto_0
.end method

.method public onDeletePageClicked(Lcom/sonymobile/home/ui/pageview/PageView;)V
    .locals 3
    .param p1, "pageView"    # Lcom/sonymobile/home/ui/pageview/PageView;

    .prologue
    .line 2379
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageView;->getPageIndex()I

    move-result v0

    .line 2380
    .local v0, "pageIndex":I
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 2381
    sget-object v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->NORMAL:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V

    .line 2393
    :cond_0
    :goto_0
    return-void

    .line 2384
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->getPageCount()I

    move-result v1

    invoke-static {}, Lcom/sonymobile/home/desktop/DesktopModel;->getMinimumNumberOfPages()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 2385
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/desktop/DesktopModel;->isPageEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2386
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->deletePage(Lcom/sonymobile/home/ui/pageview/PageView;)V

    goto :goto_0

    .line 2388
    :cond_2
    sget-object v1, Lcom/sonymobile/home/DialogFactory$Action;->DELETE_PAGE:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v1}, Lcom/sonymobile/home/DialogFactory$Action;->getTag()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->DELETE_PAGE:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v2}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v2

    invoke-static {v2, v0}, Lcom/sonymobile/home/DeletePageDialogFragment;->newInstance(II)Lcom/sonymobile/home/DeletePageDialogFragment;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/home/DialogFactory;->showDialog(Ljava/lang/String;Landroid/app/DialogFragment;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 2629
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    const-string v1, "DropTarget.DropTarget"

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->removeProperty(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2630
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->onDestroy()V

    .line 2631
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->removePageItemViewListener()V

    .line 2632
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/desktop/DesktopModel;->removePageChangeListener(Lcom/sonymobile/home/desktop/DesktopModel$PageChangeListener;)V

    .line 2633
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mCuiPresenter:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->removeAllListener()V

    .line 2634
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mCuiPresenter:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->onDestroy()V

    .line 2635
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2636
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->onDestroy()V

    .line 2637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mVibrator:Landroid/os/Vibrator;

    .line 2638
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->removeAdvWidgetExceptionObserver(Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionObserver;)V

    .line 2640
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mOnResourceBatchLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    if-eqz v0, :cond_0

    .line 2641
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mOnResourceBatchLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopModel;->removeOnResourceBatchLoadedListener(Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;)V

    .line 2643
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/settings/UserSettings;->removeUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 2645
    invoke-super {p0}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->onDestroy()V

    .line 2646
    return-void
.end method

.method public onDownSwipe()V
    .locals 1

    .prologue
    .line 2344
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInNormalState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mIsOpen:Z

    if-eqz v0, :cond_0

    .line 2345
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->startSearchActivity()V

    .line 2346
    const-string v0, "SearchSwipeDesktop"

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->trackSearchStarted(Ljava/lang/String;)V

    .line 2348
    :cond_0
    return-void
.end method

.method public onExceptionUpdateState(Ljava/util/UUID;)V
    .locals 0
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 3069
    return-void
.end method

.method public onGridHeaderClicked()V
    .locals 0

    .prologue
    .line 3167
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->backButtonPressed()Z

    .line 3168
    return-void
.end method

.method public onInteractionEnd()V
    .locals 1

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mIsOpen:Z

    if-eqz v0, :cond_0

    .line 2294
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->onFocus()V

    .line 2295
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 2297
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->hidePageIndicatorIfAutoHidingIsEnabled()V

    .line 2298
    return-void
.end method

.method public onInteractionStart()V
    .locals 1

    .prologue
    .line 2285
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->onDefocus()V

    .line 2286
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->showPageIndicatorIfAutoHidingIsEnabled()V

    .line 2287
    return-void
.end method

.method public onItemClicked(Lcom/sonymobile/home/data/Item;II)V
    .locals 0
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .prologue
    .line 3157
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->addItemToDesktop(Lcom/sonymobile/home/data/Item;II)Z

    .line 3158
    return-void
.end method

.method public onItemClicked(Lcom/sonymobile/home/data/Item;IIZ)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I
    .param p4, "allowResize"    # Z

    .prologue
    .line 3162
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->addItemToDesktop(Lcom/sonymobile/home/data/Item;IIZ)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Lcom/sonymobile/home/ui/pageview/PageItemView;FF)V
    .locals 9
    .param p1, "pressedView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    invoke-interface {v0}, Lcom/sonymobile/home/transfer/TransferHandler;->isInTransfer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1996
    :cond_0
    :goto_0
    return-void

    .line 1953
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->isInteracting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1954
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->snapToClosestPage()V

    .line 1957
    :cond_2
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v0

    instance-of v0, v0, Lcom/sonymobile/home/data/TipItem;

    if-eqz v0, :cond_3

    .line 1958
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInNormalState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1959
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1960
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->NORMAL:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mCuiExitState:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    .line 1961
    sget-object v0, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_MAIN_MENU:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->openCuiMenu(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;)V

    goto :goto_0

    .line 1966
    :cond_3
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1967
    const/4 v6, 0x6

    .line 1971
    .local v6, "actions":I
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->cancelTouch(Lcom/sonymobile/flix/components/Component;)V

    .line 1978
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setVisible(Z)V

    .line 1979
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/home/desktop/DesktopModel;->removeItemWithId(J)Lcom/sonymobile/home/data/Item;

    .line 1982
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAdapter:Lcom/sonymobile/home/desktop/DesktopAdapter;

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopAdapter;->pickup(Lcom/sonymobile/home/data/Item;)V

    .line 1985
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDragItem:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 1988
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDragSource:Lcom/sonymobile/home/transfer/DragSource;

    const/4 v2, 0x6

    new-instance v3, Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;

    invoke-direct {v3, p1}, Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;-><init>(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/home/transfer/TransferHandler;->startTransfer(Lcom/sonymobile/home/transfer/DragSource;ILcom/sonymobile/home/transfer/Transferable;FF)V

    .line 1992
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopPresenterListener;

    .line 1993
    .local v8, "listener":Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopPresenterListener;
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopPresenterListener;->onLongPressItem(Lcom/sonymobile/home/data/Item;)V

    goto :goto_1
.end method

.method public onLongPress(FF)Z
    .locals 6
    .param p1, "rawX"    # F
    .param p2, "rawY"    # F

    .prologue
    .line 2302
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2304
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$15;->$SwitchMap$com$sonymobile$home$desktop$DesktopPresenter$DesktopState:[I

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mState:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2313
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->NORMAL:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V

    .line 2317
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2306
    :pswitch_0
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->NORMAL:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mCuiExitState:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    .line 2307
    sget-object v0, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_MAIN_MENU:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->openCuiMenu(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;)V

    .line 2308
    const-string v0, "CUI"

    const-string v1, "EnteredByLongPress"

    const-string v2, ""

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 2304
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuChanged(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;)V
    .locals 2
    .param p1, "gridType"    # Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    .prologue
    .line 3177
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$15;->$SwitchMap$com$sonymobile$home$cui$CuiGridHandler$CuiGridType:[I

    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3183
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->CUI_SUB_MENU:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V

    .line 3186
    :goto_0
    return-void

    .line 3179
    :pswitch_0
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->CUI_MAIN_MENU:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V

    goto :goto_0

    .line 3177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onNbrPagesChanged(IF)V
    .locals 4
    .param p1, "nbrOfPages"    # I
    .param p2, "position"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2470
    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mNumberOfPages:I

    if-eq p1, v2, :cond_0

    .line 2471
    iput p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mNumberOfPages:I

    .line 2473
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->getIndicatorHomepagePosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->setHomepageIndex(I)V

    .line 2474
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    invoke-virtual {v2, p1}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->setNbrPages(I)Z

    .line 2475
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    invoke-virtual {v2, p2}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->setIndicatorPosition(F)V

    .line 2477
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopView;->layoutDesktop()V

    .line 2479
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    move v0, v1

    .line 2480
    .local v0, "xStep":F
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mWallpaperWorker:Lcom/sonymobile/home/desktop/WallpaperWorker;

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/home/desktop/WallpaperWorker;->setOffsetStepsAsync(FF)V

    .line 2481
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->updateWallpaperOffsets()V

    .line 2483
    .end local v0    # "xStep":F
    :cond_0
    return-void

    .line 2479
    :cond_1
    add-int/lit8 v2, p1, -0x1

    int-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_0
.end method

.method public onPageAdded(I)V
    .locals 2
    .param p1, "pageId"    # I

    .prologue
    .line 3210
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->updateWallpaperOffsets()V

    .line 3211
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->isExpandBoundsPagesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3212
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->setContentChangeEnabled(Z)V

    .line 3213
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    new-instance v1, Lcom/sonymobile/home/desktop/DesktopPresenter$13;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter$13;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter;I)V

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/home/desktop/DesktopView;->runAddPageAnimation(ILcom/sonymobile/flix/util/Animation$Listener;)V

    .line 3241
    :goto_0
    return-void

    .line 3238
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->onContentChanged()V

    .line 3239
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/home/desktop/DesktopView;->setCurrentPage(ILcom/sonymobile/flix/util/Animation$Listener;)V

    goto :goto_0
.end method

.method public onPageDeleted(I)V
    .locals 4
    .param p1, "deletedPosition"    # I

    .prologue
    const/4 v0, 0x0

    .line 3245
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->updateWallpaperOffsets()V

    .line 3246
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/desktop/DesktopView;->setContentChangeEnabled(Z)V

    .line 3247
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    new-instance v2, Lcom/sonymobile/home/desktop/DesktopPresenter$14;

    invoke-direct {v2, p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter$14;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter;I)V

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInNormalState()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, p1, v2, v0}, Lcom/sonymobile/home/desktop/DesktopView;->runDeletePageAnimation(ILcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;Z)V

    .line 3259
    return-void
.end method

.method public onPageViewSelected(I)V
    .locals 1
    .param p1, "pageIndex"    # I

    .prologue
    .line 2352
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInCuiState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2353
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isExpandBoundsPage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2354
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->handleExpandBoundsPageClicked(I)V

    .line 2359
    :cond_0
    :goto_0
    return-void

    .line 2356
    :cond_1
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->NORMAL:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2590
    iput-boolean v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mIsOpen:Z

    .line 2591
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->onDefocus()V

    .line 2592
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->onPause()V

    .line 2593
    invoke-direct {p0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->enableWidgetAutoAdvance(Z)V

    .line 2594
    return-void
.end method

.method public onResizableFrameCellBoundsChanged(Lcom/sonymobile/home/desktop/ResizableFrame;Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/grid/GridRect;)V
    .locals 3
    .param p1, "resizableFrame"    # Lcom/sonymobile/home/desktop/ResizableFrame;
    .param p2, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p3, "frameCellBounds"    # Lcom/sonymobile/grid/GridRect;

    .prologue
    .line 2512
    new-instance v0, Lcom/sonymobile/home/data/ItemLocation;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    .line 2513
    .local v0, "frameLocation":Lcom/sonymobile/home/data/ItemLocation;
    iget-object v1, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    invoke-virtual {v1, p3}, Lcom/sonymobile/grid/GridRect;->set(Lcom/sonymobile/grid/GridRect;)V

    .line 2514
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->onResizeFrameResized(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 2516
    invoke-direct {p0, p2, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->resizeItemViewIfNeeded(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/desktop/ResizableFrame;)V

    .line 2517
    return-void
.end method

.method public onResizableFrameExited(Lcom/sonymobile/home/desktop/ResizableFrame;Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 1
    .param p1, "resizableFrame"    # Lcom/sonymobile/home/desktop/ResizableFrame;
    .param p2, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 2521
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 2522
    return-void
.end method

.method public onResizableFramePressed(Lcom/sonymobile/home/desktop/ResizableFrame;Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 4
    .param p1, "resizableFrame"    # Lcom/sonymobile/home/desktop/ResizableFrame;
    .param p2, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 2487
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v0

    .line 2488
    .local v0, "currentPage":I
    invoke-virtual {p2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    .line 2489
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    invoke-virtual {v2, v1, v0}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->onResizeFramePressed(Lcom/sonymobile/home/data/Item;I)V

    .line 2490
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mResizedItemOriginalCellBounds:Lcom/sonymobile/grid/GridRect;

    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget-object v3, v3, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    invoke-virtual {v2, v3}, Lcom/sonymobile/grid/GridRect;->set(Lcom/sonymobile/grid/GridRect;)V

    .line 2491
    return-void
.end method

.method public onResizableFrameReleased(Lcom/sonymobile/home/desktop/ResizableFrame;Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 4
    .param p1, "resizableFrame"    # Lcom/sonymobile/home/desktop/ResizableFrame;
    .param p2, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 2495
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    invoke-virtual {v3}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->hasMovedItems()Z

    move-result v0

    .line 2496
    .local v0, "hasMovedItems":Z
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    invoke-virtual {v3}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->reset()V

    .line 2498
    invoke-direct {p0, p2, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->resizeItemViewIfNeeded(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/desktop/ResizableFrame;)V

    .line 2499
    invoke-virtual {p2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget-object v2, v3, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 2500
    .local v2, "itemCellBounds":Lcom/sonymobile/grid/GridRect;
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mResizedItemOriginalCellBounds:Lcom/sonymobile/grid/GridRect;

    invoke-virtual {v2, v3}, Lcom/sonymobile/grid/GridRect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .line 2502
    .local v1, "hasResizedItem":Z
    :goto_0
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 2503
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopModel;->writeModelToStorage()V

    .line 2505
    :cond_1
    return-void

    .line 2500
    .end local v1    # "hasResizedItem":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2598
    invoke-super {p0}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->onResume()V

    .line 2599
    iput-boolean v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mIsOpen:Z

    .line 2600
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->onResume()V

    .line 2601
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->onFocus()V

    .line 2602
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mState:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-static {v0}, Lcom/sonymobile/home/statistics/TrackingUtil;->getDesktopScreen(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/home/statistics/TrackingUtil;->setScreen(Ljava/lang/String;)V

    .line 2603
    invoke-direct {p0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->enableWidgetAutoAdvance(Z)V

    .line 2608
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInNormalState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    invoke-interface {v0}, Lcom/sonymobile/home/transfer/TransferHandler;->isInTransfer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2609
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    invoke-interface {v0, v1}, Lcom/sonymobile/home/FragmentHandler;->showStatusBar(Z)V

    .line 2610
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->setItemViewsTouchable(Z)V

    .line 2612
    :cond_0
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 2402
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    const v1, 0x3f7d70a4    # 0.99f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 2403
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->snapToClosestPage()V

    .line 2404
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInNormalState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2405
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->NORMAL:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mCuiExitState:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    .line 2406
    sget-object v0, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_MAIN_MENU:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->openCuiMenu(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;)V

    .line 2409
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->cancelTouch()V

    .line 2410
    const-string v0, "CUI"

    const-string v1, "EnteredByPinch"

    const-string v2, ""

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2418
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 2412
    :cond_2
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    const v1, 0x3f814afd

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 2413
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->snapToClosestPage()V

    .line 2414
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->NORMAL:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V

    .line 2416
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->cancelTouch()V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 2397
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mIsOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    invoke-interface {v0}, Lcom/sonymobile/home/transfer/TransferHandler;->isInTransfer()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/FolderOpener;->hasFolderOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 2423
    return-void
.end method

.method public onScreenOff()V
    .locals 2

    .prologue
    .line 2713
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInCuiState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isActionOngoing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2714
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/FolderOpener;->close(Z)V

    .line 2715
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->NORMAL:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V

    .line 2717
    :cond_0
    return-void
.end method

.method public onScroll(FFF)V
    .locals 0
    .param p1, "position"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 2006
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->updateWallpaperOffsets()V

    .line 2009
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->handlePageIndicatorViewUpdate(FF)V

    .line 2010
    return-void
.end method

.method public onSecondaryClick(FF)V
    .locals 3
    .param p1, "rawX"    # F
    .param p2, "rawY"    # F

    .prologue
    .line 2336
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInNormalState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2338
    const-string v0, "android.wallpaper.secondaryTap"

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->sendWallpaperCommand(Ljava/lang/String;II)V

    .line 2340
    :cond_0
    return-void
.end method

.method public onSelectAsHomePageClicked(I)V
    .locals 6
    .param p1, "pageIndex"    # I

    .prologue
    .line 2363
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 2364
    sget-object v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->NORMAL:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V

    .line 2375
    :cond_0
    :goto_0
    return-void

    .line 2367
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->getHomePageId()I

    move-result v0

    .line 2368
    .local v0, "oldHomePage":I
    if-eq v0, p1, :cond_0

    .line 2369
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->setHomePageId(I)V

    .line 2370
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->getIndicatorHomepagePosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;->setHomepageIndex(I)V

    .line 2371
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/desktop/DesktopView;->setHomePageIndex(I)V

    .line 2372
    const-string v1, "CUI"

    const-string v2, "HomePageChanged"

    const-string v3, ""

    int-to-long v4, p1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 2619
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->onStart()V

    .line 2624
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->warmUpWidgets()V

    .line 2625
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 2615
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->onStop()V

    .line 2616
    return-void
.end method

.method public onUncaughtException(Ljava/lang/Exception;)V
    .locals 10
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 3073
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->getAllAdvWidgetItemsInPackageCausingException(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v7

    .line 3075
    .local v7, "advWidgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3076
    const/4 v3, 0x0

    .line 3077
    .local v3, "className":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3078
    .local v2, "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 3082
    .local v8, "id":Ljava/util/UUID;
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonymobile/home/data/Item;

    .line 3083
    .local v9, "item":Lcom/sonymobile/home/data/Item;
    instance-of v0, v9, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-eqz v0, :cond_0

    move-object v6, v9

    .line 3084
    check-cast v6, Lcom/sonymobile/home/data/AdvWidgetItem;

    .line 3085
    .local v6, "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    invoke-virtual {v6}, Lcom/sonymobile/home/data/AdvWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 3086
    invoke-virtual {v6}, Lcom/sonymobile/home/data/AdvWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3087
    invoke-virtual {v6}, Lcom/sonymobile/home/data/AdvWidgetItem;->getId()Ljava/util/UUID;

    move-result-object v8

    .line 3092
    .end local v6    # "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    :cond_0
    invoke-direct {p0, v8}, Lcom/sonymobile/home/desktop/DesktopPresenter;->showErrorRunningWidgetToast(Ljava/util/UUID;)V

    .line 3095
    const-string v0, "AdvWidget"

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;

    const-string v4, "UncaughtException due to "

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->logTrackAndPushExceptionToGA(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3100
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    new-instance v1, Lcom/sonymobile/home/desktop/DesktopPresenter$12;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$12;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter;)V

    invoke-virtual {v0, v7, v1}, Lcom/sonymobile/home/desktop/DesktopModel;->deleteItems(Ljava/util/List;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)V

    .line 3113
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "className":Ljava/lang/String;
    .end local v8    # "id":Ljava/util/UUID;
    .end local v9    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    return-void
.end method

.method public onUpdateWidgetIdsStarted()V
    .locals 2

    .prologue
    .line 2439
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->enableItemAnimations(Z)V

    .line 2440
    return-void
.end method

.method public openCuiMenu(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;)V
    .locals 1
    .param p1, "type"    # Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    .prologue
    .line 2136
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mCuiPresenter:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->enterCustomizationMode(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;)V

    .line 2137
    return-void
.end method

.method public refreshViewContent()V
    .locals 1

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAdapter:Lcom/sonymobile/home/desktop/DesktopAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopAdapter;->onModelChanged()V

    .line 1728
    return-void
.end method

.method public setAdapter(Lcom/sonymobile/home/desktop/DesktopAdapter;)V
    .locals 0
    .param p1, "desktopAdapter"    # Lcom/sonymobile/home/desktop/DesktopAdapter;

    .prologue
    .line 1703
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAdapter:Lcom/sonymobile/home/desktop/DesktopAdapter;

    .line 1704
    return-void
.end method

.method public setDeleteAreaScreenWrapper(Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;)V
    .locals 0
    .param p1, "deleteDropZoneScreenWrapper"    # Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;

    .prologue
    .line 2980
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDeleteDropZoneScreenWrapper:Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;

    .line 2981
    return-void
.end method

.method public setSearchHandler(Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;)V
    .locals 0
    .param p1, "searchHandler"    # Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;

    .prologue
    .line 3205
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mSearchHandler:Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;

    .line 3206
    return-void
.end method

.method public setStageView(Lcom/sonymobile/home/stage/StageView;)V
    .locals 1
    .param p1, "stageView"    # Lcom/sonymobile/home/stage/StageView;

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/desktop/DesktopView;->setStageView(Lcom/sonymobile/home/stage/StageView;)V

    .line 1721
    return-void
.end method

.method public setState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V
    .locals 7
    .param p1, "newState"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2018
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mState:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    .line 2020
    .local v1, "oldState":Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;
    if-ne p1, v1, :cond_0

    .line 2099
    :goto_0
    return-void

    .line 2025
    :cond_0
    sget-object v5, Lcom/sonymobile/home/desktop/DesktopPresenter$15;->$SwitchMap$com$sonymobile$home$desktop$DesktopPresenter$DesktopState:[I

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 2038
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-static {v5}, Lcom/sonymobile/home/util/LayoutUtils;->isLandscape(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/sonymobile/home/desktop/DesktopPresenter;->getZoomLevelFromState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;Z)Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    move-result-object v2

    .line 2041
    .local v2, "zoomLevel":Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;
    sget-object v5, Lcom/sonymobile/home/desktop/DesktopPresenter$15;->$SwitchMap$com$sonymobile$home$desktop$DesktopPresenter$DesktopState:[I

    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 2068
    sget-object v5, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->EDIT:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    iput-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mCuiExitState:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    .line 2069
    iget-boolean v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mIsOpen:Z

    if-eqz v5, :cond_2

    .line 2070
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    invoke-interface {v5, v3}, Lcom/sonymobile/home/FragmentHandler;->showStatusBar(Z)V

    .line 2074
    :cond_2
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v5, v3}, Lcom/sonymobile/home/desktop/DesktopView;->setItemViewsTouchable(Z)V

    .line 2075
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAdapter:Lcom/sonymobile/home/desktop/DesktopAdapter;

    invoke-virtual {v5, v4}, Lcom/sonymobile/home/desktop/DesktopAdapter;->showItemOptions(Z)V

    .line 2076
    invoke-static {p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->shouldShowPageIndicator(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/sonymobile/home/desktop/DesktopPresenter;->updatePageIndicatorVisibility(Z)V

    .line 2077
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    new-instance v6, Lcom/sonymobile/home/desktop/DesktopPresenter$8;

    invoke-direct {v6, p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$8;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter;)V

    invoke-virtual {v5, v2, v3, v6}, Lcom/sonymobile/home/desktop/DesktopView;->setZoomLevel(Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;ZLcom/sonymobile/flix/util/DynamicsTask$Listener;)V

    .line 2092
    :goto_2
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-direct {p0, p1, v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->getZoomLevelFromState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;Z)Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sonymobile/home/desktop/DesktopView;->setDesiredLandscapeZoomLevel(Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;)V

    .line 2093
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-direct {p0, p1, v4}, Lcom/sonymobile/home/desktop/DesktopPresenter;->getZoomLevelFromState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;Z)Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/desktop/DesktopView;->setDesiredPortraitZoomLevel(Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;)V

    .line 2095
    invoke-static {p1}, Lcom/sonymobile/home/statistics/TrackingUtil;->getDesktopScreen(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/home/statistics/TrackingUtil;->setScreen(Ljava/lang/String;)V

    .line 2096
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mState:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    .line 2098
    invoke-direct {p0, v1, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->notifyDesktopStateChanged(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V

    goto :goto_0

    .line 2028
    .end local v2    # "zoomLevel":Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;
    :pswitch_0
    sget-object v5, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->CUI_SUB_MENU:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    if-eq p1, v5, :cond_1

    sget-object v5, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->CUI_MAIN_MENU:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    if-eq p1, v5, :cond_1

    .line 2029
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mCuiPresenter:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    invoke-virtual {v5}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->exitCustomizationMode()V

    goto :goto_1

    .line 2045
    .restart local v2    # "zoomLevel":Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;
    :pswitch_1
    iget-boolean v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mIsOpen:Z

    if-eqz v5, :cond_3

    .line 2046
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    invoke-interface {v5, v4}, Lcom/sonymobile/home/FragmentHandler;->showStatusBar(Z)V

    .line 2049
    :cond_3
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v5}, Lcom/sonymobile/home/desktop/DesktopView;->isEditModeEnabled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2050
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v5}, Lcom/sonymobile/home/desktop/DesktopModel;->getPageCount()I

    move-result v5

    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v6}, Lcom/sonymobile/home/desktop/DesktopModel;->getMaxNumberOfPages()I

    move-result v6

    if-ge v5, v6, :cond_5

    move v0, v3

    .line 2052
    .local v0, "includeExpandBoundsPages":Z
    :goto_3
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v5, v0}, Lcom/sonymobile/home/desktop/DesktopView;->enableEditMode(Z)V

    .line 2053
    iput v4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mTrackUninstallCount:I

    .line 2056
    .end local v0    # "includeExpandBoundsPages":Z
    :cond_4
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v5}, Lcom/sonymobile/home/desktop/DesktopModel;->getPreferences()Lcom/sonymobile/home/desktop/DesktopPreferences;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonymobile/home/desktop/DesktopPreferences;->getDesktopEnterTipId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sonymobile/home/desktop/DesktopPresenter;->removeTipItem(I)V

    .line 2058
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v5}, Lcom/sonymobile/home/desktop/DesktopView;->updateEditButtonsVisibility()V

    .line 2059
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mAdapter:Lcom/sonymobile/home/desktop/DesktopAdapter;

    invoke-virtual {v5, v3}, Lcom/sonymobile/home/desktop/DesktopAdapter;->showItemOptions(Z)V

    .line 2061
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v5, v4}, Lcom/sonymobile/home/desktop/DesktopView;->setItemViewsTouchable(Z)V

    .line 2062
    invoke-static {p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->shouldShowPageIndicator(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/sonymobile/home/desktop/DesktopPresenter;->updatePageIndicatorVisibility(Z)V

    .line 2063
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v5, v2, v3}, Lcom/sonymobile/home/desktop/DesktopView;->setZoomLevel(Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;Z)V

    goto :goto_2

    :cond_5
    move v0, v4

    .line 2050
    goto :goto_3

    .line 2025
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2041
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setView(Lcom/sonymobile/home/desktop/DesktopView;)V
    .locals 3
    .param p1, "view"    # Lcom/sonymobile/home/desktop/DesktopView;

    .prologue
    .line 1707
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setPageViewGroup(Lcom/sonymobile/home/ui/pageview/PageViewGroup;)V

    .line 1708
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    .line 1709
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    const-string v1, "DropTarget.DropTarget"

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDropTarget:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/desktop/DesktopView;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1710
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    const-string v1, "DropTarget.IsBackgroundDropTarget"

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->setProperty(Ljava/lang/Object;)V

    .line 1711
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPageIndicatorView:Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->setPageIndicatorView(Lcom/sonymobile/home/desktop/DesktopPageIndicatorView;)V

    .line 1712
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mShowLoadingProgress:Z

    if-eqz v0, :cond_0

    .line 1713
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->showProgressBar()V

    .line 1716
    :cond_0
    sput-object p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->sInstance:Lcom/sonymobile/home/desktop/DesktopPresenter;

    .line 1717
    return-void
.end method

.method public showCuiMenu()V
    .locals 1

    .prologue
    .line 2426
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mCuiPresenter:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->show()V

    .line 2427
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 1
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;

    .prologue
    .line 2972
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mHomeSearchManager:Lcom/sonymobile/home/search/HomeSearchManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/home/search/HomeSearchManager;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 2973
    return-void
.end method

.method public updateConfiguration(Lcom/sonymobile/grid/Grid;)V
    .locals 3
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    .line 2569
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2570
    .local v0, "res":Landroid/content/res/Resources;
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->updateGrid(Lcom/sonymobile/grid/Grid;)V

    .line 2571
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->updateOrientation()V

    .line 2572
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mCuiPresenter:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isCuiMenuOpen()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->updateConfiguration(Z)V

    .line 2573
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDropTarget:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->updateConfiguration(Landroid/content/res/Resources;)V

    .line 2574
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->updatePageIndicatorView()V

    .line 2575
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->updateWallpaperOffsets()V

    .line 2576
    return-void
.end method

.method public updateTopComponentsVisibility(ZZ)V
    .locals 4
    .param p1, "showDeleteAreaComponent"    # Z
    .param p2, "cancellable"    # Z

    .prologue
    .line 3009
    if-eqz p1, :cond_1

    .line 3010
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDeleteDropZoneScreenWrapper:Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;

    invoke-interface {v0, p2}, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;->show(Z)V

    .line 3019
    :cond_0
    :goto_0
    return-void

    .line 3012
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDeleteDropZoneScreenWrapper:Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;

    invoke-interface {v0}, Lcom/sonymobile/home/deletearea/screenwrapper/DeleteDropZoneScreenWrapper;->hide()V

    .line 3014
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInNormalState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3016
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mShowStatusbarRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public updateWallpaperOffsets()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, 0x0

    .line 2213
    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v7}, Lcom/sonymobile/flix/components/Scene;->getView()Landroid/view/View;

    move-result-object v3

    .line 2214
    .local v3, "sceneView":Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 2216
    .local v4, "windowToken":Landroid/os/IBinder;
    :cond_0
    if-eqz v4, :cond_1

    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    if-nez v7, :cond_3

    .line 2265
    :cond_1
    :goto_1
    return-void

    .end local v3    # "sceneView":Landroid/view/View;
    .end local v4    # "windowToken":Landroid/os/IBinder;
    :cond_2
    move-object v3, v4

    .line 2213
    goto :goto_0

    .line 2220
    .restart local v3    # "sceneView":Landroid/view/View;
    .restart local v4    # "windowToken":Landroid/os/IBinder;
    :cond_3
    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v7}, Lcom/sonymobile/home/desktop/DesktopModel;->getLeftPageId()I

    move-result v7

    int-to-float v2, v7

    .line 2221
    .local v2, "minPos":F
    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v7}, Lcom/sonymobile/home/desktop/DesktopModel;->getRightPageId()I

    move-result v7

    int-to-float v1, v7

    .line 2222
    .local v1, "maxPos":F
    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v7}, Lcom/sonymobile/home/desktop/DesktopView;->getScrollPosition()F

    move-result v0

    .line 2224
    .local v0, "currentPos":F
    iget v7, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPreviousMinScrollPosition:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_4

    .line 2225
    iput v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPreviousMinScrollPosition:F

    .line 2227
    :cond_4
    iget v7, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPreviousMaxScrollPosition:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_5

    .line 2228
    iput v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPreviousMaxScrollPosition:F

    .line 2234
    :cond_5
    invoke-static {v2, v1}, Lcom/sonymobile/flix/util/Utils;->equals(FF)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2236
    const/high16 v5, 0x3f000000    # 0.5f

    .line 2262
    .local v5, "xOffset":F
    :cond_6
    :goto_2
    iget-boolean v7, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mIsPortrait:Z

    if-eqz v7, :cond_b

    .line 2264
    .local v6, "yOffset":F
    :goto_3
    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mWallpaperWorker:Lcom/sonymobile/home/desktop/WallpaperWorker;

    invoke-virtual {v7, v4, v5, v6}, Lcom/sonymobile/home/desktop/WallpaperWorker;->setOffsetsAsync(Landroid/os/IBinder;FF)V

    goto :goto_1

    .line 2238
    .end local v5    # "xOffset":F
    .end local v6    # "yOffset":F
    :cond_7
    iget v7, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPreviousMinScrollPosition:F

    invoke-static {v7, v2}, Lcom/sonymobile/flix/util/Utils;->equals(FF)Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPreviousMaxScrollPosition:F

    invoke-static {v7, v1}, Lcom/sonymobile/flix/util/Utils;->equals(FF)Z

    move-result v7

    if-nez v7, :cond_a

    .line 2243
    :cond_8
    iget v7, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPreviousMinScrollPosition:F

    iget v8, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPreviousMaxScrollPosition:F

    invoke-direct {p0, v0, v7, v8}, Lcom/sonymobile/home/desktop/DesktopPresenter;->calculateWallpaperOffset(FFF)F

    move-result v5

    .line 2246
    .restart local v5    # "xOffset":F
    cmpg-float v7, v5, v6

    if-lez v7, :cond_9

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_6

    .line 2254
    :cond_9
    invoke-direct {p0, v0, v2, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->calculateWallpaperOffset(FFF)F

    move-result v5

    .line 2255
    iput v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPreviousMinScrollPosition:F

    .line 2256
    iput v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter;->mPreviousMaxScrollPosition:F

    goto :goto_2

    .line 2259
    .end local v5    # "xOffset":F
    :cond_a
    invoke-direct {p0, v0, v2, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->calculateWallpaperOffset(FFF)F

    move-result v5

    .restart local v5    # "xOffset":F
    goto :goto_2

    .line 2262
    :cond_b
    const/high16 v6, 0x3f000000    # 0.5f

    goto :goto_3
.end method
