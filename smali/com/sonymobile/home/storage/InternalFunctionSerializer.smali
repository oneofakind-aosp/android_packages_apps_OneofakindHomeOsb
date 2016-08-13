.class public Lcom/sonymobile/home/storage/InternalFunctionSerializer;
.super Ljava/lang/Object;
.source "InternalFunctionSerializer.java"

# interfaces
.implements Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sonymobile/home/storage/InternalFunctionSerializer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/storage/InternalFunctionSerializer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sonymobile/home/storage/InternalFunctionSerializer;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public createContentValues(Lcom/sonymobile/home/data/Item;)Landroid/content/ContentValues;
    .locals 7
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v6, 0x1

    .line 44
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/home/data/InternalFunctionItem;

    .line 45
    .local v0, "internalFunctionItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 47
    .local v1, "value":Landroid/content/ContentValues;
    invoke-virtual {v0}, Lcom/sonymobile/home/data/InternalFunctionItem;->isStored()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    const-string v2, "_id"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/InternalFunctionItem;->getStorageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 51
    :cond_0
    const-string v2, "page_index"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/InternalFunctionItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget v3, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    const-string v2, "page_position"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/InternalFunctionItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget v3, v3, Lcom/sonymobile/home/data/ItemLocation;->position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    const-string v2, "cellx"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/InternalFunctionItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget-object v3, v3, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->col:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    const-string v2, "celly"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/InternalFunctionItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget-object v3, v3, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->row:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    const-string v2, "spanx"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    const-string v2, "spany"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    const-string v2, "page_view"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/InternalFunctionItem;->getPageViewName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "item_type"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v2, "arbitrary_data"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/InternalFunctionItem;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-object v1
.end method

.method public createItem(Landroid/database/Cursor;)Lcom/sonymobile/home/data/Item;
    .locals 17
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 71
    const/4 v12, 0x0

    .line 74
    .local v12, "internalFunctionItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    :try_start_0
    const-string v7, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 75
    .local v10, "id":J
    const-string v7, "page_index"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 77
    .local v3, "page":I
    const-string v7, "page_position"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 79
    .local v4, "position":I
    const-string v7, "cellx"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 81
    .local v5, "cellX":I
    const-string v7, "celly"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 83
    .local v6, "cellY":I
    const-string v7, "page_view"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 85
    .local v15, "pageViewName":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/home/data/ItemLocation;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIIII)V

    .line 87
    .local v2, "location":Lcom/sonymobile/home/data/ItemLocation;
    const-string v7, "arbitrary_data"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 91
    .local v16, "type":Ljava/lang/String;
    new-instance v13, Lcom/sonymobile/home/data/InternalFunctionItem;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/home/storage/InternalFunctionSerializer;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v13, v0, v7}, Lcom/sonymobile/home/data/InternalFunctionItem;-><init>(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .end local v12    # "internalFunctionItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    .local v13, "internalFunctionItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    :try_start_1
    invoke-virtual {v13, v10, v11}, Lcom/sonymobile/home/data/InternalFunctionItem;->setStorageId(J)V

    .line 93
    invoke-virtual {v13, v2}, Lcom/sonymobile/home/data/InternalFunctionItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 94
    invoke-virtual {v13, v15}, Lcom/sonymobile/home/data/InternalFunctionItem;->setPageViewName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v12, v13

    .line 101
    .end local v2    # "location":Lcom/sonymobile/home/data/ItemLocation;
    .end local v3    # "page":I
    .end local v4    # "position":I
    .end local v5    # "cellX":I
    .end local v6    # "cellY":I
    .end local v10    # "id":J
    .end local v13    # "internalFunctionItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    .end local v15    # "pageViewName":Ljava/lang/String;
    .end local v16    # "type":Ljava/lang/String;
    .restart local v12    # "internalFunctionItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    :goto_0
    return-object v12

    .line 96
    :catch_0
    move-exception v14

    .line 97
    .local v14, "nfe":Ljava/lang/NumberFormatException;
    :goto_1
    sget-object v7, Lcom/sonymobile/home/storage/InternalFunctionSerializer;->TAG:Ljava/lang/String;

    const-string v8, "Couldn\'t recreate item from cursor (bad id)"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    .end local v14    # "nfe":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v9

    .line 99
    .local v9, "iae":Ljava/lang/IllegalArgumentException;
    :goto_2
    sget-object v7, Lcom/sonymobile/home/storage/InternalFunctionSerializer;->TAG:Ljava/lang/String;

    const-string v8, "Couldn\'t recreate item from cursor (corrupt data)"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    .end local v9    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v12    # "internalFunctionItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    .restart local v2    # "location":Lcom/sonymobile/home/data/ItemLocation;
    .restart local v3    # "page":I
    .restart local v4    # "position":I
    .restart local v5    # "cellX":I
    .restart local v6    # "cellY":I
    .restart local v10    # "id":J
    .restart local v13    # "internalFunctionItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    .restart local v15    # "pageViewName":Ljava/lang/String;
    .restart local v16    # "type":Ljava/lang/String;
    :catch_2
    move-exception v9

    move-object v12, v13

    .end local v13    # "internalFunctionItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    .restart local v12    # "internalFunctionItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    goto :goto_2

    .line 96
    .end local v12    # "internalFunctionItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    .restart local v13    # "internalFunctionItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    :catch_3
    move-exception v14

    move-object v12, v13

    .end local v13    # "internalFunctionItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    .restart local v12    # "internalFunctionItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    goto :goto_1
.end method
