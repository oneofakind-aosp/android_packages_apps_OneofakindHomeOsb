.class public abstract Lcom/sonymobile/home/configuration/parser/jsonParser/JsonLayerParser;
.super Lcom/sonymobile/home/configuration/parser/LayerParser;
.source "JsonLayerParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/configuration/parser/jsonParser/JsonLayerParser$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/sonymobile/home/configuration/parser/jsonParser/JsonLayerParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/configuration/parser/jsonParser/JsonLayerParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sonymobile/home/configuration/parser/LayerParser;-><init>()V

    .line 147
    return-void
.end method

.method private createItems(Landroid/content/Context;Lcom/sonymobile/home/configuration/Layers;Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;Lcom/sonymobile/home/configuration/Config;Lorg/json/JSONArray;Z)Ljava/util/List;
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layer"    # Lcom/sonymobile/home/configuration/Layers;
    .param p3, "group"    # Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;
    .param p4, "config"    # Lcom/sonymobile/home/configuration/Config;
    .param p5, "jsonArray"    # Lorg/json/JSONArray;
    .param p6, "requireLocation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonymobile/home/configuration/Layers;",
            "Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;",
            "Lcom/sonymobile/home/configuration/Config;",
            "Lorg/json/JSONArray;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v12, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-nez p5, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-object v12

    .line 87
    :cond_1
    :try_start_0
    sget-object v16, Lcom/sonymobile/home/configuration/parser/jsonParser/JsonLayerParser$1;->$SwitchMap$com$sonymobile$home$configuration$parser$jsonParser$LayerGroups:[I

    invoke-virtual/range {p3 .. p3}, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    goto :goto_0

    .line 89
    :pswitch_0
    new-instance v10, Lcom/sonymobile/home/configuration/parser/jsonParser/IconJsonParser;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/sonymobile/home/configuration/parser/jsonParser/IconJsonParser;-><init>(Landroid/content/Context;)V

    .line 90
    .local v10, "iconJsonParser":Lcom/sonymobile/home/configuration/parser/jsonParser/IconJsonParser;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v9, v0, :cond_0

    .line 92
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/home/configuration/Layers;->getLayer()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, p6

    invoke-virtual {v10, v0, v1, v2}, Lcom/sonymobile/home/configuration/parser/jsonParser/IconJsonParser;->parseIcon(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/sonymobile/home/data/Item;

    move-result-object v11

    .line 95
    .local v11, "item":Lcom/sonymobile/home/data/Item;
    if-nez p6, :cond_2

    .line 98
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {v11}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/configuration/parser/jsonParser/JsonLayerParser;->verifyBounds(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/configuration/Config;)V

    .line 101
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 149
    .end local v9    # "i":I
    .end local v10    # "iconJsonParser":Lcom/sonymobile/home/configuration/parser/jsonParser/IconJsonParser;
    .end local v11    # "item":Lcom/sonymobile/home/data/Item;
    :catch_0
    move-exception v5

    .line 150
    .local v5, "e":Lorg/json/JSONException;
    sget-object v16, Lcom/sonymobile/home/configuration/parser/jsonParser/JsonLayerParser;->TAG:Ljava/lang/String;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p5, v17, v18

    const/16 v18, 0x1

    aput-object p3, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v5, v0, v1}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 108
    .end local v5    # "e":Lorg/json/JSONException;
    :pswitch_1
    :try_start_1
    new-instance v14, Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetConfigJsonParser;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetConfigJsonParser;-><init>(Landroid/content/Context;)V

    .line 110
    .local v14, "widgetConfigJsonParser":Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetConfigJsonParser;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v9, v0, :cond_0

    .line 111
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetConfigJsonParser;->parseWidget(Lorg/json/JSONObject;Lcom/sonymobile/home/configuration/Layers;)Lcom/sonymobile/home/data/WidgetItem;

    move-result-object v15

    .line 113
    .local v15, "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    invoke-virtual {v15}, Lcom/sonymobile/home/data/WidgetItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/configuration/parser/jsonParser/JsonLayerParser;->verifyBounds(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/configuration/Config;)V

    .line 114
    invoke-static {v12, v15}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->isUniqueWidgetId(Ljava/util/List;Lcom/sonymobile/home/data/WidgetItem;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 115
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 121
    .end local v9    # "i":I
    .end local v14    # "widgetConfigJsonParser":Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetConfigJsonParser;
    .end local v15    # "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    :pswitch_2
    new-instance v4, Lcom/sonymobile/home/configuration/parser/jsonParser/AdvWidgetConfigJsonParser;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/sonymobile/home/configuration/parser/jsonParser/AdvWidgetConfigJsonParser;-><init>(Landroid/content/Context;)V

    .line 123
    .local v4, "advWidgetConfigJsonParser":Lcom/sonymobile/home/configuration/parser/jsonParser/AdvWidgetConfigJsonParser;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v9, v0, :cond_0

    .line 124
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/sonymobile/home/configuration/parser/jsonParser/AdvWidgetConfigJsonParser;->parseWidget(Lorg/json/JSONObject;Lcom/sonymobile/home/configuration/Layers;)Lcom/sonymobile/home/data/AdvWidgetItem;

    move-result-object v15

    .line 126
    .local v15, "widgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    invoke-virtual {v15}, Lcom/sonymobile/home/data/AdvWidgetItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/configuration/parser/jsonParser/JsonLayerParser;->verifyBounds(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/configuration/Config;)V

    .line 127
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 132
    .end local v4    # "advWidgetConfigJsonParser":Lcom/sonymobile/home/configuration/parser/jsonParser/AdvWidgetConfigJsonParser;
    .end local v9    # "i":I
    .end local v15    # "widgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    :pswitch_3
    new-instance v6, Lcom/sonymobile/home/configuration/parser/jsonParser/FolderConfigJsonParser;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/sonymobile/home/configuration/parser/jsonParser/FolderConfigJsonParser;-><init>(Landroid/content/Context;)V

    .line 135
    .local v6, "folderConfigJsonParser":Lcom/sonymobile/home/configuration/parser/jsonParser/FolderConfigJsonParser;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_5
    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v9, v0, :cond_0

    .line 136
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 137
    .local v13, "jsonObject":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v13}, Lcom/sonymobile/home/configuration/parser/jsonParser/JsonLayerParser;->createFolderItems(Landroid/content/Context;Lcom/sonymobile/home/configuration/Layers;Lcom/sonymobile/home/configuration/Config;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v8

    .line 139
    .local v8, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/home/configuration/Layers;->getLayer()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v6, v13, v0, v8, v1}, Lcom/sonymobile/home/configuration/parser/jsonParser/FolderConfigJsonParser;->parseFolder(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lcom/sonymobile/home/configuration/Config;)Lcom/sonymobile/home/data/FolderItem;

    move-result-object v7

    .line 141
    .local v7, "folderItem":Lcom/sonymobile/home/data/FolderItem;
    invoke-virtual {v7}, Lcom/sonymobile/home/data/FolderItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/configuration/parser/jsonParser/JsonLayerParser;->verifyBounds(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/configuration/Config;)V

    .line 142
    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected createFolderItems(Landroid/content/Context;Lcom/sonymobile/home/configuration/Layers;Lcom/sonymobile/home/configuration/Config;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layer"    # Lcom/sonymobile/home/configuration/Layers;
    .param p3, "config"    # Lcom/sonymobile/home/configuration/Config;
    .param p4, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonymobile/home/configuration/Layers;",
            "Lcom/sonymobile/home/configuration/Config;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 70
    sget-object v0, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->ICONS:Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    invoke-virtual {v0}, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 72
    .local v5, "iconArray":Lorg/json/JSONArray;
    sget-object v3, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->ICONS:Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/home/configuration/parser/jsonParser/JsonLayerParser;->createGroupItems(Landroid/content/Context;Lcom/sonymobile/home/configuration/Layers;Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;Lcom/sonymobile/home/configuration/Config;Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final createGroupItems(Landroid/content/Context;Lcom/sonymobile/home/configuration/Layers;Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;Lcom/sonymobile/home/configuration/Config;Lorg/json/JSONArray;Z)Ljava/util/List;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layer"    # Lcom/sonymobile/home/configuration/Layers;
    .param p3, "group"    # Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;
    .param p4, "config"    # Lcom/sonymobile/home/configuration/Config;
    .param p5, "jsonArray"    # Lorg/json/JSONArray;
    .param p6, "requireLocation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonymobile/home/configuration/Layers;",
            "Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;",
            "Lcom/sonymobile/home/configuration/Config;",
            "Lorg/json/JSONArray;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct/range {p0 .. p6}, Lcom/sonymobile/home/configuration/parser/jsonParser/JsonLayerParser;->createItems(Landroid/content/Context;Lcom/sonymobile/home/configuration/Layers;Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;Lcom/sonymobile/home/configuration/Config;Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v0

    .line 52
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    return-object v0
.end method
