.class public Lcom/sonymobile/home/configuration/parser/jsonParser/IconJsonParser;
.super Lcom/sonymobile/home/configuration/parser/ItemConfigParser;
.source "IconJsonParser.java"


# static fields
.field private static final SHORTCUT_ICON_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const-class v0, Lcom/sonymobile/home/configuration/parser/jsonParser/IconJsonParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/configuration/parser/jsonParser/IconJsonParser;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "icon"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/home/configuration/parser/jsonParser/IconJsonParser;->SHORTCUT_ICON_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sonymobile/home/configuration/parser/ItemConfigParser;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private createItemLocation(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sonymobile/home/data/ItemLocation;
    .locals 5
    .param p1, "icon"    # Lorg/json/JSONObject;
    .param p2, "layer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 183
    const/4 v1, 0x0

    .line 184
    .local v1, "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 205
    :goto_1
    return-object v1

    .line 184
    :sswitch_0
    const-string v4, "desktop_automatic"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "desktop"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v4, "stage_dynamic"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "stage"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    .line 188
    :pswitch_0
    new-instance v0, Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopItemLocationJsonParser;

    invoke-direct {v0}, Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopItemLocationJsonParser;-><init>()V

    .line 190
    .local v0, "desktopLocationParser":Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopItemLocationJsonParser;
    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopItemLocationJsonParser;->parseItemLocation(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    .line 191
    goto :goto_1

    .line 196
    .end local v0    # "desktopLocationParser":Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopItemLocationJsonParser;
    :pswitch_1
    new-instance v2, Lcom/sonymobile/home/configuration/parser/jsonParser/StageItemLocationJsonParser;

    invoke-direct {v2}, Lcom/sonymobile/home/configuration/parser/jsonParser/StageItemLocationJsonParser;-><init>()V

    .line 198
    .local v2, "stageLocationParser":Lcom/sonymobile/home/configuration/parser/jsonParser/StageItemLocationJsonParser;
    invoke-virtual {v2, p1, p2}, Lcom/sonymobile/home/configuration/parser/jsonParser/StageItemLocationJsonParser;->parseItemLocation(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    .line 199
    goto :goto_1

    .line 184
    nop

    :sswitch_data_0
    .sparse-switch
        -0x215db638 -> :sswitch_0
        -0x203c1402 -> :sswitch_2
        0x68ac2fe -> :sswitch_3
        0x5ccf901c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getIconFromUriBlob(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "iconImageUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 112
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 113
    .local v1, "iconUri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 115
    .local v8, "icon":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/IconJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/home/configuration/parser/jsonParser/IconJsonParser;->SHORTCUT_ICON_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 116
    if-eqz v6, :cond_0

    .line 117
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 118
    const-string v2, "icon"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 119
    .local v10, "iconIndex":I
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 120
    .local v9, "iconBlob":[B
    const/4 v2, 0x0

    array-length v3, v9

    invoke-static {v9, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 122
    .end local v9    # "iconBlob":[B
    .end local v10    # "iconIndex":I
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v12, :cond_2

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 126
    :cond_1
    :goto_0
    return-object v8

    .line 122
    :catch_0
    move-exception v11

    .local v11, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v0, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .line 123
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Lcom/sonymobile/home/configuration/ConfigException;

    invoke-direct {v0, v7}, Lcom/sonymobile/home/configuration/ConfigException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 122
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 115
    :catch_2
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 122
    :catchall_0
    move-exception v2

    move-object v13, v2

    move-object v2, v0

    move-object v0, v13

    :goto_1
    if-eqz v6, :cond_3

    if-eqz v2, :cond_4

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_2
    :try_start_7
    throw v0

    :catch_3
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v12

    goto :goto_1
.end method


# virtual methods
.method protected createItem(Lcom/sonymobile/home/configuration/parser/ItemConfigData;)Lcom/sonymobile/home/data/Item;
    .locals 10
    .param p1, "itemConfigData"    # Lcom/sonymobile/home/configuration/parser/ItemConfigData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 78
    instance-of v7, p1, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;

    if-eqz v7, :cond_2

    move-object v5, p1

    .line 79
    check-cast v5, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;

    .line 80
    .local v5, "shortcutItemConfigData":Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;
    new-instance v4, Lcom/sonymobile/home/data/ShortcutItem;

    invoke-virtual {v5}, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-direct {v4, v9, v7, v8}, Lcom/sonymobile/home/data/ShortcutItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 83
    .local v4, "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    invoke-virtual {v5}, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->getIconResourceName()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "iconResourceName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 85
    invoke-virtual {v5}, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->getIconResourcePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v3}, Lcom/sonymobile/home/data/ShortcutItem;->setShortcutData(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-virtual {v5}, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->getIconImageUri()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "iconImageUri":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 92
    invoke-direct {p0, v2}, Lcom/sonymobile/home/configuration/parser/jsonParser/IconJsonParser;->getIconFromUriBlob(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 93
    .local v1, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v4, v1, v9, v9}, Lcom/sonymobile/home/data/ShortcutItem;->setShortcutData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    .end local v2    # "iconImageUri":Ljava/lang/String;
    .end local v3    # "iconResourceName":Ljava/lang/String;
    .end local v4    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    .end local v5    # "shortcutItemConfigData":Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;
    .end local p1    # "itemConfigData":Lcom/sonymobile/home/configuration/parser/ItemConfigData;
    :cond_1
    :goto_0
    return-object v4

    .line 97
    .restart local p1    # "itemConfigData":Lcom/sonymobile/home/configuration/parser/ItemConfigData;
    :cond_2
    instance-of v7, p1, Lcom/sonymobile/home/configuration/parser/InternalFunctionItemConfigData;

    if-eqz v7, :cond_3

    .line 98
    new-instance v4, Lcom/sonymobile/home/data/InternalFunctionItem;

    check-cast p1, Lcom/sonymobile/home/configuration/parser/InternalFunctionItemConfigData;

    .end local p1    # "itemConfigData":Lcom/sonymobile/home/configuration/parser/ItemConfigData;
    invoke-virtual {p1}, Lcom/sonymobile/home/configuration/parser/InternalFunctionItemConfigData;->getType()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/IconJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lcom/sonymobile/home/data/InternalFunctionItem;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 101
    .restart local p1    # "itemConfigData":Lcom/sonymobile/home/configuration/parser/ItemConfigData;
    :cond_3
    invoke-virtual {p1}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 102
    .local v6, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {p1}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 103
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v6, :cond_4

    .line 104
    new-instance v4, Lcom/sonymobile/home/data/ActivityItem;

    invoke-direct {v4, v0, v6}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 106
    :cond_4
    new-instance v4, Lcom/sonymobile/home/data/ActivityItem;

    invoke-direct {v4, v0}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method public isItemInfoValid(Lcom/sonymobile/home/data/Item;)Z
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    .line 66
    .local v0, "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    instance-of v3, p1, Lcom/sonymobile/home/data/InternalFunctionItem;

    if-eqz v3, :cond_2

    .line 68
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sonymobile/home/configuration/parser/jsonParser/IconJsonParser;->isLocationValid(Lcom/sonymobile/home/data/Item;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    if-eqz v0, :cond_4

    .line 70
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/sonymobile/home/configuration/parser/jsonParser/IconJsonParser;->isLocationValid(Lcom/sonymobile/home/data/Item;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 72
    :cond_4
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public parseIcon(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/sonymobile/home/data/Item;
    .locals 18
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "layer"    # Ljava/lang/String;
    .param p3, "requireLocation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v10, 0x0

    .line 142
    .local v10, "intentUri":Ljava/lang/String;
    const/4 v4, 0x0

    .line 143
    .local v4, "intent":Landroid/content/Intent;
    const/4 v13, 0x0

    .line 146
    .local v13, "item":Lcom/sonymobile/home/data/Item;
    if-eqz p3, :cond_1

    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/sonymobile/home/configuration/parser/jsonParser/IconJsonParser;->createItemLocation(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    .line 148
    .local v2, "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    :goto_0
    const-string v3, "intent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 149
    const/4 v3, 0x0

    invoke-static {v10, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    .line 152
    invoke-static {v4}, Lcom/sonymobile/home/configuration/serializer/InternalFunctionJsonSerializer;->isInternalFunction(Landroid/content/Intent;)Z

    move-result v11

    .line 153
    .local v11, "isInternalFunction":Z
    if-nez v11, :cond_2

    invoke-static {v4}, Lcom/sonymobile/home/util/HomeUtils;->isActivityIntent(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v12, 0x1

    .line 154
    .local v12, "isShortcut":Z
    :goto_1
    if-eqz v11, :cond_3

    .line 155
    new-instance v1, Lcom/sonymobile/home/configuration/parser/InternalFunctionItemConfigData;

    move-object/from16 v0, p2

    invoke-direct {v1, v2, v0, v4}, Lcom/sonymobile/home/configuration/parser/InternalFunctionItemConfigData;-><init>(Lcom/sonymobile/home/data/ItemLocation;Ljava/lang/String;Landroid/content/Intent;)V

    .line 167
    .local v1, "iconConfigData":Lcom/sonymobile/home/configuration/parser/ItemConfigData;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/configuration/parser/jsonParser/IconJsonParser;->buildItem(Lcom/sonymobile/home/configuration/parser/ItemConfigData;)Lcom/sonymobile/home/data/Item;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .line 174
    .end local v1    # "iconConfigData":Lcom/sonymobile/home/configuration/parser/ItemConfigData;
    .end local v2    # "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    .end local v11    # "isInternalFunction":Z
    .end local v12    # "isShortcut":Z
    :goto_3
    if-nez v13, :cond_0

    .line 175
    new-instance v3, Lcom/sonymobile/home/configuration/ConfigException;

    const-string v15, "Icon parsing failed"

    invoke-direct {v3, v15}, Lcom/sonymobile/home/configuration/ConfigException;-><init>(Ljava/lang/String;)V

    sget-object v15, Lcom/sonymobile/home/configuration/parser/jsonParser/IconJsonParser;->TAG:Ljava/lang/String;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p1, v16, v17

    move-object/from16 v0, v16

    invoke-static {v3, v15, v0}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :cond_0
    return-object v13

    .line 146
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 153
    .restart local v2    # "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    .restart local v11    # "isInternalFunction":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 156
    .restart local v12    # "isShortcut":Z
    :cond_3
    if-eqz v12, :cond_4

    .line 157
    :try_start_1
    const-string v3, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "name":Ljava/lang/String;
    const-string v3, "icon_resource"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, "iconResourceName":Ljava/lang/String;
    const-string v3, "image"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, "iconImageUri":Ljava/lang/String;
    new-instance v1, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;-><init>(Lcom/sonymobile/home/data/ItemLocation;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .restart local v1    # "iconConfigData":Lcom/sonymobile/home/configuration/parser/ItemConfigData;
    goto :goto_2

    .line 163
    .end local v1    # "iconConfigData":Lcom/sonymobile/home/configuration/parser/ItemConfigData;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "iconResourceName":Ljava/lang/String;
    .end local v7    # "iconImageUri":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/sonymobile/home/configuration/parser/jsonParser/IconJsonParser;->parseProfile(Lorg/json/JSONObject;)Landroid/os/UserHandle;

    move-result-object v14

    .line 164
    .local v14, "user":Landroid/os/UserHandle;
    new-instance v1, Lcom/sonymobile/home/configuration/parser/ItemConfigData;

    move-object/from16 v0, p2

    invoke-direct {v1, v2, v0, v14, v4}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;-><init>(Lcom/sonymobile/home/data/ItemLocation;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Intent;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v1    # "iconConfigData":Lcom/sonymobile/home/configuration/parser/ItemConfigData;
    goto :goto_2

    .line 168
    .end local v1    # "iconConfigData":Lcom/sonymobile/home/configuration/parser/ItemConfigData;
    .end local v2    # "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    .end local v11    # "isInternalFunction":Z
    .end local v12    # "isShortcut":Z
    .end local v14    # "user":Landroid/os/UserHandle;
    :catch_0
    move-exception v8

    .line 169
    .local v8, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/sonymobile/home/configuration/parser/jsonParser/IconJsonParser;->TAG:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-static {v8, v3, v15}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 170
    .end local v8    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v9

    .line 171
    .local v9, "e1":Ljava/net/URISyntaxException;
    sget-object v3, Lcom/sonymobile/home/configuration/parser/jsonParser/IconJsonParser;->TAG:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    invoke-static {v9, v3, v15}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public validateParsedData(Lcom/sonymobile/home/configuration/parser/ItemConfigData;)V
    .locals 5
    .param p1, "itemConfigData"    # Lcom/sonymobile/home/configuration/parser/ItemConfigData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->isItemConfigDataValid()Z

    move-result v0

    .line 58
    .local v0, "isParsedDataValid":Z
    if-nez v0, :cond_0

    .line 59
    new-instance v1, Lcom/sonymobile/home/configuration/ConfigException;

    const-string v2, "Invalid parsed icon data"

    invoke-direct {v1, v2}, Lcom/sonymobile/home/configuration/ConfigException;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sonymobile/home/configuration/parser/jsonParser/IconJsonParser;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_0
    return-void
.end method
