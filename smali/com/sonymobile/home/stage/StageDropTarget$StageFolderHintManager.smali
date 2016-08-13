.class final Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;
.super Lcom/sonymobile/home/folder/FolderHintManager;
.source "StageDropTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/stage/StageDropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StageFolderHintManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/stage/StageDropTarget;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/stage/StageDropTarget;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 1
    .param p2, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p3, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    .line 115
    const v0, 0x3f933333    # 1.15f

    invoke-direct {p0, p2, v0, p3}, Lcom/sonymobile/home/folder/FolderHintManager;-><init>(Lcom/sonymobile/flix/components/Scene;FLcom/sonymobile/home/settings/UserSettings;)V

    .line 116
    return-void
.end method


# virtual methods
.method protected getHiddenItemId()J
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mHiddenItemId:J
    invoke-static {v0}, Lcom/sonymobile/home/stage/StageDropTarget;->access$400(Lcom/sonymobile/home/stage/StageDropTarget;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected moveToCurrentPage()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # invokes: Lcom/sonymobile/home/stage/StageDropTarget;->moveFolderHintViewToCurrentPage()V
    invoke-static {v0}, Lcom/sonymobile/home/stage/StageDropTarget;->access$600(Lcom/sonymobile/home/stage/StageDropTarget;)V

    .line 161
    return-void
.end method

.method protected positionFolderHint(Lcom/sonymobile/flix/components/Image;J)V
    .locals 10
    .param p1, "folderHintView"    # Lcom/sonymobile/flix/components/Image;
    .param p2, "uniqueId"    # J

    .prologue
    .line 168
    const/4 v7, 0x0

    .line 169
    .local v7, "didLayoutFolderHint":Z
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mStageHintPositionCalculator:Lcom/sonymobile/home/stage/StageHintPositionCalculator;
    invoke-static {v0}, Lcom/sonymobile/home/stage/StageDropTarget;->access$700(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StageHintPositionCalculator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mStageModel:Lcom/sonymobile/home/stage/StageModel;
    invoke-static {v0}, Lcom/sonymobile/home/stage/StageDropTarget;->access$800(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StageModel;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/sonymobile/home/stage/StageModel;->getItemWithId(J)Lcom/sonymobile/home/data/Item;

    move-result-object v8

    .line 171
    .local v8, "item":Lcom/sonymobile/home/data/Item;
    if-nez v8, :cond_2

    const/4 v3, 0x0

    .line 172
    .local v3, "location":Lcom/sonymobile/home/data/ItemLocation;
    :goto_0
    if-eqz v3, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mStageHintPositionCalculator:Lcom/sonymobile/home/stage/StageHintPositionCalculator;
    invoke-static {v0}, Lcom/sonymobile/home/stage/StageDropTarget;->access$700(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StageHintPositionCalculator;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;
    invoke-static {v1}, Lcom/sonymobile/home/stage/StageDropTarget;->access$900(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StagePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/StagePresenter;->getGrid()Lcom/sonymobile/grid/Grid;

    move-result-object v2

    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mAdapter:Lcom/sonymobile/home/stage/StageAdapter;
    invoke-static {v1}, Lcom/sonymobile/home/stage/StageDropTarget;->access$1000(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StageAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/stage/StageAdapter;->getCol(Lcom/sonymobile/home/data/ItemLocation;)I

    move-result v4

    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mAdapter:Lcom/sonymobile/home/stage/StageAdapter;
    invoke-static {v1}, Lcom/sonymobile/home/stage/StageDropTarget;->access$1000(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StageAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/stage/StageAdapter;->getRow(Lcom/sonymobile/home/data/ItemLocation;)I

    move-result v5

    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;
    invoke-static {v1}, Lcom/sonymobile/home/stage/StageDropTarget;->access$900(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StagePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/stage/StagePresenter;->isLandscape()Z

    move-result v6

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/sonymobile/home/stage/StageHintPositionCalculator;->positionFolderHint(Lcom/sonymobile/flix/components/Image;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/data/ItemLocation;IIZ)Z

    move-result v7

    .line 182
    .end local v3    # "location":Lcom/sonymobile/home/data/ItemLocation;
    .end local v8    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    if-nez v7, :cond_1

    .line 183
    invoke-super {p0, p1, p2, p3}, Lcom/sonymobile/home/folder/FolderHintManager;->positionFolderHint(Lcom/sonymobile/flix/components/Image;J)V

    .line 185
    :cond_1
    return-void

    .line 171
    .restart local v8    # "item":Lcom/sonymobile/home/data/Item;
    :cond_2
    invoke-virtual {v8}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    goto :goto_0
.end method

.method protected postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/home/stage/StageDropTarget;->access$000(Lcom/sonymobile/home/stage/StageDropTarget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method protected removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/home/stage/StageDropTarget;->access$000(Lcom/sonymobile/home/stage/StageDropTarget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method protected reset()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    const/4 v1, 0x1

    # invokes: Lcom/sonymobile/home/stage/StageDropTarget;->resetFolderHint(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/stage/StageDropTarget;->access$100(Lcom/sonymobile/home/stage/StageDropTarget;Z)V

    .line 131
    return-void
.end method

.method protected setFolderHintView(Lcom/sonymobile/flix/components/Image;)V
    .locals 1
    .param p1, "folderHintView"    # Lcom/sonymobile/flix/components/Image;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # setter for: Lcom/sonymobile/home/stage/StageDropTarget;->mFolderHintView:Lcom/sonymobile/flix/components/Image;
    invoke-static {v0, p1}, Lcom/sonymobile/home/stage/StageDropTarget;->access$202(Lcom/sonymobile/home/stage/StageDropTarget;Lcom/sonymobile/flix/components/Image;)Lcom/sonymobile/flix/components/Image;

    .line 136
    return-void
.end method

.method protected setHiddenItemId(J)V
    .locals 1
    .param p1, "hiddenItemId"    # J

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # setter for: Lcom/sonymobile/home/stage/StageDropTarget;->mHiddenItemId:J
    invoke-static {v0, p1, p2}, Lcom/sonymobile/home/stage/StageDropTarget;->access$402(Lcom/sonymobile/home/stage/StageDropTarget;J)J

    .line 146
    return-void
.end method

.method protected setHiddenView(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 1
    .param p1, "hiddenView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # setter for: Lcom/sonymobile/home/stage/StageDropTarget;->mHiddenView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v0, p1}, Lcom/sonymobile/home/stage/StageDropTarget;->access$302(Lcom/sonymobile/home/stage/StageDropTarget;Lcom/sonymobile/home/ui/pageview/PageItemView;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 141
    return-void
.end method

.method protected setOverlappedFolderId(J)V
    .locals 1
    .param p1, "overlappedFolderId"    # J

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget$StageFolderHintManager;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # setter for: Lcom/sonymobile/home/stage/StageDropTarget;->mOverlappedFolderId:J
    invoke-static {v0, p1, p2}, Lcom/sonymobile/home/stage/StageDropTarget;->access$502(Lcom/sonymobile/home/stage/StageDropTarget;J)J

    .line 156
    return-void
.end method
