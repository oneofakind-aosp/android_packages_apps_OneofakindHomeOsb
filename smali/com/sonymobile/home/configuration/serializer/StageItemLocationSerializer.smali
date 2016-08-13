.class public Lcom/sonymobile/home/configuration/serializer/StageItemLocationSerializer;
.super Ljava/lang/Object;
.source "StageItemLocationSerializer.java"

# interfaces
.implements Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addLocationAttributes(Lorg/json/JSONObject;Lcom/sonymobile/home/data/Item;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    .line 20
    .local v0, "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    const-string v1, "position"

    iget v2, v0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    return-void
.end method
