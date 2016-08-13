.class public abstract Lcom/sonymobile/home/configuration/serializer/WidgetJsonSerializer;
.super Lcom/sonymobile/home/configuration/serializer/ItemSerializer;
.source "WidgetJsonSerializer.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLocationSerializable"    # Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/configuration/serializer/ItemSerializer;-><init>(Landroid/content/Context;Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected addComponent(Lcom/sonymobile/home/data/Item;)V
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 34
    .local v1, "widgetComponent":Landroid/content/ComponentName;
    instance-of v3, p1, Lcom/sonymobile/home/data/WidgetItem;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 35
    check-cast v2, Lcom/sonymobile/home/data/WidgetItem;

    .line 36
    .local v2, "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    new-instance v1, Landroid/content/ComponentName;

    .end local v1    # "widgetComponent":Landroid/content/ComponentName;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/WidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sonymobile/home/data/WidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .end local v2    # "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    .restart local v1    # "widgetComponent":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 44
    new-instance v3, Lorg/json/JSONException;

    const-string v4, "Adding widget component failed"

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 38
    :cond_1
    instance-of v3, p1, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 39
    check-cast v0, Lcom/sonymobile/home/data/AdvWidgetItem;

    .line 40
    .local v0, "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    new-instance v1, Landroid/content/ComponentName;

    .end local v1    # "widgetComponent":Landroid/content/ComponentName;
    invoke-virtual {v0}, Lcom/sonymobile/home/data/AdvWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonymobile/home/data/AdvWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "widgetComponent":Landroid/content/ComponentName;
    goto :goto_0

    .line 46
    .end local v0    # "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/home/configuration/serializer/WidgetJsonSerializer;->mJsonObject:Lorg/json/JSONObject;

    const-string v4, "component"

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    return-void
.end method
