.class public Lcom/sonymobile/home/stage/Stage;
.super Lcom/sonymobile/home/LifeCycleBase;
.source "Stage.java"


# instance fields
.field private final mScene:Lcom/sonymobile/flix/components/Scene;

.field private mStageAdapter:Lcom/sonymobile/home/stage/StageAdapter;

.field private final mStageModel:Lcom/sonymobile/home/stage/StageModel;

.field private mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

.field private mStageView:Lcom/sonymobile/home/stage/StageView;

.field private final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/transfer/TransferView;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/search/SearchableModelsWrapper;)V
    .locals 12
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p4, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p5, "statisticsManager"    # Lcom/sonymobile/home/statistics/StatisticsManager;
    .param p6, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p7, "transferView"    # Lcom/sonymobile/home/transfer/TransferView;
    .param p8, "itemCreator"    # Lcom/sonymobile/home/data/ItemCreator;
    .param p9, "folderOpener"    # Lcom/sonymobile/home/folder/FolderOpener;
    .param p10, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p11, "intentHandler"    # Lcom/sonymobile/home/IntentHandler;
    .param p12, "dialogHandler"    # Lcom/sonymobile/home/DialogHandler;
    .param p13, "fragmentHandler"    # Lcom/sonymobile/home/FragmentHandler;
    .param p14, "searchableModelsWrapper"    # Lcom/sonymobile/home/search/SearchableModelsWrapper;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/sonymobile/home/LifeCycleBase;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/sonymobile/home/stage/Stage;->mScene:Lcom/sonymobile/flix/components/Scene;

    move-object v11, p2

    .line 77
    check-cast v11, Lcom/sonymobile/home/HomeApplication;

    .line 78
    .local v11, "homeApplication":Lcom/sonymobile/home/HomeApplication;
    invoke-virtual {v11}, Lcom/sonymobile/home/HomeApplication;->getStageModel()Lcom/sonymobile/home/stage/StageModel;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/stage/Stage;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    .line 79
    iget-object v1, p0, Lcom/sonymobile/home/stage/Stage;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/stage/StageModel;->setResourceHandler(Lcom/sonymobile/home/model/ResourceHandler;)V

    .line 80
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/sonymobile/home/stage/Stage;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    move-object v1, p0

    move-object v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p13

    move-object/from16 v10, p14

    .line 81
    invoke-virtual/range {v1 .. v10}, Lcom/sonymobile/home/stage/Stage;->createPresenter(Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/search/SearchableModelsWrapper;)Lcom/sonymobile/home/stage/StagePresenter;

    .line 83
    iget-object v1, p0, Lcom/sonymobile/home/stage/Stage;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/stage/StagePresenter;->setFolderOpener(Lcom/sonymobile/home/folder/FolderOpener;)V

    .line 84
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/stage/Stage;->createStageView(Lcom/sonymobile/grid/Grid;)Lcom/sonymobile/home/stage/StageView;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/stage/Stage;->mStageView:Lcom/sonymobile/home/stage/StageView;

    .line 85
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/Stage;->initializeView()V

    .line 86
    iget-object v1, p0, Lcom/sonymobile/home/stage/Stage;->mStageView:Lcom/sonymobile/home/stage/StageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/stage/StageView;->setVisible(Z)V

    .line 87
    return-void
.end method


# virtual methods
.method public addStagePresenterListener(Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;)V
    .locals 1
    .param p1, "stagePresenterListener"    # Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sonymobile/home/stage/Stage;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/stage/StagePresenter;->addStagePresenterListener(Lcom/sonymobile/home/stage/StagePresenter$StagePresenterListener;)V

    .line 164
    return-void
.end method

