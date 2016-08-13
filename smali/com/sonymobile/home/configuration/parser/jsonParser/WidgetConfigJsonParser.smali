.class public Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetConfigJsonParser;
.super Lcom/sonymobile/home/configuration/parser/ItemConfigParser;
.source "WidgetConfigJsonParser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetConfigJsonParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetConfigJsonParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonymobile/home/configuration/parser/ItemConfigParser;-><init>(Landroid/content/Context;)V

    .line 35
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
    .line 112
    new-instance v0, Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetItemLocationJsonParser;

    invoke-direct {v0}, Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetItemLocationJsonParser;-><init>()V

    .line 114
    .local v0, "itemLocationJsonParser":Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetItemLocationJsonParser;
    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetItemLocationJsonParser;->parseItemLocation(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected createItem(Lcom/sonymobile/home/configuration/parser/ItemConfigData;)Lcom/sonymobile/home/data/Item;
    .locals 8
    .param p1, "itemConfigData"    # Lcom/sonymobile/home/configuration/parser/ItemConfigData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 55
    move-object v4, p1

    check-cast v4, Lcom/sonymobile/home/configuration/parser/WidgetConfigData;

    .line 56
    .local v4, "widgetConfigData":Lcom/sonymobile/home/configuration/parser/WidgetConfigData;
    invoke-virtual {v4}, Lcom/sonymobile/home/configuration/parser/WidgetConfigData;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 57
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 58
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v4}, Lcom/sonymobile/home/configuration/parser/WidgetConfigData;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 59
    .local v3, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v4}, Lcom/sonymobile/home/configuration/parser/WidgetConfigData;->getId()I

    move-result v1

    .line 60
    .local v1, "id":I
    new-instance v5, Lcom/sonymobile/home/data/WidgetItem;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v1, v6, v7, v3}, Lcom/sonymobile/home/data/WidgetItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v5
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
    .line 48
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/home/data/WidgetItem;

    .line 49
    .local v0, "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetConfigJsonParser;->isLocationValid(Lcom/sonymobile/home/data/Item;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/home/data/WidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/home/data/WidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parseWidget(Lorg/json/JSONObject;Lcom/sonymobile/home/configuration/Layers;)Lcom/sonymobile/home/data/WidgetItem;
    .locals 17
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "layer"    # Lcom/sonymobile/home/configuration/Layers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v13, 0x0

    .line 76
    .local v13, "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    const/4 v3, 0x0

    .line 77
    .local v3, "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    const/4 v8, 0x0

    .line 78
    .local v8, "component":Ljava/lang/String;
    const/4 v6, 0x0

    .line 80
    .local v6, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/home/configuration/Layers;->getLayer()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetConfigJsonParser;->createItemLocation(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    .line 81
    const-string v4, "component"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 82
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .line 84
    .local v9, "componentName":Landroid/content/ComponentName;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v6    # "intent":Landroid/content/Intent;
    .local v11, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {v11, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v11

    .line 92
    .end local v9    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "intent":Landroid/content/Intent;
    .restart local v6    # "intent":Landroid/content/Intent;
    :goto_0
    const-string v4, "item_id"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 93
    .local v7, "id":I
    invoke-virtual/range {p0 .. p1}, Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetConfigJsonParser;->parseProfile(Lorg/json/JSONObject;)Landroid/os/UserHandle;

    move-result-object v5

    .line 95
    .local v5, "user":Landroid/os/UserHandle;
    new-instance v2, Lcom/sonymobile/home/configuration/parser/WidgetConfigData;

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/home/configuration/Layers;->getLayer()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v2 .. v7}, Lcom/sonymobile/home/configuration/parser/WidgetConfigData;-><init>(Lcom/sonymobile/home/data/ItemLocation;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Intent;I)V

    .line 100
    .local v2, "widgetConfigData":Lcom/sonymobile/home/configuration/parser/WidgetConfigData;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetConfigJsonParser;->buildItem(Lcom/sonymobile/home/configuration/parser/ItemConfigData;)Lcom/sonymobile/home/data/Item;

    move-result-object v12

    .line 101
    .local v12, "item":Lcom/sonymobile/home/data/Item;
    instance-of v4, v12, Lcom/sonymobile/home/data/WidgetItem;

    if-eqz v4, :cond_0

    move-object v13, v12

    .line 102
    check-cast v13, Lcom/sonymobile/home/data/WidgetItem;

    .line 108
    :goto_1
    return-object v13

    .line 86
    .end local v2    # "widgetConfigData":Lcom/sonymobile/home/configuration/parser/WidgetConfigData;
    .end local v5    # "user":Landroid/os/UserHandle;
    .end local v7    # "id":I
    .end local v12    # "item":Lcom/sonymobile/home/data/Item;
    :catch_0
    move-exception v10

    .line 87
    .local v10, "e":Lorg/json/JSONException;
    :goto_2
    sget-object v4, Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetConfigJsonParser;->TAG:Ljava/lang/String;

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    const/4 v15, 0x1

    aput-object v8, v14, v15

    const/4 v15, 0x2

    aput-object v6, v14, v15

    invoke-static {v10, v4, v14}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    .end local v10    # "e":Lorg/json/JSONException;
    .restart local v2    # "widgetConfigData":Lcom/sonymobile/home/configuration/parser/WidgetConfigData;
    .restart local v5    # "user":Landroid/os/UserHandle;
    .restart local v7    # "id":I
    .restart local v12    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    new-instance v4, Lcom/sonymobile/home/configuration/ConfigException;

    const-string v14, "Parsing of widget failed"

    invoke-direct {v4, v14}, Lcom/sonymobile/home/configuration/ConfigException;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetConfigJsonParser;->TAG:Ljava/lang/String;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    const/16 v16, 0x1

    aput-object v12, v15, v16

    invoke-static {v4, v14, v15}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 86
    .end local v2    # "widgetConfigData":Lcom/sonymobile/home/configuration/parser/WidgetConfigData;
    .end local v5    # "user":Landroid/os/UserHandle;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "id":I
    .end local v12    # "item":Lcom/sonymobile/home/data/Item;
    .restart local v9    # "componentName":Landroid/content/ComponentName;
    .restart local v11    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v10

    move-object v6, v11

    .end local v11    # "intent":Landroid/content/Intent;
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
    .line 39
    invoke-virtual {p1}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->isItemConfigDataValid()Z

    move-result v0

    .line 40
    .local v0, "isParsedDataValid":Z
    if-nez v0, :cond_0

    .line 41
    new-instance v1, Lcom/sonymobile/home/configuration/ConfigException;

    const-string v2, "Parsed data for Vanilla widget is not valid "

    invoke-direct {v1, v2}, Lcom/sonymobile/home/configuration/ConfigException;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetConfigJsonParser;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :cond_0
    return-void
.end method
