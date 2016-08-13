.class Lcom/sonymobile/home/folder/OpenFolderView$FolderView;
.super Lcom/sonymobile/flix/components/TouchArea;
.source "OpenFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/folder/OpenFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderView"
.end annotation


# instance fields
.field private mIgnoreHoverEvent:Z

.field final synthetic this$0:Lcom/sonymobile/home/folder/OpenFolderView;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/folder/OpenFolderView;Lcom/sonymobile/flix/components/Scene;)V
    .locals 1
    .param p2, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    .line 646
    invoke-direct {p0, p2}, Lcom/sonymobile/flix/components/TouchArea;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 643
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->mIgnoreHoverEvent:Z

    .line 647
    return-void
.end method


# virtual methods
.method public onHover(IZFFLandroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 676
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v0

    .line 677
    .local v0, "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 687
    const/16 v1, 0x11

    if-ne p1, v1, :cond_0

    .line 688
    iput-boolean v4, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->mIgnoreHoverEvent:Z

    .line 690
    :cond_0
    if-nez p2, :cond_1

    iget-boolean v1, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->mIgnoreHoverEvent:Z

    if-nez v1, :cond_1

    .line 691
    const/16 v1, 0x4000

    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080066

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->sendEvent(ILjava/lang/String;)V

    .line 695
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->mIgnoreHoverEvent:Z

    .line 699
    :cond_1
    return v4
.end method

.method public onTouch(IZFFLandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # I
    .param p2, "inside"    # Z
    .param p3, "localX"    # F
    .param p4, "localY"    # F
    .param p5, "sourceEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 670
    const/4 v0, 0x0

    return v0
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 651
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/components/TouchArea;->setPosition(FF)V

    .line 652
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderView;->access$700(Lcom/sonymobile/home/folder/OpenFolderView;)Lcom/sonymobile/home/folder/GridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/GridView;->updateCullingArea()V

    .line 653
    return-void
.end method

.method public setX(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 657
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/TouchArea;->setX(F)V

    .line 658
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderView;->access$700(Lcom/sonymobile/home/folder/OpenFolderView;)Lcom/sonymobile/home/folder/GridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/GridView;->updateCullingArea()V

    .line 659
    return-void
.end method

.method public setY(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 663
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/TouchArea;->setY(F)V

    .line 664
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderView;->this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderView;->mGridView:Lcom/sonymobile/home/folder/GridView;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderView;->access$700(Lcom/sonymobile/home/folder/OpenFolderView;)Lcom/sonymobile/home/folder/GridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/GridView;->updateCullingArea()V

    .line 665
    return-void
.end method
