.class public Lcom/sonymobile/home/configuration/serializer/AdvWidgetJsonSerializer;
.super Lcom/sonymobile/home/configuration/serializer/WidgetJsonSerializer;
.source "AdvWidgetJsonSerializer.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLocationSerializable"    # Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/configuration/serializer/WidgetJsonSerializer;-><init>(Landroid/content/Context;Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;)V

    .line 21
    return-void
.end method


# virtual methods
.method public addAttributes(Lcom/sonymobile/home/data/Item;)V
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/configuration/serializer/AdvWidgetJsonSerializer;->addComponent(Lcom/sonymobile/home/data/Item;)V

    .line 26
    iget-object v0, p0, Lcom/sonymobile/home/configuration/serializer/AdvWidgetJsonSerializer;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "item_uuid"

    check-cast p1, Lcom/sonymobile/home/data/AdvWidgetItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {p1}, Lcom/sonymobile/home/data/AdvWidgetItem;->getId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    return-void
.end method
