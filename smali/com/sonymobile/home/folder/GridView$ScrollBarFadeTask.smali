.class Lcom/sonymobile/home/folder/GridView$ScrollBarFadeTask;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Scheduler$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/folder/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollBarFadeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/GridView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/folder/GridView;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lcom/sonymobile/home/folder/GridView$ScrollBarFadeTask;->this$0:Lcom/sonymobile/home/folder/GridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/folder/GridView;Lcom/sonymobile/home/folder/GridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/folder/GridView;
    .param p2, "x1"    # Lcom/sonymobile/home/folder/GridView$1;

    .prologue
    .line 786
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/GridView$ScrollBarFadeTask;-><init>(Lcom/sonymobile/home/folder/GridView;)V

    return-void
.end method


# virtual methods
.method public onUpdate(J)Z
    .locals 3
    .param p1, "now"    # J

    .prologue
    .line 790
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView$ScrollBarFadeTask;->this$0:Lcom/sonymobile/home/folder/GridView;

    # getter for: Lcom/sonymobile/home/folder/GridView;->mScrollBarFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;
    invoke-static {v0}, Lcom/sonymobile/home/folder/GridView;->access$1300(Lcom/sonymobile/home/folder/GridView;)Lcom/sonymobile/flix/util/SpringDynamics;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/flix/util/SpringDynamics;->update(J)V

    .line 792
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView$ScrollBarFadeTask;->this$0:Lcom/sonymobile/home/folder/GridView;

    # getter for: Lcom/sonymobile/home/folder/GridView;->mScrollbar:Lcom/sonymobile/flix/components/Rectangle;
    invoke-static {v0}, Lcom/sonymobile/home/folder/GridView;->access$1100(Lcom/sonymobile/home/folder/GridView;)Lcom/sonymobile/flix/components/Rectangle;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/folder/GridView$ScrollBarFadeTask;->this$0:Lcom/sonymobile/home/folder/GridView;

    # getter for: Lcom/sonymobile/home/folder/GridView;->mScrollBarFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;
    invoke-static {v1}, Lcom/sonymobile/home/folder/GridView;->access$1300(Lcom/sonymobile/home/folder/GridView;)Lcom/sonymobile/flix/util/SpringDynamics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/flix/util/SpringDynamics;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Rectangle;->setAlpha(F)V

    .line 793
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView$ScrollBarFadeTask;->this$0:Lcom/sonymobile/home/folder/GridView;

    # getter for: Lcom/sonymobile/home/folder/GridView;->mScrollBarFadeDynamics:Lcom/sonymobile/flix/util/SpringDynamics;
    invoke-static {v0}, Lcom/sonymobile/home/folder/GridView;->access$1300(Lcom/sonymobile/home/folder/GridView;)Lcom/sonymobile/flix/util/SpringDynamics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/SpringDynamics;->isAtRest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/sonymobile/home/folder/GridView$ScrollBarFadeTask;->this$0:Lcom/sonymobile/home/folder/GridView;

    # invokes: Lcom/sonymobile/home/folder/GridView;->invalidate()V
    invoke-static {v0}, Lcom/sonymobile/home/folder/GridView;->access$1200(Lcom/sonymobile/home/folder/GridView;)V

    .line 796
    const/4 v0, 0x1

    .line 798
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
