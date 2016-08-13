.class public Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;
.super Landroid/os/Handler;
.source "DesktopAutoMoveManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoMoveHandler"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;

    .prologue
    .line 364
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 365
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;->mManager:Ljava/lang/ref/WeakReference;

    .line 366
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 370
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;

    .line 372
    .local v1, "manager":Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 375
    :pswitch_0
    # invokes: Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->getOverlappedItems()Ljava/util/List;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->access$000(Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;)Ljava/util/List;

    move-result-object v2

    .line 376
    .local v2, "overlappedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 377
    # invokes: Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->autoMoveOverlappedItems(Ljava/util/List;)Z
    invoke-static {v1, v2}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->access$100(Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;Ljava/util/List;)Z

    move-result v0

    .line 378
    .local v0, "hasMovedItems":Z
    if-eqz v0, :cond_0

    .line 379
    # invokes: Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->notifyItemsAutoMoved(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->access$200(Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;Ljava/util/List;)V

    goto :goto_0

    .line 385
    .end local v0    # "hasMovedItems":Z
    .end local v2    # "overlappedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :pswitch_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->restoreLocationsIfNeeded(Z)V

    goto :goto_0

    .line 389
    :pswitch_2
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->restoreLocationsIfNeeded(Z)V

    .line 390
    # getter for: Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDraggedItemLocation:Lcom/sonymobile/home/data/ItemLocation;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->access$300(Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget v3, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    # invokes: Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->saveLocations(I)V
    invoke-static {v1, v3}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->access$400(Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;I)V

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
