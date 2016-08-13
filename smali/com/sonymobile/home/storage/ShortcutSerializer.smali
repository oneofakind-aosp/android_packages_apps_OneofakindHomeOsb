.class public Lcom/sonymobile/home/storage/ShortcutSerializer;
.super Ljava/lang/Object;
.source "ShortcutSerializer.java"

# interfaces
.implements Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContentValues(Lcom/sonymobile/home/data/Item;)Landroid/content/ContentValues;
    .locals 7
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v6, 0x1

    .line 32
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/home/data/ShortcutItem;

    .line 33
    .local v0, "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 35
    .local v1, "value":Landroid/content/ContentValues;
    invoke-virtual {v0}, Lcom/sonymobile/home/data/ShortcutItem;->isStored()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const-string v2, "_id"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ShortcutItem;->getStorageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 39
    :cond_0
    const-string v2, "name"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ShortcutItem;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v2, "package_name"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ShortcutItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v2, "page_index"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ShortcutItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget v3, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    const-string v2, "page_position"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ShortcutItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget v3, v3, Lcom/sonymobile/home/data/ItemLocation;->position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    const-string v2, "cellx"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ShortcutItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget-object v3, v3, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->col:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 44
    const-string v2, "celly"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ShortcutItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget-object v3, v3, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->row:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    const-string v2, "spanx"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    const-string v2, "spany"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    const-string v2, "page_view"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ShortcutItem;->getPageViewName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v2, "item_type"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v2, "intent"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v2, "image"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ShortcutItem;->getImageData()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 52
    const-string v2, "package_resource_name"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ShortcutItem;->getPackageResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v2, "icon_resource_name"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ShortcutItem;->getIconResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-object v1
.end method

.method public createItem(Landroid/database/Cursor;)Lcom/sonymobile/home/data/Item;
    .locals 28
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 60
    const/16 v23, 0x0

    .line 63
    .local v23, "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    :try_start_0
    const-string v9, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 64
    .local v14, "id":J
    const-string v9, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 65
    .local v18, "label":Ljava/lang/String;
    const-string v9, "package_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 66
    .local v20, "packageName":Ljava/lang/String;
    const-string v9, "page_index"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 67
    .local v5, "page":I
    const-string v9, "page_position"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 68
    .local v6, "position":I
    const-string v9, "cellx"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 69
    .local v7, "cellX":I
    const-string v9, "celly"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 70
    .local v8, "cellY":I
    const/16 v25, 0x1

    .line 71
    .local v25, "spanX":I
    const/16 v26, 0x1

    .line 72
    .local v26, "spanY":I
    const-string v9, "page_view"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 73
    .local v22, "pageViewName":Ljava/lang/String;
    const-string v9, "intent"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 74
    .local v17, "intentString":Ljava/lang/String;
    const/4 v9, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v16

    .line 75
    .local v16, "intent":Landroid/content/Intent;
    new-instance v4, Lcom/sonymobile/home/data/ItemLocation;

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIIII)V

    .line 76
    .local v4, "location":Lcom/sonymobile/home/data/ItemLocation;
    const-string v9, "image"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 77
    .local v13, "image":[B
    const-string v9, "package_resource_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 78
    .local v21, "packageResourceName":Ljava/lang/String;
    const-string v9, "icon_resource_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 80
    .local v12, "iconResourceName":Ljava/lang/String;
    new-instance v24, Lcom/sonymobile/home/data/ShortcutItem;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/home/data/ShortcutItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 81
    .end local v23    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    .local v24, "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    :try_start_1
    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v15}, Lcom/sonymobile/home/data/ShortcutItem;->setStorageId(J)V

    .line 82
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/sonymobile/home/data/ShortcutItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 83
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/data/ShortcutItem;->setPageViewName(Ljava/lang/String;)V

    .line 84
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v13, v1, v12}, Lcom/sonymobile/home/data/ShortcutItem;->setShortcutData([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v23, v24

    .line 93
    .end local v4    # "location":Lcom/sonymobile/home/data/ItemLocation;
    .end local v5    # "page":I
    .end local v6    # "position":I
    .end local v7    # "cellX":I
    .end local v8    # "cellY":I
    .end local v12    # "iconResourceName":Ljava/lang/String;
    .end local v13    # "image":[B
    .end local v14    # "id":J
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "intentString":Ljava/lang/String;
    .end local v18    # "label":Ljava/lang/String;
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v21    # "packageResourceName":Ljava/lang/String;
    .end local v22    # "pageViewName":Ljava/lang/String;
    .end local v24    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    .end local v25    # "spanX":I
    .end local v26    # "spanY":I
    .restart local v23    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    :goto_0
    return-object v23

    .line 86
    :catch_0
    move-exception v27

    .line 87
    .local v27, "uriSyntaxException":Ljava/net/URISyntaxException;
    :goto_1
    const-string v9, "ShortcutSerializer"

    const-string v10, "Couldn\'t recreate item from cursor (bad uri)"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v27    # "uriSyntaxException":Ljava/net/URISyntaxException;
    :catch_1
    move-exception v19

    .line 89
    .local v19, "nfe":Ljava/lang/NumberFormatException;
    :goto_2
    const-string v9, "ShortcutSerializer"

    const-string v10, "Couldn\'t recreate item from cursor (bad id)"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    .end local v19    # "nfe":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v11

    .line 91
    .local v11, "iae":Ljava/lang/IllegalArgumentException;
    :goto_3
    const-string v9, "ShortcutSerializer"

    const-string v10, "Couldn\'t recreate item from cursor (corrupt data)"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    .end local v11    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v23    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    .restart local v4    # "location":Lcom/sonymobile/home/data/ItemLocation;
    .restart local v5    # "page":I
    .restart local v6    # "position":I
    .restart local v7    # "cellX":I
    .restart local v8    # "cellY":I
    .restart local v12    # "iconResourceName":Ljava/lang/String;
    .restart local v13    # "image":[B
    .restart local v14    # "id":J
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local v17    # "intentString":Ljava/lang/String;
    .restart local v18    # "label":Ljava/lang/String;
    .restart local v20    # "packageName":Ljava/lang/String;
    .restart local v21    # "packageResourceName":Ljava/lang/String;
    .restart local v22    # "pageViewName":Ljava/lang/String;
    .restart local v24    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    .restart local v25    # "spanX":I
    .restart local v26    # "spanY":I
    :catch_3
    move-exception v11

    move-object/from16 v23, v24

    .end local v24    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    .restart local v23    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    goto :goto_3

    .line 88
    .end local v23    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    .restart local v24    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    :catch_4
    move-exception v19

    move-object/from16 v23, v24

    .end local v24    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    .restart local v23    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    goto :goto_2

    .line 86
    .end local v23    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    .restart local v24    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    :catch_5
    move-exception v27

    move-object/from16 v23, v24

    .end local v24    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    .restart local v23    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    goto :goto_1
.end method
