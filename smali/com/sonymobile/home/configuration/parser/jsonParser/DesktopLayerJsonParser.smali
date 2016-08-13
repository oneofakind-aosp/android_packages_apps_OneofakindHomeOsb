.class public Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopLayerJsonParser;
.super Lcom/sonymobile/home/configuration/parser/jsonParser/JsonLayerParser;
.source "DesktopLayerJsonParser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mColSpan:I

.field private final mContext:Landroid/content/Context;

.field private final mDefaultNumberOfPages:I

.field private final mRowSpan:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopLayerJsonParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopLayerJsonParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sonymobile/home/configuration/parser/jsonParser/JsonLayerParser;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopLayerJsonParser;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0d002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopLayerJsonParser;->mDefaultNumberOfPages:I

    .line 48
    const v1, 0x7f0d0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopLayerJsonParser;->mRowSpan:I

    .line 49
    const v1, 0x7f0d0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopLayerJsonParser;->mColSpan:I

    .line 50
    return-void
.end method


# virtual methods
.method protected createConfig(Ljava/lang/String;Lcom/sonymobile/home/configuration/Layers;)Lcom/sonymobile/home/configuration/Config;
    .locals 18
    .param p1, "homeConfig"    # Ljava/lang/String;
    .param p2, "layer"    # Lcom/sonymobile/home/configuration/Layers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static/range {p1 .. p2}, Lcom/sonymobile/home/configuration/parser/jsonParser/JsonParserUtil;->getLayer(Ljava/lang/String;Lcom/sonymobile/home/configuration/Layers;)Lorg/json/JSONObject;

    move-result-object v16

    .line 59
    .local v16, "jsonLayer":Lorg/json/JSONObject;
    if-nez v16, :cond_0

    .line 60
    const/4 v2, 0x0

    .line 82
    :goto_0
    return-object v2

    .line 63
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v12, "allItemsInLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    const-string v5, "numberOfPanels"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopLayerJsonParser;->mDefaultNumberOfPages:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 67
    .local v3, "numberOfPages":I
    const-string v5, "defaultPanel"

    div-int/lit8 v6, v3, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 69
    .local v4, "defaultPage":I
    new-instance v2, Lcom/sonymobile/home/configuration/DesktopConfig;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopLayerJsonParser;->mColSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopLayerJsonParser;->mRowSpan:I

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/home/configuration/Layers;->getLayer()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/sonymobile/home/configuration/DesktopConfig;-><init>(IIIIILjava/lang/String;)V

    .line 71
    .local v2, "config":Lcom/sonymobile/home/configuration/DesktopConfig;
    invoke-static {}, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->values()[Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    move-result-object v13

    .local v13, "arr$":[Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;
    array-length v0, v13

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_2

    aget-object v8, v13, v15

    .line 72
    .local v8, "group":Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/sonymobile/home/configuration/parser/jsonParser/JsonParserUtil;->getGroup(Ljava/lang/String;Lcom/sonymobile/home/configuration/Layers;Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;)Lorg/json/JSONArray;

    move-result-object v10

    .line 73
    .local v10, "jsonArray":Lorg/json/JSONArray;
    if-eqz v10, :cond_1

    .line 74
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopLayerJsonParser;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object v9, v2

    invoke-virtual/range {v5 .. v11}, Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopLayerJsonParser;->createGroupItems(Landroid/content/Context;Lcom/sonymobile/home/configuration/Layers;Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;Lcom/sonymobile/home/configuration/Config;Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v14

    .line 76
    .local v14, "groupItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    .end local v14    # "groupItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 79
    .end local v8    # "group":Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;
    .end local v10    # "jsonArray":Lorg/json/JSONArray;
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopLayerJsonParser;->verifyOverlap(Ljava/util/List;)V

    .line 80
    invoke-virtual {v2, v12}, Lcom/sonymobile/home/configuration/DesktopConfig;->addItems(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected verifyBounds(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/configuration/Config;)V
    .locals 7
    .param p1, "location"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "config"    # Lcom/sonymobile/home/configuration/Config;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "areBoundsValid":Z
    instance-of v2, p2, Lcom/sonymobile/home/configuration/DesktopConfig;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 90
    check-cast v1, Lcom/sonymobile/home/configuration/DesktopConfig;

    .line 91
    .local v1, "desktopConfig":Lcom/sonymobile/home/configuration/DesktopConfig;
    iget-object v2, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->row:I

    if-ltz v2, :cond_0

    iget-object v2, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->col:I

    if-ltz v2, :cond_0

    iget-object v2, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    if-lt v2, v6, :cond_0

    iget-object v2, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    if-lt v2, v6, :cond_0

    iget-object v2, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->row:I

    iget-object v3, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v2, v3

    invoke-virtual {v1}, Lcom/sonymobile/home/configuration/DesktopConfig;->getRowSpan()I

    move-result v3

    if-gt v2, v3, :cond_0

    iget-object v2, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->col:I

    iget-object v3, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v2, v3

    invoke-virtual {v1}, Lcom/sonymobile/home/configuration/DesktopConfig;->getColSpan()I

    move-result v3

    if-gt v2, v3, :cond_0

    iget v2, p1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    if-ltz v2, :cond_0

    iget v2, p1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    invoke-virtual {v1}, Lcom/sonymobile/home/configuration/DesktopConfig;->getNumberOfPages()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 97
    const/4 v0, 0x1

    .line 101
    .end local v1    # "desktopConfig":Lcom/sonymobile/home/configuration/DesktopConfig;
    :cond_0
    if-nez v0, :cond_1

    .line 102
    new-instance v2, Lcom/sonymobile/home/configuration/ConfigException;

    sget-object v3, Lcom/sonymobile/home/configuration/ConfigExceptionReason;->BOUNDS:Lcom/sonymobile/home/configuration/ConfigExceptionReason;

    invoke-virtual {v3}, Lcom/sonymobile/home/configuration/ConfigExceptionReason;->getExceptionReason()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/home/configuration/ConfigException;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopLayerJsonParser;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    invoke-static {v2, v3, v4}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :cond_1
    return-void
.end method
