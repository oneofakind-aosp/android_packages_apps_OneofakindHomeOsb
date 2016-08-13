.class public Lcom/sonymobile/home/stage/StagePresenter;
.super Lcom/sonymobile/home/search/SearchablePageViewPresenter;
.source "StagePresenter.java"

# interfaces
.implements Lcom/sonymobile/home/ui/pageview/PageItemViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/stage/StagePresenter$StageOpenFolderListener;,
        Lcom/sonymobile/home/stage/StagePresenter$StageTransferable;,
        Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;
    }
.end annotation


# static fields
.field private static final ANIM_HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ANIM_SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static sSessionAppStartCount:I


# instance fields
.field private mAdapter:Lcom/sonymobile/home/stage/StageAdapter;

.field private mDragItem:Lcom/sonymobile/home/ui/pageview/PageItemView;

.field private final mDragSource:Lcom/sonymobile/home/transfer/DragSource;

.field private final mDropTarget:Lcom/sonymobile/home/stage/StageDropTarget;

.field private mGrid:Lcom/sonymobile/grid/Grid;

.field private mHideAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

.field private mInTransferMode:Z

.field private mIsInEditMode:Z

.field private mLandscape:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchHandler:Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;

.field private mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

.field private final mStageModel:Lcom/sonymobile/home/stage/StageModel;

.field private mStageView:Lcom/sonymobile/home/stage/StageView;

.field private final mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x40200000    # 2.5f

    .line 93
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/sonymobile/home/stage/StagePresenter;->ANIM_SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 95
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/sonymobile/home/stage/StagePresenter;->ANIM_HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/stage/StageModel;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/search/SearchableModelsWrapper;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 10
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "stageModel"    # Lcom/sonymobile/home/stage/StageModel;
    .param p3, "statisticsManager"    # Lcom/sonymobile/home/statistics/StatisticsManager;
    .param p4, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p5, "transferHandler"    # Lcom/sonymobile/home/transfer/TransferHandler;
    .param p6, "creator"    # Lcom/sonymobile/home/data/ItemCreator;
    .param p7, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p8, "intentHandler"    # Lcom/sonymobile/home/IntentHandler;
    .param p9, "dialogHandler"    # Lcom/sonymobile/home/DialogHandler;
    .param p10, "fragmentHandler"    # Lcom/sonymobile/home/FragmentHandler;
    .param p11, "searchableModelsWrapper"    # Lcom/sonymobile/home/search/SearchableModelsWrapper;
    .param p12, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 259
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p7

    move-object v7, p3

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    invoke-direct/range {v0 .. v9}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/search/SearchableModelsWrapper;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mIsInEditMode:Z

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mListeners:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Lcom/sonymobile/home/stage/StagePresenter$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/stage/StagePresenter$1;-><init>(Lcom/sonymobile/home/stage/StagePresenter;)V

    iput-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mDragSource:Lcom/sonymobile/home/transfer/DragSource;

    .line 261
    iput-object p2, p0, Lcom/sonymobile/home/stage/StagePresenter;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    .line 262
    iput-object p5, p0, Lcom/sonymobile/home/stage/StagePresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    .line 263
    new-instance v0, Lcom/sonymobile/home/stage/StageDropTarget;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p6

    move-object v4, p0

    move-object/from16 v5, p12

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/stage/StageDropTarget;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/stage/StageModel;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/stage/StagePresenter;Lcom/sonymobile/home/settings/UserSettings;)V

    iput-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mDropTarget:Lcom/sonymobile/home/stage/StageDropTarget;

    .line 264
    new-instance v0, Lcom/sonymobile/home/stage/StagePresenter$StageOpenFolderListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/home/stage/StagePresenter$StageOpenFolderListener;-><init>(Lcom/sonymobile/home/stage/StagePresenter;Lcom/sonymobile/home/stage/StagePresenter$1;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/stage/StagePresenter;->setOpenFolderListener(Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;)V

    .line 265
    invoke-virtual {p0, p4}, Lcom/sonymobile/home/stage/StagePresenter;->updateConfiguration(Lcom/sonymobile/grid/Grid;)V

    .line 266
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/stage/StagePresenter;)Lcom/sonymobile/home/stage/StageModel;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StagePresenter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/stage/StagePresenter;)Lcom/sonymobile/home/stage/StageDropTarget;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StagePresenter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mDropTarget:Lcom/sonymobile/home/stage/StageDropTarget;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/home/stage/StagePresenter;Lcom/sonymobile/home/ui/pageview/PageItemView;)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StagePresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sonymobile/home/stage/StagePresenter;->mDragItem:Lcom/sonymobile/home/ui/pageview/PageItemView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sonymobile/home/stage/StagePresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StagePresenter;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sonymobile/home/stage/StagePresenter;->layoutDropTarget()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/home/stage/StagePresenter;)Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StagePresenter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mOpenFolderListener:Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/stage/StagePresenter;)Lcom/sonymobile/home/folder/FolderOpener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StagePresenter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/stage/StagePresenter;)Lcom/sonymobile/home/stage/StageView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StagePresenter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mStageView:Lcom/sonymobile/home/stage/StageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/stage/StagePresenter;Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StagePresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/stage/StagePresenter;->handleUninstall(Lcom/sonymobile/home/data/Item;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/home/stage/StagePresenter;Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StagePresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/stage/StagePresenter;->showCannotUninstallDialog(Lcom/sonymobile/home/data/Item;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/home/stage/StagePresenter;)Lcom/sonymobile/home/folder/FolderOpener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StagePresenter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/home/stage/StagePresenter;)Lcom/sonymobile/home/folder/FolderOpener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/stage/StagePresenter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    return-object v0
.end method

