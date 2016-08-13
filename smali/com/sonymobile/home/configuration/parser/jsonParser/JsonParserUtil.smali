.class public Lcom/sonymobile/home/configuration/parser/jsonParser/JsonParserUtil;
.super Ljava/lang/Object;
.source "JsonParserUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sonymobile/home/configuration/parser/jsonParser/JsonParserUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/configuration/parser/jsonParser/JsonParserUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGroup(Ljava/lang/String;Lcom/sonymobile/home/configuration/Layers;Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;)Lorg/json/JSONArray;
    .locals 7
    .param p0, "config"    # Ljava/lang/String;
    .param p1, "layer"    # Lcom/sonymobile/home/configuration/Layers;
    .param p2, "group"    # Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 54
    .local v1, "jsonGroup":Lorg/json/JSONArray;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lcom/sonymobile/home/configuration/Layers;->getLayer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 56
    .local v2, "jsonLayer":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {p2}, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 63
    .end local v2    # "jsonLayer":Lorg/json/JSONObject;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/sonymobile/home/configuration/parser/jsonParser/JsonParserUtil;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-static {v0, v4, v5}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected static getLayer(Ljava/lang/String;Lcom/sonymobile/home/configuration/Layers;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "config"    # Ljava/lang/String;
    .param p1, "layer"    # Lcom/sonymobile/home/configuration/Layers;

    .prologue
    .line 30
    const/4 v1, 0x0

    .line 31
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 33
    .local v0, "jsonLayer":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {p1}, Lcom/sonymobile/home/configuration/Layers;->getLayer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v1, v2

    .line 40
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 35
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0
.end method
