.class Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$2;
.super Lcom/sonymobile/flix/util/Animation;
.source "DesktopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;-><init>(Lcom/sonymobile/home/desktop/DesktopView;Lcom/sonymobile/home/ui/pageview/PageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;

.field final synthetic val$pageIndex:I

.field final synthetic val$this$0:Lcom/sonymobile/home/desktop/DesktopView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;JJLcom/sonymobile/home/desktop/DesktopView;I)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$2;->this$1:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;

    iput-object p6, p0, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$2;->val$this$0:Lcom/sonymobile/home/desktop/DesktopView;

    iput p7, p0, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$2;->val$pageIndex:I

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sonymobile/flix/util/Animation;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    .prologue
    .line 1523
    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$2;->val$pageIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$2;->this$1:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;

    iget-object v4, v4, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/DesktopView;->getLeftmostPage()I

    move-result v4

    sub-int v0, v3, v4

    .line 1524
    .local v0, "firstPage":I
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$2;->this$1:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;

    iget-object v3, v3, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopView;->getRightmostPage()I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$2;->this$1:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;

    iget-object v4, v4, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/DesktopView;->getLeftmostPage()I

    move-result v4

    sub-int v2, v3, v4

    .line 1525
    .local v2, "lastPage":I
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-gt v1, v2, :cond_0

    .line 1526
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$2;->this$1:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;

    iget-object v3, v3, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopView;->access$1700(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/flix/components/Typed$Group;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/ui/pageview/PageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/ui/pageview/PageView;->setPagePositionOffset(F)V

    .line 1525
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1528
    :cond_0
    return-void
.end method

.method public onUpdate(FF)V
    .locals 5
    .param p1, "value"    # F
    .param p2, "delta"    # F

    .prologue
    .line 1511
    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$2;->val$pageIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$2;->this$1:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;

    iget-object v4, v4, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/DesktopView;->getLeftmostPage()I

    move-result v4

    sub-int v0, v3, v4

    .line 1512
    .local v0, "firstPage":I
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$2;->this$1:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;

    iget-object v3, v3, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopView;->getRightmostPage()I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$2;->this$1:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;

    iget-object v4, v4, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/DesktopView;->getLeftmostPage()I

    move-result v4

    sub-int v2, v3, v4

    .line 1513
    .local v2, "lastPage":I
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-gt v1, v2, :cond_0

    .line 1514
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$2;->this$1:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;

    iget-object v3, v3, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mPages:Lcom/sonymobile/flix/components/Typed$Group;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopView;->access$1500(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/flix/components/Typed$Group;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/flix/components/Typed$Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/ui/pageview/PageView;

    neg-float v4, p1

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/ui/pageview/PageView;->setPagePositionOffset(F)V

    .line 1513
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1516
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$2;->this$1:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;

    iget-object v3, v3, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # invokes: Lcom/sonymobile/home/desktop/DesktopView;->updateFromTouch()V
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopView;->access$1600(Lcom/sonymobile/home/desktop/DesktopView;)V

    .line 1517
    return-void
.end method
