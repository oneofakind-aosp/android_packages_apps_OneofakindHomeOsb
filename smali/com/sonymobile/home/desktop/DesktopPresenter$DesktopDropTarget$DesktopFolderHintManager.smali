.class final Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$DesktopFolderHintManager;
.super Lcom/sonymobile/home/folder/FolderHintManager;
.source "DesktopPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DesktopFolderHintManager"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;Lcom/sonymobile/flix/components/Scene;)V
    .locals 2
    .param p2, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$DesktopFolderHintManager;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    .line 494
    const v0, 0x3fa66666    # 1.3f

    iget-object v1, p1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$300(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/settings/UserSettings;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/sonymobile/home/folder/FolderHintManager;-><init>(Lcom/sonymobile/flix/components/Scene;FLcom/sonymobile/home/settings/UserSettings;)V

    .line 495
    return-void
.end method


# virtual methods
.method protected getHiddenItemId()J
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$DesktopFolderHintManager;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-wide v0, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mHiddenItemId:J

    return-wide v0
.end method

.method protected moveToCurrentPage()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$DesktopFolderHintManager;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->moveHintViewToCurrentPage()V
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->access$900(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;)V

    .line 540
    return-void
.end method

.method protected postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 504
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$DesktopFolderHintManager;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPostman:Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->access$400(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;)Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;

    move-result-object v0

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->postDelayed(Ljava/lang/Runnable;J)Z
    invoke-static {v0, p1, p2, p3}, Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->access$600(Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method protected removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$DesktopFolderHintManager;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mPostman:Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->access$400(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;)Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;

    move-result-object v0

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->removeCallbacks(Ljava/lang/Runnable;)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->access$500(Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;Ljava/lang/Runnable;)V

    .line 500
    return-void
.end method

.method protected reset()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$DesktopFolderHintManager;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    const/4 v1, 0x1

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->resetFolderHint(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->access$700(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;Z)V

    .line 510
    return-void
.end method

.method protected setFolderHintView(Lcom/sonymobile/flix/components/Image;)V
    .locals 1
    .param p1, "folderHintView"    # Lcom/sonymobile/flix/components/Image;

    .prologue
    .line 514
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$DesktopFolderHintManager;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iput-object p1, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mFolderHintView:Lcom/sonymobile/flix/components/Image;

    .line 515
    return-void
.end method

.method protected setHiddenItemId(J)V
    .locals 1
    .param p1, "hiddenItemId"    # J

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$DesktopFolderHintManager;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iput-wide p1, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mHiddenItemId:J

    .line 525
    return-void
.end method

.method protected setHiddenView(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 1
    .param p1, "hiddenView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$DesktopFolderHintManager;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iput-object p1, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mHiddenView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 520
    return-void
.end method

.method protected setOverlappedFolderId(J)V
    .locals 1
    .param p1, "overlappedFolderId"    # J

    .prologue
    .line 534
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$DesktopFolderHintManager;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    # setter for: Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->mOverlappedFolderId:J
    invoke-static {v0, p1, p2}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->access$802(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;J)J

    .line 535
    return-void
.end method
