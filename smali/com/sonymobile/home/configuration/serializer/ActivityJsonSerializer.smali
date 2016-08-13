.class public Lcom/sonymobile/home/configuration/serializer/ActivityJsonSerializer;
.super Lcom/sonymobile/home/configuration/serializer/ItemSerializer;
.source "ActivityJsonSerializer.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLocationSerializable"    # Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/configuration/serializer/ItemSerializer;-><init>(Landroid/content/Context;Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;)V

    .line 21
    return-void
.end method


# virtual methods
.method public addAttributes(Lcom/sonymobile/home/data/Item;)V
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 25
    instance-of v0, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/sonymobile/home/configuration/serializer/ActivityJsonSerializer;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "intent"

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    :cond_0
    return-void
.end method
