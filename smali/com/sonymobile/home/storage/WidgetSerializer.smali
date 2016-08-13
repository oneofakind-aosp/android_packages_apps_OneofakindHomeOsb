.class public Lcom/sonymobile/home/storage/WidgetSerializer;
.super Ljava/lang/Object;
.source "WidgetSerializer.java"

# interfaces
.implements Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;


# instance fields
.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/sonymobile/home/storage/WidgetSerializer;->mUserManager:Landroid/os/UserManager;

    .line 29
    return-void
.end method


# virtual methods
.method public createContentValues(Lcom/sonymobile/home/data/Item;)Landroid/content/ContentValues;
    .locals 8
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 33
    move-object v4, p1

    check-cast v4, Lcom/sonymobile/home/data/WidgetItem;

    .line 34
    .local v4, "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 36
    .local v1, "value":Landroid/content/ContentValues;
    invoke-virtual {v4}, Lcom/sonymobile/home/data/WidgetItem;->isStored()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 37
    const-string v5, "_id"

    invoke-virtual {v4}, Lcom/sonymobile/home/data/WidgetItem;->getStorageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 40
    :cond_0
    invoke-virtual {v4}, Lcom/sonymobile/home/data/WidgetItem;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 41
    .local v0, "user":Landroid/os/UserHandle;
    const-wide/16 v2, -0x1

    .line 42
    .local v2, "userSerialNumber":J
    if-eqz v0, :cond_1

    .line 43
    iget-object v5, p0, Lcom/sonymobile/home/storage/WidgetSerializer;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 45
    :cond_1
    const-string v5, "user_serial_number"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 47
    const-string v5, "name"

    invoke-virtual {v4}, Lcom/sonymobile/home/data/WidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v5, "package_name"

    invoke-virtual {v4}, Lcom/sonymobile/home/data/WidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v5, "page_index"

    invoke-virtual {v4}, Lcom/sonymobile/home/data/WidgetItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    iget v6, v6, Lcom/sonymobile/home/data/ItemLocation;->page:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    const-string v5, "cellx"

    invoke-virtual {v4}, Lcom/sonymobile/home/data/WidgetItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    iget-object v6, v6, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v6, v6, Lcom/sonymobile/grid/GridRect;->col:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    const-string v5, "celly"

    invoke-virtual {v4}, Lcom/sonymobile/home/data/WidgetItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    iget-object v6, v6, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v6, v6, Lcom/sonymobile/grid/GridRect;->row:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    const-string v5, "spanx"

    invoke-virtual {v4}, Lcom/sonymobile/home/data/WidgetItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    iget-object v6, v6, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v6, v6, Lcom/sonymobile/grid/GridRect;->colSpan:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    const-string v5, "spany"

    invoke-virtual {v4}, Lcom/sonymobile/home/data/WidgetItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    iget-object v6, v6, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v6, v6, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    const-string v5, "page_view"

    invoke-virtual {v4}, Lcom/sonymobile/home/data/WidgetItem;->getPageViewName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v5, "item_type"

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v5, "item_id"

    invoke-virtual {v4}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-object v1
.end method

.method public createItem(Landroid/database/Cursor;)Lcom/sonymobile/home/data/Item;
    .locals 22
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 65
    const-string v19, "user_serial_number"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 68
    .local v14, "userSerialNumber":J
    const-wide/16 v20, -0x1

    cmp-long v19, v14, v20

    if-eqz v19, :cond_0

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/storage/WidgetSerializer;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v13

    .line 74
    .local v13, "user":Landroid/os/UserHandle;
    :goto_0
    const-string v19, "package_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 75
    .local v9, "packageName":Ljava/lang/String;
    const-string v19, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, "className":Ljava/lang/String;
    const-string v19, "_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 77
    .local v10, "id":J
    const-string v19, "cellx"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 78
    .local v4, "cellX":I
    const-string v19, "celly"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 79
    .local v5, "cellY":I
    const-string v19, "spanx"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 80
    .local v6, "spanX":I
    const-string v19, "spany"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 81
    .local v7, "spanY":I
    const-string v19, "page_index"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 82
    .local v3, "page":I
    const-string v19, "page_view"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 83
    .local v12, "pageViewName":Ljava/lang/String;
    const-string v19, "item_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 84
    .local v17, "widgetIdAsString":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 85
    .local v16, "widgetId":I
    new-instance v2, Lcom/sonymobile/home/data/ItemLocation;

    invoke-direct/range {v2 .. v7}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIII)V

    .line 87
    .local v2, "location":Lcom/sonymobile/home/data/ItemLocation;
    new-instance v18, Lcom/sonymobile/home/data/WidgetItem;

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-direct {v0, v1, v9, v8, v13}, Lcom/sonymobile/home/data/WidgetItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 88
    .local v18, "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Lcom/sonymobile/home/data/WidgetItem;->setStorageId(J)V

    .line 89
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/data/WidgetItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 90
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/sonymobile/home/data/WidgetItem;->setPageViewName(Ljava/lang/String;)V

    .line 92
    return-object v18

    .line 71
    .end local v2    # "location":Lcom/sonymobile/home/data/ItemLocation;
    .end local v3    # "page":I
    .end local v4    # "cellX":I
    .end local v5    # "cellY":I
    .end local v6    # "spanX":I
    .end local v7    # "spanY":I
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "id":J
    .end local v12    # "pageViewName":Ljava/lang/String;
    .end local v13    # "user":Landroid/os/UserHandle;
    .end local v16    # "widgetId":I
    .end local v17    # "widgetIdAsString":Ljava/lang/String;
    .end local v18    # "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    :cond_0
    const/4 v13, 0x0

    .restart local v13    # "user":Landroid/os/UserHandle;
    goto/16 :goto_0
.end method
