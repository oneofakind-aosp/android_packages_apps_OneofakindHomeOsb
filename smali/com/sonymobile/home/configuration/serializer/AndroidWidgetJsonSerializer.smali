.class public Lcom/sonymobile/home/configuration/serializer/AndroidWidgetJsonSerializer;
.super Lcom/sonymobile/home/configuration/serializer/WidgetJsonSerializer;
.source "AndroidWidgetJsonSerializer.java"


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
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/configuration/serializer/AndroidWidgetJsonSerializer;->addComponent(Lcom/sonymobile/home/data/Item;)V

    .line 26
    iget-object v0, p0, Lcom/sonymobile/home/configuration/serializer/AndroidWidgetJsonSerializer;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "item_id"

    check-cast p1, Lcom/sonymobile/home/data/WidgetItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    return-void
.end method
