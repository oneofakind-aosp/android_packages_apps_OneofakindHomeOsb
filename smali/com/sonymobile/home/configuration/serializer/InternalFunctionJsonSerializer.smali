.class public Lcom/sonymobile/home/configuration/serializer/InternalFunctionJsonSerializer;
.super Lcom/sonymobile/home/configuration/serializer/ItemSerializer;
.source "InternalFunctionJsonSerializer.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLocationSerializable"    # Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/configuration/serializer/ItemSerializer;-><init>(Landroid/content/Context;Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;)V

    .line 25
    return-void
.end method

.method public static getInternalFunctionTypeFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "type":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v1, "com.sonymobile.home.INTERNAL_FUNCTION"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "type"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_0
    return-object v0
.end method

.method public static isInternalFunction(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    invoke-static {p0}, Lcom/sonymobile/home/configuration/serializer/InternalFunctionJsonSerializer;->getInternalFunctionTypeFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/home/data/InternalFunctionItem;->isTypeSupported(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public addAttributes(Lcom/sonymobile/home/data/Item;)V
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 55
    instance-of v1, p1, Lcom/sonymobile/home/data/InternalFunctionItem;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 56
    check-cast v0, Lcom/sonymobile/home/data/InternalFunctionItem;

    .line 57
    .local v0, "internalFunctionItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    iget-object v1, p0, Lcom/sonymobile/home/configuration/serializer/InternalFunctionJsonSerializer;->mJsonObject:Lorg/json/JSONObject;

    const-string v2, "intent"

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sonymobile.home.INTERNAL_FUNCTION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "type"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/InternalFunctionItem;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .end local v0    # "internalFunctionItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    :cond_0
    return-void
.end method
