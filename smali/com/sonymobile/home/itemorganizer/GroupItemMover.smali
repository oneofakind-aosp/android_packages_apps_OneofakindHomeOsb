.class public Lcom/sonymobile/home/itemorganizer/GroupItemMover;
.super Ljava/lang/Object;
.source "GroupItemMover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddAfterOccupiedItem:Z

.field private final mGridMap:[[Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNumberCols:I

.field private final mNumberRows:I

.field private final mOriginalItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;>;"
        }
    .end annotation
.end field

.field private mReservedCell:Lcom/sonymobile/grid/GridRect;

.field private mSpillOverItem:Lcom/sonymobile/home/data/Item;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "numberCols"    # I
    .param p2, "numberRows"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberCols:I

    .line 84
    iput p2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberRows:I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mOriginalItems:Ljava/util/ArrayList;

    .line 87
    iget v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberCols:I

    iget v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberRows:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mGridMap:[[Z

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/itemorganizer/GroupItemMover;Lcom/sonymobile/home/data/Item;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/itemorganizer/GroupItemMover;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->itemToStr(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addAfterLastItem(Ljava/util/ArrayList;Lcom/sonymobile/home/data/Item;)Z
    .locals 4
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;>;",
            "Lcom/sonymobile/home/data/Item;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1087
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;>;"
    const/4 v2, 0x0

    .line 1088
    .local v2, "itemAdded":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-nez v2, :cond_1

    if-ltz v1, :cond_1

    .line 1089
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1090
    .local v0, "group":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-eqz v0, :cond_0

    .line 1091
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1092
    const/4 v2, 0x1

    .line 1088
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1095
    .end local v0    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_1
    return v2
.end method

.method private addEmptySlotAfterGroup(I)V
    .locals 9
    .param p1, "groupNumber"    # I

    .prologue
    const/4 v8, 0x0

    .line 999
    iget-object v5, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mGridMap:[[Z

    const/4 v7, 0x1

    invoke-direct {p0, v5, v6, v7}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->getAllGroupItems(Ljava/util/ArrayList;[[ZZ)Ljava/util/List;

    move-result-object v3

    .line 1001
    .local v3, "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;>;"
    const/4 v1, 0x0

    .line 1002
    .local v1, "emptySlotAdded":Z
    add-int/lit8 v0, p1, 0x1

    .line 1003
    .local v0, "addItemAtGroup":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;

    .line 1004
    .local v2, "group":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    iget v5, v2, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    if-lt v5, v0, :cond_0

    .line 1007
    iget v5, v2, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->subIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mGridMap:[[Z

    iget v6, v2, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->itemIndex:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->isWidget([[ZI)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1008
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    iget v6, v2, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    invoke-virtual {v5, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1009
    const/4 v1, 0x1

    .line 1014
    .end local v2    # "group":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    :cond_2
    if-nez v1, :cond_3

    .line 1016
    iget-object v5, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1018
    :cond_3
    return-void
.end method

.method private addGroupIfContainsItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;>;"
    .local p2, "itemGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    if-eqz p2, :cond_0

    .line 193
    invoke-direct {p0, p2}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->isGroupEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addGroupItem(Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;Lcom/sonymobile/home/data/Item;Z)Z
    .locals 5
    .param p1, "group"    # Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "addAfterLocation"    # Z

    .prologue
    const/4 v3, 0x1

    .line 960
    if-nez p1, :cond_0

    .line 961
    const/4 v2, 0x0

    .line 977
    :goto_0
    return v2

    .line 963
    :cond_0
    iget v2, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->subIndex:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 964
    const/4 v0, 0x0

    .line 965
    .local v0, "newGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    if-eqz p2, :cond_1

    .line 966
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "newGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 967
    .restart local v0    # "newGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    iget v4, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .end local v0    # "newGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    :goto_1
    move v2, v3

    .line 977
    goto :goto_0

    .line 971
    :cond_2
    const/4 v1, 0x0

    .line 972
    .local v1, "offset":I
    iget-boolean v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mAddAfterOccupiedItem:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    iget v4, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget v4, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->subIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 973
    add-int/lit8 v1, v1, 0x1

    .line 975
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    iget v4, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget v4, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->subIndex:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v4, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private colRowToIndex(II)I
    .locals 1
    .param p1, "col"    # I
    .param p2, "row"    # I

    .prologue
    .line 783
    iget v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberCols:I

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    return v0
.end method

.method private copyItemGroups(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 928
    .local p1, "fromItemGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;>;"
    .local p2, "toItemGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 929
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 930
    .local v1, "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    const/4 v0, 0x0

    .line 931
    .local v0, "copyOfGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    if-eqz v1, :cond_0

    .line 932
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "copyOfGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 934
    .restart local v0    # "copyOfGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 936
    .end local v0    # "copyOfGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    .end local v1    # "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    :cond_1
    return-void
.end method

.method private getAllGroupItems(Ljava/util/ArrayList;[[ZZ)Ljava/util/List;
    .locals 9
    .param p2, "gridMap"    # [[Z
    .param p3, "includeOccupiedLocations"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;>;[[ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1100
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;>;"
    const/4 v2, 0x0

    .line 1101
    .local v2, "number":I
    const/4 v8, 0x0

    .line 1102
    .local v8, "subIndex":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    .local v7, "groupItemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;>;"
    const/4 v4, 0x0

    .local v4, "itemIndex":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 1105
    invoke-direct {p0, p2, v4}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->isWidget([[ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1104
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1108
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1109
    .local v6, "group":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-nez v6, :cond_2

    .line 1110
    new-instance v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;-><init>(Lcom/sonymobile/home/itemorganizer/GroupItemMover;IIILcom/sonymobile/home/data/Item;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1111
    add-int/lit8 v2, v2, 0x1

    .line 1112
    goto :goto_1

    .line 1114
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_6

    .line 1115
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p3, :cond_4

    :cond_3
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1117
    :cond_4
    new-instance v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/home/data/Item;

    move-object v1, p0

    move v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;-><init>(Lcom/sonymobile/home/itemorganizer/GroupItemMover;IIILcom/sonymobile/home/data/Item;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1120
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 1122
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt v8, v0, :cond_0

    .line 1123
    add-int/lit8 v2, v2, 0x1

    .line 1124
    const/4 v8, 0x0

    goto :goto_1

    .line 1127
    .end local v6    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_7
    return-object v7
.end method

.method private getClosestVacantLocation([[ZILjava/util/ArrayList;)Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    .locals 6
    .param p1, "gridMap"    # [[Z
    .param p2, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[ZI",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;>;)",
            "Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;"
        }
    .end annotation

    .prologue
    .line 888
    .local p3, "itemGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;>;"
    const/4 v4, 0x0

    invoke-direct {p0, p3, p1, v4}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->getAllGroupItems(Ljava/util/ArrayList;[[ZZ)Ljava/util/List;

    move-result-object v2

    .line 889
    .local v2, "groupRefs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;>;"
    const/4 v0, 0x0

    .line 890
    .local v0, "closestGroupRef":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;

    .line 891
    .local v1, "groupRef":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    if-nez v0, :cond_1

    .line 892
    move-object v0, v1

    goto :goto_0

    .line 894
    :cond_1
    iget v4, v1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->itemIndex:I

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->itemIndex:I

    sub-int/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 896
    move-object v0, v1

    goto :goto_0

    .line 900
    .end local v1    # "groupRef":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    :cond_2
    return-object v0
.end method

.method private getGroupItem(Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;)Lcom/sonymobile/home/data/Item;
    .locals 2
    .param p1, "group"    # Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;

    .prologue
    .line 1042
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->subIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1043
    :cond_0
    const/4 v0, 0x0

    .line 1045
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    iget v1, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget v1, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->subIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/Item;

    goto :goto_0
.end method

.method private getGroupItem([[ZILjava/util/ArrayList;)Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    .locals 5
    .param p1, "gridMap"    # [[Z
    .param p2, "findIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[ZI",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;>;)",
            "Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;"
        }
    .end annotation

    .prologue
    .line 1050
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;>;"
    const/4 v4, 0x1

    invoke-direct {p0, p3, p1, v4}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->getAllGroupItems(Ljava/util/ArrayList;[[ZZ)Ljava/util/List;

    move-result-object v1

    .line 1051
    .local v1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;>;"
    const/4 v3, 0x0

    .line 1052
    .local v3, "matchingGroup":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;

    .line 1053
    .local v0, "group":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    iget v4, v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->itemIndex:I

    if-ne v4, p2, :cond_0

    .line 1054
    move-object v3, v0

    .line 1058
    .end local v0    # "group":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    :cond_1
    return-object v3
.end method

.method private getLastItem(Ljava/util/ArrayList;)Lcom/sonymobile/home/data/Item;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;>;)",
            "Lcom/sonymobile/home/data/Item;"
        }
    .end annotation

    .prologue
    .line 1075
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 1076
    .local v1, "lastItemIndex":I
    if-ltz v1, :cond_0

    .line 1077
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1078
    .local v0, "group":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-eqz v0, :cond_0

    .line 1079
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 1083
    .end local v0    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getNumberOfOverflowLocations([[ZLjava/util/ArrayList;)I
    .locals 7
    .param p1, "gridMap"    # [[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 912
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;>;"
    const/4 v4, 0x1

    invoke-direct {p0, p2, p1, v4}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->getAllGroupItems(Ljava/util/ArrayList;[[ZZ)Ljava/util/List;

    move-result-object v1

    .line 913
    .local v1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;>;"
    const/4 v3, 0x0

    .line 914
    .local v3, "numberOfOverflows":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;

    .line 915
    .local v0, "group":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    iget v4, v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->itemIndex:I

    iget v5, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberCols:I

    iget v6, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberRows:I

    mul-int/2addr v5, v6

    if-lt v4, v5, :cond_0

    .line 916
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 923
    .end local v0    # "group":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    :cond_1
    return v3
.end method

.method private getVacantLocationInGroup([[ZZ)Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    .locals 9
    .param p1, "gridMap"    # [[Z
    .param p2, "onlyMatchHoles"    # Z

    .prologue
    .line 833
    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->getAllGroupItems(Ljava/util/ArrayList;[[ZZ)Ljava/util/List;

    move-result-object v7

    .line 834
    .local v7, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;>;"
    const/4 v0, 0x0

    .line 835
    .local v0, "hole":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;

    .line 836
    .local v6, "group":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    iget v1, v6, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->subIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-direct {p0, v6}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->getGroupItem(Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;)Lcom/sonymobile/home/data/Item;

    move-result-object v1

    if-nez v1, :cond_0

    .line 837
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    iget v2, v6, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget v2, v6, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->subIndex:I

    iget v3, v6, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->itemIndex:I

    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->isHole(Ljava/util/List;II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 839
    :cond_1
    new-instance v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;

    .end local v0    # "hole":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    iget v2, v6, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    iget v3, v6, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->subIndex:I

    iget v4, v6, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->itemIndex:I

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;-><init>(Lcom/sonymobile/home/itemorganizer/GroupItemMover;IIILcom/sonymobile/home/data/Item;)V

    .line 846
    .end local v6    # "group":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    .restart local v0    # "hole":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    :cond_2
    :goto_0
    return-object v0

    .line 841
    .restart local v6    # "group":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    :cond_3
    const/4 v0, 0x0

    .line 843
    goto :goto_0
.end method

.method private gridToIndex(Lcom/sonymobile/grid/GridRect;)I
    .locals 2
    .param p1, "grid"    # Lcom/sonymobile/grid/GridRect;

    .prologue
    .line 772
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/sonymobile/grid/GridRect;->row:I

    iget v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberCols:I

    mul-int/2addr v0, v1

    iget v1, p1, Lcom/sonymobile/grid/GridRect;->col:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private groupsContainItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 7
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 813
    const/4 v0, 0x0

    .line 814
    .local v0, "foundItem":Z
    iget-object v4, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mGridMap:[[Z

    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v6}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->getAllGroupItems(Ljava/util/ArrayList;[[ZZ)Ljava/util/List;

    move-result-object v2

    .line 815
    .local v2, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;

    .line 816
    .local v1, "group":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    iget-object v4, v1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->item:Lcom/sonymobile/home/data/Item;

    invoke-direct {p0, v4, p1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->itemsAreUnique(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 817
    const/4 v0, 0x1

    .line 821
    .end local v1    # "group":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    :cond_1
    return v0
.end method

.method private handleOverflow(Ljava/util/ArrayList;I[[ZZ)Ljava/util/List;
    .locals 5
    .param p2, "numberOfOverflowItems"    # I
    .param p3, "gridMap"    # [[Z
    .param p4, "allowSpillOver"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;>;I[[ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 700
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;>;"
    move v3, p2

    .line 704
    .local v3, "numberOfOverflowCount":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v3, :cond_1

    if-ltz v0, :cond_1

    .line 705
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 706
    add-int/lit8 v3, v3, -0x1

    .line 704
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 709
    :cond_1
    if-eqz p4, :cond_2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v4, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mSpillOverItem:Lcom/sonymobile/home/data/Item;

    if-nez v4, :cond_2

    .line 710
    invoke-direct {p0, p1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->getLastItem(Ljava/util/ArrayList;)Lcom/sonymobile/home/data/Item;

    move-result-object v1

    .line 711
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    if-eqz v1, :cond_2

    .line 712
    invoke-direct {p0, p1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->removeLastItem(Ljava/util/ArrayList;)Lcom/sonymobile/home/data/Item;

    .line 713
    invoke-direct {p0, v1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->updateSpillOverItem(Lcom/sonymobile/home/data/Item;)V

    .line 714
    add-int/lit8 p2, p2, -0x1

    .line 715
    const/4 v3, 0x0

    .line 719
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_2
    if-nez v3, :cond_4

    .line 720
    move v3, p2

    .line 721
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 722
    :goto_1
    if-lez v3, :cond_4

    if-ltz v0, :cond_4

    .line 723
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 724
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 725
    add-int/lit8 v3, v3, -0x1

    .line 722
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 735
    :cond_4
    const/4 v2, 0x0

    .line 736
    .local v2, "movedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-nez v3, :cond_5

    .line 737
    invoke-direct {p0, p3, p1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->updateAndGetItemWithChangedLocations([[ZLjava/util/ArrayList;)Ljava/util/List;

    move-result-object v2

    .line 738
    iget-object v4, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mSpillOverItem:Lcom/sonymobile/home/data/Item;

    if-eqz v4, :cond_5

    .line 739
    iget-object v4, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mSpillOverItem:Lcom/sonymobile/home/data/Item;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    :cond_5
    return-object v2
.end method

.method private indexToCol(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 793
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberCols:I

    rem-int v0, p1, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private indexToRow(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 803
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberCols:I

    div-int v0, p1, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private indexToStr(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1210
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->indexToCol(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->indexToRow(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGroupEmpty(Ljava/util/List;)Z
    .locals 4
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
    .line 208
    .local p1, "group":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v0, 0x1

    .line 209
    .local v0, "empty":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 210
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    if-eqz v2, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 215
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    return v0
.end method

.method private isHole(Ljava/util/List;II)Z
    .locals 5
    .param p2, "groupIndex"    # I
    .param p3, "itemIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v2, 0x0

    .line 662
    if-ltz p3, :cond_0

    iget v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberCols:I

    iget v4, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberRows:I

    mul-int/2addr v3, v4

    if-ge p3, v3, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 664
    :cond_0
    const/4 v0, 0x0

    .line 673
    .local v0, "indexAtHole":Z
    :goto_0
    return v0

    .line 666
    .end local v0    # "indexAtHole":Z
    :cond_1
    add-int/lit8 v3, p2, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    add-int/lit8 v3, p2, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/data/Item;

    move-object v1, v3

    .line 667
    .local v1, "nextItem":Lcom/sonymobile/home/data/Item;
    :goto_1
    add-int/lit8 v3, p2, -0x1

    if-ltz v3, :cond_2

    add-int/lit8 v3, p2, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/data/Item;

    move-object v2, v3

    .line 668
    .local v2, "prevItem":Lcom/sonymobile/home/data/Item;
    :cond_2
    if-eqz v1, :cond_5

    iget v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberCols:I

    rem-int v3, p3, v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_5

    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "indexAtHole":Z
    :goto_2
    goto :goto_0

    .end local v0    # "indexAtHole":Z
    .end local v1    # "nextItem":Lcom/sonymobile/home/data/Item;
    .end local v2    # "prevItem":Lcom/sonymobile/home/data/Item;
    :cond_4
    move-object v1, v2

    .line 666
    goto :goto_1

    .line 668
    .restart local v1    # "nextItem":Lcom/sonymobile/home/data/Item;
    .restart local v2    # "prevItem":Lcom/sonymobile/home/data/Item;
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private isItemInList(Ljava/util/List;Lcom/sonymobile/home/data/Item;)Z
    .locals 4
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/data/Item;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v0, 0x0

    .line 420
    .local v0, "foundItem":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 421
    .local v2, "itemInList":Lcom/sonymobile/home/data/Item;
    invoke-direct {p0, v2, p2}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->itemsAreUnique(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 422
    const/4 v0, 0x1

    .line 426
    .end local v2    # "itemInList":Lcom/sonymobile/home/data/Item;
    :cond_1
    return v0
.end method

.method private isLarge(Lcom/sonymobile/grid/GridRect;)Z
    .locals 2
    .param p1, "grid"    # Lcom/sonymobile/grid/GridRect;

    .prologue
    const/4 v0, 0x1

    .line 762
    if-eqz p1, :cond_1

    iget v1, p1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    if-gt v1, v0, :cond_0

    iget v1, p1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    if-le v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSmall(Lcom/sonymobile/grid/GridRect;)Z
    .locals 2
    .param p1, "grid"    # Lcom/sonymobile/grid/GridRect;

    .prologue
    const/4 v0, 0x1

    .line 752
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    if-ne v1, v0, :cond_0

    iget v1, p1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpillOverItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 185
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->row:I

    iget v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberRows:I

    add-int/lit8 v1, v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->col:I

    iget v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberCols:I

    add-int/lit8 v1, v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWidget([[ZI)Z
    .locals 2
    .param p1, "gridMap"    # [[Z
    .param p2, "itemIndex"    # I

    .prologue
    .line 310
    if-ltz p2, :cond_0

    iget v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberCols:I

    iget v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberRows:I

    mul-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    .line 311
    :cond_0
    const/4 v0, 0x0

    .line 313
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p2}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->indexToCol(I)I

    move-result v0

    aget-object v0, p1, v0

    invoke-direct {p0, p2}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->indexToRow(I)I

    move-result v1

    aget-boolean v0, v0, v1

    goto :goto_0
.end method

.method private itemToStr(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 1206
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->itemToStr(Lcom/sonymobile/home/data/Item;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private itemToStr(Lcom/sonymobile/home/data/Item;I)Ljava/lang/String;
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "index"    # I

    .prologue
    .line 1197
    const/4 v0, -0x1

    .line 1198
    .local v0, "i":I
    if-eqz p1, :cond_0

    .line 1199
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    iget-object v1, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->col:I

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    iget-object v2, v2, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->row:I

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->colRowToIndex(II)I

    move-result v0

    .line 1201
    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->indexToStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, p2}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->indexToStr(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private itemsAreUnique(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)Z
    .locals 4
    .param p1, "item1"    # Lcom/sonymobile/home/data/Item;
    .param p2, "item2"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 684
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mayLocationsBeRestored(Lcom/sonymobile/grid/GridRect;)Z
    .locals 5
    .param p1, "toLocation"    # Lcom/sonymobile/grid/GridRect;

    .prologue
    .line 522
    const/4 v1, 0x0

    .line 523
    .local v1, "maybeRestored":Z
    if-nez p1, :cond_1

    .line 524
    const/4 v1, 0x1

    .line 536
    :cond_0
    :goto_0
    return v1

    .line 525
    :cond_1
    iget-boolean v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mAddAfterOccupiedItem:Z

    if-nez v2, :cond_0

    .line 526
    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mGridMap:[[Z

    invoke-direct {p0, p1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->gridToIndex(Lcom/sonymobile/grid/GridRect;)I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mOriginalItems:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3, v4}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->getGroupItem([[ZILjava/util/ArrayList;)Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;

    move-result-object v0

    .line 528
    .local v0, "groupItem":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->item:Lcom/sonymobile/home/data/Item;

    if-nez v2, :cond_0

    .line 529
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private removeGroupItem(Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;)Z
    .locals 2
    .param p1, "group"    # Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;

    .prologue
    .line 1030
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1031
    :cond_0
    const/4 v0, 0x0

    .line 1038
    :goto_0
    return v0

    .line 1033
    :cond_1
    iget v0, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->subIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1034
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    iget v1, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1038
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1036
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    iget v1, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget v1, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->subIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method private removeLastItem(Ljava/util/ArrayList;)Lcom/sonymobile/home/data/Item;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;>;)",
            "Lcom/sonymobile/home/data/Item;"
        }
    .end annotation

    .prologue
    .line 1062
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;>;"
    const/4 v1, 0x0

    .line 1063
    .local v1, "lastItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 1064
    .local v2, "lastItemIndex":I
    if-ltz v2, :cond_0

    .line 1065
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1066
    .local v0, "group":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-eqz v0, :cond_0

    .line 1067
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "lastItem":Lcom/sonymobile/home/data/Item;
    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 1071
    .end local v0    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .restart local v1    # "lastItem":Lcom/sonymobile/home/data/Item;
    :cond_0
    return-object v1
.end method

.method private removeNextEmptyGroup(I)V
    .locals 2
    .param p1, "startGroupNumber"    # I

    .prologue
    .line 1021
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1022
    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1023
    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1027
    :cond_0
    return-void

    .line 1021
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private replaceHoleInGroupWithEmptyGroup(Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;)V
    .locals 4
    .param p1, "group"    # Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;

    .prologue
    const/4 v3, 0x0

    .line 981
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    iget v1, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->subIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 985
    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    iget v2, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 987
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    iget v2, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 988
    .local v0, "itemsInGroup":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget v1, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->subIndex:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_3

    .line 989
    iget v1, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->subIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 990
    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    iget v2, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 991
    :cond_3
    iget v1, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->subIndex:I

    if-nez v1, :cond_0

    .line 992
    iget v1, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->subIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 993
    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    iget v2, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private reserveLocationAndPackItems(Ljava/util/List;Lcom/sonymobile/grid/GridRect;Z)Ljava/util/List;
    .locals 3
    .param p2, "toLocation"    # Lcom/sonymobile/grid/GridRect;
    .param p3, "allowSpillOver"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/grid/GridRect;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, "itemsInModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mGridMap:[[Z

    invoke-direct {p0, p2, v1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->updateIconLocations(Lcom/sonymobile/grid/GridRect;[[Z)V

    .line 509
    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mSpillOverItem:Lcom/sonymobile/home/data/Item;

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mSpillOverItem:Lcom/sonymobile/home/data/Item;

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->addAfterLastItem(Ljava/util/ArrayList;Lcom/sonymobile/home/data/Item;)Z

    .line 511
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->updateSpillOverItem(Lcom/sonymobile/home/data/Item;)V

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mGridMap:[[Z

    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->getNumberOfOverflowLocations([[ZLjava/util/ArrayList;)I

    move-result v0

    .line 514
    .local v0, "numberOfOverflowItems":I
    if-lez v0, :cond_1

    .line 515
    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mGridMap:[[Z

    invoke-direct {p0, v1, v0, v2, p3}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->handleOverflow(Ljava/util/ArrayList;I[[ZZ)Ljava/util/List;

    move-result-object v1

    .line 517
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mGridMap:[[Z

    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->updateAndGetItemWithChangedLocations([[ZLjava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method private resetMapAndIconArray()V
    .locals 4

    .prologue
    .line 321
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mSpillOverItem:Lcom/sonymobile/home/data/Item;

    .line 323
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_0
    iget v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberCols:I

    if-ge v0, v2, :cond_1

    .line 324
    const/4 v1, 0x0

    .local v1, "row":I
    :goto_1
    iget v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberRows:I

    if-ge v1, v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mGridMap:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 323
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "row":I
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 329
    return-void
.end method

.method private restoreLocationsIfPossible(Ljava/util/List;Lcom/sonymobile/grid/GridRect;)V
    .locals 2
    .param p2, "toLocation"    # Lcom/sonymobile/grid/GridRect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/grid/GridRect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "itemsInModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {p0, p2}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mayLocationsBeRestored(Lcom/sonymobile/grid/GridRect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->updateSpillOverItem(Lcom/sonymobile/home/data/Item;)V

    .line 406
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mOriginalItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->copyItemGroups(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mGridMap:[[Z

    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->updateCachedItems(Ljava/util/List;[[ZLjava/util/ArrayList;)V

    .line 409
    return-void
.end method

.method private setGroupItem(Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;Lcom/sonymobile/home/data/Item;Ljava/util/ArrayList;)Z
    .locals 4
    .param p1, "group"    # Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;",
            "Lcom/sonymobile/home/data/Item;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p3, "itemGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;>;"
    const/4 v2, 0x1

    .line 945
    if-nez p1, :cond_0

    .line 946
    const/4 v1, 0x0

    .line 955
    :goto_0
    return v1

    .line 948
    :cond_0
    iget v1, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->subIndex:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 949
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 950
    .local v0, "newGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    iget v1, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    invoke-virtual {p3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "newGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    :goto_1
    move v1, v2

    .line 955
    goto :goto_0

    .line 953
    :cond_1
    iget v1, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget v3, p1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->subIndex:I

    invoke-virtual {v1, v3, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private setItemIfLocationIsVacant([[ZILcom/sonymobile/home/data/Item;Ljava/util/ArrayList;)Z
    .locals 3
    .param p1, "gridMap"    # [[Z
    .param p2, "index"    # I
    .param p3, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[ZI",
            "Lcom/sonymobile/home/data/Item;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p4, "itemGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;>;"
    const/4 v1, 0x0

    .line 860
    invoke-direct {p0, p1, p2, p4}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->getGroupItem([[ZILjava/util/ArrayList;)Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;

    move-result-object v0

    .line 861
    .local v0, "group":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    if-nez v0, :cond_1

    .line 868
    :cond_0
    :goto_0
    return v1

    .line 864
    :cond_1
    iget-object v2, v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->item:Lcom/sonymobile/home/data/Item;

    if-nez v2, :cond_0

    .line 865
    invoke-direct {p0, v0, p3, p4}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->setGroupItem(Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;Lcom/sonymobile/home/data/Item;Ljava/util/ArrayList;)Z

    .line 866
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setItemInClosestVacantLocation([[ZILcom/sonymobile/home/data/Item;Ljava/util/ArrayList;)Z
    .locals 2
    .param p1, "gridMap"    # [[Z
    .param p2, "startIndex"    # I
    .param p3, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[ZI",
            "Lcom/sonymobile/home/data/Item;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 874
    .local p4, "itemGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;>;"
    invoke-direct {p0, p1, p2, p4}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->getClosestVacantLocation([[ZILjava/util/ArrayList;)Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;

    move-result-object v0

    .line 875
    .local v0, "closestGroupRef":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    invoke-direct {p0, v0, p3, p4}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->setGroupItem(Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;Lcom/sonymobile/home/data/Item;Ljava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method private updateAndGetItemWithChangedLocations([[ZLjava/util/ArrayList;)Ljava/util/List;
    .locals 8
    .param p1, "gridMap"    # [[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 626
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;>;"
    if-nez p2, :cond_1

    .line 627
    const/4 v5, 0x0

    .line 645
    :cond_0
    return-object v5

    .line 629
    :cond_1
    const/4 v7, 0x1

    invoke-direct {p0, p2, p1, v7}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->getAllGroupItems(Ljava/util/ArrayList;[[ZZ)Ljava/util/List;

    move-result-object v2

    .line 630
    .local v2, "groupRefs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 631
    .local v5, "movedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;

    .line 632
    .local v1, "group":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    if-eqz v1, :cond_2

    .line 635
    iget v7, v1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->itemIndex:I

    invoke-direct {p0, v7}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->indexToCol(I)I

    move-result v0

    .line 636
    .local v0, "col":I
    iget v7, v1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->itemIndex:I

    invoke-direct {p0, v7}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->indexToRow(I)I

    move-result v6

    .line 637
    .local v6, "row":I
    iget-object v4, v1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->item:Lcom/sonymobile/home/data/Item;

    .line 638
    .local v4, "item":Lcom/sonymobile/home/data/Item;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v7

    iget-object v7, v7, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v7, v7, Lcom/sonymobile/grid/GridRect;->col:I

    if-ne v7, v0, :cond_3

    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v7

    iget-object v7, v7, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v7, v7, Lcom/sonymobile/grid/GridRect;->row:I

    if-eq v7, v6, :cond_2

    .line 640
    :cond_3
    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v7

    iget-object v7, v7, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput v0, v7, Lcom/sonymobile/grid/GridRect;->col:I

    .line 641
    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v7

    iget-object v7, v7, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput v6, v7, Lcom/sonymobile/grid/GridRect;->row:I

    .line 642
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateCachedItems(Ljava/util/List;[[ZLjava/util/ArrayList;)V
    .locals 9
    .param p2, "gridMap"    # [[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;[[Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "modelItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .local p3, "itemGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;>;"
    const/4 v7, 0x0

    .line 442
    const/4 v6, 0x1

    invoke-direct {p0, p3, p2, v6}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->getAllGroupItems(Ljava/util/ArrayList;[[ZZ)Ljava/util/List;

    move-result-object v1

    .line 443
    .local v1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;

    .line 444
    .local v0, "group":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    iget-object v4, v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->item:Lcom/sonymobile/home/data/Item;

    .line 445
    .local v4, "item":Lcom/sonymobile/home/data/Item;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    iget-object v6, v6, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    invoke-direct {p0, v6}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->isLarge(Lcom/sonymobile/grid/GridRect;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, p1, v4}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->isItemInList(Ljava/util/List;Lcom/sonymobile/home/data/Item;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 447
    :cond_1
    invoke-direct {p0, v0, v7, p3}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->setGroupItem(Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;Lcom/sonymobile/home/data/Item;Ljava/util/ArrayList;)Z

    goto :goto_0

    .line 451
    .end local v0    # "group":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    .end local v4    # "item":Lcom/sonymobile/home/data/Item;
    :cond_2
    const/4 v5, 0x0

    .line 452
    .local v5, "keepSpillItem":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/data/Item;

    .line 453
    .restart local v4    # "item":Lcom/sonymobile/home/data/Item;
    iget-object v6, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mSpillOverItem:Lcom/sonymobile/home/data/Item;

    invoke-direct {p0, v4, v6}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->itemsAreUnique(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)Z

    move-result v6

    or-int/2addr v5, v6

    .line 454
    goto :goto_1

    .line 455
    .end local v4    # "item":Lcom/sonymobile/home/data/Item;
    :cond_3
    if-nez v5, :cond_4

    .line 456
    iput-object v7, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mSpillOverItem:Lcom/sonymobile/home/data/Item;

    .line 465
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/data/Item;

    .line 466
    .restart local v4    # "item":Lcom/sonymobile/home/data/Item;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    iget-object v6, v6, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    invoke-direct {p0, v6}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->isSmall(Lcom/sonymobile/grid/GridRect;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0, v4}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->groupsContainItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mSpillOverItem:Lcom/sonymobile/home/data/Item;

    invoke-direct {p0, v4, v6}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->itemsAreUnique(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 469
    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    iget-object v6, v6, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    invoke-direct {p0, v6}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->gridToIndex(Lcom/sonymobile/grid/GridRect;)I

    move-result v2

    .line 470
    .local v2, "i":I
    invoke-direct {p0, p2, v2, v4, p3}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->setItemIfLocationIsVacant([[ZILcom/sonymobile/home/data/Item;Ljava/util/ArrayList;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-direct {p0, p2, v2, v4, p3}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->setItemInClosestVacantLocation([[ZILcom/sonymobile/home/data/Item;Ljava/util/ArrayList;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 472
    sget-object v6, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ERROR updateCachedItems itemFromModel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v4}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->itemToStr(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 476
    .end local v2    # "i":I
    .end local v4    # "item":Lcom/sonymobile/home/data/Item;
    :cond_6
    return-void
.end method

.method private updateIconLocations(Lcom/sonymobile/grid/GridRect;[[Z)V
    .locals 7
    .param p1, "toLocation"    # Lcom/sonymobile/grid/GridRect;
    .param p2, "gridMap"    # [[Z

    .prologue
    const/4 v6, 0x0

    .line 547
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->getVacantLocationInGroup([[ZZ)Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;

    move-result-object v0

    .line 548
    .local v0, "emptySlot":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    invoke-direct {p0, p1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->gridToIndex(Lcom/sonymobile/grid/GridRect;)I

    move-result v2

    .line 549
    .local v2, "toLocationIndex":I
    iget-object v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v2, v3}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->getGroupItem([[ZILjava/util/ArrayList;)Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;

    move-result-object v1

    .line 556
    .local v1, "toLocationGroup":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget v3, v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    iget v4, v1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    if-ne v3, v4, :cond_2

    iget v3, v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->itemIndex:I

    invoke-direct {p0, v3}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->indexToRow(I)I

    move-result v3

    iget v4, v1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->itemIndex:I

    invoke-direct {p0, v4}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->indexToRow(I)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 563
    iget v3, v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->itemIndex:I

    iget v4, v1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->itemIndex:I

    if-le v3, v4, :cond_1

    .line 567
    invoke-direct {p0, v0}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->removeGroupItem(Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;)Z

    .line 568
    iget-boolean v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mAddAfterOccupiedItem:Z

    invoke-direct {p0, v1, v6, v3}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->addGroupItem(Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;Lcom/sonymobile/home/data/Item;Z)Z

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget v3, v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->itemIndex:I

    iget v4, v1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->itemIndex:I

    if-ge v3, v4, :cond_0

    .line 573
    iget-boolean v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mAddAfterOccupiedItem:Z

    invoke-direct {p0, v1, v6, v3}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->addGroupItem(Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;Lcom/sonymobile/home/data/Item;Z)Z

    .line 574
    invoke-direct {p0, v0}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->removeGroupItem(Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;)Z

    goto :goto_0

    .line 578
    :cond_2
    if-eqz v0, :cond_3

    .line 579
    iget-object v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    iget v4, v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget v4, v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->subIndex:I

    iget v5, v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->itemIndex:I

    invoke-direct {p0, v3, v4, v5}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->isHole(Ljava/util/List;II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 587
    iget v3, v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    invoke-direct {p0, v3}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->addEmptySlotAfterGroup(I)V

    .line 588
    invoke-direct {p0, v0}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->removeGroupItem(Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;)Z

    .line 597
    :goto_1
    invoke-direct {p0, p1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->gridToIndex(Lcom/sonymobile/grid/GridRect;)I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v3, v4}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->getGroupItem([[ZILjava/util/ArrayList;)Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;

    move-result-object v1

    .line 599
    :cond_3
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->subIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 607
    iget-boolean v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mAddAfterOccupiedItem:Z

    invoke-direct {p0, v1, v6, v3}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->addGroupItem(Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;Lcom/sonymobile/home/data/Item;Z)Z

    .line 608
    iget v3, v1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->removeNextEmptyGroup(I)V

    goto :goto_0

    .line 594
    :cond_4
    invoke-direct {p0, v0}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->replaceHoleInGroupWithEmptyGroup(Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;)V

    goto :goto_1
.end method

.method private updateSpillOverItem(Lcom/sonymobile/home/data/Item;)V
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberRows:I

    add-int/lit8 v1, v1, 0x5

    iput v1, v0, Lcom/sonymobile/grid/GridRect;->row:I

    .line 179
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberCols:I

    add-int/lit8 v1, v1, 0x5

    iput v1, v0, Lcom/sonymobile/grid/GridRect;->col:I

    .line 181
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mSpillOverItem:Lcom/sonymobile/home/data/Item;

    .line 182
    return-void
.end method


# virtual methods
.method public addToMap(Lcom/sonymobile/grid/GridRect;)V
    .locals 4
    .param p1, "grid"    # Lcom/sonymobile/grid/GridRect;

    .prologue
    .line 261
    if-eqz p1, :cond_0

    iget v2, p1, Lcom/sonymobile/grid/GridRect;->col:I

    iget v3, p1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberCols:I

    if-gt v2, v3, :cond_0

    iget v2, p1, Lcom/sonymobile/grid/GridRect;->row:I

    iget v3, p1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberRows:I

    if-le v2, v3, :cond_1

    .line 271
    :cond_0
    return-void

    .line 266
    :cond_1
    iget v0, p1, Lcom/sonymobile/grid/GridRect;->col:I

    .local v0, "col":I
    :goto_0
    iget v2, p1, Lcom/sonymobile/grid/GridRect;->col:I

    iget v3, p1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 267
    iget v1, p1, Lcom/sonymobile/grid/GridRect;->row:I

    .local v1, "row":I
    :goto_1
    iget v2, p1, Lcom/sonymobile/grid/GridRect;->row:I

    iget v3, p1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 268
    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mGridMap:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 266
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getClosestVacantLocation(Lcom/sonymobile/grid/GridRect;)Lcom/sonymobile/grid/GridRect;
    .locals 5
    .param p1, "requestedLocation"    # Lcom/sonymobile/grid/GridRect;

    .prologue
    .line 386
    if-nez p1, :cond_1

    .line 387
    const/4 v0, 0x0

    .line 399
    :cond_0
    :goto_0
    return-object v0

    .line 390
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mGridMap:[[Z

    invoke-direct {p0, p1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->gridToIndex(Lcom/sonymobile/grid/GridRect;)I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3, v4}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->getClosestVacantLocation([[ZILjava/util/ArrayList;)Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;

    move-result-object v1

    .line 392
    .local v1, "groupItem":Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
    const/4 v0, 0x0

    .line 393
    .local v0, "closestVacantLocation":Lcom/sonymobile/grid/GridRect;
    if-eqz v1, :cond_0

    .line 394
    new-instance v0, Lcom/sonymobile/grid/GridRect;

    .end local v0    # "closestVacantLocation":Lcom/sonymobile/grid/GridRect;
    invoke-direct {v0}, Lcom/sonymobile/grid/GridRect;-><init>()V

    .line 395
    .restart local v0    # "closestVacantLocation":Lcom/sonymobile/grid/GridRect;
    invoke-virtual {v0, p1}, Lcom/sonymobile/grid/GridRect;->set(Lcom/sonymobile/grid/GridRect;)V

    .line 396
    iget v2, v1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->itemIndex:I

    invoke-direct {p0, v2}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->indexToCol(I)I

    move-result v2

    iput v2, v0, Lcom/sonymobile/grid/GridRect;->col:I

    .line 397
    iget v2, v1, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->itemIndex:I

    invoke-direct {p0, v2}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->indexToRow(I)I

    move-result v2

    iput v2, v0, Lcom/sonymobile/grid/GridRect;->row:I

    goto :goto_0
.end method

.method public isFree(Lcom/sonymobile/grid/GridRect;)Z
    .locals 5
    .param p1, "grid"    # Lcom/sonymobile/grid/GridRect;

    .prologue
    .line 282
    if-nez p1, :cond_1

    .line 283
    const/4 v1, 0x0

    .line 299
    :cond_0
    return v1

    .line 286
    :cond_1
    const/4 v1, 0x1

    .line 287
    .local v1, "freeSpace":Z
    iget v0, p1, Lcom/sonymobile/grid/GridRect;->col:I

    .local v0, "col":I
    :goto_0
    if-eqz v1, :cond_0

    iget v3, p1, Lcom/sonymobile/grid/GridRect;->col:I

    iget v4, p1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    iget v3, p1, Lcom/sonymobile/grid/GridRect;->col:I

    iget v4, p1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberCols:I

    if-gt v3, v4, :cond_0

    .line 289
    iget v2, p1, Lcom/sonymobile/grid/GridRect;->row:I

    .local v2, "row":I
    :goto_1
    if-eqz v1, :cond_3

    iget v3, p1, Lcom/sonymobile/grid/GridRect;->row:I

    iget v4, p1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_3

    iget v3, p1, Lcom/sonymobile/grid/GridRect;->row:I

    iget v4, p1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberRows:I

    if-gt v3, v4, :cond_3

    .line 291
    iget-object v3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mGridMap:[[Z

    aget-object v3, v3, v0

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_2

    .line 292
    const/4 v1, 0x0

    .line 290
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 288
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public packItems(Ljava/util/List;Z)Ljava/util/List;
    .locals 3
    .param p2, "allowSpillOver"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, "itemsInModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mReservedCell:Lcom/sonymobile/grid/GridRect;

    invoke-direct {p0, v0}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->isLarge(Lcom/sonymobile/grid/GridRect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    sget-object v0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error: Moving large items are not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v0, 0x0

    .line 351
    :goto_0
    return-object v0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mReservedCell:Lcom/sonymobile/grid/GridRect;

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->restoreLocationsIfPossible(Ljava/util/List;Lcom/sonymobile/grid/GridRect;)V

    .line 351
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mReservedCell:Lcom/sonymobile/grid/GridRect;

    invoke-direct {p0, p1, v0, p2}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->reserveLocationAndPackItems(Ljava/util/List;Lcom/sonymobile/grid/GridRect;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public removeSpillOverItem()Lcom/sonymobile/home/data/Item;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mSpillOverItem:Lcom/sonymobile/home/data/Item;

    .line 172
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->updateSpillOverItem(Lcom/sonymobile/home/data/Item;)V

    .line 173
    return-object v0
.end method

.method public reserveLocation(Lcom/sonymobile/grid/GridRect;Z)Z
    .locals 3
    .param p1, "grid"    # Lcom/sonymobile/grid/GridRect;
    .param p2, "reserveItemAfterLocation"    # Z

    .prologue
    const/4 v2, 0x0

    .line 229
    iput-boolean p2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mAddAfterOccupiedItem:Z

    .line 230
    if-nez p1, :cond_1

    .line 231
    iput-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mReservedCell:Lcom/sonymobile/grid/GridRect;

    .line 236
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->isFree(Lcom/sonymobile/grid/GridRect;)Z

    move-result v0

    .line 237
    .local v0, "availableLocation":Z
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->isSmall(Lcom/sonymobile/grid/GridRect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    iput-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mReservedCell:Lcom/sonymobile/grid/GridRect;

    .line 245
    :cond_0
    return v0

    .line 233
    .end local v0    # "availableLocation":Z
    :cond_1
    iput-object p1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mReservedCell:Lcom/sonymobile/grid/GridRect;

    goto :goto_0
.end method

.method public resetWidgetAndIconLocations(Ljava/util/List;Lcom/sonymobile/grid/GridRect;)V
    .locals 11
    .param p2, "startLocation"    # Lcom/sonymobile/grid/GridRect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/grid/GridRect;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "itemsInModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v10, 0x0

    .line 99
    invoke-direct {p0}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->resetMapAndIconArray()V

    .line 100
    iget v8, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberCols:I

    iget v9, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberRows:I

    mul-int/2addr v8, v9

    new-array v6, v8, [Lcom/sonymobile/home/data/Item;

    .line 101
    .local v6, "smallItems":[Lcom/sonymobile/home/data/Item;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/data/Item;

    .line 102
    .local v4, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v8

    iget-object v0, v8, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 103
    .local v0, "grid":Lcom/sonymobile/grid/GridRect;
    iget v8, v0, Lcom/sonymobile/grid/GridRect;->col:I

    iget v9, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberCols:I

    if-ge v8, v9, :cond_1

    iget v8, v0, Lcom/sonymobile/grid/GridRect;->row:I

    iget v9, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mNumberRows:I

    if-lt v8, v9, :cond_2

    .line 104
    :cond_1
    invoke-direct {p0, v4}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->isSpillOverItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 105
    invoke-direct {p0, v4}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->updateSpillOverItem(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 109
    :cond_2
    invoke-direct {p0, v0}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->isLarge(Lcom/sonymobile/grid/GridRect;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 111
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->addToMap(Lcom/sonymobile/grid/GridRect;)V

    goto :goto_0

    .line 114
    :cond_3
    iget v8, v0, Lcom/sonymobile/grid/GridRect;->col:I

    iget v9, v0, Lcom/sonymobile/grid/GridRect;->row:I

    invoke-direct {p0, v8, v9}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->colRowToIndex(II)I

    move-result v8

    aput-object v4, v6, v8

    goto :goto_0

    .line 120
    .end local v0    # "grid":Lcom/sonymobile/grid/GridRect;
    .end local v4    # "item":Lcom/sonymobile/home/data/Item;
    :cond_4
    const/4 v1, 0x0

    .line 121
    .local v1, "groupOfItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    const/4 v5, 0x0

    .line 122
    .local v5, "itemIndex":I
    invoke-direct {p0, p2}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->gridToIndex(Lcom/sonymobile/grid/GridRect;)I

    move-result v7

    .line 123
    .local v7, "startLocationIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v6

    if-ge v2, v8, :cond_b

    .line 124
    aget-object v4, v6, v2

    .line 125
    .restart local v4    # "item":Lcom/sonymobile/home/data/Item;
    iget-object v8, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mGridMap:[[Z

    invoke-direct {p0, v8, v5}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->isWidget([[ZI)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 126
    if-eqz v4, :cond_5

    .line 127
    sget-object v8, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->TAG:Ljava/lang/String;

    const-string v9, "ERROR: widget overlapping item"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_5
    iget-object v8, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v8, v1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->addGroupIfContainsItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 130
    const/4 v1, 0x0

    .line 131
    add-int/lit8 v5, v5, 0x1

    .line 123
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 134
    :cond_6
    if-eqz v4, :cond_8

    .line 136
    if-nez v1, :cond_7

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "groupOfItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .restart local v1    # "groupOfItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    :cond_7
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 140
    :cond_8
    if-eq v7, v5, :cond_9

    .line 143
    iget-object v8, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v8, v1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->addGroupIfContainsItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 144
    const/4 v1, 0x0

    .line 145
    iget-object v8, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 149
    :cond_9
    if-nez v1, :cond_a

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "groupOfItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .restart local v1    # "groupOfItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    :cond_a
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 156
    .end local v4    # "item":Lcom/sonymobile/home/data/Item;
    :cond_b
    if-eqz v1, :cond_c

    .line 157
    iget-object v8, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_c
    iget-object v8, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mItems:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->mOriginalItems:Ljava/util/ArrayList;

    invoke-direct {p0, v8, v9}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->copyItemGroups(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 163
    return-void
.end method

.method public restore(Ljava/util/List;Lcom/sonymobile/grid/GridRect;)Ljava/util/List;
    .locals 2
    .param p2, "toLocation"    # Lcom/sonymobile/grid/GridRect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/grid/GridRect;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, "itemsInModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->restoreLocationsIfPossible(Ljava/util/List;Lcom/sonymobile/grid/GridRect;)V

    .line 376
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->reserveLocationAndPackItems(Ljava/util/List;Lcom/sonymobile/grid/GridRect;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
