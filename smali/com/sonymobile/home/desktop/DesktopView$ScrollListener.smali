.class Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;
.super Lcom/sonymobile/flix/util/ListTouchHelper$Listener$Adapter;
.source "DesktopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollListener"
.end annotation


# instance fields
.field mCurrentPage:I

.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/desktop/DesktopView;)V
    .locals 1

    .prologue
    .line 1852
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/ListTouchHelper$Listener$Adapter;-><init>()V

    .line 1853
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->mCurrentPage:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/desktop/DesktopView;Lcom/sonymobile/home/desktop/DesktopView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/desktop/DesktopView;
    .param p2, "x1"    # Lcom/sonymobile/home/desktop/DesktopView$1;

    .prologue
    .line 1852
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;-><init>(Lcom/sonymobile/home/desktop/DesktopView;)V

    return-void
.end method


# virtual methods
.method public onMove(FF)V
    .locals 4
    .param p1, "position"    # F
    .param p2, "velocity"    # F

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mScrollPosition:F
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopView;->access$2700(Lcom/sonymobile/home/desktop/DesktopView;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1873
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/desktop/DesktopView;->setScrollPosition(F)V

    .line 1874
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # invokes: Lcom/sonymobile/home/desktop/DesktopView;->updateFromTouch()V
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopView;->access$2800(Lcom/sonymobile/home/desktop/DesktopView;)V

    .line 1875
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mScrollBackplateVisible:Z
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopView;->access$2900(Lcom/sonymobile/home/desktop/DesktopView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mCurrentZoomLevel:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopView;->access$2600(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->NONE:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    if-eq v0, v1, :cond_0

    .line 1876
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/home/desktop/DesktopView;->hideScrollBackplate(J)V

    .line 1879
    :cond_0
    return-void
.end method

.method public onMoveStarted(FF)V
    .locals 2
    .param p1, "position"    # F
    .param p2, "velocity"    # F

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # invokes: Lcom/sonymobile/home/desktop/DesktopView;->notifyInteractionStart()V
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopView;->access$2300(Lcom/sonymobile/home/desktop/DesktopView;)V

    .line 1860
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopView;->access$2500(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mScrollableContent:Lcom/sonymobile/flix/components/Component;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopView;->access$2400(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->cancelTouch(Lcom/sonymobile/flix/components/Component;)V

    .line 1863
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->mCurrentPage:I

    .line 1865
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mCurrentZoomLevel:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopView;->access$2600(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->NONE:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mCurrentPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopView;->access$500(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->FLAT:Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    if-eq v0, v1, :cond_0

    .line 1866
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->showScrollBackplate()V

    .line 1868
    :cond_0
    return-void
.end method

.method public onStop(F)V
    .locals 7
    .param p1, "position"    # F

    .prologue
    const/16 v6, 0x4000

    .line 1883
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopView;->access$3000(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v0

    .line 1884
    .local v0, "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v1

    .line 1886
    .local v1, "currentPage":I
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->mCurrentPage:I

    if-eq v2, v1, :cond_0

    .line 1887
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mLeftmostAdapterPage:I
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopView;->access$3100(Lcom/sonymobile/home/desktop/DesktopView;)I

    move-result v2

    if-gt v2, v1, :cond_2

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mRightmostAdapterPage:I
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopView;->access$3200(Lcom/sonymobile/home/desktop/DesktopView;)I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 1888
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopView;->access$3300(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08005f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mLeftmostAdapterPage:I
    invoke-static {v5}, Lcom/sonymobile/home/desktop/DesktopView;->access$3400(Lcom/sonymobile/home/desktop/DesktopView;)I

    move-result v5

    sub-int v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v5}, Lcom/sonymobile/home/desktop/DesktopView;->getPageCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->sendEvent(ILjava/lang/String;)V

    .line 1900
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mScrollBackplateVisible:Z
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopView;->access$2900(Lcom/sonymobile/home/desktop/DesktopView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1901
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Lcom/sonymobile/home/desktop/DesktopView;->hideScrollBackplate(J)V

    .line 1904
    :cond_1
    iput v1, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->mCurrentPage:I

    .line 1906
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # invokes: Lcom/sonymobile/home/desktop/DesktopView;->notifyInteractionEnd()V
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopView;->access$3700(Lcom/sonymobile/home/desktop/DesktopView;)V

    .line 1907
    return-void

    .line 1892
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mEnableExpandBoundsPages:Z
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopView;->access$3500(Lcom/sonymobile/home/desktop/DesktopView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1893
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopView$ScrollListener;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopView;->access$3600(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08005e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->sendEvent(ILjava/lang/String;)V

    goto :goto_0
.end method
