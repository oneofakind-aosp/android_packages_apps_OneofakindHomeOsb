.class public Lcom/sonymobile/home/configuration/parser/jsonParser/AdvWidgetConfigJsonParser;
.super Lcom/sonymobile/home/configuration/parser/ItemConfigParser;
.source "AdvWidgetConfigJsonParser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/sonymobile/home/configuration/parser/jsonParser/AdvWidgetConfigJsonParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/configuration/parser/jsonParser/AdvWidgetConfigJsonParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sonymobile/home/configuration/parser/ItemConfigParser;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private createItemLocation(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sonymobile/home/data/ItemLocation;
    .locals 2
    .param p1, "icon"    # Lorg/json/JSONObject;
    .param p2, "layer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetItemLocationJsonParser;

    invoke-direct {v0}, Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetItemLocationJsonParser;-><init>()V

    .line 113
    .local v0, "itemLocationJsonParser":Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetItemLocationJsonParser;
    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetItemLocationJsonParser;->parseItemLocation(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected createItem(Lcom/sonymobile/home/configuration/parser/ItemConfigData;)Lcom/sonymobile/home/data/Item;
    .locals 7
    .param p1, "itemConfigData"    # Lcom/sonymobile/home/configuration/parser/ItemConfigData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;

    .line 57
    .local v0, "advWidgetConfigData":Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;
    invoke-virtual {v0}, Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 58
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 59
    .local v1, "componentName":Landroid/content/ComponentName;
    new-instance v3, Lcom/sonymobile/home/data/AdvWidgetItem;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sonymobile/home/data/AdvWidgetItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V

    return-object v3
.end method

.method protected isItemInfoValid(Lcom/sonymobile/home/data/Item;)Z
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/home/data/AdvWidgetItem;

    .line 50
    .local v0, "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/configuration/parser/jsonParser/AdvWidgetConfigJsonParser;->isLocationValid(Lcom/sonymobile/home/data/Item;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/home/data/AdvWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/home/data/AdvWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parseWidget(Lorg/json/JSONObject;Lcom/sonymobile/home/configuration/Layers;)Lcom/sonymobile/home/data/AdvWidgetItem;
    .locals 17
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "layer"    # Lcom/sonymobile/home/configuration/Layers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v8, 0x0

    .line 75
    .local v8, "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    const/4 v3, 0x0

    .line 76
    .local v3, "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    const/4 v9, 0x0

    .line 77
    .local v9, "component":Ljava/lang/String;
    const/4 v7, 0x0

    .line 78
    .local v7, "uuid":Ljava/util/UUID;
    const/4 v6, 0x0

    .line 82
    .local v6, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/home/configuration/Layers;->getLayer()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/home/configuration/parser/jsonParser/AdvWidgetConfigJsonParser;->createItemLocation(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    .line 83
    const-string v4, "component"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 84
    const-string v4, "item_uuid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 85
    .local v14, "uuidStr":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
    invoke-static {v14}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    .line 88
    :cond_0
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    .line 89
    .local v10, "componentName":Landroid/content/ComponentName;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v6    # "intent":Landroid/content/Intent;
    .local v12, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {v12, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v12

    .line 95
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "uuidStr":Ljava/lang/String;
    .restart local v6    # "intent":Landroid/content/Intent;
    :goto_0
    new-instance v2, Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/home/configuration/Layers;->getLayer()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;-><init>(Lcom/sonymobile/home/data/ItemLocation;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/UUID;)V

    .line 99
    .local v2, "advWidgetConfigData":Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/configuration/parser/jsonParser/AdvWidgetConfigJsonParser;->buildItem(Lcom/sonymobile/home/configuration/parser/ItemConfigData;)Lcom/sonymobile/home/data/Item;

    move-result-object v13

    .line 101
    .local v13, "item":Lcom/sonymobile/home/data/Item;
    instance-of v4, v13, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-eqz v4, :cond_1

    move-object v8, v13

    .line 102
    check-cast v8, Lcom/sonymobile/home/data/AdvWidgetItem;

    .line 107
    :goto_1
    return-object v8

    .line 91
    .end local v2    # "advWidgetConfigData":Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;
    .end local v13    # "item":Lcom/sonymobile/home/data/Item;
    :catch_0
    move-exception v11

    .line 92
    .local v11, "e":Lorg/json/JSONException;
    :goto_2
    sget-object v4, Lcom/sonymobile/home/configuration/parser/jsonParser/AdvWidgetConfigJsonParser;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v5, v15

    const/4 v15, 0x1

    aput-object v9, v5, v15

    const/4 v15, 0x2

    aput-object v6, v5, v15

    invoke-static {v11, v4, v5}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v2    # "advWidgetConfigData":Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;
    .restart local v13    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    new-instance v4, Lcom/sonymobile/home/configuration/ConfigException;

    const-string v5, "Parsing of Advanced widget failed"

    invoke-direct {v4, v5}, Lcom/sonymobile/home/configuration/ConfigException;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/sonymobile/home/configuration/parser/jsonParser/AdvWidgetConfigJsonParser;->TAG:Ljava/lang/String;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    const/16 v16, 0x1

    aput-object v13, v15, v16

    invoke-static {v4, v5, v15}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 91
    .end local v2    # "advWidgetConfigData":Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v13    # "item":Lcom/sonymobile/home/data/Item;
    .restart local v10    # "componentName":Landroid/content/ComponentName;
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v14    # "uuidStr":Ljava/lang/String;
    :catch_1
    move-exception v11

    move-object v6, v12

    .end local v12    # "intent":Landroid/content/Intent;
    .restart local v6    # "intent":Landroid/content/Intent;
    goto :goto_2
.end method

.method protected validateParsedData(Lcom/sonymobile/home/configuration/parser/ItemConfigData;)V
    .locals 5
    .param p1, "itemConfigData"    # Lcom/sonymobile/home/configuration/parser/ItemConfigData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->isItemConfigDataValid()Z

    move-result v0

    .line 41
    .local v0, "isParsedDataValid":Z
    if-nez v0, :cond_0

    .line 42
    new-instance v1, Lcom/sonymobile/home/configuration/ConfigException;

    const-string v2, "Parsed data for Advanced  is not valid "

    invoke-direct {v1, v2}, Lcom/sonymobile/home/configuration/ConfigException;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sonymobile/home/configuration/parser/jsonParser/AdvWidgetConfigJsonParser;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :cond_0
    return-void
.end method
