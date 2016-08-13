.class public Lcom/sonymobile/home/storage/AdvWidgetSerializer;
.super Ljava/lang/Object;
.source "AdvWidgetSerializer.java"

# interfaces
.implements Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContentValues(Lcom/sonymobile/home/data/Item;)Landroid/content/ContentValues;
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 25
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/home/data/AdvWidgetItem;

    .line 26
    .local v0, "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 28
    .local v1, "value":Landroid/content/ContentValues;
    invoke-virtual {v0}, Lcom/sonymobile/home/data/AdvWidgetItem;->isStored()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    const-string v2, "_id"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/AdvWidgetItem;->getStorageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 31
    :cond_0
    const-string v2, "name"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/AdvWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v2, "package_name"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/AdvWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v2, "page_index"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/AdvWidgetItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget v3, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 35
    const-string v2, "cellx"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/AdvWidgetItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget-object v3, v3, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->col:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 36
    const-string v2, "celly"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/AdvWidgetItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget-object v3, v3, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->row:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    const-string v2, "spanx"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/AdvWidgetItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget-object v3, v3, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->colSpan:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 38
    const-string v2, "spany"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/AdvWidgetItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget-object v3, v3, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 40
    const-string v2, "page_view"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/AdvWidgetItem;->getPageViewName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v2, "item_type"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v2, "item_id"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/AdvWidgetItem;->getId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-object v1
.end method

.method public createItem(Landroid/database/Cursor;)Lcom/sonymobile/home/data/Item;
    .locals 14
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 49
    const-string v13, "package_name"

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 50
    .local v10, "packagename":Ljava/lang/String;
    const-string v13, "name"

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 51
    .local v7, "classname":Ljava/lang/String;
    const-string v13, "_id"

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 52
    .local v8, "id":J
    const-string v13, "cellx"

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 53
    .local v2, "cellX":I
    const-string v13, "celly"

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 54
    .local v3, "cellY":I
    const-string v13, "spanx"

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 55
    .local v4, "spanX":I
    const-string v13, "spany"

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 56
    .local v5, "spanY":I
    const-string v13, "page_index"

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 57
    .local v1, "page":I
    const-string v13, "page_view"

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 58
    .local v11, "pageViewname":Ljava/lang/String;
    const-string v13, "item_id"

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 60
    .local v12, "uuid":Ljava/lang/String;
    new-instance v6, Lcom/sonymobile/home/data/AdvWidgetItem;

    invoke-static {v12}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v13

    invoke-direct {v6, v10, v7, v13}, Lcom/sonymobile/home/data/AdvWidgetItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V

    .line 61
    .local v6, "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    new-instance v0, Lcom/sonymobile/home/data/ItemLocation;

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIII)V

    .line 63
    .local v0, "location":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {v6, v8, v9}, Lcom/sonymobile/home/data/AdvWidgetItem;->setStorageId(J)V

    .line 64
    invoke-virtual {v6, v0}, Lcom/sonymobile/home/data/AdvWidgetItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 65
    invoke-virtual {v6, v11}, Lcom/sonymobile/home/data/AdvWidgetItem;->setPageViewName(Ljava/lang/String;)V

    .line 67
    return-object v6
.end method
