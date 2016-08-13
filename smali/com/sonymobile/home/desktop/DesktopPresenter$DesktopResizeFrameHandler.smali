.class final Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopResizeFrameHandler;
.super Ljava/lang/Object;
.source "DesktopPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/desktop/DesktopView$DesktopItemViewChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DesktopResizeFrameHandler"
.end annotation


# instance fields
.field private final mUniqueId:J

.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/desktop/DesktopPresenter;J)V
    .locals 0
    .param p2, "uniqueId"    # J

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopResizeFrameHandler;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1446
    iput-wide p2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopResizeFrameHandler;->mUniqueId:J

    .line 1447
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/desktop/DesktopPresenter;JLcom/sonymobile/home/desktop/DesktopPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lcom/sonymobile/home/desktop/DesktopPresenter$1;

    .prologue
    .line 1442
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopResizeFrameHandler;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter;J)V

    return-void
.end method

.method private getUniqueId(Lcom/sonymobile/home/ui/pageview/PageItemView;)J
    .locals 4
    .param p1, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 1491
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 1493
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    if-eqz v0, :cond_0

    .line 1494
    invoke-virtual {v0}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v2

    .line 1496
    :goto_0
    return-wide v2

    :cond_0
    const-wide/32 v2, -0x80000000

    goto :goto_0
.end method


# virtual methods
.method public onPageItemViewAdded(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 4
    .param p1, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 1451
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopResizeFrameHandler;->getUniqueId(Lcom/sonymobile/home/ui/pageview/PageItemView;)J

    move-result-wide v0

    .line 1453
    .local v0, "uniqueId":J
    iget-wide v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopResizeFrameHandler;->mUniqueId:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1454
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->supportResizing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1455
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->isResizable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1456
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopResizeFrameHandler;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget v3, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->addResizeFrameToItemViewIfNeeded(Lcom/sonymobile/flix/components/Component;I)V
    invoke-static {v2, p1, v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$5000(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/flix/components/Component;I)V

    .line 1458
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopResizeFrameHandler;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopView;->removePageItemViewListener()V

    .line 1464
    :cond_0
    :goto_0
    return-void

    .line 1461
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopResizeFrameHandler;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopView;->removePageItemViewListener()V

    goto :goto_0
.end method

.method public onPageItemViewRemoved(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 4
    .param p1, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 1468
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopResizeFrameHandler;->getUniqueId(Lcom/sonymobile/home/ui/pageview/PageItemView;)J

    move-result-wide v0

    .line 1470
    .local v0, "uniqueId":J
    iget-wide v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopResizeFrameHandler;->mUniqueId:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1471
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopResizeFrameHandler;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopView;->removePageItemViewListener()V

    .line 1473
    :cond_0
    return-void
.end method

.method public onPageItemViewUpdated(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 4
    .param p1, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 1477
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopResizeFrameHandler;->getUniqueId(Lcom/sonymobile/home/ui/pageview/PageItemView;)J

    move-result-wide v0

    .line 1479
    .local v0, "uniqueId":J
    iget-wide v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopResizeFrameHandler;->mUniqueId:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 1480
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->supportResizing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1481
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->isResizable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1482
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopResizeFrameHandler;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget v3, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->addResizeFrameToItemViewIfNeeded(Lcom/sonymobile/flix/components/Component;I)V
    invoke-static {v2, p1, v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$5000(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/flix/components/Component;I)V

    .line 1486
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopResizeFrameHandler;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopView;->removePageItemViewListener()V

    .line 1488
    :cond_1
    return-void
.end method
