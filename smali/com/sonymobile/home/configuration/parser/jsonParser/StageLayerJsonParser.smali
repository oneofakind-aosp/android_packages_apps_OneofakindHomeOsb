.class public Lcom/sonymobile/home/configuration/parser/jsonParser/StageLayerJsonParser;
.super Lcom/sonymobile/home/configuration/parser/jsonParser/JsonLayerParser;
.source "StageLayerJsonParser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultNumberOfItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/sonymobile/home/configuration/parser/jsonParser/StageLayerJsonParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/configuration/parser/jsonParser/StageLayerJsonParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/configuration/Layers;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layer"    # Lcom/sonymobile/home/configuration/Layers;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sonymobile/home/configuration/parser/jsonParser/JsonLayerParser;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/StageLayerJsonParser;->mContext:Landroid/content/Context;

    .line 43
    sget-object v0, Lcom/sonymobile/home/configuration/Layers;->DESKTOP_AUTOMATIC:Lcom/sonymobile/home/configuration/Layers;

    if-ne p2, v0, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/StageLayerJsonParser;->mDefaultNumberOfItems:I

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/StageLayerJsonParser;->mDefaultNumberOfItems:I

    goto :goto_0
.end method


# virtual methods
.method protected createConfig(Ljava/lang/String;Lcom/sonymobile/home/configuration/Layers;)Lcom/sonymobile/home/configuration/Config;
    .locals 16
    .param p1, "homeConfig"    # Ljava/lang/String;
    .param p2, "layer"    # Lcom/sonymobile/home/configuration/Layers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static/range {p1 .. p2}, Lcom/sonymobile/home/configuration/parser/jsonParser/JsonParserUtil;->getLayer(Ljava/lang/String;Lcom/sonymobile/home/configuration/Layers;)Lorg/json/JSONObject;

    move-result-object v13

    .line 58
    .local v13, "jsonLayer":Lorg/json/JSONObject;
    if-nez v13, :cond_0

    .line 59
    const/4 v6, 0x0

    .line 77
    :goto_0
    return-object v6

    .line 62
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v9, "allItemsInLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    const-string v2, "size"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/home/configuration/parser/jsonParser/StageLayerJsonParser;->mDefaultNumberOfItems:I

    invoke-virtual {v13, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    .line 66
    .local v15, "maxStageItems":I
    new-instance v6, Lcom/sonymobile/home/configuration/StageConfig;

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/home/configuration/Layers;->getLayer()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v15, v2}, Lcom/sonymobile/home/configuration/StageConfig;-><init>(ILjava/lang/String;)V

    .line 68
    .local v6, "config":Lcom/sonymobile/home/configuration/StageConfig;
    invoke-static {}, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->values()[Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    move-result-object v10

    .local v10, "arr$":[Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;
    array-length v14, v10

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v14, :cond_1

    aget-object v5, v10, v12

    .line 69
    .local v5, "group":Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v5}, Lcom/sonymobile/home/configuration/parser/jsonParser/JsonParserUtil;->getGroup(Ljava/lang/String;Lcom/sonymobile/home/configuration/Layers;Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;)Lorg/json/JSONArray;

    move-result-object v7

    .line 70
    .local v7, "jsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/configuration/parser/jsonParser/StageLayerJsonParser;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/sonymobile/home/configuration/parser/jsonParser/StageLayerJsonParser;->createGroupItems(Landroid/content/Context;Lcom/sonymobile/home/configuration/Layers;Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;Lcom/sonymobile/home/configuration/Config;Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v11

    .line 72
    .local v11, "groupItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 74
    .end local v5    # "group":Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    .end local v11    # "groupItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sonymobile/home/configuration/parser/jsonParser/StageLayerJsonParser;->verifyOverlap(Ljava/util/List;)V

    .line 75
    invoke-virtual {v6, v9}, Lcom/sonymobile/home/configuration/StageConfig;->addItems(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected verifyBounds(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/configuration/Config;)V
    .locals 6
    .param p1, "location"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "config"    # Lcom/sonymobile/home/configuration/Config;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "areBoundsValid":Z
    instance-of v2, p2, Lcom/sonymobile/home/configuration/StageConfig;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 85
    check-cast v1, Lcom/sonymobile/home/configuration/StageConfig;

    .line 86
    .local v1, "stageConfig":Lcom/sonymobile/home/configuration/StageConfig;
    iget v2, p1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    if-ltz v2, :cond_0

    iget v2, p1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    invoke-virtual {v1}, Lcom/sonymobile/home/configuration/StageConfig;->getMaxNumberOfItems()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 87
    const/4 v0, 0x1

    .line 90
    .end local v1    # "stageConfig":Lcom/sonymobile/home/configuration/StageConfig;
    :cond_0
    if-nez v0, :cond_1

    .line 91
    new-instance v2, Lcom/sonymobile/home/configuration/ConfigException;

    sget-object v3, Lcom/sonymobile/home/configuration/ConfigExceptionReason;->BOUNDS:Lcom/sonymobile/home/configuration/ConfigExceptionReason;

    invoke-virtual {v3}, Lcom/sonymobile/home/configuration/ConfigExceptionReason;->getExceptionReason()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/home/configuration/ConfigException;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/sonymobile/home/configuration/parser/jsonParser/StageLayerJsonParser;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :cond_1
    return-void
.end method
