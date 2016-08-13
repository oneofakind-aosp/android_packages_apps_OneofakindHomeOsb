.class Lcom/sonymobile/home/folder/GridView$TouchScrollListener;
.super Lcom/sonymobile/flix/util/ListTouchHelper$Listener$Adapter;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/folder/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/GridView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/folder/GridView;)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Lcom/sonymobile/home/folder/GridView$TouchScrollListener;->this$0:Lcom/sonymobile/home/folder/GridView;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/ListTouchHelper$Listener$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/folder/GridView;Lcom/sonymobile/home/folder/GridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/folder/GridView;
    .param p2, "x1"    # Lcom/sonymobile/home/folder/GridView$1;

    .prologue
    .line 759
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/GridView$TouchScrollListener;-><init>(Lcom/sonymobile/home/folder/GridView;)V

    return-void
.end method


# virtual methods
.method public onMove(FF)V
    .locals 2
    .param p1, "position"    # F
    .param p2, "velocity"    # F

    .prologue
    .line 768
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView$TouchScrollListener;->this$0:Lcom/sonymobile/home/folder/GridView;

    # getter for: Lcom/sonymobile/home/folder/GridView;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/folder/GridView;->access$500(Lcom/sonymobile/home/folder/GridView;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView$TouchScrollListener;->this$0:Lcom/sonymobile/home/folder/GridView;

    # getter for: Lcom/sonymobile/home/folder/GridView;->mScrollingEnabled:Z
    invoke-static {v0}, Lcom/sonymobile/home/folder/GridView;->access$600(Lcom/sonymobile/home/folder/GridView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView$TouchScrollListener;->this$0:Lcom/sonymobile/home/folder/GridView;

    iget-object v1, p0, Lcom/sonymobile/home/folder/GridView$TouchScrollListener;->this$0:Lcom/sonymobile/home/folder/GridView;

    # getter for: Lcom/sonymobile/home/folder/GridView;->mMaxScrollbarAlpha:F
    invoke-static {v1}, Lcom/sonymobile/home/folder/GridView;->access$700(Lcom/sonymobile/home/folder/GridView;)F

    move-result v1

    # invokes: Lcom/sonymobile/home/folder/GridView;->animateScrollbarAlphaTo(F)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/folder/GridView;->access$800(Lcom/sonymobile/home/folder/GridView;F)V

    .line 770
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView$TouchScrollListener;->this$0:Lcom/sonymobile/home/folder/GridView;

    iget-object v1, p0, Lcom/sonymobile/home/folder/GridView$TouchScrollListener;->this$0:Lcom/sonymobile/home/folder/GridView;

    # getter for: Lcom/sonymobile/home/folder/GridView;->mTouchScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;
    invoke-static {v1}, Lcom/sonymobile/home/folder/GridView;->access$900(Lcom/sonymobile/home/folder/GridView;)Lcom/sonymobile/flix/util/ListTouchHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->getPosition()F

    move-result v1

    # invokes: Lcom/sonymobile/home/folder/GridView;->updateScrollPosition(F)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/folder/GridView;->access$1000(Lcom/sonymobile/home/folder/GridView;F)V

    .line 772
    :cond_0
    return-void
.end method

.method public onMoveStarted(FF)V
    .locals 2
    .param p1, "position"    # F
    .param p2, "velocity"    # F

    .prologue
    .line 763
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView$TouchScrollListener;->this$0:Lcom/sonymobile/home/folder/GridView;

    # getter for: Lcom/sonymobile/home/folder/GridView;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v0}, Lcom/sonymobile/home/folder/GridView;->access$400(Lcom/sonymobile/home/folder/GridView;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/folder/GridView$TouchScrollListener;->this$0:Lcom/sonymobile/home/folder/GridView;

    # getter for: Lcom/sonymobile/home/folder/GridView;->mItemContainer:Lcom/sonymobile/flix/components/Component;
    invoke-static {v1}, Lcom/sonymobile/home/folder/GridView;->access$100(Lcom/sonymobile/home/folder/GridView;)Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->cancelTouch(Lcom/sonymobile/flix/components/Component;)V

    .line 764
    return-void
.end method

.method public onStop(F)V
    .locals 2
    .param p1, "position"    # F

    .prologue
    .line 776
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView$TouchScrollListener;->this$0:Lcom/sonymobile/home/folder/GridView;

    # getter for: Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;
    invoke-static {v0}, Lcom/sonymobile/home/folder/GridView;->access$1100(Lcom/sonymobile/home/folder/GridView;)Lcom/sonymobile/flix/components/Rectangle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView$TouchScrollListener;->this$0:Lcom/sonymobile/home/folder/GridView;

    const/4 v1, 0x0

    # invokes: Lcom/sonymobile/home/folder/GridView;->animateScrollbarAlphaTo(F)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/folder/GridView;->access$800(Lcom/sonymobile/home/folder/GridView;F)V

    .line 778
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView$TouchScrollListener;->this$0:Lcom/sonymobile/home/folder/GridView;

    # invokes: Lcom/sonymobile/home/folder/GridView;->invalidate()V
    invoke-static {v0}, Lcom/sonymobile/home/folder/GridView;->access$1200(Lcom/sonymobile/home/folder/GridView;)V

    .line 780
    :cond_0
    return-void
.end method
