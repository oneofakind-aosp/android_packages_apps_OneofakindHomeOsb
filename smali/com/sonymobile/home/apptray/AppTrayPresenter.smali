.class public Lcom/sonymobile/home/apptray/AppTrayPresenter;
.super Lcom/sonymobile/home/search/SearchablePageViewPresenter;
.source "AppTrayPresenter.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/sonymobile/home/apptray/AppTrayView$AppTrayViewTouchListener;
.implements Lcom/sonymobile/home/presenter/view/PageIndicatorView$Listener;
.implements Lcom/sonymobile/home/ui/pageview/PageItemViewListener;
.implements Lcom/sonymobile/home/ui/pageview/PageViewGroupListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/apptray/AppTrayPresenter$5;,
        Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTraySortModeDialogActionListener;,
        Lcom/sonymobile/home/apptray/AppTrayPresenter$FolderUninstallDialogActionListener;,
        Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayOpenFolderListener;,
        Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayTransferable;,
        Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;,
        Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;
    }
.end annotation


# static fields
.field private static sSessionAppStartCount:I


# instance fields
.field private mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

.field private final mAlphabeticalSortModeTitle:Ljava/lang/String;

.field private mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;

.field private final mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;

.field private mAppTraySorter:Lcom/sonymobile/home/apptray/AppTraySorter;

.field private final mCreator:Lcom/sonymobile/home/data/ItemCreator;

.field private final mDownloadedSortModeTitle:Ljava/lang/String;

.field private final mDragSource:Lcom/sonymobile/home/transfer/DragSource;

.field private mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

.field private final mDropTarget:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

.field private final mDropZonePresenter:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

.field private mFolderHintScaleFactor:F

.field private mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

.field private mGrid:Lcom/sonymobile/grid/Grid;

.field private final mMostUsedSortModeTitle:Ljava/lang/String;

.field private mOptionsButtonListener:Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;

.field private final mOwnOrderSortModeTitle:Ljava/lang/String;

.field private mPageIndicatorView:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

.field private mSearchCancelled:Z

.field private mState:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

.field private mStateAtTransferStart:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

.field private final mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

.field private final mVibrator:Landroid/os/Vibrator;

.field private mView:Lcom/sonymobile/home/apptray/AppTrayView;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/apptray/AppTrayModel;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/search/SearchableModelsWrapper;)V
    .locals 12
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "model"    # Lcom/sonymobile/home/apptray/AppTrayModel;
    .param p3, "statisticsManager"    # Lcom/sonymobile/home/statistics/StatisticsManager;
    .param p4, "transferHandler"    # Lcom/sonymobile/home/transfer/TransferHandler;
    .param p5, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p6, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p7, "intentHandler"    # Lcom/sonymobile/home/IntentHandler;
    .param p8, "fragmentHandler"    # Lcom/sonymobile/home/FragmentHandler;
    .param p9, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p10, "dropZonePresenter"    # Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;
    .param p11, "dialogHandler"    # Lcom/sonymobile/home/DialogHandler;
    .param p12, "creator"    # Lcom/sonymobile/home/data/ItemCreator;
    .param p13, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p14, "searchableModelsWrapper"    # Lcom/sonymobile/home/search/SearchableModelsWrapper;

    .prologue
    .line 1280
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p7

    move-object/from16 v5, p11

    move-object/from16 v6, p8

    move-object/from16 v7, p6

    move-object v8, p3

    move-object/from16 v9, p14

    move-object/from16 v10, p13

    invoke-direct/range {v1 .. v10}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/search/SearchableModelsWrapper;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 106
    sget-object v1, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->APPTRAY_STATE_NORMAL:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    iput-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mState:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 151
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mSearchCancelled:Z

    .line 156
    new-instance v1, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$1;-><init>(Lcom/sonymobile/home/apptray/AppTrayPresenter;)V

    iput-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDragSource:Lcom/sonymobile/home/transfer/DragSource;

    .line 1282
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1284
    .local v11, "res":Landroid/content/res/Resources;
    const v1, 0x7f080077

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAlphabeticalSortModeTitle:Ljava/lang/String;

    .line 1286
    const v1, 0x7f080078

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mMostUsedSortModeTitle:Ljava/lang/String;

    .line 1288
    const v1, 0x7f08007a

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDownloadedSortModeTitle:Ljava/lang/String;

    .line 1290
    const v1, 0x7f080079

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mOwnOrderSortModeTitle:Ljava/lang/String;

    .line 1293
    iput-object p2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    .line 1294
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    .line 1295
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    .line 1297
    new-instance v1, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayOpenFolderListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayOpenFolderListener;-><init>(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/home/apptray/AppTrayPresenter$1;)V

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->setOpenFolderListener(Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;)V

    .line 1298
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->createActionBarView()V

    .line 1299
    new-instance v1, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;-><init>(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/flix/components/Scene;Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDropTarget:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    .line 1300
    move-object/from16 v0, p9

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->updateConfiguration(Lcom/sonymobile/grid/Grid;)V

    .line 1301
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDropZonePresenter:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    .line 1302
    sget-object v1, Lcom/sonymobile/home/DialogFactory$Action;->UNINSTALL_FOLDER:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v1}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v1

    new-instance v2, Lcom/sonymobile/home/apptray/AppTrayPresenter$FolderUninstallDialogActionListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter$FolderUninstallDialogActionListener;-><init>(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/home/apptray/AppTrayPresenter$1;)V

    move-object/from16 v0, p11

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/home/DialogHandler;->addDialogActionListener(ILcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;)V

    .line 1305
    sget-object v1, Lcom/sonymobile/home/DialogFactory$Action;->SET_SORT_MODE:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v1}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v1

    new-instance v2, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTraySortModeDialogActionListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTraySortModeDialogActionListener;-><init>(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/home/apptray/AppTrayPresenter$1;)V

    move-object/from16 v0, p11

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/home/DialogHandler;->addDialogActionListener(ILcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;)V

    .line 1308
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->createPageIndicatorView()V

    .line 1309
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mCreator:Lcom/sonymobile/home/data/ItemCreator;

    .line 1310
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mVibrator:Landroid/os/Vibrator;

    .line 1311
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/home/ui/pageview/PageItemView;)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDropZonePresenter:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/transfer/TransferHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->isOwnOrder()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/settings/UserSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/grid/Grid;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mGrid:Lcom/sonymobile/grid/Grid;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/presenter/view/PageIndicatorView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mPageIndicatorView:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sonymobile/home/apptray/AppTrayPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->showCannotCustomizeDialog()V

    return-void
