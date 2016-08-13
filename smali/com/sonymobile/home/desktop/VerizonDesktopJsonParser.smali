.class public Lcom/sonymobile/home/desktop/VerizonDesktopJsonParser;
.super Ljava/lang/Object;
.source "VerizonDesktopJsonParser.java"


# instance fields
.field private final mColSpan:I

.field private final mDefaultNumberOfPages:I

.field private mNumberOfPages:I

.field private final mRowSpan:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "colSpan"    # I
    .param p3, "rowSpan"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/desktop/VerizonDesktopJsonParser;->mDefaultNumberOfPages:I

    .line 54
    iput p2, p0, Lcom/sonymobile/home/desktop/VerizonDesktopJsonParser;->mColSpan:I

    .line 55
    iput p3, p0, Lcom/sonymobile/home/desktop/VerizonDesktopJsonParser;->mRowSpan:I

    .line 56
    return-void
.end method

.method private addIcon(Ljava/util/ArrayList;IIILandroid/content/Intent;)V
    .locals 8
    .param p2, "page"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;III",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    const/4 v4, 0x1

    .line 129
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 132
    .local v6, "component":Landroid/content/ComponentName;
    new-instance v0, Lcom/sonymobile/home/data/ItemLocation;

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIII)V

    .line 133
    .local v0, "location":Lcom/sonymobile/home/data/ItemLocation;
    invoke-direct {p0, v0}, Lcom/sonymobile/home/desktop/VerizonDesktopJsonParser;->isWithinBounds(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p5, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v6, :cond_1

    .line 137
    :cond_0
    const-string v1, "DesktopJsonParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid icon data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 141
    :cond_1
    new-instance v7, Lcom/sonymobile/home/data/ActivityItem;

    invoke-direct {v7, v6}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Landroid/content/ComponentName;)V

    .line 142
    .local v7, "item":Lcom/sonymobile/home/data/ActivityItem;
    const-string v1, "desktop"

    invoke-virtual {v7, v1}, Lcom/sonymobile/home/data/ActivityItem;->setPageViewName(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v7, v0}, Lcom/sonymobile/home/data/ActivityItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 144
    invoke-static {v7, p1}, Lcom/sonymobile/home/desktop/VerizonDesktopJsonParser;->removeOverlappingItems(Lcom/sonymobile/home/data/Item;Ljava/util/ArrayList;)V

    .line 145
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addWidget(Ljava/util/ArrayList;IIIIILandroid/content/ComponentName;)V
    .locals 7
    .param p2, "page"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;IIIII",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    new-instance v0, Lcom/sonymobile/home/data/ItemLocation;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIII)V

    .line 152
    .local v0, "location":Lcom/sonymobile/home/data/ItemLocation;
    invoke-direct {p0, v0}, Lcom/sonymobile/home/desktop/VerizonDesktopJsonParser;->isWithinBounds(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p7, :cond_1

    .line 153
    :cond_0
    const-string v1, "DesktopJsonParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid widget data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    return-void

    .line 157
    :cond_1
    new-instance v6, Lcom/sonymobile/home/data/WidgetItem;

    invoke-direct {v6, p7}, Lcom/sonymobile/home/data/WidgetItem;-><init>(Landroid/content/ComponentName;)V

    .line 158
    .local v6, "widget":Lcom/sonymobile/home/data/WidgetItem;
    const-string v1, "desktop"

    invoke-virtual {v6, v1}, Lcom/sonymobile/home/data/WidgetItem;->setPageViewName(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v6, v0}, Lcom/sonymobile/home/data/WidgetItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 160
    invoke-static {v6, p1}, Lcom/sonymobile/home/desktop/VerizonDesktopJsonParser;->removeOverlappingItems(Lcom/sonymobile/home/data/Item;Ljava/util/ArrayList;)V

    .line 161
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private isWithinBounds(Lcom/sonymobile/home/data/ItemLocation;)Z
    .locals 3
    .param p1, "location"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    const/4 v0, 0x1

    .line 165
    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->row:I

    if-ltz v1, :cond_0

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->col:I

    if-ltz v1, :cond_0

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    if-lt v1, v0, :cond_0

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    if-lt v1, v0, :cond_0

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->row:I

    iget-object v2, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sonymobile/home/desktop/VerizonDesktopJsonParser;->mRowSpan:I

    if-gt v1, v2, :cond_0

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->col:I

    iget-object v2, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sonymobile/home/desktop/VerizonDesktopJsonParser;->mColSpan:I

    if-gt v1, v2, :cond_0

    iget v1, p1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    if-ltz v1, :cond_0

    iget v1, p1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iget v2, p0, Lcom/sonymobile/home/desktop/VerizonDesktopJsonParser;->mNumberOfPages:I

    if-ge v1, v2, :cond_0

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static removeOverlappingItems(Lcom/sonymobile/home/data/Item;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "newItem"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/Item;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 186
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/Item;

    .line 188
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {p0}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/data/ItemLocation;->overlaps(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 192
    .end local v0    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    return-void
.end method


# virtual methods
.method public createConfigFromJson(Ljava/lang/String;)Lcom/sonymobile/home/desktop/VerizonDesktopConfig;
    .locals 25
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v22, Lorg/json/JSONObject;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    .local v22, "json":Lorg/json/JSONObject;
    const-string v2, "launcherConfiguration"

    const-string v10, "type"

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v10, "Only type launcherConfiguration is supported"

    invoke-direct {v2, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_0
    const-string v2, "version"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v10, 0x1

    if-eq v2, v10, :cond_1

    .line 78
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v10, "Unsupported format version"

    invoke-direct {v2, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_1
    const-string v2, "numberOfPanels"

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sonymobile/home/desktop/VerizonDesktopJsonParser;->mDefaultNumberOfPages:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sonymobile/home/desktop/VerizonDesktopJsonParser;->mNumberOfPages:I

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    const-string v2, "widgets"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 85
    .local v24, "widgets":Lorg/json/JSONArray;
    if-eqz v24, :cond_2

    .line 86
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_2

    .line 88
    :try_start_0
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 89
    .local v23, "widget":Lorg/json/JSONObject;
    const-string v2, "panel"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 90
    .local v4, "page":I
    const-string v2, "x"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 91
    .local v5, "x":I
    const-string v2, "y"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 92
    .local v6, "y":I
    const-string v2, "width"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 93
    .local v7, "width":I
    const-string v2, "height"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 94
    .local v8, "height":I
    const-string v2, "component"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 95
    .local v16, "component":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .local v9, "componentName":Landroid/content/ComponentName;
    move-object/from16 v2, p0

    .line 97
    invoke-direct/range {v2 .. v9}, Lcom/sonymobile/home/desktop/VerizonDesktopJsonParser;->addWidget(Ljava/util/ArrayList;IIIIILandroid/content/ComponentName;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v4    # "page":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "componentName":Landroid/content/ComponentName;
    .end local v16    # "component":Ljava/lang/String;
    .end local v23    # "widget":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 98
    :catch_0
    move-exception v17

    .line 99
    .local v17, "e":Lorg/json/JSONException;
    const-string v2, "DesktopJsonParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "JSON parsing failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 104
    .end local v17    # "e":Lorg/json/JSONException;
    .end local v18    # "i":I
    :cond_2
    const-string v2, "icons"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 105
    .local v20, "icons":Lorg/json/JSONArray;
    if-eqz v20, :cond_3

    .line 106
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_2
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_3

    .line 108
    :try_start_1
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 109
    .local v19, "icon":Lorg/json/JSONObject;
    const-string v2, "panel"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 110
    .restart local v4    # "page":I
    const-string v2, "x"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 111
    .restart local v5    # "x":I
    const-string v2, "y"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 113
    .restart local v6    # "y":I
    const-string v2, "intent"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 114
    .local v21, "intentUri":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15

    .local v15, "intent":Landroid/content/Intent;
    move-object/from16 v10, p0

    move-object v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    .line 116
    invoke-direct/range {v10 .. v15}, Lcom/sonymobile/home/desktop/VerizonDesktopJsonParser;->addIcon(Ljava/util/ArrayList;IIILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 106
    .end local v4    # "page":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v19    # "icon":Lorg/json/JSONObject;
    .end local v21    # "intentUri":Ljava/lang/String;
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 117
    :catch_1
    move-exception v17

    .line 118
    .local v17, "e":Ljava/net/URISyntaxException;
    const-string v2, "DesktopJsonParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "intent parsing failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v17 .. v17}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 119
    .end local v17    # "e":Ljava/net/URISyntaxException;
    :catch_2
    move-exception v17

    .line 120
    .local v17, "e":Lorg/json/JSONException;
    const-string v2, "DesktopJsonParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "JSON parsing failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 125
    .end local v17    # "e":Lorg/json/JSONException;
    .end local v18    # "i":I
    :cond_3
    new-instance v2, Lcom/sonymobile/home/desktop/VerizonDesktopConfig;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sonymobile/home/desktop/VerizonDesktopJsonParser;->mNumberOfPages:I

    invoke-direct {v2, v3, v10}, Lcom/sonymobile/home/desktop/VerizonDesktopConfig;-><init>(Ljava/util/List;I)V

    return-object v2
.end method
