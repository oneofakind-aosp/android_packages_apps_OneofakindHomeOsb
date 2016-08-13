.class public Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;
.super Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;
.source "DesktopJsonSerializer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentProviderUri"    # Landroid/net/Uri;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 36
    return-void
.end method

.method private addAttributes(Lcom/sonymobile/home/configuration/DesktopConfig;)V
    .locals 4
    .param p1, "config"    # Lcom/sonymobile/home/configuration/DesktopConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v1, p0, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;->mLayerJson:Lorg/json/JSONObject;

    const-string v2, "numberOfPanels"

    invoke-virtual {p1}, Lcom/sonymobile/home/configuration/DesktopConfig;->getNumberOfPages()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    iget-object v1, p0, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;->mItemLocationSerializer:Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;

    check-cast v1, Lcom/sonymobile/home/configuration/serializer/DesktopItemLocationSerializer;

    invoke-virtual {p1}, Lcom/sonymobile/home/configuration/DesktopConfig;->getDefaultPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/configuration/serializer/DesktopItemLocationSerializer;->getPanelIndex(I)I

    move-result v0

    .line 54
    .local v0, "defaultPanel":I
    iget-object v1, p0, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;->mLayerJson:Lorg/json/JSONObject;

    const-string v2, "defaultPanel"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    invoke-virtual {p1}, Lcom/sonymobile/home/configuration/DesktopConfig;->getColSpan()I

    move-result v1

    invoke-virtual {p1}, Lcom/sonymobile/home/configuration/DesktopConfig;->getRowSpan()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;->addDimensions(II)V

    .line 58
    return-void
.end method

.method private addDimensions(II)V
    .locals 3
    .param p1, "colSpan"    # I
    .param p2, "rowSpan"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 62
    .local v0, "jsonDimens":Lorg/json/JSONObject;
    const-string v1, "width"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    const-string v1, "height"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    iget-object v1, p0, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;->mLayerJson:Lorg/json/JSONObject;

    const-string v2, "dimensions"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    return-void
.end method


# virtual methods
.method public addObjects(Lcom/sonymobile/home/configuration/DesktopConfig;)V
    .locals 11
    .param p1, "config"    # Lcom/sonymobile/home/configuration/DesktopConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 76
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 77
    .local v5, "jsonIcons":Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 78
    .local v6, "jsonWidgets":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 79
    .local v3, "jsonAdvWidgets":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 81
    .local v4, "jsonFolders":Lorg/json/JSONArray;
    invoke-virtual {p1}, Lcom/sonymobile/home/configuration/DesktopConfig;->getItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 82
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    instance-of v7, v2, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v7, :cond_1

    .line 83
    invoke-virtual {p0, v5, v2}, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;->addActivity(Lorg/json/JSONArray;Lcom/sonymobile/home/data/Item;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    .end local v3    # "jsonAdvWidgets":Lorg/json/JSONArray;
    .end local v4    # "jsonFolders":Lorg/json/JSONArray;
    .end local v5    # "jsonIcons":Lorg/json/JSONArray;
    .end local v6    # "jsonWidgets":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lorg/json/JSONException;
    sget-object v7, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "JSON serialization failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    throw v0

    .line 84
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "item":Lcom/sonymobile/home/data/Item;
    .restart local v3    # "jsonAdvWidgets":Lorg/json/JSONArray;
    .restart local v4    # "jsonFolders":Lorg/json/JSONArray;
    .restart local v5    # "jsonIcons":Lorg/json/JSONArray;
    .restart local v6    # "jsonWidgets":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    instance-of v7, v2, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v7, :cond_2

    .line 85
    invoke-virtual {p0, v5, v2}, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;->addShortcut(Lorg/json/JSONArray;Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 86
    :cond_2
    instance-of v7, v2, Lcom/sonymobile/home/data/WidgetItem;

    if-eqz v7, :cond_3

    .line 87
    invoke-virtual {p0, v6, v2}, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;->addWidget(Lorg/json/JSONArray;Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 88
    :cond_3
    instance-of v7, v2, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-eqz v7, :cond_4

    .line 89
    invoke-virtual {p0, v3, v2}, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;->addAdvWidget(Lorg/json/JSONArray;Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 90
    :cond_4
    instance-of v7, v2, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v7, :cond_5

    .line 91
    invoke-virtual {p0, v4, v2}, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;->addFolder(Lorg/json/JSONArray;Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 92
    :cond_5
    instance-of v7, v2, Lcom/sonymobile/home/data/InternalFunctionItem;

    if-eqz v7, :cond_0

    .line 93
    invoke-virtual {p0, v5, v2}, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;->addInternalFunction(Lorg/json/JSONArray;Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 97
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    :cond_6
    const/4 v7, 0x4

    new-array v7, v7, [Landroid/util/Pair;

    const/4 v8, 0x0

    new-instance v9, Landroid/util/Pair;

    sget-object v10, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->ICONS:Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    invoke-direct {v9, v10, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Landroid/util/Pair;

    sget-object v10, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->WIDGETS:Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    invoke-direct {v9, v10, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Landroid/util/Pair;

    sget-object v10, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->ADVANCED_WIDGETS:Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    invoke-direct {v9, v10, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Landroid/util/Pair;

    sget-object v10, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->FOLDERS:Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    invoke-direct {v9, v10, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;->addArrays([Landroid/util/Pair;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    return-void
.end method

.method public createLayer(Lcom/sonymobile/home/configuration/Config;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "config"    # Lcom/sonymobile/home/configuration/Config;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 40
    instance-of v1, p1, Lcom/sonymobile/home/configuration/DesktopConfig;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 41
    check-cast v0, Lcom/sonymobile/home/configuration/DesktopConfig;

    .line 42
    .local v0, "desktopConfig":Lcom/sonymobile/home/configuration/DesktopConfig;
    new-instance v1, Lcom/sonymobile/home/configuration/serializer/DesktopItemLocationSerializer;

    invoke-virtual {v0}, Lcom/sonymobile/home/configuration/DesktopConfig;->getLeftmostPage()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sonymobile/home/configuration/serializer/DesktopItemLocationSerializer;-><init>(I)V

    iput-object v1, p0, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;->mItemLocationSerializer:Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;

    .line 43
    invoke-direct {p0, v0}, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;->addAttributes(Lcom/sonymobile/home/configuration/DesktopConfig;)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;->addObjects(Lcom/sonymobile/home/configuration/DesktopConfig;)V

    .line 45
    iget-object v1, p0, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;->mLayerJson:Lorg/json/JSONObject;

    .line 48
    .end local v0    # "desktopConfig":Lcom/sonymobile/home/configuration/DesktopConfig;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
