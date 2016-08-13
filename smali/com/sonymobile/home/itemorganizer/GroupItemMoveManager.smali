.class public Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;
.super Lcom/sonymobile/home/itemorganizer/ItemMoveManager;
.source "GroupItemMoveManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$1;,
        Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllowIconRearrange:Z

.field private mCancel:Z

.field private mCurrentItem:Lcom/sonymobile/home/data/Item;

.field private mCurrentItemLocation:Lcom/sonymobile/home/data/ItemLocation;

.field private final mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

.field final mHandler:Landroid/os/Handler;

.field private mItemHasMoved:Z

.field private final mItemMover:Lcom/sonymobile/home/itemorganizer/GroupItemMover;

.field private mItemOverlap:I

.field final mLargeItemMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

.field mLargeMoveStarted:Z

.field final mPackItemRunnable:Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;

.field final mPixelRearrangeThreshold:I

.field private mPreviousX:I

.field private mPreviousY:I

.field private mRearrangeAtFirstItemDrag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/itemorganizer/ItemMoveManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "desktopModel"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p3, "largeItemMoveManager"    # Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;-><init>()V

    .line 33
    iput-boolean v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCancel:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mAllowIconRearrange:Z

    .line 77
    iput v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mItemOverlap:I

    .line 92
    iput-object p2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    .line 93
    iput-object p3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mLargeItemMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    .line 94
    new-instance v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;

    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->getColumnSpan()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopModel;->getRowSpan()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;-><init>(II)V

    iput-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mItemMover:Lcom/sonymobile/home/itemorganizer/GroupItemMover;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mPixelRearrangeThreshold:I

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;-><init>(Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$1;)V

    iput-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mPackItemRunnable:Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;

    .line 99
    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCancel:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;Lcom/sonymobile/home/data/ItemLocation;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;
    .param p1, "x1"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->restore(Lcom/sonymobile/home/data/ItemLocation;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;Lcom/sonymobile/home/data/ItemLocation;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;
    .param p1, "x1"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "x2"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->arrange(Lcom/sonymobile/home/data/ItemLocation;I)V

    return-void
.end method

.method private arrange(Lcom/sonymobile/home/data/ItemLocation;I)V
    .locals 2
    .param p1, "itemLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "page"    # I

    .prologue
    .line 360
    iget v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mItemOverlap:I

    invoke-direct {p0, p1, v1}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->shouldAddItemAfterLocation(Lcom/sonymobile/home/data/ItemLocation;I)Z

    move-result v0

    .line 362
    .local v0, "addItemAfterLocation":Z
    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->reserveLocationAndPackItemsOnPage(Lcom/sonymobile/home/data/ItemLocation;IZ)V

    .line 363
    return-void
.end method

.method private getUpdatedLocation(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;
    .locals 2
    .param p1, "location"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "newLocation"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    const/4 v1, -0x1

    .line 468
    const/4 v0, 0x0

    .line 470
    .local v0, "updatedLocation":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz p2, :cond_0

    .line 471
    if-eqz p1, :cond_1

    .line 472
    move-object v0, p1

    .line 476
    :goto_0
    invoke-virtual {v0, p2}, Lcom/sonymobile/home/data/ItemLocation;->set(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 478
    :cond_0
    return-object v0

    .line 474
    :cond_1
    new-instance v0, Lcom/sonymobile/home/data/ItemLocation;

    .end local v0    # "updatedLocation":Lcom/sonymobile/home/data/ItemLocation;
    invoke-direct {v0, v1, v1}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    .restart local v0    # "updatedLocation":Lcom/sonymobile/home/data/ItemLocation;
    goto :goto_0
.end method

.method private isCurrentItemLarge()Z
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCurrentItem:Lcom/sonymobile/home/data/Item;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCurrentItem:Lcom/sonymobile/home/data/Item;

    invoke-virtual {v0}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->isLocationLarge(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCurrentItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-direct {p0, v0}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->isLocationLarge(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLocationLarge(Lcom/sonymobile/home/data/ItemLocation;)Z
    .locals 2
    .param p1, "location"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    const/4 v0, 0x1

    .line 482
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    if-gt v1, v0, :cond_0

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    if-le v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reserveLocationAndPackItemsOnPage(Lcom/sonymobile/home/data/ItemLocation;IZ)V
    .locals 5
    .param p1, "insertAtLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "page"    # I
    .param p3, "addItemAfterLocation"    # Z

    .prologue
    const/4 v4, 0x1

    .line 444
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 445
    .local v0, "itemGrid":Lcom/sonymobile/grid/GridRect;
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mItemMover:Lcom/sonymobile/home/itemorganizer/GroupItemMover;

    invoke-virtual {v2, v0, p3}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->reserveLocation(Lcom/sonymobile/grid/GridRect;Z)Z

    .line 450
    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mItemMover:Lcom/sonymobile/home/itemorganizer/GroupItemMover;

    iget-object v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v3, p2}, Lcom/sonymobile/home/desktop/DesktopModel;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->packItems(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 452
    .local v1, "movedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 453
    iput-boolean v4, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mItemHasMoved:Z

    .line 454
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->notifyItemsAutoMoved(Ljava/util/List;)V

    .line 456
    :cond_0
    return-void

    .line 444
    .end local v0    # "itemGrid":Lcom/sonymobile/grid/GridRect;
    .end local v1    # "movedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restore(Lcom/sonymobile/home/data/ItemLocation;)V
    .locals 4
    .param p1, "toLocation"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 374
    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCurrentItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    if-eqz v1, :cond_0

    .line 375
    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mItemMover:Lcom/sonymobile/home/itemorganizer/GroupItemMover;

    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCurrentItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    iget v3, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/desktop/DesktopModel;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v3

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->restore(Ljava/util/List;Lcom/sonymobile/grid/GridRect;)Ljava/util/List;

    move-result-object v0

    .line 378
    .local v0, "movedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 379
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mItemHasMoved:Z

    .line 380
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->notifyItemsAutoMoved(Ljava/util/List;)V

    .line 381
    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->writeModelToStorage()V

    .line 384
    .end local v0    # "movedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    return-void

    .line 375
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private shouldAddItemAfterLocation(Lcom/sonymobile/home/data/ItemLocation;I)Z
    .locals 3
    .param p1, "location"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "itemOverlap"    # I

    .prologue
    const/4 v2, 0x1

    .line 396
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    if-gt v1, v2, :cond_0

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    if-le v1, v2, :cond_1

    .line 397
    :cond_0
    const/4 v0, 0x0

    .line 410
    :goto_0
    return v0

    .line 400
    :cond_1
    const/4 v0, 0x0

    .line 401
    .local v0, "addItemAfterLocation":Z
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 405
    :pswitch_0
    const/4 v0, 0x1

    .line 406
    goto :goto_0

    .line 401
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private triggerItemRearrange(Lcom/sonymobile/home/data/ItemLocation;Z)V
    .locals 4
    .param p1, "toLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "delayed"    # Z

    .prologue
    .line 420
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mPackItemRunnable:Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 421
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mPackItemRunnable:Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;

    # invokes: Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;->set(Lcom/sonymobile/home/data/ItemLocation;)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;->access$100(Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;Lcom/sonymobile/home/data/ItemLocation;)V

    .line 423
    if-eqz p2, :cond_0

    .line 424
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mPackItemRunnable:Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 428
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mPackItemRunnable:Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;

    invoke-virtual {v0}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public cancelAutoMove()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mLargeMoveStarted:Z

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCancel:Z

    .line 163
    invoke-direct {p0}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->isCurrentItemLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mLargeItemMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->cancelAutoMove()V

    .line 167
    :cond_0
    return-void
.end method

.method public handleItemOverflow()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->isCurrentItemLarge()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v1

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mItemMover:Lcom/sonymobile/home/itemorganizer/GroupItemMover;

    invoke-virtual {v2}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->removeSpillOverItem()Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 137
    .local v0, "spillOver":Lcom/sonymobile/home/data/Item;
    if-eqz v0, :cond_2

    .line 138
    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/desktop/DesktopModel;->moveItemToNextPage(Lcom/sonymobile/home/data/Item;)Ljava/util/List;

    .line 140
    :cond_2
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasMovedItems()Z
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->isCurrentItemLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mLargeItemMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->hasMovedItems()Z

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mItemHasMoved:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    invoke-virtual {p0}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->cancelAutoMove()V

    .line 108
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mLargeItemMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->onDestroy()V

    .line 109
    return-void
.end method

.method public onItemDragStarted(IIILcom/sonymobile/home/data/Item;)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "page"    # I
    .param p4, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 194
    iput-object p4, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCurrentItem:Lcom/sonymobile/home/data/Item;

    .line 195
    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCurrentItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {p4}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->getUpdatedLocation(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCurrentItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    .line 200
    invoke-direct {p0}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->isCurrentItemLarge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mLargeItemMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->onItemDragStarted(IIILcom/sonymobile/home/data/Item;)V

    .line 202
    iput-boolean v4, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mLargeMoveStarted:Z

    .line 223
    :goto_0
    return-void

    .line 206
    :cond_0
    iput-boolean v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCancel:Z

    .line 207
    iput v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mItemOverlap:I

    .line 208
    iput-boolean v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mItemHasMoved:Z

    .line 209
    iput p1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mPreviousX:I

    .line 210
    iput p2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mPreviousY:I

    .line 211
    iput-boolean v4, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mAllowIconRearrange:Z

    .line 212
    invoke-virtual {p4}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    .line 214
    .local v0, "startLocation":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/sonymobile/home/data/Item;->getPageViewName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    iput-boolean v4, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mRearrangeAtFirstItemDrag:Z

    .line 220
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mItemMover:Lcom/sonymobile/home/itemorganizer/GroupItemMover;

    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1, p3}, Lcom/sonymobile/home/desktop/DesktopModel;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v3

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    :goto_2
    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->resetWidgetAndIconLocations(Ljava/util/List;Lcom/sonymobile/grid/GridRect;)V

    goto :goto_0

    .line 218
    :cond_1
    iput-boolean v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mRearrangeAtFirstItemDrag:Z

    goto :goto_1

    .line 220
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public onItemDragged(IILcom/sonymobile/home/data/ItemLocation;I)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "newItemLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p4, "itemOverlap"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 231
    invoke-direct {p0, p3}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->isLocationLarge(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    iget-boolean v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mLargeMoveStarted:Z

    if-nez v3, :cond_0

    .line 235
    iget-object v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mLargeItemMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    iget v4, p3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iget-object v5, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCurrentItem:Lcom/sonymobile/home/data/Item;

    invoke-virtual {v3, p1, p2, v4, v5}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->onItemDragStarted(IIILcom/sonymobile/home/data/Item;)V

    .line 236
    iput-boolean v7, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mLargeMoveStarted:Z

    .line 238
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCurrentItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-direct {p0, v3, p3}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->getUpdatedLocation(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCurrentItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    .line 239
    iget-object v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mLargeItemMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->onItemDragged(IILcom/sonymobile/home/data/ItemLocation;I)V

    .line 289
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    iput-boolean v6, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCancel:Z

    .line 244
    iget-object v3, p3, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->col:I

    iget-object v4, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/DesktopModel;->getColumnSpan()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v3, p3, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->row:I

    iget-object v4, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v4}, Lcom/sonymobile/home/desktop/DesktopModel;->getRowSpan()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 248
    iget v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mPreviousX:I

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 249
    .local v0, "deltaX":I
    iget v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mPreviousY:I

    sub-int v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 250
    .local v1, "deltaY":I
    const/4 v2, 0x0

    .line 254
    .local v2, "stopNextRearrange":Z
    iget v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mItemOverlap:I

    if-ne v3, p4, :cond_4

    iget v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mItemOverlap:I

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCurrentItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCurrentItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v3, p3}, Lcom/sonymobile/home/data/ItemLocation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 256
    const/4 v2, 0x1

    .line 260
    :goto_1
    iput p4, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mItemOverlap:I

    .line 268
    iget-object v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCurrentItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCurrentItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v3, p3}, Lcom/sonymobile/home/data/ItemLocation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iget-object v4, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCurrentItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    iget v4, v4, Lcom/sonymobile/home/data/ItemLocation;->page:I

    if-eq v3, v4, :cond_3

    .line 271
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->restore(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 272
    iget-object v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mItemMover:Lcom/sonymobile/home/itemorganizer/GroupItemMover;

    iget-object v4, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    iget v5, p3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/desktop/DesktopModel;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v4

    iget-object v5, p3, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->resetWidgetAndIconLocations(Ljava/util/List;Lcom/sonymobile/grid/GridRect;)V

    .line 275
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCurrentItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-direct {p0, v3, p3}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->getUpdatedLocation(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCurrentItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    .line 277
    iget-boolean v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mRearrangeAtFirstItemDrag:Z

    if-eqz v3, :cond_5

    .line 278
    iput-boolean v6, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mRearrangeAtFirstItemDrag:Z

    .line 279
    iget-object v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCurrentItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-direct {p0, v3, v6}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->triggerItemRearrange(Lcom/sonymobile/home/data/ItemLocation;Z)V

    goto :goto_0

    .line 258
    :cond_4
    iput-boolean v7, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mAllowIconRearrange:Z

    goto :goto_1

    .line 280
    :cond_5
    iget-boolean v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mAllowIconRearrange:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mPixelRearrangeThreshold:I

    if-gt v0, v3, :cond_6

    iget v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mPixelRearrangeThreshold:I

    if-le v1, v3, :cond_1

    .line 282
    :cond_6
    iget-object v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCurrentItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-direct {p0, v3, v7}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->triggerItemRearrange(Lcom/sonymobile/home/data/ItemLocation;Z)V

    .line 283
    iput p1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mPreviousX:I

    .line 284
    iput p2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mPreviousY:I

    .line 285
    if-eqz v2, :cond_1

    .line 286
    iput-boolean v6, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mAllowIconRearrange:Z

    goto/16 :goto_0
.end method

.method public onItemFolderOverlapped()V
    .locals 2

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->isCurrentItemLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mLargeItemMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->onItemFolderOverlapped()V

    .line 329
    :goto_0
    return-void

    .line 326
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mAllowIconRearrange:Z

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCancel:Z

    .line 328
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mPackItemRunnable:Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onResizeFramePressed(Lcom/sonymobile/home/data/Item;I)V
    .locals 1
    .param p1, "widgetItem"    # Lcom/sonymobile/home/data/Item;
    .param p2, "page"    # I

    .prologue
    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mLargeMoveStarted:Z

    .line 300
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mLargeItemMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->onResizeFramePressed(Lcom/sonymobile/home/data/Item;I)V

    .line 301
    return-void
.end method

.method public onResizeFrameResized(Lcom/sonymobile/home/data/ItemLocation;)V
    .locals 1
    .param p1, "frameLocation"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mLargeMoveStarted:Z

    .line 313
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mLargeItemMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->onResizeFrameResized(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 314
    return-void
.end method

.method public registerListener(Lcom/sonymobile/home/itemorganizer/ItemMoveManager$AutoMoveEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/itemorganizer/ItemMoveManager$AutoMoveEventListener;

    .prologue
    .line 336
    invoke-super {p0, p1}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->registerListener(Lcom/sonymobile/home/itemorganizer/ItemMoveManager$AutoMoveEventListener;)V

    .line 337
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mLargeItemMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->registerListener(Lcom/sonymobile/home/itemorganizer/ItemMoveManager$AutoMoveEventListener;)V

    .line 338
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->cancelAutoMove()V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mLargeMoveStarted:Z

    .line 119
    invoke-direct {p0}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->isCurrentItemLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mLargeItemMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->reset()V

    .line 122
    :cond_0
    return-void
.end method

.method public restoreLocationsIfNeeded(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    const/4 v1, 0x1

    .line 174
    invoke-direct {p0}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->isCurrentItemLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mLargeItemMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->restoreLocationsIfNeeded(Z)V

    .line 187
    :goto_0
    return-void

    .line 179
    :cond_0
    iput-boolean v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mAllowIconRearrange:Z

    .line 185
    invoke-virtual {p0}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->cancelAutoMove()V

    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->triggerItemRearrange(Lcom/sonymobile/home/data/ItemLocation;Z)V

    goto :goto_0
.end method
