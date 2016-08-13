.class public Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetItemLocationJsonParser;
.super Lcom/sonymobile/home/configuration/parser/jsonParser/ItemLocationJsonParser;
.source "WidgetItemLocationJsonParser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetItemLocationJsonParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetItemLocationJsonParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sonymobile/home/configuration/parser/jsonParser/ItemLocationJsonParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseItemLocation(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sonymobile/home/data/ItemLocation;
    .locals 11
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "layer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 25
    const/4 v7, 0x0

    .line 27
    .local v7, "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    :try_start_0
    const-string v8, "panel"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 28
    .local v1, "page":I
    const-string v8, "x"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 29
    .local v2, "x":I
    const-string v8, "y"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 30
    .local v3, "y":I
    const-string v8, "width"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 31
    .local v4, "width":I
    const-string v8, "height"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 32
    .local v5, "height":I
    new-instance v0, Lcom/sonymobile/home/data/ItemLocation;

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIII)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v1    # "page":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v7    # "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    .local v0, "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    :goto_0
    return-object v0

    .line 33
    .end local v0    # "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    .restart local v7    # "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    :catch_0
    move-exception v6

    .line 34
    .local v6, "e":Lorg/json/JSONException;
    sget-object v8, Lcom/sonymobile/home/configuration/parser/jsonParser/WidgetItemLocationJsonParser;->TAG:Ljava/lang/String;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-static {v6, v8, v9}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v7

    .end local v7    # "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    .restart local v0    # "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    goto :goto_0
.end method
