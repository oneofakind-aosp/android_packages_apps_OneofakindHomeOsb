.class Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$2;
.super Ljava/lang/Object;
.source "DesktopGridSizeChangeHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)V
    .locals 0

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$2;->this$0:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)I
    .locals 9
    .param p1, "item1"    # Lcom/sonymobile/home/data/Item;
    .param p2, "item2"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 1071
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    .line 1072
    .local v0, "itemLocation1":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {p2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    .line 1073
    .local v1, "itemLocation2":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1074
    iget-object v2, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 1075
    .local v2, "rect1":Lcom/sonymobile/grid/GridRect;
    iget-object v3, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 1076
    .local v3, "rect2":Lcom/sonymobile/grid/GridRect;
    iget v7, v3, Lcom/sonymobile/grid/GridRect;->col:I

    iget v8, v2, Lcom/sonymobile/grid/GridRect;->col:I

    if-ne v7, v8, :cond_2

    .line 1077
    iget v7, v3, Lcom/sonymobile/grid/GridRect;->row:I

    iget v8, v2, Lcom/sonymobile/grid/GridRect;->row:I

    if-ne v7, v8, :cond_1

    move v4, v6

    .line 1084
    .end local v2    # "rect1":Lcom/sonymobile/grid/GridRect;
    .end local v3    # "rect2":Lcom/sonymobile/grid/GridRect;
    :cond_0
    :goto_0
    return v4

    .line 1080
    .restart local v2    # "rect1":Lcom/sonymobile/grid/GridRect;
    .restart local v3    # "rect2":Lcom/sonymobile/grid/GridRect;
    :cond_1
    iget v6, v3, Lcom/sonymobile/grid/GridRect;->row:I

    iget v7, v2, Lcom/sonymobile/grid/GridRect;->row:I

    if-gt v6, v7, :cond_0

    move v4, v5

    goto :goto_0

    .line 1082
    :cond_2
    iget v6, v3, Lcom/sonymobile/grid/GridRect;->col:I

    iget v7, v2, Lcom/sonymobile/grid/GridRect;->col:I

    if-le v6, v7, :cond_3

    :goto_1
    move v4, v5

    goto :goto_0

    :cond_3
    move v5, v4

    goto :goto_1

    .end local v2    # "rect1":Lcom/sonymobile/grid/GridRect;
    .end local v3    # "rect2":Lcom/sonymobile/grid/GridRect;
    :cond_4
    move v4, v6

    .line 1084
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1068
    check-cast p1, Lcom/sonymobile/home/data/Item;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/home/data/Item;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$2;->compare(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)I

    move-result v0

    return v0
.end method