.method public static createStageGrid(Lcom/sonymobile/home/resources/ResourceManager;)Lcom/sonymobile/grid/Grid;
    .locals 5
    .param p0, "rm"    # Lcom/sonymobile/home/resources/ResourceManager;

    .prologue
    .line 288
    const v4, 0x7f0d000d

    invoke-virtual {p0, v4}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v2

    .line 289
    .local v2, "cols":I
    const v4, 0x7f0d000e

    invoke-virtual {p0, v4}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v3

    .line 290
    .local v3, "rows":I
    const v4, 0x7f0b0022

    invoke-virtual {p0, v4}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v1

    .line 291
    .local v1, "cellWidth":I
    const v4, 0x7f0b0021

    invoke-virtual {p0, v4}, Lcom/sonymobile/home/resources/ResourceManager;->getDimensionPixelSize(I)I

    move-result v0

    .line 292
    .local v0, "cellHeight":I
    new-instance v4, Lcom/sonymobile/grid/Grid;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/sonymobile/grid/Grid;-><init>(IIII)V

    return-object v4
.end method

.method private static doIncrementTrackSessionAppStartCount()I
    .locals 1

    .prologue
    .line 432
    sget v0, Lcom/sonymobile/home/stage/StagePresenter;->sSessionAppStartCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sonymobile/home/stage/StagePresenter;->sSessionAppStartCount:I

    .line 433
    sget v0, Lcom/sonymobile/home/stage/StagePresenter;->sSessionAppStartCount:I

    return v0
.end method

.method private layoutDropTarget()V
    .locals 6

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 327
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mDropTarget:Lcom/sonymobile/home/stage/StageDropTarget;

    iget-object v3, p0, Lcom/sonymobile/home/stage/StagePresenter;->mStageView:Lcom/sonymobile/home/stage/StageView;

    move v4, v1

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;FFLcom/sonymobile/flix/components/Component;FF)V

    .line 328
    return-void
.end method

.method private stopAnimationsIfNeeded()V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/sonymobile/home/stage/StagePresenter;->stopShowAnimationIfNeeded()V

    .line 569
    invoke-direct {p0}, Lcom/sonymobile/home/stage/StagePresenter;->stopHideAnimationIfNeeded()V

    .line 570
    return-void
.end method

.method private stopHideAnimationIfNeeded()V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mHideAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/stage/StagePresenter;->mHideAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mHideAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 584
    :cond_0
    return-void
.end method

.method private stopShowAnimationIfNeeded()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/stage/StagePresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 577
    :cond_0
    return-void
.end method


