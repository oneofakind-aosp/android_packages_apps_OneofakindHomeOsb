.class public Lcom/sonymobile/home/storage/TipSerializer;
.super Ljava/lang/Object;
.source "TipSerializer.java"

# interfaces
.implements Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContentValues(Lcom/sonymobile/home/data/Item;)Landroid/content/ContentValues;
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 24
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/home/data/TipItem;

    .line 25
    .local v0, "tipItem":Lcom/sonymobile/home/data/TipItem;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 27
    .local v1, "value":Landroid/content/ContentValues;
    invoke-virtual {v0}, Lcom/sonymobile/home/data/TipItem;->isStored()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    const-string v2, "_id"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/TipItem;->getStorageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 31
    :cond_0
    const-string v2, "page_index"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/TipItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget v3, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    const-string v2, "page_position"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/TipItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget v3, v3, Lcom/sonymobile/home/data/ItemLocation;->position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 33
    const-string v2, "cellx"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/TipItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget-object v3, v3, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->col:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 34
    const-string v2, "celly"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/TipItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget-object v3, v3, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->row:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 35
    const-string v2, "spanx"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/TipItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget-object v3, v3, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->colSpan:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 36
    const-string v2, "spany"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/TipItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget-object v3, v3, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    const-string v2, "page_view"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/TipItem;->getPageViewName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v2, "item_type"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v2, "item_id"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/TipItem;->getTipId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-object v1
.end method

.method public createItem(Landroid/database/Cursor;)Lcom/sonymobile/home/data/Item;
    .locals 14
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 46
    const-string v13, "_id"

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 47
    .local v8, "id":J
    const-string v13, "page_index"

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 48
    .local v1, "page":I
    const-string v13, "page_position"

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 49
    .local v2, "position":I
    const-string v13, "cellx"

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 50
    .local v3, "cellX":I
    const-string v13, "celly"

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 51
    .local v4, "cellY":I
    const-string v13, "spanx"

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 52
    .local v5, "spanX":I
    const-string v13, "spany"

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 53
    .local v6, "spanY":I
    const-string v13, "page_view"

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 54
    .local v7, "pageViewname":Ljava/lang/String;
    const-string v13, "item_id"

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 55
    .local v11, "tipIdAsString":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 57
    .local v10, "tipId":I
    new-instance v12, Lcom/sonymobile/home/data/TipItem;

    invoke-direct {v12, v10}, Lcom/sonymobile/home/data/TipItem;-><init>(I)V

    .line 58
    .local v12, "tipItem":Lcom/sonymobile/home/data/TipItem;
    new-instance v0, Lcom/sonymobile/home/data/ItemLocation;

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIIII)V

    .line 59
    .local v0, "location":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {v12, v8, v9}, Lcom/sonymobile/home/data/TipItem;->setStorageId(J)V

    .line 60
    invoke-virtual {v12, v0}, Lcom/sonymobile/home/data/TipItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 61
    invoke-virtual {v12, v7}, Lcom/sonymobile/home/data/TipItem;->setPageViewName(Ljava/lang/String;)V

    .line 63
    return-object v12
.end method
