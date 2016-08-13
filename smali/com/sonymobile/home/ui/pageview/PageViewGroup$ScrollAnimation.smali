.class Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;
.super Lcom/sonymobile/flix/util/Animation;
.source "PageViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/ui/pageview/PageViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollAnimation"
.end annotation


# instance fields
.field private final mEndPosition:F

.field private final mStartPosition:F

.field final synthetic this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/ui/pageview/PageViewGroup;FF)V
    .locals 0
    .param p2, "startPosition"    # F
    .param p3, "endPosition"    # F

    .prologue
    .line 1576
    iput-object p1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    .line 1577
    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation;-><init>()V

    .line 1579
    iput p2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;->mStartPosition:F

    .line 1580
    iput p3, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;->mEndPosition:F

    .line 1581
    return-void
.end method


# virtual methods
.method public onAddedTo(Lcom/sonymobile/flix/util/Scheduler;)V
    .locals 1
    .param p1, "scheduler"    # Lcom/sonymobile/flix/util/Scheduler;

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->notifyInteractionStart()V

    .line 1586
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    iget-object v0, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    iget-object v0, v0, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->mScrollController:Lcom/sonymobile/flix/util/ListTouchHelper;

    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    invoke-virtual {v1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getCurrentPage()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/ListTouchHelper;->moveTo(F)V

    .line 1600
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->notifyInteractionEnd()V

    .line 1601
    return-void
.end method

.method public onUpdate(FF)V
    .locals 3
    .param p1, "fraction"    # F
    .param p2, "delta"    # F

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    iget v1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;->mStartPosition:F

    iget v2, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;->mEndPosition:F

    invoke-static {v1, v2, p1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;->interpolate(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->setScrollPosition(F)V

    .line 1591
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->updateFromTouch()V

    .line 1592
    return-void
.end method
