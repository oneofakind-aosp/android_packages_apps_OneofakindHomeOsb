.class public Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;
.super Lcom/sonymobile/home/itemorganizer/ItemMoveManager;
.source "DesktopAutoMoveManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;,
        Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;
    }
.end annotation


# static fields
.field public static final INVALID_ITEM_LOCATION:Lcom/sonymobile/home/data/ItemLocation;

.field private static final sAreaComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAutoMover:Lcom/sonymobile/home/desktop/DesktopAutoMover;

.field private mDragDirection:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

.field private final mDraggedItemLocation:Lcom/sonymobile/home/data/ItemLocation;

.field private final mGrid:Lcom/sonymobile/grid/Grid;

.field private mHandler:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;

.field private mHasMovedItems:Z

.field private final mItemLocationMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/sonymobile/home/data/ItemLocation;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemsOnPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mModel:Lcom/sonymobile/home/desktop/DesktopModel;

.field private mPreviousX:I

.field private mPreviousY:I

.field private final mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lcom/sonymobile/home/data/ItemLocation;

    const v1, 0x7fffffff

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->INVALID_ITEM_LOCATION:Lcom/sonymobile/home/data/ItemLocation;

    .line 65
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$1;

    invoke-direct {v0}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$1;-><init>()V

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->sAreaComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/desktop/DesktopModel;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "grid"    # Lcom/sonymobile/grid/Grid;
    .param p3, "model"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHasMovedItems:Z

    .line 103
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->UP:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDragDirection:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    .line 119
    iput-object p2, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mGrid:Lcom/sonymobile/grid/Grid;

    .line 120
    iput-object p3, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    .line 121
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mTouchSlop:I

    .line 122
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->INVALID_ITEM_LOCATION:Lcom/sonymobile/home/data/ItemLocation;

    invoke-static {v0}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDraggedItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    .line 123
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopAutoMover;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-direct {v0, v1}, Lcom/sonymobile/home/desktop/DesktopAutoMover;-><init>(Lcom/sonymobile/grid/Grid;)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mAutoMover:Lcom/sonymobile/home/desktop/DesktopAutoMover;

    .line 124
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mItemLocationMap:Landroid/util/LongSparseArray;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mItemsOnPage:Ljava/util/List;

    .line 126
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;-><init>(Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->setAutoMoveHandler(Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;)V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->getOverlappedItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->autoMoveOverlappedItems(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->notifyItemsAutoMoved(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;)Lcom/sonymobile/home/data/ItemLocation;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDraggedItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->saveLocations(I)V

    return-void
.end method

.method private autoMoveOverlappedItems(Ljava/util/List;)Z
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 424
    .local p1, "overlappedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v9, 0x0

    .line 428
    .local v9, "hasMovedItems":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v6, "occupiedLocations":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ItemLocation;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mItemsOnPage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonymobile/home/data/Item;

    .line 430
    .local v11, "itemOnPage":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v11}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 433
    .end local v11    # "itemOnPage":Lcom/sonymobile/home/data/Item;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDraggedItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sonymobile/home/data/Item;

    .line 436
    .local v17, "overlappedItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 441
    .end local v17    # "overlappedItem":Lcom/sonymobile/home/data/Item;
    :cond_1
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 443
    .local v15, "locationsToMoveMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sonymobile/home/data/Item;

    .line 444
    .restart local v17    # "overlappedItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v18

    .line 449
    .local v18, "overlappedLocation":Lcom/sonymobile/home/data/ItemLocation;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mItemLocationMap:Landroid/util/LongSparseArray;

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sonymobile/home/data/ItemLocation;

    .line 450
    .local v19, "storedLocation":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v19, :cond_2

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/data/ItemLocation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mGrid:Lcom/sonymobile/grid/Grid;

    move-object/from16 v0, v19

    invoke-static {v0, v6, v2, v4}, Lcom/sonymobile/home/desktop/DesktopAutoMover;->isLocationVacant(Lcom/sonymobile/home/data/ItemLocation;Ljava/util/List;Ljava/util/List;Lcom/sonymobile/grid/Grid;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 454
    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/home/data/ItemLocation;->set(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 455
    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    const/4 v9, 0x1

    goto :goto_2

    .line 458
    :cond_2
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v15, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 466
    .end local v17    # "overlappedItem":Lcom/sonymobile/home/data/Item;
    .end local v18    # "overlappedLocation":Lcom/sonymobile/home/data/ItemLocation;
    .end local v19    # "storedLocation":Lcom/sonymobile/home/data/ItemLocation;
    :cond_3
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 468
    .local v13, "locationToMoveCopies":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ItemLocation;>;"
    const/16 v20, 0x0

    .line 470
    .local v20, "success":Z
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mAutoMover:Lcom/sonymobile/home/desktop/DesktopAutoMover;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDraggedItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDragDirection:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    invoke-virtual {v2, v4, v5, v6, v13}, Lcom/sonymobile/home/desktop/DesktopAutoMover;->move(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;Ljava/util/List;Ljava/util/List;)Z

    move-result v20

    .line 484
    if-nez v20, :cond_4

    .line 487
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/data/ItemLocation;

    .line 488
    .local v3, "locationToMoveCopy":Lcom/sonymobile/home/data/ItemLocation;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mAutoMover:Lcom/sonymobile/home/desktop/DesktopAutoMover;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDraggedItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDragDirection:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sonymobile/home/desktop/DesktopAutoMover;->move(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;Ljava/util/List;Ljava/util/List;)Z

    move-result v20

    .line 490
    if-nez v20, :cond_5

    .line 498
    .end local v3    # "locationToMoveCopy":Lcom/sonymobile/home/data/ItemLocation;
    :cond_4
    :goto_4
    :pswitch_0
    if-eqz v20, :cond_7

    .line 499
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    .line 501
    .local v14, "locationsToMoveEntrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;>;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 502
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sonymobile/home/data/ItemLocation;

    .line 503
    .local v12, "locationToMove":Lcom/sonymobile/home/data/ItemLocation;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sonymobile/home/data/ItemLocation;

    .line 504
    .local v16, "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/sonymobile/home/data/ItemLocation;->set(Lcom/sonymobile/home/data/ItemLocation;)V

    goto :goto_5

    .line 476
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;>;"
    .end local v12    # "locationToMove":Lcom/sonymobile/home/data/ItemLocation;
    .end local v14    # "locationsToMoveEntrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;>;>;"
    .end local v16    # "newLocation":Lcom/sonymobile/home/data/ItemLocation;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mAutoMover:Lcom/sonymobile/home/desktop/DesktopAutoMover;

    const/4 v4, 0x0

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/data/ItemLocation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDraggedItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDragDirection:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sonymobile/home/desktop/DesktopAutoMover;->move(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;Ljava/util/List;Ljava/util/List;)Z

    move-result v20

    .line 478
    goto :goto_4

    .line 493
    .restart local v3    # "locationToMoveCopy":Lcom/sonymobile/home/data/ItemLocation;
    :cond_5
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 506
    .end local v3    # "locationToMoveCopy":Lcom/sonymobile/home/data/ItemLocation;
    .restart local v14    # "locationsToMoveEntrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;>;>;"
    :cond_6
    const/4 v9, 0x1

    .line 509
    .end local v14    # "locationsToMoveEntrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/ItemLocation;>;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHasMovedItems:Z

    or-int/2addr v2, v9

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHasMovedItems:Z

    .line 511
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 512
    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 513
    invoke-interface {v15}, Ljava/util/Map;->clear()V

    .line 515
    return v9

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getOverlappedItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v3, "overlappedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mItemsOnPage:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 408
    .local v2, "itemOnPage":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    .line 409
    .local v1, "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDraggedItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v4, v1}, Lcom/sonymobile/home/data/ItemLocation;->overlaps(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 410
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 413
    .end local v1    # "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    .end local v2    # "itemOnPage":Lcom/sonymobile/home/data/Item;
    :cond_1
    return-object v3
.end method

.method private saveLocations(I)V
    .locals 6
    .param p1, "page"    # I

    .prologue
    .line 187
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mItemsOnPage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 188
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mItemsOnPage:Ljava/util/List;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v3, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mItemsOnPage:Ljava/util/List;

    sget-object v3, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->sAreaComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 191
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mItemLocationMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 192
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mItemsOnPage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 193
    .local v1, "itemOnPage":Lcom/sonymobile/home/data/Item;
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mItemLocationMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 196
    .end local v1    # "itemOnPage":Lcom/sonymobile/home/data/Item;
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAutoMove()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 176
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHandler:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;->removeMessages(I)V

    .line 177
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHandler:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;->removeMessages(I)V

    .line 178
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHandler:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;->sendEmptyMessage(I)Z

    .line 179
    return-void
.end method

.method public hasMovedItems()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHasMovedItems:Z

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHandler:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mItemLocationMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 145
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mItemsOnPage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 146
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    return-void
.end method

.method public onItemDragStarted(IIILcom/sonymobile/home/data/Item;)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "page"    # I
    .param p4, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHandler:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDraggedItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->INVALID_ITEM_LOCATION:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/data/ItemLocation;->set(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 244
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDraggedItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    iput p3, v0, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHasMovedItems:Z

    .line 246
    iput p1, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mPreviousX:I

    .line 247
    iput p2, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mPreviousY:I

    .line 248
    invoke-direct {p0, p3}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->saveLocations(I)V

    .line 249
    return-void
.end method

.method public onItemDragged(IILcom/sonymobile/home/data/ItemLocation;I)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "draggedLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p4, "itemOverlap"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 258
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDraggedItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v4, p3}, Lcom/sonymobile/home/data/ItemLocation;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 263
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDraggedItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    iget v3, v4, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 264
    .local v3, "oldPage":I
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDraggedItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v4, p3}, Lcom/sonymobile/home/data/ItemLocation;->set(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 266
    iget v4, p3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    if-eq v3, v4, :cond_4

    .line 268
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHandler:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;

    invoke-virtual {v4, v9}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;->removeMessages(I)V

    .line 269
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHandler:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;

    const-wide/16 v6, 0x5

    invoke-virtual {v4, v9, v6, v7}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 278
    .end local v3    # "oldPage":I
    :cond_0
    :goto_0
    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mPreviousX:I

    sub-int v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 279
    .local v0, "deltaX":I
    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mPreviousY:I

    sub-int v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 281
    .local v1, "deltaY":I
    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mTouchSlop:I

    if-ge v0, v4, :cond_1

    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mTouchSlop:I

    if-ge v1, v4, :cond_1

    .line 282
    if-le v0, v1, :cond_6

    .line 283
    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mPreviousX:I

    if-le p1, v4, :cond_5

    sget-object v4, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->RIGHT:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    :goto_1
    iput-object v4, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDragDirection:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    .line 292
    :cond_1
    :goto_2
    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mTouchSlop:I

    div-int/lit8 v4, v4, 0x14

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 293
    .local v2, "minDelta":I
    if-gt v0, v2, :cond_2

    if-le v1, v2, :cond_3

    .line 294
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHandler:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;

    invoke-virtual {v4, v8}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;->removeMessages(I)V

    .line 295
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHandler:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v8, v6, v7}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 298
    :cond_3
    iput p1, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mPreviousX:I

    .line 299
    iput p2, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mPreviousY:I

    .line 300
    return-void

    .line 273
    .end local v0    # "deltaX":I
    .end local v1    # "deltaY":I
    .end local v2    # "minDelta":I
    .restart local v3    # "oldPage":I
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHandler:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;->removeMessages(I)V

    .line 274
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHandler:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 283
    .end local v3    # "oldPage":I
    .restart local v0    # "deltaX":I
    .restart local v1    # "deltaY":I
    :cond_5
    sget-object v4, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->LEFT:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    goto :goto_1

    .line 285
    :cond_6
    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mPreviousY:I

    if-le p2, v4, :cond_7

    sget-object v4, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->DOWN:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    :goto_3
    iput-object v4, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDragDirection:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    goto :goto_2

    :cond_7
    sget-object v4, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->UP:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    goto :goto_3
.end method

.method public onResizeFramePressed(Lcom/sonymobile/home/data/Item;I)V
    .locals 4
    .param p1, "widgetItem"    # Lcom/sonymobile/home/data/Item;
    .param p2, "page"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHandler:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDraggedItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/data/ItemLocation;->set(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHasMovedItems:Z

    .line 310
    invoke-direct {p0, p2}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->saveLocations(I)V

    .line 312
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mItemLocationMap:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 313
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mItemsOnPage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method

.method public onResizeFrameResized(Lcom/sonymobile/home/data/ItemLocation;)V
    .locals 12
    .param p1, "frameLocation"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 322
    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDraggedItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v7, p1}, Lcom/sonymobile/home/data/ItemLocation;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 325
    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDraggedItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    iget-object v6, v7, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 326
    .local v6, "oldGridRect":Lcom/sonymobile/grid/GridRect;
    iget-object v5, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 327
    .local v5, "newGridRect":Lcom/sonymobile/grid/GridRect;
    iget v7, v5, Lcom/sonymobile/grid/GridRect;->col:I

    iget v10, v6, Lcom/sonymobile/grid/GridRect;->col:I

    if-ne v7, v10, :cond_0

    iget v7, v5, Lcom/sonymobile/grid/GridRect;->row:I

    iget v10, v6, Lcom/sonymobile/grid/GridRect;->row:I

    if-eq v7, v10, :cond_3

    :cond_0
    move v0, v9

    .line 329
    .local v0, "checkLeftTopBorders":Z
    :goto_0
    if-eqz v0, :cond_7

    .line 330
    iget v7, v5, Lcom/sonymobile/grid/GridRect;->row:I

    iget v10, v6, Lcom/sonymobile/grid/GridRect;->row:I

    sub-int v3, v7, v10

    .line 331
    .local v3, "deltaRow":I
    iget v7, v5, Lcom/sonymobile/grid/GridRect;->col:I

    iget v10, v6, Lcom/sonymobile/grid/GridRect;->col:I

    sub-int v1, v7, v10

    .line 332
    .local v1, "deltaCol":I
    if-eqz v3, :cond_5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-lt v7, v10, :cond_5

    .line 333
    if-lez v3, :cond_4

    sget-object v7, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->DOWN:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    :goto_1
    iput-object v7, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDragDirection:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    .line 347
    .end local v1    # "deltaCol":I
    .end local v3    # "deltaRow":I
    :cond_1
    :goto_2
    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDraggedItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v7, p1}, Lcom/sonymobile/home/data/ItemLocation;->set(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 350
    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHandler:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;

    invoke-virtual {v7, v8}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;->removeMessages(I)V

    .line 351
    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHandler:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;

    const-wide/16 v10, 0xc8

    invoke-virtual {v7, v8, v10, v11}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 352
    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHandler:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;

    invoke-virtual {v7, v9}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;->removeMessages(I)V

    .line 353
    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHandler:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;

    const-wide/16 v10, 0x32

    invoke-virtual {v7, v9, v10, v11}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 355
    .end local v0    # "checkLeftTopBorders":Z
    .end local v5    # "newGridRect":Lcom/sonymobile/grid/GridRect;
    .end local v6    # "oldGridRect":Lcom/sonymobile/grid/GridRect;
    :cond_2
    return-void

    .restart local v5    # "newGridRect":Lcom/sonymobile/grid/GridRect;
    .restart local v6    # "oldGridRect":Lcom/sonymobile/grid/GridRect;
    :cond_3
    move v0, v8

    .line 327
    goto :goto_0

    .line 333
    .restart local v0    # "checkLeftTopBorders":Z
    .restart local v1    # "deltaCol":I
    .restart local v3    # "deltaRow":I
    :cond_4
    sget-object v7, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->UP:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    goto :goto_1

    .line 334
    :cond_5
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-lt v7, v10, :cond_1

    .line 335
    if-lez v1, :cond_6

    sget-object v7, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->RIGHT:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    :goto_3
    iput-object v7, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDragDirection:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    goto :goto_2

    :cond_6
    sget-object v7, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->LEFT:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    goto :goto_3

    .line 338
    .end local v1    # "deltaCol":I
    .end local v3    # "deltaRow":I
    :cond_7
    iget v7, v5, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    iget v10, v6, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    sub-int v4, v7, v10

    .line 339
    .local v4, "deltaRowSpan":I
    iget v7, v5, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iget v10, v6, Lcom/sonymobile/grid/GridRect;->colSpan:I

    sub-int v2, v7, v10

    .line 340
    .local v2, "deltaColSpan":I
    if-eqz v4, :cond_9

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-lt v7, v10, :cond_9

    .line 341
    if-lez v4, :cond_8

    sget-object v7, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->DOWN:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    :goto_4
    iput-object v7, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDragDirection:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    goto :goto_2

    :cond_8
    sget-object v7, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->UP:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    goto :goto_4

    .line 342
    :cond_9
    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-lt v7, v10, :cond_1

    .line 343
    if-lez v2, :cond_a

    sget-object v7, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->RIGHT:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    :goto_5
    iput-object v7, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDragDirection:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    goto :goto_2

    :cond_a
    sget-object v7, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;->LEFT:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$DragDirection;

    goto :goto_5
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHandler:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDraggedItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->INVALID_ITEM_LOCATION:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/data/ItemLocation;->set(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 156
    iput-boolean v2, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHasMovedItems:Z

    .line 157
    iput v2, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mPreviousX:I

    .line 158
    iput v2, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mPreviousY:I

    .line 159
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mItemLocationMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 160
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mItemsOnPage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    return-void
.end method

.method public restoreLocationsIfNeeded(Z)V
    .locals 12
    .param p1, "force"    # Z

    .prologue
    .line 203
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v5, "restoredItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v8, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mItemsOnPage:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/home/data/Item;

    .line 207
    .local v6, "storedItem":Lcom/sonymobile/home/data/Item;
    iget-object v8, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mItemLocationMap:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/home/data/ItemLocation;

    .line 208
    .local v7, "storedLocation":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {v6}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    .line 210
    .local v0, "currentLocation":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v7, :cond_0

    invoke-virtual {v7, v0}, Lcom/sonymobile/home/data/ItemLocation;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 211
    if-eqz p1, :cond_1

    .line 212
    invoke-virtual {v0, v7}, Lcom/sonymobile/home/data/ItemLocation;->set(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 213
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_1
    iget-object v8, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDraggedItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v7, v8}, Lcom/sonymobile/home/data/ItemLocation;->overlaps(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mDraggedItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v0, v8}, Lcom/sonymobile/home/data/ItemLocation;->overlaps(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 217
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v4, "occupiedLocations":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ItemLocation;>;"
    iget-object v8, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mItemsOnPage:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/data/Item;

    .line 219
    .local v3, "itemOnPage":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v3}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 221
    .end local v3    # "itemOnPage":Lcom/sonymobile/home/data/Item;
    :cond_2
    invoke-virtual {v6}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 223
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mGrid:Lcom/sonymobile/grid/Grid;

    invoke-static {v7, v4, v8, v9}, Lcom/sonymobile/home/desktop/DesktopAutoMover;->isLocationVacant(Lcom/sonymobile/home/data/ItemLocation;Ljava/util/List;Ljava/util/List;Lcom/sonymobile/grid/Grid;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 224
    invoke-virtual {v0, v7}, Lcom/sonymobile/home/data/ItemLocation;->set(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 225
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 232
    .end local v0    # "currentLocation":Lcom/sonymobile/home/data/ItemLocation;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "occupiedLocations":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/ItemLocation;>;"
    .end local v6    # "storedItem":Lcom/sonymobile/home/data/Item;
    .end local v7    # "storedLocation":Lcom/sonymobile/home/data/ItemLocation;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 233
    invoke-virtual {p0, v5}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->notifyItemsAutoMoved(Ljava/util/List;)V

    .line 235
    :cond_5
    return-void
.end method

.method setAutoMoveHandler(Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;->mHandler:Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$AutoMoveHandler;

    .line 136
    return-void
.end method
