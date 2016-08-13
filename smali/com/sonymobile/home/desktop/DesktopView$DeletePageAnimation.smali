.class Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;
.super Lcom/sonymobile/flix/util/AnimationSet;
.source "DesktopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeletePageAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopView;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/desktop/DesktopView;Lcom/sonymobile/home/ui/pageview/PageView;)V
    .locals 13
    .param p2, "pageViewToDelete"    # Lcom/sonymobile/home/ui/pageview/PageView;

    .prologue
    const-wide/16 v2, 0x12c

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1478
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/AnimationSet;-><init>()V

    .line 1480
    new-instance v9, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {p2}, Lcom/sonymobile/home/ui/pageview/PageView;->getContent()Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    invoke-direct {v9, v1, v2, v3}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;J)V

    .line 1482
    .local v9, "movePageBackAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    const/high16 v1, -0x3bb80000    # -800.0f

    invoke-virtual {v9, v4, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setZ(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1483
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v9, v1, v4}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setDescendantAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1484
    invoke-virtual {v9, v8}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInvisibleOnEnd(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1485
    sget-object v1, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->MOVE_ITEM_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 1486
    new-instance v1, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$1;-><init>(Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;Lcom/sonymobile/home/desktop/DesktopView;Lcom/sonymobile/home/ui/pageview/PageView;)V

    invoke-virtual {v9, v1}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->addListener(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 1496
    invoke-virtual {p0, v9}, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    .line 1498
    invoke-virtual {p2}, Lcom/sonymobile/home/ui/pageview/PageView;->getPageIndex()I

    move-result v7

    .line 1501
    .local v7, "pageIndex":I
    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mRightmostAdapterPage:I
    invoke-static {p1}, Lcom/sonymobile/home/desktop/DesktopView;->access$1300(Lcom/sonymobile/home/desktop/DesktopView;)I

    move-result v1

    if-eq v7, v1, :cond_0

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mLeftmostAdapterPage:I
    invoke-static {p1}, Lcom/sonymobile/home/desktop/DesktopView;->access$1400(Lcom/sonymobile/home/desktop/DesktopView;)I

    move-result v1

    if-ne v7, v1, :cond_2

    .line 1504
    .local v8, "isEdgePage":Z
    :cond_0
    :goto_0
    if-nez v8, :cond_3

    .line 1507
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$2;

    const-wide/16 v4, 0x64

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$2;-><init>(Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;JJLcom/sonymobile/home/desktop/DesktopView;I)V

    .line 1530
    .local v0, "movePagesLeftAnimation":Lcom/sonymobile/flix/util/Animation;
    sget-object v1, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->MOVE_ITEM_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/sonymobile/flix/util/Animation;

    .line 1531
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    .line 1549
    .end local v0    # "movePagesLeftAnimation":Lcom/sonymobile/flix/util/Animation;
    :cond_1
    :goto_1
    return-void

    .line 1501
    .end local v8    # "isEdgePage":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 1535
    .restart local v8    # "isEdgePage":Z
    :cond_3
    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/DesktopView;->getScrollPosition()F

    move-result v11

    .line 1536
    .local v11, "scrollPosition":F
    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v10

    .line 1537
    .local v10, "pageToMoveTo":I
    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mRightmostAdapterPage:I
    invoke-static {p1}, Lcom/sonymobile/home/desktop/DesktopView;->access$1800(Lcom/sonymobile/home/desktop/DesktopView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpl-float v1, v11, v1

    if-lez v1, :cond_5

    .line 1538
    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mRightmostAdapterPage:I
    invoke-static {p1}, Lcom/sonymobile/home/desktop/DesktopView;->access$1900(Lcom/sonymobile/home/desktop/DesktopView;)I

    move-result v1

    add-int/lit8 v10, v1, -0x1

    .line 1544
    :cond_4
    :goto_2
    invoke-virtual {p1, v10}, Lcom/sonymobile/home/desktop/DesktopView;->createSetCurrentPageAnimation(I)Lcom/sonymobile/home/ui/pageview/PageViewGroup$ScrollAnimation;

    move-result-object v12

    .line 1545
    .local v12, "scrollToPageAnimation":Lcom/sonymobile/flix/util/Animation;
    if-eqz v12, :cond_1

    .line 1546
    invoke-virtual {p0, v12}, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;->addAnimation(Lcom/sonymobile/flix/util/Animation;)I

    goto :goto_1

    .line 1539
    .end local v12    # "scrollToPageAnimation":Lcom/sonymobile/flix/util/Animation;
    :cond_5
    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mLeftmostAdapterPage:I
    invoke-static {p1}, Lcom/sonymobile/home/desktop/DesktopView;->access$2000(Lcom/sonymobile/home/desktop/DesktopView;)I

    move-result v1

    if-ne v7, v1, :cond_4

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mLeftmostAdapterPage:I
    invoke-static {p1}, Lcom/sonymobile/home/desktop/DesktopView;->access$2100(Lcom/sonymobile/home/desktop/DesktopView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    cmpg-float v1, v11, v1

    if-gez v1, :cond_4

    .line 1541
    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mLeftmostAdapterPage:I
    invoke-static {p1}, Lcom/sonymobile/home/desktop/DesktopView;->access$2200(Lcom/sonymobile/home/desktop/DesktopView;)I

    move-result v1

    add-int/lit8 v10, v1, 0x1

    goto :goto_2
.end method
