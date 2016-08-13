.class final Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$1;
.super Ljava/lang/Object;
.source "DesktopAutoMoveManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopAutoMoveManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonymobile/home/data/Item;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)I
    .locals 8
    .param p1, "item1"    # Lcom/sonymobile/home/data/Item;
    .param p2, "item2"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    .line 69
    .local v2, "itemLocation1":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {p2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    .line 70
    .local v3, "itemLocation2":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 71
    iget-object v4, v2, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 72
    .local v4, "rect1":Lcom/sonymobile/grid/GridRect;
    iget-object v5, v3, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 73
    .local v5, "rect2":Lcom/sonymobile/grid/GridRect;
    iget v6, v4, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iget v7, v4, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    mul-int v0, v6, v7

    .line 74
    .local v0, "area1":I
    iget v6, v5, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iget v7, v5, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    mul-int v1, v6, v7

    .line 75
    .local v1, "area2":I
    sub-int v6, v1, v0

    .line 77
    .end local v0    # "area1":I
    .end local v1    # "area2":I
    .end local v4    # "rect1":Lcom/sonymobile/grid/GridRect;
    .end local v5    # "rect2":Lcom/sonymobile/grid/GridRect;
    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 65
    check-cast p1, Lcom/sonymobile/home/data/Item;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/home/data/Item;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/desktop/DesktopAutoMoveManager$1;->compare(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)I

    move-result v0

    return v0
.end method