.method public createPresenter(Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/search/SearchableModelsWrapper;)Lcom/sonymobile/home/stage/StagePresenter;
    .locals 15
    .param p1, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p2, "statManager"    # Lcom/sonymobile/home/statistics/StatisticsManager;
    .param p3, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p4, "transferHandler"    # Lcom/sonymobile/home/transfer/TransferHandler;
    .param p5, "creator"    # Lcom/sonymobile/home/data/ItemCreator;
    .param p6, "intentHandler"    # Lcom/sonymobile/home/IntentHandler;
    .param p7, "dialogHandler"    # Lcom/sonymobile/home/DialogHandler;
    .param p8, "fragmentHandler"    # Lcom/sonymobile/home/FragmentHandler;
    .param p9, "searchableModelsWrapper"    # Lcom/sonymobile/home/search/SearchableModelsWrapper;

    .prologue
    .line 129
    new-instance v1, Lcom/sonymobile/home/stage/StagePresenter;

    iget-object v2, p0, Lcom/sonymobile/home/stage/Stage;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v3, p0, Lcom/sonymobile/home/stage/Stage;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    iget-object v13, p0, Lcom/sonymobile/home/stage/Stage;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p1

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v1 .. v13}, Lcom/sonymobile/home/stage/StagePresenter;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/stage/StageModel;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/search/SearchableModelsWrapper;Lcom/sonymobile/home/settings/UserSettings;)V

    iput-object v1, p0, Lcom/sonymobile/home/stage/Stage;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    .line 133
    iget-object v1, p0, Lcom/sonymobile/home/stage/Stage;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    instance-of v1, v1, Lcom/sonymobile/home/stage/dynamic/DynamicStageModel;

    if-eqz v1, :cond_0

    .line 134
    new-instance v1, Lcom/sonymobile/home/stage/dynamic/DynamicStageAdapter;

    iget-object v2, p0, Lcom/sonymobile/home/stage/Stage;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    iget-object v3, p0, Lcom/sonymobile/home/stage/Stage;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v4, p0, Lcom/sonymobile/home/stage/Stage;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    move-object/from16 v0, p3

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageAdapter;-><init>(Lcom/sonymobile/home/stage/StageModel;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;Lcom/sonymobile/grid/Grid;)V

    iput-object v1, p0, Lcom/sonymobile/home/stage/Stage;->mStageAdapter:Lcom/sonymobile/home/stage/StageAdapter;

    .line 135
    new-instance v14, Lcom/sonymobile/home/stage/dynamic/DynamicStageHintPositionCalculator;

    iget-object v1, p0, Lcom/sonymobile/home/stage/Stage;->mStageAdapter:Lcom/sonymobile/home/stage/StageAdapter;

    invoke-direct {v14, v1}, Lcom/sonymobile/home/stage/dynamic/DynamicStageHintPositionCalculator;-><init>(Lcom/sonymobile/home/stage/StageAdapter;)V

    .line 140
    .local v14, "stageHintPositionCalculator":Lcom/sonymobile/home/stage/StageHintPositionCalculator;
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/home/stage/Stage;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    iget-object v2, p0, Lcom/sonymobile/home/stage/Stage;->mStageAdapter:Lcom/sonymobile/home/stage/StageAdapter;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/stage/StagePresenter;->setAdapter(Lcom/sonymobile/home/stage/StageAdapter;)V

    .line 141
    iget-object v1, p0, Lcom/sonymobile/home/stage/Stage;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    invoke-virtual {v1, v14}, Lcom/sonymobile/home/stage/StagePresenter;->setStageHintPositionCalculator(Lcom/sonymobile/home/stage/StageHintPositionCalculator;)V

    .line 142
    iget-object v1, p0, Lcom/sonymobile/home/stage/Stage;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    iget-object v2, p0, Lcom/sonymobile/home/stage/Stage;->mStageAdapter:Lcom/sonymobile/home/stage/StageAdapter;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/stage/StageModel;->addModelObserver(Lcom/sonymobile/home/model/ModelObserver;)V

    .line 143
    iget-object v1, p0, Lcom/sonymobile/home/stage/Stage;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    return-object v1

    .line 137
    .end local v14    # "stageHintPositionCalculator":Lcom/sonymobile/home/stage/StageHintPositionCalculator;
    :cond_0
    new-instance v1, Lcom/sonymobile/home/stage/fixed/FixedStageAdapter;

    iget-object v2, p0, Lcom/sonymobile/home/stage/Stage;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    iget-object v3, p0, Lcom/sonymobile/home/stage/Stage;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v4, p0, Lcom/sonymobile/home/stage/Stage;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    move-object/from16 v0, p3

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sonymobile/home/stage/fixed/FixedStageAdapter;-><init>(Lcom/sonymobile/home/stage/StageModel;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;Lcom/sonymobile/grid/Grid;)V

    iput-object v1, p0, Lcom/sonymobile/home/stage/Stage;->mStageAdapter:Lcom/sonymobile/home/stage/StageAdapter;

    .line 138
    new-instance v14, Lcom/sonymobile/home/stage/fixed/FixedStageHintPositionCalculator;

    invoke-direct {v14}, Lcom/sonymobile/home/stage/fixed/FixedStageHintPositionCalculator;-><init>()V

    .restart local v14    # "stageHintPositionCalculator":Lcom/sonymobile/home/stage/StageHintPositionCalculator;
    goto :goto_0
.end method