# virtual methods
.method public addStagePresenterListener(Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    return-void
.end method

.method public enterEditMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 334
    iget-boolean v2, p0, Lcom/sonymobile/home/stage/StagePresenter;->mIsInEditMode:Z

    if-nez v2, :cond_0

    .line 335
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonymobile/home/stage/StagePresenter;->mTrackUninstallCount:I

    .line 336
    iget-object v2, p0, Lcom/sonymobile/home/stage/StagePresenter;->mAdapter:Lcom/sonymobile/home/stage/StageAdapter;

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/stage/StageAdapter;->showItemOptions(Z)V

    .line 337
    iput-boolean v3, p0, Lcom/sonymobile/home/stage/StagePresenter;->mIsInEditMode:Z

    .line 339
    iget-object v2, p0, Lcom/sonymobile/home/stage/StagePresenter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;

    .line 340
    .local v1, "listener":Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;
    invoke-interface {v1}, Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;->onEditModeEnter()V

    goto :goto_0

    .line 343
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;
    :cond_0
    return-void
.end method

.method public enterTransferMode()V
    .locals 3

    .prologue
    .line 375
    iget-boolean v2, p0, Lcom/sonymobile/home/stage/StagePresenter;->mInTransferMode:Z

    if-nez v2, :cond_0

    .line 376
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/home/stage/StagePresenter;->mInTransferMode:Z

    .line 377
    iget-boolean v2, p0, Lcom/sonymobile/home/stage/StagePresenter;->mIsInEditMode:Z

    if-nez v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/sonymobile/home/stage/StagePresenter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;

    .line 379
    .local v1, "listener":Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;
    invoke-interface {v1}, Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;->onTransferModeEnter()V

    goto :goto_0

    .line 383
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;
    :cond_0
    return-void
.end method

.method public exitEditMode()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 349
    iget-boolean v2, p0, Lcom/sonymobile/home/stage/StagePresenter;->mIsInEditMode:Z

    if-eqz v2, :cond_1

    .line 350
    iget-object v2, p0, Lcom/sonymobile/home/stage/StagePresenter;->mAdapter:Lcom/sonymobile/home/stage/StageAdapter;

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/stage/StageAdapter;->showItemOptions(Z)V

    .line 351
    iput-boolean v3, p0, Lcom/sonymobile/home/stage/StagePresenter;->mIsInEditMode:Z

    .line 353
    iget-object v2, p0, Lcom/sonymobile/home/stage/StagePresenter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;

    .line 354
    .local v1, "listener":Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;
    invoke-interface {v1}, Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;->onEditModeExit()V

    goto :goto_0

    .line 356
    .end local v1    # "listener":Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StagePresenter;->getTrackingCategory()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EditMode"

    const-string v4, ""

    iget v5, p0, Lcom/sonymobile/home/stage/StagePresenter;->mTrackUninstallCount:I

    int-to-long v6, v5

    invoke-static {v2, v3, v4, v6, v7}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 360
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public exitTransferMode()V
    .locals 3

    .prologue
    .line 389
    iget-boolean v2, p0, Lcom/sonymobile/home/stage/StagePresenter;->mInTransferMode:Z

    if-eqz v2, :cond_0

    .line 390
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/home/stage/StagePresenter;->mInTransferMode:Z

    .line 391
    iget-boolean v2, p0, Lcom/sonymobile/home/stage/StagePresenter;->mIsInEditMode:Z

    if-nez v2, :cond_0

    .line 392
    iget-object v2, p0, Lcom/sonymobile/home/stage/StagePresenter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;

    .line 393
    .local v1, "listener":Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;
    invoke-interface {v1}, Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;->onTransferModeExit()V

    goto :goto_0

    .line 397
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;
    :cond_0
    return-void
.end method

.method public getCol(F)I
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 520
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mStageView:Lcom/sonymobile/home/stage/StageView;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StageView;->getHorizontalOffset()F

    move-result v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/sonymobile/home/stage/StagePresenter;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v1}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentDragItem()Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mDragItem:Lcom/sonymobile/home/ui/pageview/PageItemView;

    return-object v0
.end method

.method public getGrid()Lcom/sonymobile/grid/Grid;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mGrid:Lcom/sonymobile/grid/Grid;

    return-object v0
.end method

