.class public Lcom/sonymobile/home/configuration/parser/jsonParser/StageItemLocationJsonParser;
.super Lcom/sonymobile/home/configuration/parser/jsonParser/ItemLocationJsonParser;
.source "StageItemLocationJsonParser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/sonymobile/home/configuration/parser/jsonParser/StageItemLocationJsonParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/configuration/parser/jsonParser/StageItemLocationJsonParser;->TAG:Ljava/lang/String;

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
    .locals 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "layer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 23
    const/4 v1, 0x0

    .line 25
    .local v1, "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    :try_start_0
    const-string v4, "position"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 26
    .local v3, "position":I
    new-instance v2, Lcom/sonymobile/home/data/ItemLocation;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    .local v2, "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    move-object v1, v2

    .line 30
    .end local v2    # "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    .end local v3    # "position":I
    .restart local v1    # "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    :goto_0
    return-object v1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/sonymobile/home/configuration/parser/jsonParser/StageItemLocationJsonParser;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {v0, v4, v5}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
