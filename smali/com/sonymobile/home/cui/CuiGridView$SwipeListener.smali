.class Lcom/sonymobile/home/cui/CuiGridView$SwipeListener;
.super Lcom/sonymobile/flix/util/ListTouchHelper$Listener$Adapter;
.source "CuiGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/cui/CuiGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwipeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/cui/CuiGridView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/cui/CuiGridView;)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridView$SwipeListener;->this$0:Lcom/sonymobile/home/cui/CuiGridView;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/ListTouchHelper$Listener$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/home/cui/CuiGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/cui/CuiGridView;
    .param p2, "x1"    # Lcom/sonymobile/home/cui/CuiGridView$1;

    .prologue
    .line 745
    invoke-direct {p0, p1}, Lcom/sonymobile/home/cui/CuiGridView$SwipeListener;-><init>(Lcom/sonymobile/home/cui/CuiGridView;)V

    return-void
.end method


# virtual methods
.method public onMove(FF)V
    .locals 2
    .param p1, "position"    # F
    .param p2, "velocity"    # F

    .prologue
    .line 759
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView$SwipeListener;->this$0:Lcom/sonymobile/home/cui/CuiGridView;

    const/high16 v1, 0x3f000000    # 0.5f

    # invokes: Lcom/sonymobile/home/cui/CuiGridView;->animateScrollbarAlphaTo(F)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/cui/CuiGridView;->access$700(Lcom/sonymobile/home/cui/CuiGridView;F)V

    .line 760
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView$SwipeListener;->this$0:Lcom/sonymobile/home/cui/CuiGridView;

    # invokes: Lcom/sonymobile/home/cui/CuiGridView;->updateFromTouch()V
    invoke-static {v0}, Lcom/sonymobile/home/cui/CuiGridView;->access$800(Lcom/sonymobile/home/cui/CuiGridView;)V

    .line 761
    return-void
.end method

.method public onMoveStarted(FF)V
    .locals 2
    .param p1, "position"    # F
    .param p2, "velocity"    # F

    .prologue
    .line 749
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView$SwipeListener;->this$0:Lcom/sonymobile/home/cui/CuiGridView;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView$SwipeListener;->this$0:Lcom/sonymobile/home/cui/CuiGridView;

    # getter for: Lcom/sonymobile/home/cui/CuiGridView;->mFadeTask:Lcom/sonymobile/home/cui/CuiGridView$FadeTask;
    invoke-static {v1}, Lcom/sonymobile/home/cui/CuiGridView;->access$400(Lcom/sonymobile/home/cui/CuiGridView;)Lcom/sonymobile/home/cui/CuiGridView$FadeTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->hasTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView$SwipeListener;->this$0:Lcom/sonymobile/home/cui/CuiGridView;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView$SwipeListener;->this$0:Lcom/sonymobile/home/cui/CuiGridView;

    # getter for: Lcom/sonymobile/home/cui/CuiGridView;->mFadeTask:Lcom/sonymobile/home/cui/CuiGridView$FadeTask;
    invoke-static {v1}, Lcom/sonymobile/home/cui/CuiGridView;->access$400(Lcom/sonymobile/home/cui/CuiGridView;)Lcom/sonymobile/home/cui/CuiGridView$FadeTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView$SwipeListener;->this$0:Lcom/sonymobile/home/cui/CuiGridView;

    # getter for: Lcom/sonymobile/home/cui/CuiGridView;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v0}, Lcom/sonymobile/home/cui/CuiGridView;->access$600(Lcom/sonymobile/home/cui/CuiGridView;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView$SwipeListener;->this$0:Lcom/sonymobile/home/cui/CuiGridView;

    # getter for: Lcom/sonymobile/home/cui/CuiGridView;->mContainer:Lcom/sonymobile/flix/components/Component;
    invoke-static {v1}, Lcom/sonymobile/home/cui/CuiGridView;->access$500(Lcom/sonymobile/home/cui/CuiGridView;)Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->cancelTouch(Lcom/sonymobile/flix/components/Component;)V

    .line 755
    return-void
.end method

.method public onStop(F)V
    .locals 2
    .param p1, "position"    # F

    .prologue
    .line 765
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView$SwipeListener;->this$0:Lcom/sonymobile/home/cui/CuiGridView;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView$SwipeListener;->this$0:Lcom/sonymobile/home/cui/CuiGridView;

    # getter for: Lcom/sonymobile/home/cui/CuiGridView;->mFadeTask:Lcom/sonymobile/home/cui/CuiGridView$FadeTask;
    invoke-static {v1}, Lcom/sonymobile/home/cui/CuiGridView;->access$400(Lcom/sonymobile/home/cui/CuiGridView;)Lcom/sonymobile/home/cui/CuiGridView$FadeTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->hasTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView$SwipeListener;->this$0:Lcom/sonymobile/home/cui/CuiGridView;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridView$SwipeListener;->this$0:Lcom/sonymobile/home/cui/CuiGridView;

    # getter for: Lcom/sonymobile/home/cui/CuiGridView;->mFadeTask:Lcom/sonymobile/home/cui/CuiGridView$FadeTask;
    invoke-static {v1}, Lcom/sonymobile/home/cui/CuiGridView;->access$400(Lcom/sonymobile/home/cui/CuiGridView;)Lcom/sonymobile/home/cui/CuiGridView$FadeTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView$SwipeListener;->this$0:Lcom/sonymobile/home/cui/CuiGridView;

    const/4 v1, 0x0

    # invokes: Lcom/sonymobile/home/cui/CuiGridView;->animateScrollbarAlphaTo(F)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/cui/CuiGridView;->access$700(Lcom/sonymobile/home/cui/CuiGridView;F)V

    .line 769
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridView$SwipeListener;->this$0:Lcom/sonymobile/home/cui/CuiGridView;

    # invokes: Lcom/sonymobile/home/cui/CuiGridView;->invalidate()V
    invoke-static {v0}, Lcom/sonymobile/home/cui/CuiGridView;->access$900(Lcom/sonymobile/home/cui/CuiGridView;)V

    .line 770
    return-void
.end method
