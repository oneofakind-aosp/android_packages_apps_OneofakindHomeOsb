.class final Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;
.super Lcom/sonymobile/home/folder/FolderHintManager;
.source "AppTrayPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppTrayFolderHintManager"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/flix/components/Scene;)V
    .locals 2
    .param p2, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    .line 305
    iget-object v0, p1, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mFolderHintScaleFactor:F
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$700(Lcom/sonymobile/home/apptray/AppTrayPresenter;)F

    move-result v0

    iget-object v1, p1, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$800(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/settings/UserSettings;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/sonymobile/home/folder/FolderHintManager;-><init>(Lcom/sonymobile/flix/components/Scene;FLcom/sonymobile/home/settings/UserSettings;)V

    .line 306
    return-void
.end method


# virtual methods
.method protected getHiddenItemId()J
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHiddenItemId:J
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$1300(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected moveToCurrentPage()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->moveHintViewToCurrentPage()V
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$1500(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)V

    .line 351
    return-void
.end method

.method protected postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPostman:Landroid/view/View;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$900(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method protected removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPostman:Landroid/view/View;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$900(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 311
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->resetFolderHint()V
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$1000(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)V

    .line 321
    return-void
.end method

.method protected setFolderHintView(Lcom/sonymobile/flix/components/Image;)V
    .locals 1
    .param p1, "folderHintView"    # Lcom/sonymobile/flix/components/Image;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # setter for: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHintView:Lcom/sonymobile/flix/components/Image;
    invoke-static {v0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$1102(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/flix/components/Image;)Lcom/sonymobile/flix/components/Image;

    .line 326
    return-void
.end method

.method protected setHiddenItemId(J)V
    .locals 1
    .param p1, "hiddenItemId"    # J

    .prologue
    .line 335
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # setter for: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHiddenItemId:J
    invoke-static {v0, p1, p2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$1302(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;J)J

    .line 336
    return-void
.end method

.method protected setHiddenView(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 1
    .param p1, "hiddenView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # setter for: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHiddenView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$1202(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/home/ui/pageview/PageItemView;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 331
    return-void
.end method

.method protected setOverlappedFolderId(J)V
    .locals 1
    .param p1, "overlappedFolderId"    # J

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # setter for: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mOverlappedFolderId:J
    invoke-static {v0, p1, p2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$1402(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;J)J

    .line 346
    return-void
.end method
