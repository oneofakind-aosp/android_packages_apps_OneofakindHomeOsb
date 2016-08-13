.class public Lcom/sonymobile/home/storage/ActivitySerializer;
.super Ljava/lang/Object;
.source "ActivitySerializer.java"

# interfaces
.implements Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;


# instance fields
.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/sonymobile/home/storage/ActivitySerializer;->mUserManager:Landroid/os/UserManager;

    .line 30
    return-void
.end method


# virtual methods
.method public createContentValues(Lcom/sonymobile/home/data/Item;)Landroid/content/ContentValues;
    .locals 9
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v8, 0x1

    .line 34
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/home/data/ActivityItem;

    .line 35
    .local v0, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 37
    .local v4, "value":Landroid/content/ContentValues;
    invoke-virtual {v0}, Lcom/sonymobile/home/data/ActivityItem;->isStored()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 38
    const-string v5, "_id"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ActivityItem;->getStorageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 41
    :cond_0
    const-string v5, "name"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ActivityItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v5, "package_name"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Lcom/sonymobile/home/data/ActivityItem;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 45
    .local v1, "user":Landroid/os/UserHandle;
    const-wide/16 v2, -0x1

    .line 46
    .local v2, "userSerialNumber":J
    if-eqz v1, :cond_1

    .line 47
    iget-object v5, p0, Lcom/sonymobile/home/storage/ActivitySerializer;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 49
    :cond_1
    const-string v5, "user_serial_number"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 51
    const-string v5, "page_index"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ActivityItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    iget v6, v6, Lcom/sonymobile/home/data/ItemLocation;->page:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    const-string v5, "page_position"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ActivityItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    iget v6, v6, Lcom/sonymobile/home/data/ItemLocation;->position:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    const-string v5, "cellx"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ActivityItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    iget-object v6, v6, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v6, v6, Lcom/sonymobile/grid/GridRect;->col:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    const-string v5, "celly"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ActivityItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    iget-object v6, v6, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v6, v6, Lcom/sonymobile/grid/GridRect;->row:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    const-string v5, "spanx"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    const-string v5, "spany"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    const-string v5, "page_view"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ActivityItem;->getPageViewName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v5, "item_type"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-object v4
.end method

.method public createItem(Landroid/database/Cursor;)Lcom/sonymobile/home/data/Item;
    .locals 22
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 65
    const-string v7, "package_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 67
    .local v11, "packageName":Ljava/lang/String;
    const-string v7, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 69
    .local v10, "activityName":Ljava/lang/String;
    const/16 v17, 0x0

    .line 70
    .local v17, "user":Landroid/os/UserHandle;
    const-string v7, "user_serial_number"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 71
    .local v18, "userSerial":J
    const-wide/16 v20, -0x1

    cmp-long v7, v18, v20

    if-eqz v7, :cond_0

    .line 72
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/home/storage/ActivitySerializer;->mUserManager:Landroid/os/UserManager;

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v17

    .line 75
    :cond_0
    const-string v7, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 76
    .local v12, "id":J
    const-string v7, "page_index"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 77
    .local v3, "page":I
    const-string v7, "page_position"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 78
    .local v4, "position":I
    const-string v7, "cellx"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 79
    .local v5, "cellX":I
    const-string v7, "celly"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 80
    .local v6, "cellY":I
    const/4 v15, 0x1

    .line 81
    .local v15, "spanX":I
    const/16 v16, 0x1

    .line 82
    .local v16, "spanY":I
    new-instance v2, Lcom/sonymobile/home/data/ItemLocation;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIIII)V

    .line 84
    .local v2, "location":Lcom/sonymobile/home/data/ItemLocation;
    const-string v7, "page_view"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 87
    .local v14, "pageViewName":Ljava/lang/String;
    new-instance v9, Lcom/sonymobile/home/data/ActivityItem;

    move-object/from16 v0, v17

    invoke-direct {v9, v11, v10, v0}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 89
    .local v9, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    invoke-virtual {v9, v12, v13}, Lcom/sonymobile/home/data/ActivityItem;->setStorageId(J)V

    .line 90
    invoke-virtual {v9, v2}, Lcom/sonymobile/home/data/ActivityItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 91
    invoke-virtual {v9, v14}, Lcom/sonymobile/home/data/ActivityItem;->setPageViewName(Ljava/lang/String;)V

    .line 93
    return-object v9
.end method
