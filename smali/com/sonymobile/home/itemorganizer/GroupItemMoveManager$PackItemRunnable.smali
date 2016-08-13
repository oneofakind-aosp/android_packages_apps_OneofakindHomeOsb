.class Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;
.super Ljava/lang/Object;
.source "GroupItemMoveManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackItemRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;

.field private toLocation:Lcom/sonymobile/home/data/ItemLocation;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;->this$0:Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;
    .param p2, "x1"    # Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$1;

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;-><init>(Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;Lcom/sonymobile/home/data/ItemLocation;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;
    .param p1, "x1"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;->set(Lcom/sonymobile/home/data/ItemLocation;)V

    return-void
.end method

.method private set(Lcom/sonymobile/home/data/ItemLocation;)V
    .locals 0
    .param p1, "toLocation"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;->toLocation:Lcom/sonymobile/home/data/ItemLocation;

    .line 496
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;->this$0:Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;

    # getter for: Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->mCancel:Z
    invoke-static {v0}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->access$200(Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;->this$0:Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;

    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;->toLocation:Lcom/sonymobile/home/data/ItemLocation;

    # invokes: Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->restore(Lcom/sonymobile/home/data/ItemLocation;)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->access$300(Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;Lcom/sonymobile/home/data/ItemLocation;)V

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;->toLocation:Lcom/sonymobile/home/data/ItemLocation;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;->this$0:Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;

    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;->toLocation:Lcom/sonymobile/home/data/ItemLocation;

    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager$PackItemRunnable;->toLocation:Lcom/sonymobile/home/data/ItemLocation;

    iget v2, v2, Lcom/sonymobile/home/data/ItemLocation;->page:I

    # invokes: Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->arrange(Lcom/sonymobile/home/data/ItemLocation;I)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;->access$400(Lcom/sonymobile/home/itemorganizer/GroupItemMoveManager;Lcom/sonymobile/home/data/ItemLocation;I)V

    goto :goto_0
.end method