.end method

.method static synthetic access$3200(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->setState(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/data/ItemCreator;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mCreator:Lcom/sonymobile/home/data/ItemCreator;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mOpenFolderListener:Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/folder/FolderOpener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->handleUninstall(Lcom/sonymobile/home/data/Item;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->showCannotUninstallDialog(Lcom/sonymobile/home/data/Item;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/folder/FolderOpener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/folder/FolderOpener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/folder/FolderOpener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/folder/FolderOpener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/folder/FolderOpener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/home/data/FolderItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->moveFolderContentsToAppTray(Lcom/sonymobile/home/data/FolderItem;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->handleSortModeItemClicked(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/FragmentHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayModel;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->startAppSearch()V

    return-void
.end method

.method static synthetic access$6100(Lcom/sonymobile/home/apptray/AppTrayPresenter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->trackSearchStarted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/FragmentHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/FragmentHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/home/apptray/AppTrayPresenter;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderHintScaleFactor:F

    return v0
.end method

.method static synthetic access$800(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/settings/UserSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    return-object v0
.end method

.method private createActionBarView()V
    .locals 2

    .prologue
    .line 1907
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayActionBar;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayActionBar;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;

    .line 1908
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;

    new-instance v1, Lcom/sonymobile/home/apptray/AppTrayPresenter$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$2;-><init>(Lcom/sonymobile/home/apptray/AppTrayPresenter;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->setSearchButtonListener(Lcom/sonymobile/flix/components/ButtonListener;)V

    .line 1919
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->createOptionsButtonListener()Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mOptionsButtonListener:Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;

    .line 1920
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mOptionsButtonListener:Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->setOptionsButtonListener(Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;)V

    .line 1921
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;

    new-instance v1, Lcom/sonymobile/home/apptray/AppTrayPresenter$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$3;-><init>(Lcom/sonymobile/home/apptray/AppTrayPresenter;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->setBackButtonListener(Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;)V

    .line 1927
    return-void
.end method

.method public static createAppTrayGrid(Lcom/sonymobile/home/resources/ResourceManager;)Lcom/sonymobile/grid/Grid;
    .locals 5
    .param p0, "rm"    # Lcom/sonymobile/home/resources/ResourceManager;

    .prologue
    .line 1492
    const/high16 v4, 0x7f0d0000

    invoke-virtual {p0, v4}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v2

    .line 1493
    .local v2, "cols":I
    const v4, 0x7f0d0001

    invoke-virtual {p0, v4}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v3

    .line 1494
    .local v3, "rows":I
    const v4, 0x7f0b0007

    invoke-virtual {p0, v4}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    .line 1495
    .local v1, "cellWidth":I
    const v4, 0x7f0b0006

    invoke-virtual {p0, v4}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v0

    .line 1497
    .local v0, "cellHeight":I
    new-instance v4, Lcom/sonymobile/grid/Grid;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/sonymobile/grid/Grid;-><init>(IIII)V

    return-object v4
.end method

.method private createOptionsButtonListener()Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;
    .locals 1

    .prologue
    .line 1935
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$4;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$4;-><init>(Lcom/sonymobile/home/apptray/AppTrayPresenter;)V

    return-object v0
.end method

.method private createPageIndicatorView()V
    .locals 4

    .prologue
    .line 1895
    new-instance v0, Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    const v2, 0x7f020080

    const v3, 0x7f020082

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;-><init>(Lcom/sonymobile/flix/components/Scene;II)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mPageIndicatorView:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    .line 1897
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mPageIndicatorView:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    const-string v1, "AppTrayPageIndicatorView"

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->setName(Ljava/lang/String;)V

    .line 1898
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mPageIndicatorView:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->setPivotPoint(FF)V

    .line 1899
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mPageIndicatorView:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->setListener(Lcom/sonymobile/home/presenter/view/PageIndicatorView$Listener;)V

    .line 1900
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mPageIndicatorView:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-static {v0}, Lcom/sonymobile/home/util/LayoutUtils;->isLandscape(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->setVisible(Z)V

    .line 1901
    return-void

    .line 1900
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private customizeGuiForSearch()V
    .locals 2

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mPageIndicatorView:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->setVisible(Z)V

    .line 1829
    return-void
.end method

.method private displayUninstallableToastIfNeeded()V
    .locals 9

    .prologue
    .line 1645
    const/4 v0, 0x0

    .line 1646
    .local v0, "hasDeleteBadges":Z
    iget-object v6, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v6}, Lcom/sonymobile/home/apptray/AppTrayView;->getPageCount()I

    move-result v3

    .line 1647
    .local v3, "pageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 1648
    iget-object v6, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v6, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->findPage(I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v4

    .line 1649
    .local v4, "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    if-nez v4, :cond_1

    .line 1647
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1652
    :cond_1
    invoke-virtual {v4}, Lcom/sonymobile/home/ui/pageview/PageView;->getAllItemViews()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 1653
    .local v5, "view":Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-virtual {v5}, Lcom/sonymobile/home/ui/pageview/PageItemView;->hasUninstallOption()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1654
    const/4 v0, 0x1

    .line 1658
    .end local v5    # "view":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_3
    if-eqz v0, :cond_0

    .line 1663
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_4
    if-nez v0, :cond_5

    .line 1664
    iget-object v6, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mContext:Landroid/content/Context;

    const v7, 0x7f0800b3

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1667
    :cond_5
    return-void
.end method

.method private static doIncrementTrackSessionAppStartCount()I
    .locals 1

    .prologue
    .line 1534
    sget v0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->sSessionAppStartCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->sSessionAppStartCount:I

    .line 1535
    sget v0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->sSessionAppStartCount:I

    return v0
.end method

.method private getCategoryTitleFromSortMode(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)Ljava/lang/String;
    .locals 2
    .param p1, "sortMode"    # Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .prologue
    .line 1765
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$5;->$SwitchMap$com$sonymobile$home$apptray$AppTrayPreferenceManager$SortMode:[I

    invoke-virtual {p1}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1774
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mOwnOrderSortModeTitle:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 1767
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAlphabeticalSortModeTitle:Ljava/lang/String;

    goto :goto_0

    .line 1769
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mMostUsedSortModeTitle:Ljava/lang/String;

    goto :goto_0

    .line 1771
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDownloadedSortModeTitle:Ljava/lang/String;

    goto :goto_0

    .line 1765
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSearchItem(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/data/Item;
    .locals 4
    .param p1, "ownOrderItem"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 1850
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTraySorter:Lcom/sonymobile/home/apptray/AppTraySorter;

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTraySorter;->getSortMode()Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->OWN_ORDER:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    if-eq v2, v3, :cond_0

    .line 1851
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getModelItems()Ljava/util/List;

    move-result-object v0

    .line 1852
    .local v0, "currentModelItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1853
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1854
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 1858
    .end local v0    # "currentModelItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .end local v1    # "index":I
    :goto_0
    return-object v2

    :cond_0
    move-object v2, p1

    goto :goto_0
.end method

.method private handleIntentActionLocate(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;)V
    .locals 4
    .param p1, "ownOrderItem"    # Lcom/sonymobile/home/data/Item;
    .param p2, "folderInWhichItemIsLocated"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    const v3, 0x7fffffff

    .line 1871
    const v0, 0x7fffffff

    .line 1872
    .local v0, "pageToLocate":I
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->prepareCloseSearch()V

    .line 1874
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTraySorter:Lcom/sonymobile/home/apptray/AppTraySorter;

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTraySorter;->getSortMode()Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->OWN_ORDER:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    if-eq v1, v2, :cond_0

    .line 1875
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTraySorter:Lcom/sonymobile/home/apptray/AppTraySorter;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/apptray/AppTraySorter;->getPageFromItem(Lcom/sonymobile/home/data/Item;)I

    move-result v0

    .line 1876
    if-ne v0, v3, :cond_0

    .line 1879
    sget-object v1, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->OWN_ORDER:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->setSortMode(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;Z)Z

    .line 1883
    :cond_0
    if-ne v0, v3, :cond_1

    .line 1884
    if-eqz p2, :cond_2

    .line 1885
    invoke-virtual {p2}, Lcom/sonymobile/home/data/FolderItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    iget v0, v1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 1891
    :cond_1
    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->startJumpAnimation(ILcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;)V

    .line 1892
    return-void

    .line 1887
    :cond_2
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    iget v0, v1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    goto :goto_0
.end method

.method private handleOnLongPressEvent(Lcom/sonymobile/home/ui/pageview/PageItemView;FF)V
    .locals 7
    .param p1, "pressedView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    invoke-interface {v0}, Lcom/sonymobile/home/transfer/TransferHandler;->isInTransfer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1590
    :cond_0
    :goto_0
    return-void

    .line 1561
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1563
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayView;->getScrollableContent()Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->cancelTouch(Lcom/sonymobile/flix/components/Component;)V

    .line 1566
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 1568
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->isOwnOrder()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1570
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setVisible(Z)V

    .line 1573
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mState:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mStateAtTransferStart:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    .line 1576
    const/16 v6, 0xc

    .line 1579
    .local v6, "request":I
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDragSource:Lcom/sonymobile/home/transfer/DragSource;

    const/16 v2, 0xc

    new-instance v3, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayTransferable;

    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-direct {v3, v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayTransferable;-><init>(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/home/transfer/TransferHandler;->startTransfer(Lcom/sonymobile/home/transfer/DragSource;ILcom/sonymobile/home/transfer/Transferable;FF)V

    .line 1583
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->isOwnOrder()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1584
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->pickup(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 1587
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->clearOriginalPickupPosition()V

    goto :goto_0
.end method

.method private handlePageIndicatorViewUpdate(FF)V
    .locals 2
    .param p1, "position"    # F
    .param p2, "min"    # F

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mPageIndicatorView:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    sub-float v1, p1, p2

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->setIndicatorPosition(F)V

    .line 2017
    return-void
.end method

.method private handleSortModeItemClicked(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)V
    .locals 6
    .param p1, "newSortMode"    # Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .prologue
    .line 1712
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->setSortMode(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1714
    const-string v1, "ApptrayDrawer"

    const-string v2, "SortMode"

    invoke-virtual {p1}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->getString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1717
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v0

    .line 1718
    .local v0, "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1720
    const/16 v1, 0x4000

    invoke-direct {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->getCategoryTitleFromSortMode(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->sendEvent(ILjava/lang/String;)V

    .line 1724
    .end local v0    # "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    :cond_0
    return-void
.end method

.method private indicatorScroll(FZ)V
    .locals 8
    .param p1, "indicatorPosition"    # F
    .param p2, "forced"    # Z

    .prologue
    .line 2041
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/apptray/AppTrayView;->setDragEnabled(Z)V

    .line 2042
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v3}, Lcom/sonymobile/home/apptray/AppTrayView;->getLeftmostPage()I

    move-result v0

    .line 2043
    .local v0, "leftmost":I
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v3}, Lcom/sonymobile/home/apptray/AppTrayView;->getRightmostPage()I

    move-result v2

    .line 2044
    .local v2, "rightmost":I
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v1, v3

    .line 2046
    .local v1, "page":F
    int-to-float v3, v0

    cmpg-float v3, v1, v3

    if-gez v3, :cond_1

    .line 2057
    :cond_0
    :goto_0
    return-void

    .line 2049
    :cond_1
    int-to-float v3, v2

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    .line 2050
    int-to-float v1, v2

    .line 2052
    :cond_2
    if-nez p2, :cond_3

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v3}, Lcom/sonymobile/home/apptray/AppTrayView;->getScrollTarget()F

    move-result v3

    invoke-static {v1, v3}, Lcom/sonymobile/flix/util/Utils;->equals(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2053
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v3, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->scrollTo(F)V

    .line 2054
    const-string v3, "Apptray"

    const-string v4, "PageIndicatorScroll"

    const-string v5, ""

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private isOwnOrder()Z
    .locals 2

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTraySorter:Lcom/sonymobile/home/apptray/AppTraySorter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTraySorter:Lcom/sonymobile/home/apptray/AppTraySorter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTraySorter;->getSortMode()Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->OWN_ORDER:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveFolderContentsToAppTray(Lcom/sonymobile/home/data/FolderItem;)V
    .locals 6
    .param p1, "folderItem"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    .line 2060
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    invoke-virtual {v5, p1}, Lcom/sonymobile/home/folder/FolderManager;->getFolderItems(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;

    move-result-object v0

    .line 2062
    .local v0, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-eqz v0, :cond_2

    .line 2063
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual {v5, p1}, Lcom/sonymobile/home/apptray/AppTrayModel;->deleteItem(Lcom/sonymobile/home/data/Item;)V

    .line 2065
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 2068
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    instance-of v5, v2, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v5, :cond_0

    .line 2069
    new-instance v3, Lcom/sonymobile/home/data/ActivityItem;

    check-cast v2, Lcom/sonymobile/home/data/ActivityItem;

    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    invoke-direct {v3, v2}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Lcom/sonymobile/home/data/ActivityItem;)V

    .line 2070
    .local v3, "newItem":Lcom/sonymobile/home/data/Item;
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual {v5, v3}, Lcom/sonymobile/home/apptray/AppTrayModel;->addItemLast(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 2076
    .end local v3    # "newItem":Lcom/sonymobile/home/data/Item;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2077
    .local v4, "removedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2078
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual {v5, v4}, Lcom/sonymobile/home/apptray/AppTrayModel;->updateModel(Ljava/util/List;)V

    .line 2080
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "removedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    :cond_2
    return-void
.end method

.method private prepareCloseSearch()V
    .locals 2

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mPageIndicatorView:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->setVisible(Z)V

    .line 1838
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->exitSearchMode()V

    .line 1839
    return-void
.end method

.method private setSortMode(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;Z)Z
    .locals 7
    .param p1, "newSortMode"    # Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    .param p2, "animate"    # Z

    .prologue
    .line 1734
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTraySorter:Lcom/sonymobile/home/apptray/AppTraySorter;

    invoke-virtual {v5}, Lcom/sonymobile/home/apptray/AppTraySorter;->getSortMode()Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    move-result-object v2

    .line 1735
    .local v2, "oldSortMode":Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    if-eq v2, p1, :cond_2

    .line 1737
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v5}, Lcom/sonymobile/home/apptray/AppTrayView;->getUpdateItemAnimationType()Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    move-result-object v3

    .line 1738
    .local v3, "oldUpdateAnimType":Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v5}, Lcom/sonymobile/home/apptray/AppTrayView;->getAddItemAnimationType()Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    move-result-object v0

    .line 1739
    .local v0, "oldAddAnimType":Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v5}, Lcom/sonymobile/home/apptray/AppTrayView;->getDeleteItemAnimationType()Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    move-result-object v1

    .line 1740
    .local v1, "oldDeleteAnimType":Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v5}, Lcom/sonymobile/home/apptray/AppTrayView;->isItemAnimationsEnabled()Z

    move-result v4

    .line 1741
    .local v4, "prevAnimationsEnabled":Z
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v5, p2}, Lcom/sonymobile/home/apptray/AppTrayView;->enableItemAnimations(Z)V

    .line 1742
    if-eqz p2, :cond_0

    .line 1743
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    sget-object v6, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->ITEM_RANDOM_POPUP_ANIMATION:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    invoke-virtual {v5, v6}, Lcom/sonymobile/home/apptray/AppTrayView;->setUpdateItemAnimationType(Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;)V

    .line 1744
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    sget-object v6, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->ITEM_RANDOM_POPUP_ANIMATION:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    invoke-virtual {v5, v6}, Lcom/sonymobile/home/apptray/AppTrayView;->setAddItemAnimationType(Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;)V

    .line 1745
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    sget-object v6, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;->ITEM_NO_ANIMATION:Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;

    invoke-virtual {v5, v6}, Lcom/sonymobile/home/apptray/AppTrayView;->setDeleteItemAnimationType(Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;)V

    .line 1749
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTraySorter:Lcom/sonymobile/home/apptray/AppTraySorter;

    invoke-virtual {v5, p1}, Lcom/sonymobile/home/apptray/AppTraySorter;->setSortMode(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)V

    .line 1752
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v5, v4}, Lcom/sonymobile/home/apptray/AppTrayView;->enableItemAnimations(Z)V

    .line 1753
    if-eqz p2, :cond_1

    .line 1754
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v5, v3}, Lcom/sonymobile/home/apptray/AppTrayView;->setUpdateItemAnimationType(Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;)V

    .line 1755
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v5, v0}, Lcom/sonymobile/home/apptray/AppTrayView;->setAddItemAnimationType(Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;)V

    .line 1756
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v5, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->setDeleteItemAnimationType(Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;)V

    .line 1759
    :cond_1
    const/4 v5, 0x1

    .line 1761
    .end local v0    # "oldAddAnimType":Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;
    .end local v1    # "oldDeleteAnimType":Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;
    .end local v3    # "oldUpdateAnimType":Lcom/sonymobile/home/ui/pageview/PageViewGroup$ItemAnimationType;
    .end local v4    # "prevAnimationsEnabled":Z
    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setState(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;)V
    .locals 8
    .param p1, "newState"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1605
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mState:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    if-ne p1, v0, :cond_0

    .line 1642
    :goto_0
    return-void

    .line 1610
    :cond_0
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$5;->$SwitchMap$com$sonymobile$home$apptray$AppTrayPresenter$AppTrayState:[I

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mState:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1624
    :goto_1
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$5;->$SwitchMap$com$sonymobile$home$apptray$AppTrayPresenter$AppTrayState:[I

    invoke-virtual {p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 1636
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->exitEditMode()V

    .line 1637
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0, v6}, Lcom/sonymobile/home/apptray/AppTrayView;->forceZoomOut(Z)V

    .line 1641
    :goto_2
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mState:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    goto :goto_0

    .line 1612
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0, v6}, Lcom/sonymobile/home/apptray/AppTrayView;->enableEditModeBackplate(Z)V

    .line 1613
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    invoke-virtual {v0, v6}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->showItemOptions(Z)V

    .line 1614
    const-string v0, "Apptray"

    const-string v1, "EditMode"

    const-string v2, ""

    iget v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mTrackUninstallCount:I

    int-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    .line 1626
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0, v7}, Lcom/sonymobile/home/apptray/AppTrayView;->enableEditModeBackplate(Z)V

    .line 1627
    iput v6, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mTrackUninstallCount:I

    .line 1628
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    invoke-virtual {v0, v7}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->showItemOptions(Z)V

    .line 1630
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->enterEditMode()V

    .line 1631
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0, v7}, Lcom/sonymobile/home/apptray/AppTrayView;->forceZoomOut(Z)V

    goto :goto_2

    .line 1610
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1624
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private showCannotCustomizeDialog()V
    .locals 2

    .prologue
    .line 1679
    invoke-static {}, Lcom/sonymobile/home/apptray/CannotCustomizeDialogFragment;->newInstance()Lcom/sonymobile/home/apptray/CannotCustomizeDialogFragment;

    move-result-object v0

    .line 1680
    .local v0, "dialogFragment":Lcom/sonymobile/home/apptray/CannotCustomizeDialogFragment;
    sget-object v1, Lcom/sonymobile/home/DialogFactory$Action;->CANNOT_CUSTOMIZE:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v1}, Lcom/sonymobile/home/DialogFactory$Action;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonymobile/home/DialogFactory;->showDialog(Ljava/lang/String;Landroid/app/DialogFragment;)V

    .line 1681
    return-void
.end method

.method private startAppSearch()V
    .locals 1

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->disableTouch()V

    .line 1785
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->customizeGuiForSearch()V

    .line 1786
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->enterSearchMode()V

    .line 1787
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->startSearchActivity()V

    .line 1789
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1485
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->show(Z)V

    .line 1486
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mPageIndicatorView:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->setVisible(Z)V

    .line 1487
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->endTransferZoom(Z)V

    .line 1488
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->APPTRAY_STATE_NORMAL:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    invoke-direct {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->setState(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;)V

    .line 1489
    return-void
.end method

.method public closeFolders()V
    .locals 2

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/FolderOpener;->hasFolderOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/FolderOpener;->close(Z)V

    .line 1391
    :cond_0
    return-void
.end method

.method public enterTransferMode()V
    .locals 2

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v0}, Lcom/sonymobile/home/settings/UserSettings;->isInStraightToDesktopMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDropZonePresenter:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->show(Z)V

    .line 1416
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->hide(Z)V

    .line 1419
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayView;->startTransferZoom()V

    .line 1420
    return-void
.end method

.method public exitTransferMode(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1399
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDropZonePresenter:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->close(Z)V

    .line 1402
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mPageIndicatorView:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->setVisible(Z)V

    .line 1405
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->show(Z)V

    .line 1408
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/apptray/AppTrayView;->endTransferZoom(Z)V

    .line 1409
    return-void
.end method

.method public getActionBarView()Lcom/sonymobile/home/apptray/AppTrayActionBar;
    .locals 1

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;

    return-object v0
.end method

.method public getPageIndicatorView()Lcom/sonymobile/home/presenter/view/PageIndicatorView;
    .locals 1

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mPageIndicatorView:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    return-object v0
.end method

.method protected handleFailedSearch(Z)V
    .locals 0
    .param p1, "isCancelled"    # Z

    .prologue
    .line 1796
    iput-boolean p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mSearchCancelled:Z

    .line 1797
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->prepareCloseSearch()V

    .line 1798
    return-void
.end method

.method public homeButtonPressed()V
    .locals 2

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->hide(Z)V

    .line 1463
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayView;->onHomeButtonPressed()V

    .line 1464
    return-void
.end method

.method protected incrementTrackSessionAppStartCount()I
    .locals 1

    .prologue
    .line 1525
    invoke-static {}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->doIncrementTrackSessionAppStartCount()I

    move-result v0

    return v0
.end method

.method public isInNormalState()Z
    .locals 2

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mState:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    sget-object v1, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->APPTRAY_STATE_NORMAL:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected locateSearchItem(Lcom/sonymobile/home/data/Item;Landroid/content/Intent;)V
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1805
    const/4 v0, 0x0

    .line 1806
    .local v0, "folderItem":Lcom/sonymobile/home/data/FolderItem;
    invoke-direct {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->getSearchItem(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/data/Item;

    move-result-object v1

    .line 1807
    .local v1, "searchItem":Lcom/sonymobile/home/data/Item;
    if-ne v1, p1, :cond_0

    .line 1808
    invoke-virtual {p0, p2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->getFolderInWhichItemIsLocatedFromIntent(Landroid/content/Intent;)Lcom/sonymobile/home/data/FolderItem;

    move-result-object v0

    .line 1810
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->handleIntentActionLocate(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;)V

    .line 1811
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->trackSearchItemLocated(Lcom/sonymobile/home/data/Item;)V

    .line 1812
    return-void
.end method

.method public onBackButtonPressed()Z
    .locals 3

    .prologue
    .line 1438
    const/4 v0, 0x0

    .line 1439
    .local v0, "consumed":Z
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    if-eqz v1, :cond_0

    .line 1440
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    invoke-virtual {v1}, Lcom/sonymobile/home/folder/FolderOpener;->onBackButtonPressed()Z

    move-result v0

    .line 1442
    :cond_0
    if-nez v0, :cond_1

    .line 1443
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayView;->onBackButtonPressed()Z

    move-result v0

    .line 1445
    :cond_1
    if-nez v0, :cond_2

    .line 1446
    sget-object v1, Lcom/sonymobile/home/apptray/AppTrayPresenter$5;->$SwitchMap$com$sonymobile$home$apptray$AppTrayPresenter$AppTrayState:[I

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mState:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1457
    :cond_2
    :goto_0
    return v0

    .line 1448
    :pswitch_0
    sget-object v1, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->APPTRAY_STATE_NORMAL:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    invoke-direct {p0, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->setState(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;)V

    .line 1449
    const/4 v0, 0x1

    .line 1450
    goto :goto_0

    .line 1446
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(FF)V
    .locals 2
    .param p1, "rawX"    # F
    .param p2, "rawY"    # F

    .prologue
    .line 1997
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$5;->$SwitchMap$com$sonymobile$home$apptray$AppTrayPresenter$AppTrayState:[I

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mState:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2005
    :goto_0
    return-void

    .line 1999
    :pswitch_0
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->APPTRAY_STATE_NORMAL:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    invoke-direct {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->setState(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;)V

    goto :goto_0

    .line 1997
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClicked(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 4
    .param p1, "clickedView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 1502
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 1504
    .local v0, "clickedItem":Lcom/sonymobile/home/data/Item;
    sget-object v2, Lcom/sonymobile/home/apptray/AppTrayPresenter$5;->$SwitchMap$com$sonymobile$home$apptray$AppTrayPresenter$AppTrayState:[I

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mState:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    invoke-virtual {v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1511
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->handleItemViewClickInNormalMode(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;)Z

    move-result v1

    .line 1512
    .local v1, "launched":Z
    if-eqz v1, :cond_0

    .line 1513
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTraySorter:Lcom/sonymobile/home/apptray/AppTraySorter;

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTraySorter;->getSortMode()Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->MOST_USED:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    if-ne v2, v3, :cond_0

    .line 1516
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/apptray/AppTrayView;->setContentChangeEnabled(Z)V

    .line 1521
    .end local v1    # "launched":Z
    :cond_0
    :goto_0
    return-void

    .line 1507
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->handleItemViewClickInEditMode(Lcom/sonymobile/home/ui/pageview/PageItemView;)Z

    goto :goto_0

    .line 1504
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayView;->onDestroy()V

    .line 1383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    .line 1384
    invoke-super {p0}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->onDestroy()V

    .line 1385
    return-void
.end method

.method public onDownSwipe()V
    .locals 1

    .prologue
    .line 2009
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->isInNormalState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2010
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->startAppSearch()V

    .line 2011
    const-string v0, "SearchSwipeAppTray"

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->trackSearchStarted(Ljava/lang/String;)V

    .line 2013
    :cond_0
    return-void
.end method

.method public onIndicatorDragged(F)V
    .locals 1
    .param p1, "indicatorPosition"    # F

    .prologue
    .line 2032
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->indicatorScroll(FZ)V

    .line 2033
    return-void
.end method

.method public onIndicatorPressed(F)V
    .locals 1
    .param p1, "indicatorPosition"    # F

    .prologue
    .line 2027
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->indicatorScroll(FZ)V

    .line 2028
    return-void
.end method

.method public onIndicatorReleased(F)V
    .locals 2
    .param p1, "indicatorPosition"    # F

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->setDragEnabled(Z)V

    .line 2038
    return-void
.end method

.method public onLongPress(FF)V
    .locals 4
    .param p1, "rawX"    # F
    .param p2, "rawY"    # F

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1983
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$5;->$SwitchMap$com$sonymobile$home$apptray$AppTrayPresenter$AppTrayState:[I

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mState:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1993
    :goto_0
    return-void

    .line 1985
    :pswitch_0
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->APPTRAY_STATE_NORMAL:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    invoke-direct {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->setState(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;)V

    goto :goto_0

    .line 1989
    :pswitch_1
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->APPTRAY_STATE_EDIT:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    invoke-direct {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->setState(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;)V

    .line 1990
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->displayUninstallableToastIfNeeded()V

    goto :goto_0

    .line 1983
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLongPress(Lcom/sonymobile/home/ui/pageview/PageItemView;FF)V
    .locals 1
    .param p1, "pressedView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayView;->isInteracting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1543
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayView;->snapToClosestPage()V

    .line 1546
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->handleOnLongPressEvent(Lcom/sonymobile/home/ui/pageview/PageItemView;FF)V

    .line 1547
    return-void
.end method

.method public onMenuButtonPressed()Z
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mOptionsButtonListener:Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;

    invoke-interface {v0}, Lcom/sonymobile/home/presenter/HomeActionBar$ActionButtonListener;->onClick()V

    .line 1429
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 1949
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 1951
    .local v1, "menuItemId":I
    packed-switch v1, :pswitch_data_0

    .line 1966
    const/4 v2, 0x0

    .line 1968
    :goto_0
    return v2

    .line 1954
    :pswitch_0
    sget-object v2, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->APPTRAY_STATE_EDIT:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    invoke-direct {p0, v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->setState(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;)V

    .line 1968
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1958
    :pswitch_1
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTraySorter:Lcom/sonymobile/home/apptray/AppTraySorter;

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTraySorter;->getSortMode()Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;->newInstance(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;Landroid/content/Context;)Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;

    move-result-object v0

    .line 1960
    .local v0, "dialogFragment":Lcom/sonymobile/home/apptray/AppTraySortModeDialogFragment;
    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->SET_SORT_MODE:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v2}, Lcom/sonymobile/home/DialogFactory$Action;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonymobile/home/DialogFactory;->showDialog(Ljava/lang/String;Landroid/app/DialogFragment;)V

    goto :goto_1

    .line 1951
    :pswitch_data_0
    .packed-switch 0x7f0f00dd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNbrPagesChanged(IF)V
    .locals 1
    .param p1, "nbrOfPages"    # I
    .param p2, "position"    # F

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mPageIndicatorView:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->setNbrPages(I)Z

    .line 2022
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mPageIndicatorView:Lcom/sonymobile/home/presenter/view/PageIndicatorView;

    invoke-virtual {v0, p2}, Lcom/sonymobile/home/presenter/view/PageIndicatorView;->setIndicatorPosition(F)V

    .line 2023
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayView;->onPause()V

    .line 1370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mSearchCancelled:Z

    .line 1371
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1361
    invoke-super {p0}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->onResume()V

    .line 1362
    const-string v0, "Apptray"

    invoke-static {v0}, Lcom/sonymobile/home/statistics/TrackingUtil;->setScreen(Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->setContentChangeEnabled(Z)V

    .line 1365
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->enableItemAnimations(Z)V

    .line 1366
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 2084
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    const v1, 0x3f7d70a4    # 0.99f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 2085
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayView;->snapToClosestPage()V

    .line 2086
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->isInNormalState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2087
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->APPTRAY_STATE_EDIT:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    invoke-direct {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->setState(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;)V

    .line 2090
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->cancelTouch()V

    .line 2097
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 2091
    :cond_2
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    const v1, 0x3f814afd

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 2092
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayView;->snapToClosestPage()V

    .line 2093
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->APPTRAY_STATE_NORMAL:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    invoke-direct {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->setState(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;)V

    .line 2095
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->cancelTouch()V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "scaleGestureDetector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    invoke-interface {v0}, Lcom/sonymobile/home/transfer/TransferHandler;->isInTransfer()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

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
    .param p1, "scaleGestureDetector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 2107
    return-void
.end method

.method public onScreenOff()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1470
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->isInNormalState()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    invoke-interface {v2}, Lcom/sonymobile/home/FragmentHandler;->hasOpenDialog()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    invoke-interface {v2}, Lcom/sonymobile/home/IntentHandler;->isRequestPending()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1473
    .local v0, "isInEditModeWithoutOngoingAction":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1476
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    invoke-virtual {v2, v1}, Lcom/sonymobile/home/folder/FolderOpener;->close(Z)V

    .line 1477
    sget-object v1, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->APPTRAY_STATE_NORMAL:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    invoke-direct {p0, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->setState(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;)V

    .line 1479
    :cond_0
    return-void

    .end local v0    # "isInEditModeWithoutOngoingAction":Z
    :cond_1
    move v0, v1

    .line 1470
    goto :goto_0
.end method

.method public onScroll(FFF)V
    .locals 0
    .param p1, "position"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 1685
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->handlePageIndicatorViewUpdate(FF)V

    .line 1686
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1355
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->setContentChangeEnabled(Z)V

    .line 1356
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->enableItemAnimations(Z)V

    .line 1357
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->enableItemAnimations(Z)V

    .line 1375
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->setContentChangeEnabled(Z)V

    .line 1377
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayView;->onStop()V

    .line 1378
    return-void
.end method

.method protected prepareForSearchActivityLaunch()V
    .locals 0

    .prologue
    .line 1820
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->prepareCloseSearch()V

    .line 1821
    return-void
.end method

.method public refreshViewContent()V
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->onModelChanged()V

    .line 1326
    return-void
.end method

.method public setAdapter(Lcom/sonymobile/home/apptray/AppTrayAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/sonymobile/home/apptray/AppTrayAdapter;

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;

    .line 1330
    return-void
.end method

.method public setSorter(Lcom/sonymobile/home/apptray/AppTraySorter;)V
    .locals 0
    .param p1, "sorter"    # Lcom/sonymobile/home/apptray/AppTraySorter;

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTraySorter:Lcom/sonymobile/home/apptray/AppTraySorter;

    .line 1334
    return-void
.end method

.method public setView(Lcom/sonymobile/home/apptray/AppTrayView;)V
    .locals 3
    .param p1, "view"    # Lcom/sonymobile/home/apptray/AppTrayView;

    .prologue
    .line 1314
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->setPageViewGroup(Lcom/sonymobile/home/ui/pageview/PageViewGroup;)V

    .line 1315
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    .line 1316
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    const-string v1, "DropTarget.DropTarget"

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDropTarget:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/apptray/AppTrayView;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1317
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    const-string v1, "DropTarget.IsBackgroundDropTarget"

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->setProperty(Ljava/lang/Object;)V

    .line 1318
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/apptray/AppTrayView;->addTouchListener(Lcom/sonymobile/home/apptray/AppTrayView$AppTrayViewTouchListener;)V

    .line 1319
    return-void
.end method

.method public updateConfiguration(Lcom/sonymobile/grid/Grid;)V
    .locals 4
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    const/4 v3, 0x1

    .line 1341
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mGrid:Lcom/sonymobile/grid/Grid;

    .line 1343
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1344
    .local v0, "value":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070012

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1345
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderHintScaleFactor:F

    .line 1346
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDropTarget:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mFolderHintManager:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$5800(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderHintScaleFactor:F

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;->setFolderHintScaleFactor(F)V

    .line 1348
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1349
    .restart local v0    # "value":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070002

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1351
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayActionBar:Lcom/sonymobile/home/apptray/AppTrayActionBar;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/apptray/AppTrayActionBar;->updateConfiguration(Lcom/sonymobile/grid/Grid;)V

    .line 1352
    return-void
.end method

.method public wasInEditStateAtTransferStart()Z
    .locals 2

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mStateAtTransferStart:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    sget-object v1, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->APPTRAY_STATE_EDIT:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wasSearchCancelled()Z
    .locals 1

    .prologue
    .line 1394
    iget-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter;->mSearchCancelled:Z

    return v0
.end method