.method public createStageView(Lcom/sonymobile/grid/Grid;)Lcom/sonymobile/home/stage/StageView;
    .locals 3
    .param p1, "grid"    # Lcom/sonymobile/grid/Grid;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonymobile/home/stage/Stage;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    instance-of v0, v0, Lcom/sonymobile/home/stage/dynamic/DynamicStageModel;

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;

    iget-object v1, p0, Lcom/sonymobile/home/stage/Stage;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v2, p0, Lcom/sonymobile/home/stage/Stage;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/home/stage/dynamic/DynamicStageView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/settings/UserSettings;)V

    iput-object v0, p0, Lcom/sonymobile/home/stage/Stage;->mStageView:Lcom/sonymobile/home/stage/StageView;

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/stage/Stage;->mStageView:Lcom/sonymobile/home/stage/StageView;

    return-object v0

    .line 107
    :cond_0
    new-instance v0, Lcom/sonymobile/home/stage/fixed/FixedStageView;

    iget-object v1, p0, Lcom/sonymobile/home/stage/Stage;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v2, p0, Lcom/sonymobile/home/stage/Stage;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/home/stage/fixed/FixedStageView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/settings/UserSettings;)V

    iput-object v0, p0, Lcom/sonymobile/home/stage/Stage;->mStageView:Lcom/sonymobile/home/stage/StageView;

    goto :goto_0
.end method

.method public getModel()Lcom/sonymobile/home/stage/StageModel;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonymobile/home/stage/Stage;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    return-object v0
.end method

.method public getPresenter()Lcom/sonymobile/home/stage/StagePresenter;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonymobile/home/stage/Stage;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    return-object v0
.end method

.method public getView()Lcom/sonymobile/home/stage/StageView;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonymobile/home/stage/Stage;->mStageView:Lcom/sonymobile/home/stage/StageView;

    return-object v0
.end method

.method public initializeView()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonymobile/home/stage/Stage;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    iget-object v1, p0, Lcom/sonymobile/home/stage/Stage;->mStageView:Lcom/sonymobile/home/stage/StageView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/stage/StagePresenter;->setView(Lcom/sonymobile/home/stage/StageView;)V

    .line 122
    iget-object v0, p0, Lcom/sonymobile/home/stage/Stage;->mStageView:Lcom/sonymobile/home/stage/StageView;

    iget-object v1, p0, Lcom/sonymobile/home/stage/Stage;->mStageAdapter:Lcom/sonymobile/home/stage/StageAdapter;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/stage/StageView;->setAdapter(Lcom/sonymobile/home/ui/pageview/PageViewAdapter;)V

    .line 123
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonymobile/home/stage/Stage;->mStageModel:Lcom/sonymobile/home/stage/StageModel;

    iget-object v1, p0, Lcom/sonymobile/home/stage/Stage;->mStageAdapter:Lcom/sonymobile/home/stage/StageAdapter;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/stage/StageModel;->removeModelObserver(Lcom/sonymobile/home/model/ModelObserver;)V

    .line 92
    iget-object v0, p0, Lcom/sonymobile/home/stage/Stage;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StagePresenter;->onDestroy()V

    .line 93
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonymobile/home/stage/Stage;->mStageView:Lcom/sonymobile/home/stage/StageView;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sonymobile/home/stage/Stage;->mStageView:Lcom/sonymobile/home/stage/StageView;

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StageView;->onDetach()V

    .line 101
    :cond_0
    return-void
.end method

.method public updateConfiguration()V
    .locals 3

    .prologue
    .line 154
    iget-object v2, p0, Lcom/sonymobile/home/stage/Stage;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v1

    .line 155
    .local v1, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    invoke-static {v1}, Lcom/sonymobile/home/stage/StagePresenter;->createStageGrid(Lcom/sonymobile/home/resources/ResourceManager;)Lcom/sonymobile/grid/Grid;

    move-result-object v0

    .line 157
    .local v0, "grid":Lcom/sonymobile/grid/Grid;
    iget-object v2, p0, Lcom/sonymobile/home/stage/Stage;->mStageView:Lcom/sonymobile/home/stage/StageView;

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/stage/StageView;->updateConfiguration(Lcom/sonymobile/grid/Grid;)V

    .line 158
    iget-object v2, p0, Lcom/sonymobile/home/stage/Stage;->mStageAdapter:Lcom/sonymobile/home/stage/StageAdapter;

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/stage/StageAdapter;->updateConfiguration(Lcom/sonymobile/grid/Grid;)V

    .line 159
    iget-object v2, p0, Lcom/sonymobile/home/stage/Stage;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/stage/StagePresenter;->updateConfiguration(Lcom/sonymobile/grid/Grid;)V

    .line 160
    return-void
.end method