.method protected getPageViewGroupToOpenFolderOn(Lcom/sonymobile/home/data/FolderItem;)Lcom/sonymobile/home/ui/pageview/PageViewGroup;
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    .line 599
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mSearchHandler:Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;->getPageViewGroupToOpenFolderOn(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRow(F)I
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 516
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mStageView:Lcom/sonymobile/home/stage/StageView;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StageView;->getVerticalOffset()F

    move-result v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/sonymobile/home/stage/StagePresenter;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-virtual {v1}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected incrementTrackSessionAppStartCount()I
    .locals 1

    .prologue
    .line 423
    invoke-static {}, Lcom/sonymobile/home/stage/StagePresenter;->doIncrementTrackSessionAppStartCount()I

    move-result v0

    return v0
.end method

.method public isDragLocal()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mDragItem:Lcom/sonymobile/home/ui/pageview/PageItemView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInEditMode()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mIsInEditMode:Z

    return v0
.end method

.method public isLandscape()Z
    .locals 1

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mLandscape:Z

    return v0
.end method

.method protected locateSearchItem(Lcom/sonymobile/home/data/Item;Landroid/content/Intent;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 591
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mSearchHandler:Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;->locateSearchItem(Lcom/sonymobile/home/data/Item;Landroid/content/Intent;)V

    .line 592
    return-void
.end method

.method public onClicked(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 2
    .param p1, "clickedView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 406
    if-nez p1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 410
    .local v0, "clickedItem":Lcom/sonymobile/home/data/Item;
    if-eqz v0, :cond_0

    .line 414
    iget-boolean v1, p0, Lcom/sonymobile/home/stage/StagePresenter;->mIsInEditMode:Z

    if-eqz v1, :cond_2

    .line 415
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/stage/StagePresenter;->handleItemViewClickInEditMode(Lcom/sonymobile/home/ui/pageview/PageItemView;)Z

    goto :goto_0

    .line 417
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/home/stage/StagePresenter;->handleItemViewClickInNormalMode(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mStageView:Lcom/sonymobile/home/stage/StageView;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StageView;->onDestroy()V

    .line 271
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 272
    invoke-super {p0}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->onDestroy()V

    .line 273
    return-void
.end method

.method public onLongPress(Lcom/sonymobile/home/ui/pageview/PageItemView;FF)V
    .locals 10
    .param p1, "pressedView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v9, 0x0

    .line 438
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    invoke-interface {v0}, Lcom/sonymobile/home/transfer/TransferHandler;->isInTransfer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    const/4 v6, 0x6

    .line 446
    .local v6, "actions":I
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v1, p0, Lcom/sonymobile/home/stage/StagePresenter;->mStageView:Lcom/sonymobile/home/stage/StageView;

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/StageView;->getScrollableContent()Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->cancelTouch(Lcom/sonymobile/flix/components/Component;)V

    .line 453
    invoke-virtual {p1, v9}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setVisible(Z)V

    .line 454
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/home/stage/StageModel;->removeItemWithId(J)Lcom/sonymobile/home/data/Item;

    .line 455
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mStageView:Lcom/sonymobile/home/stage/StageView;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StageView;->notifyItemRemoved()V

    .line 458
    iput-object p1, p0, Lcom/sonymobile/home/stage/StagePresenter;->mDragItem:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 461
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    iget-object v1, p0, Lcom/sonymobile/home/stage/StagePresenter;->mDragSource:Lcom/sonymobile/home/transfer/DragSource;

    const/4 v2, 0x6

    new-instance v3, Lcom/sonymobile/home/stage/StagePresenter$StageTransferable;

    invoke-direct {v3, p1}, Lcom/sonymobile/home/stage/StagePresenter$StageTransferable;-><init>(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/home/transfer/TransferHandler;->startTransfer(Lcom/sonymobile/home/transfer/DragSource;ILcom/sonymobile/home/transfer/Transferable;FF)V

    .line 465
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;

    .line 466
    .local v8, "listener":Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;->onLongPressItem(Lcom/sonymobile/home/data/Item;)V

    goto :goto_1

    .line 469
    .end local v8    # "listener":Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mDropTarget:Lcom/sonymobile/home/stage/StageDropTarget;

    invoke-virtual {v0, v9}, Lcom/sonymobile/home/stage/StageDropTarget;->setItemDraggedOutsideOriginalLocation(Z)V

    goto :goto_0
.end method

.method public removeStagePresenterListener(Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 503
    return-void
.end method

.method public setAdapter(Lcom/sonymobile/home/stage/StageAdapter;)V
    .locals 1
    .param p1, "stageAdapter"    # Lcom/sonymobile/home/stage/StageAdapter;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/sonymobile/home/stage/StagePresenter;->mAdapter:Lcom/sonymobile/home/stage/StageAdapter;

    .line 475
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mDropTarget:Lcom/sonymobile/home/stage/StageDropTarget;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mDropTarget:Lcom/sonymobile/home/stage/StageDropTarget;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/stage/StageDropTarget;->setAdapter(Lcom/sonymobile/home/stage/StageAdapter;)V

    .line 478
    :cond_0
    return-void
.end method

.method public setSearchHandler(Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;)V
    .locals 0
    .param p1, "searchHandler"    # Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/sonymobile/home/stage/StagePresenter;->mSearchHandler:Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;

    .line 277
    return-void
.end method

.method public setStageHintPositionCalculator(Lcom/sonymobile/home/stage/StageHintPositionCalculator;)V
    .locals 1
    .param p1, "stageHintPositionCalculator"    # Lcom/sonymobile/home/stage/StageHintPositionCalculator;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mDropTarget:Lcom/sonymobile/home/stage/StageDropTarget;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mDropTarget:Lcom/sonymobile/home/stage/StageDropTarget;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/stage/StageDropTarget;->setStageHintPositionCalculator(Lcom/sonymobile/home/stage/StageHintPositionCalculator;)V

    .line 485
    :cond_0
    return-void
.end method

.method public setView(Lcom/sonymobile/home/stage/StageView;)V
    .locals 3
    .param p1, "view"    # Lcom/sonymobile/home/stage/StageView;

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/stage/StagePresenter;->setPageViewGroup(Lcom/sonymobile/home/ui/pageview/PageViewGroup;)V

    .line 305
    iput-object p1, p0, Lcom/sonymobile/home/stage/StagePresenter;->mStageView:Lcom/sonymobile/home/stage/StageView;

    .line 306
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mStageView:Lcom/sonymobile/home/stage/StageView;

    const-string v1, "DropTarget.DropTarget"

    iget-object v2, p0, Lcom/sonymobile/home/stage/StagePresenter;->mDropTarget:Lcom/sonymobile/home/stage/StageDropTarget;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/stage/StageView;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mStageView:Lcom/sonymobile/home/stage/StageView;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StageView;->getListeners()Lcom/sonymobile/flix/components/ComponentListeners;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/home/stage/StagePresenter$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/stage/StagePresenter$2;-><init>(Lcom/sonymobile/home/stage/StagePresenter;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/ComponentListeners;->addListener(Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;)V

    .line 319
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mStageView:Lcom/sonymobile/home/stage/StageView;

    iget-object v1, p0, Lcom/sonymobile/home/stage/StagePresenter;->mDropTarget:Lcom/sonymobile/home/stage/StageDropTarget;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/stage/StageView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 320
    invoke-direct {p0}, Lcom/sonymobile/home/stage/StagePresenter;->layoutDropTarget()V

    .line 321
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mDropTarget:Lcom/sonymobile/home/stage/StageDropTarget;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mDropTarget:Lcom/sonymobile/home/stage/StageDropTarget;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/stage/StageDropTarget;->setView(Lcom/sonymobile/home/stage/StageView;)V

    .line 324
    :cond_0
    return-void
.end method

.method public startHideAnimation()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 548
    invoke-direct {p0}, Lcom/sonymobile/home/stage/StagePresenter;->stopAnimationsIfNeeded()V

    .line 549
    new-instance v4, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v5, p0, Lcom/sonymobile/home/stage/StagePresenter;->mStageView:Lcom/sonymobile/home/stage/StageView;

    const-wide/16 v6, 0x64

    invoke-direct {v4, v5, v6, v7}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;J)V

    iput-object v4, p0, Lcom/sonymobile/home/stage/StagePresenter;->mHideAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 551
    iget-boolean v4, p0, Lcom/sonymobile/home/stage/StagePresenter;->mLandscape:Z

    if-eqz v4, :cond_0

    .line 552
    iget-object v4, p0, Lcom/sonymobile/home/stage/StagePresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v1

    .line 553
    .local v1, "sceneWidth":F
    iget-object v4, p0, Lcom/sonymobile/home/stage/StagePresenter;->mStageView:Lcom/sonymobile/home/stage/StageView;

    invoke-virtual {v4}, Lcom/sonymobile/home/stage/StageView;->getWidth()F

    move-result v3

    .line 554
    .local v3, "stageWidth":F
    iget-object v4, p0, Lcom/sonymobile/home/stage/StagePresenter;->mHideAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    div-float v5, v1, v8

    div-float v6, v3, v8

    sub-float/2addr v5, v6

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getRightOffset()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    div-float v6, v1, v8

    div-float v7, v3, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setX(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 562
    .end local v1    # "sceneWidth":F
    .end local v3    # "stageWidth":F
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/home/stage/StagePresenter;->mHideAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    sget-object v5, Lcom/sonymobile/home/stage/StagePresenter;->ANIM_HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 563
    iget-object v4, p0, Lcom/sonymobile/home/stage/StagePresenter;->mHideAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInvisibleOnEnd(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 564
    iget-object v4, p0, Lcom/sonymobile/home/stage/StagePresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v5, p0, Lcom/sonymobile/home/stage/StagePresenter;->mHideAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v4, v5}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 565
    return-void

    .line 557
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/home/stage/StagePresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v0

    .line 558
    .local v0, "sceneHeight":F
    iget-object v4, p0, Lcom/sonymobile/home/stage/StagePresenter;->mStageView:Lcom/sonymobile/home/stage/StageView;

    invoke-virtual {v4}, Lcom/sonymobile/home/stage/StageView;->getHeight()F

    move-result v2

    .line 559
    .local v2, "stageHeight":F
    iget-object v4, p0, Lcom/sonymobile/home/stage/StagePresenter;->mHideAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    div-float v5, v0, v8

    div-float v6, v2, v8

    sub-float/2addr v5, v6

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getBottomOffset()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    div-float v6, v0, v8

    div-float v7, v2, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setY(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    goto :goto_0
.end method

.method public startShowAnimation()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 528
    invoke-direct {p0}, Lcom/sonymobile/home/stage/StagePresenter;->stopAnimationsIfNeeded()V

    .line 529
    new-instance v4, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v5, p0, Lcom/sonymobile/home/stage/StagePresenter;->mStageView:Lcom/sonymobile/home/stage/StageView;

    const-wide/16 v6, 0x64

    invoke-direct {v4, v5, v6, v7}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;J)V

    iput-object v4, p0, Lcom/sonymobile/home/stage/StagePresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 531
    iget-boolean v4, p0, Lcom/sonymobile/home/stage/StagePresenter;->mLandscape:Z

    if-eqz v4, :cond_0

    .line 532
    iget-object v4, p0, Lcom/sonymobile/home/stage/StagePresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Scene;->getWidth()F

    move-result v1

    .line 533
    .local v1, "sceneWidth":F
    iget-object v4, p0, Lcom/sonymobile/home/stage/StagePresenter;->mStageView:Lcom/sonymobile/home/stage/StageView;

    invoke-virtual {v4}, Lcom/sonymobile/home/stage/StageView;->getWidth()F

    move-result v3

    .line 534
    .local v3, "stageWidth":F
    iget-object v4, p0, Lcom/sonymobile/home/stage/StagePresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    div-float v5, v1, v8

    div-float v6, v3, v8

    add-float/2addr v5, v6

    div-float v6, v1, v8

    div-float v7, v3, v8

    sub-float/2addr v6, v7

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getRightOffset()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setX(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 542
    .end local v1    # "sceneWidth":F
    .end local v3    # "stageWidth":F
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/home/stage/StagePresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    sget-object v5, Lcom/sonymobile/home/stage/StagePresenter;->ANIM_SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 543
    iget-object v4, p0, Lcom/sonymobile/home/stage/StagePresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setVisibleOnStart(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 544
    iget-object v4, p0, Lcom/sonymobile/home/stage/StagePresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v5, p0, Lcom/sonymobile/home/stage/StagePresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v4, v5}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 545
    return-void

    .line 537
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/home/stage/StagePresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v4}, Lcom/sonymobile/flix/components/Scene;->getHeight()F

    move-result v0

    .line 538
    .local v0, "sceneHeight":F
    iget-object v4, p0, Lcom/sonymobile/home/stage/StagePresenter;->mStageView:Lcom/sonymobile/home/stage/StageView;

    invoke-virtual {v4}, Lcom/sonymobile/home/stage/StageView;->getHeight()F

    move-result v2

    .line 539
    .local v2, "stageHeight":F
    iget-object v4, p0, Lcom/sonymobile/home/stage/StagePresenter;->mShowAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    div-float v5, v0, v8

    div-float v6, v2, v8

    add-float/2addr v5, v6

    div-float v6, v0, v8

    div-float v7, v2, v8

    sub-float/2addr v6, v7

    invoke-static {}, Lcom/sonymobile/home/DisplayData;->getBottomOffset()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setY(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    goto :goto_0
.end method

.method public updateConfiguration(Lcom/sonymobile/grid/Grid;)V
    .locals 1
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/sonymobile/home/stage/StagePresenter;->mGrid:Lcom/sonymobile/grid/Grid;

    .line 507
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-static {v0}, Lcom/sonymobile/home/util/LayoutUtils;->useLandscapeLayout(Lcom/sonymobile/flix/components/Scene;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mLandscape:Z

    .line 510
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mAdapter:Lcom/sonymobile/home/stage/StageAdapter;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/sonymobile/home/stage/StagePresenter;->mAdapter:Lcom/sonymobile/home/stage/StageAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StageAdapter;->onModelOrderChanged()V

    .line 513
    :cond_0
    return-void
.end method
