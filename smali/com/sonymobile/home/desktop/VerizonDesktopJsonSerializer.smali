.class public Lcom/sonymobile/home/desktop/VerizonDesktopJsonSerializer;
.super Ljava/lang/Object;
.source "VerizonDesktopJsonSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPanelIndex(II)I
    .locals 1
    .param p1, "leftMostPageIndex"    # I
    .param p2, "page"    # I

    .prologue
    .line 114
    sub-int v0, p2, p1

    return v0
.end method


# virtual methods
.method public createJsonFromItems(Ljava/util/List;IIII)Ljava/lang/String;
    .locals 17
    .param p2, "leftMostPageIndex"    # I
    .param p3, "numberOfPages"    # I
    .param p4, "colSpan"    # I
    .param p5, "rowSpan"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;IIII)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v9, 0x0

    .line 52
    .local v9, "jsonString":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 53
    .local v5, "json":Lorg/json/JSONObject;
    const-string v14, "type"

    const-string v15, "launcherConfiguration"

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v14, "version"

    const/4 v15, 0x1

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    const-string v14, "numberOfPanels"

    move/from16 v0, p3

    invoke-virtual {v5, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .local v6, "jsonDimens":Lorg/json/JSONObject;
    const-string v14, "width"

    move/from16 v0, p4

    invoke-virtual {v6, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    const-string v14, "height"

    move/from16 v0, p5

    invoke-virtual {v6, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    const-string v14, "dimensions"

    invoke-virtual {v5, v14, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 63
    .local v8, "jsonIcons":Lorg/json/JSONArray;
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 65
    .local v11, "jsonWidgets":Lorg/json/JSONArray;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/data/Item;

    .line 66
    .local v4, "item":Lcom/sonymobile/home/data/Item;
    instance-of v14, v4, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v14, :cond_1

    .line 67
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .local v7, "jsonIcon":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v12

    .line 69
    .local v12, "location":Lcom/sonymobile/home/data/ItemLocation;
    const-string v14, "panel"

    iget v15, v12, Lcom/sonymobile/home/data/ItemLocation;->page:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/sonymobile/home/desktop/VerizonDesktopJsonSerializer;->getPanelIndex(II)I

    move-result v15

    invoke-virtual {v7, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    const-string v14, "x"

    iget-object v15, v12, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v15, v15, Lcom/sonymobile/grid/GridRect;->col:I

    invoke-virtual {v7, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 71
    const-string v14, "y"

    iget-object v15, v12, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v15, v15, Lcom/sonymobile/grid/GridRect;->row:I

    invoke-virtual {v7, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 72
    const-string v14, "intent"

    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Lcom/sonymobile/home/data/Item;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "jsonDimens":Lorg/json/JSONObject;
    .end local v7    # "jsonIcon":Lorg/json/JSONObject;
    .end local v8    # "jsonIcons":Lorg/json/JSONArray;
    .end local v11    # "jsonWidgets":Lorg/json/JSONArray;
    .end local v12    # "location":Lcom/sonymobile/home/data/ItemLocation;
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Lorg/json/JSONException;
    const-string v14, "JsonSerializer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "JSON serialization failed: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v9

    .line 74
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "item":Lcom/sonymobile/home/data/Item;
    .restart local v5    # "json":Lorg/json/JSONObject;
    .restart local v6    # "jsonDimens":Lorg/json/JSONObject;
    .restart local v8    # "jsonIcons":Lorg/json/JSONArray;
    .restart local v11    # "jsonWidgets":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    instance-of v14, v4, Lcom/sonymobile/home/data/WidgetItem;

    if-eqz v14, :cond_0

    .line 75
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 76
    .local v10, "jsonWidget":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v12

    .line 77
    .restart local v12    # "location":Lcom/sonymobile/home/data/ItemLocation;
    const-string v14, "panel"

    iget v15, v12, Lcom/sonymobile/home/data/ItemLocation;->page:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/sonymobile/home/desktop/VerizonDesktopJsonSerializer;->getPanelIndex(II)I

    move-result v15

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    const-string v14, "x"

    iget-object v15, v12, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v15, v15, Lcom/sonymobile/grid/GridRect;->col:I

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    const-string v14, "y"

    iget-object v15, v12, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v15, v15, Lcom/sonymobile/grid/GridRect;->row:I

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    const-string v14, "width"

    iget-object v15, v12, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v15, v15, Lcom/sonymobile/grid/GridRect;->colSpan:I

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    const-string v14, "height"

    iget-object v15, v12, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v15, v15, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    new-instance v13, Landroid/content/ComponentName;

    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v14

    check-cast v4, Lcom/sonymobile/home/data/WidgetItem;

    .end local v4    # "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v4}, Lcom/sonymobile/home/data/WidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .local v13, "widgetComponent":Landroid/content/ComponentName;
    const-string v14, "component"

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 90
    .end local v10    # "jsonWidget":Lorg/json/JSONObject;
    .end local v12    # "location":Lcom/sonymobile/home/data/ItemLocation;
    .end local v13    # "widgetComponent":Landroid/content/ComponentName;
    :cond_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_3

    .line 91
    const-string v14, "icons"

    invoke-virtual {v5, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    :cond_3
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_4

    .line 95
    const-string v14, "widgets"

    invoke-virtual {v5, v14, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    :cond_4
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_1
.end method
