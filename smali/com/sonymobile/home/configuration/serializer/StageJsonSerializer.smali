.class public Lcom/sonymobile/home/configuration/serializer/StageJsonSerializer;
.super Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;
.source "StageJsonSerializer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/sonymobile/home/configuration/serializer/StageJsonSerializer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/configuration/serializer/StageJsonSerializer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentProviderUri"    # Landroid/net/Uri;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 34
    return-void
.end method

.method private addAttributes(Lcom/sonymobile/home/configuration/StageConfig;)V
    .locals 3
    .param p1, "config"    # Lcom/sonymobile/home/configuration/StageConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/home/configuration/serializer/StageJsonSerializer;->mLayerJson:Lorg/json/JSONObject;

    const-string v1, "size"

    invoke-virtual {p1}, Lcom/sonymobile/home/configuration/StageConfig;->getMaxNumberOfItems()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    return-void
.end method


# virtual methods
.method public addObjects(Lcom/sonymobile/home/configuration/Config;)V
    .locals 9
    .param p1, "config"    # Lcom/sonymobile/home/configuration/Config;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 62
    .local v4, "jsonIcons":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 64
    .local v3, "jsonFolders":Lorg/json/JSONArray;
    invoke-virtual {p1}, Lcom/sonymobile/home/configuration/Config;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 65
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    instance-of v5, v2, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v5, :cond_1

    .line 66
    invoke-virtual {p0, v4, v2}, Lcom/sonymobile/home/configuration/serializer/StageJsonSerializer;->addActivity(Lorg/json/JSONArray;Lcom/sonymobile/home/data/Item;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    .end local v3    # "jsonFolders":Lorg/json/JSONArray;
    .end local v4    # "jsonIcons":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/sonymobile/home/configuration/serializer/StageJsonSerializer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSON serialization failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    throw v0

    .line 67
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "item":Lcom/sonymobile/home/data/Item;
    .restart local v3    # "jsonFolders":Lorg/json/JSONArray;
    .restart local v4    # "jsonIcons":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    instance-of v5, v2, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v5, :cond_2

    .line 68
    invoke-virtual {p0, v3, v2}, Lcom/sonymobile/home/configuration/serializer/StageJsonSerializer;->addFolder(Lorg/json/JSONArray;Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 69
    :cond_2
    instance-of v5, v2, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v5, :cond_3

    .line 70
    invoke-virtual {p0, v4, v2}, Lcom/sonymobile/home/configuration/serializer/StageJsonSerializer;->addShortcut(Lorg/json/JSONArray;Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 71
    :cond_3
    instance-of v5, v2, Lcom/sonymobile/home/data/InternalFunctionItem;

    if-eqz v5, :cond_0

    .line 72
    invoke-virtual {p0, v4, v2}, Lcom/sonymobile/home/configuration/serializer/StageJsonSerializer;->addInternalFunction(Lorg/json/JSONArray;Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 76
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    :cond_4
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/util/Pair;

    const/4 v6, 0x0

    new-instance v7, Landroid/util/Pair;

    sget-object v8, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->ICONS:Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    invoke-direct {v7, v8, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Landroid/util/Pair;

    sget-object v8, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->FOLDERS:Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    invoke-direct {v7, v8, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sonymobile/home/configuration/serializer/StageJsonSerializer;->addArrays([Landroid/util/Pair;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    return-void
.end method

.method public createLayer(Lcom/sonymobile/home/configuration/Config;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "config"    # Lcom/sonymobile/home/configuration/Config;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    instance-of v1, p1, Lcom/sonymobile/home/configuration/StageConfig;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 42
    :cond_0
    new-instance v1, Lcom/sonymobile/home/configuration/serializer/StageItemLocationSerializer;

    invoke-direct {v1}, Lcom/sonymobile/home/configuration/serializer/StageItemLocationSerializer;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/home/configuration/serializer/StageJsonSerializer;->mItemLocationSerializer:Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;

    move-object v0, p1

    .line 43
    check-cast v0, Lcom/sonymobile/home/configuration/StageConfig;

    .line 44
    .local v0, "stageConfig":Lcom/sonymobile/home/configuration/StageConfig;
    invoke-direct {p0, v0}, Lcom/sonymobile/home/configuration/serializer/StageJsonSerializer;->addAttributes(Lcom/sonymobile/home/configuration/StageConfig;)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/configuration/serializer/StageJsonSerializer;->addObjects(Lcom/sonymobile/home/configuration/Config;)V

    .line 46
    iget-object v1, p0, Lcom/sonymobile/home/configuration/serializer/StageJsonSerializer;->mLayerJson:Lorg/json/JSONObject;

    return-object v1
.end method
