.class public Lcom/sonymobile/home/configuration/serializer/ShortcutJsonSerializer;
.super Lcom/sonymobile/home/configuration/serializer/ItemSerializer;
.source "ShortcutJsonSerializer.java"


# instance fields
.field private final mContentProviderUri:Landroid/net/Uri;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;Landroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLocationSerializable"    # Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;
    .param p3, "contentProviderUri"    # Landroid/net/Uri;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/configuration/serializer/ItemSerializer;-><init>(Landroid/content/Context;Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;)V

    .line 28
    iput-object p3, p0, Lcom/sonymobile/home/configuration/serializer/ShortcutJsonSerializer;->mContentProviderUri:Landroid/net/Uri;

    .line 29
    return-void
.end method

.method private pushIconBlob(Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 5
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v3, p0, Lcom/sonymobile/home/configuration/serializer/ShortcutJsonSerializer;->mContentProviderUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 56
    new-instance v3, Lorg/json/JSONException;

    const-string v4, "Missing content provider needed to serialize shortcut icon bitmap"

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 59
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v3, "icon"

    invoke-static {p1}, Lcom/sonymobile/home/bitmap/BitmapUtils;->convertBitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 61
    iget-object v3, p0, Lcom/sonymobile/home/configuration/serializer/ShortcutJsonSerializer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 62
    .local v1, "cr":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/sonymobile/home/configuration/serializer/ShortcutJsonSerializer;->mContentProviderUri:Landroid/net/Uri;

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 63
    .local v2, "iconUri":Landroid/net/Uri;
    return-object v2
.end method


# virtual methods
.method public addAttributes(Lcom/sonymobile/home/data/Item;)V
    .locals 8
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 33
    instance-of v4, p1, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 34
    check-cast v3, Lcom/sonymobile/home/data/ShortcutItem;

    .line 35
    .local v3, "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    iget-object v4, p0, Lcom/sonymobile/home/configuration/serializer/ShortcutJsonSerializer;->mJsonObject:Lorg/json/JSONObject;

    const-string v5, "name"

    invoke-virtual {v3}, Lcom/sonymobile/home/data/ShortcutItem;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    iget-object v4, p0, Lcom/sonymobile/home/configuration/serializer/ShortcutJsonSerializer;->mJsonObject:Lorg/json/JSONObject;

    const-string v5, "intent"

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    invoke-virtual {v3}, Lcom/sonymobile/home/data/ShortcutItem;->getIconResourceName()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "iconResourceName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 40
    iget-object v4, p0, Lcom/sonymobile/home/configuration/serializer/ShortcutJsonSerializer;->mJsonObject:Lorg/json/JSONObject;

    const-string v5, "icon_resource"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    .end local v1    # "iconResourceName":Ljava/lang/String;
    .end local v3    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    :cond_0
    :goto_0
    return-void

    .line 42
    .restart local v1    # "iconResourceName":Ljava/lang/String;
    .restart local v3    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    :cond_1
    invoke-virtual {v3}, Lcom/sonymobile/home/data/ShortcutItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 43
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0, v0}, Lcom/sonymobile/home/configuration/serializer/ShortcutJsonSerializer;->pushIconBlob(Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v2

    .line 46
    .local v2, "iconUri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 47
    iget-object v4, p0, Lcom/sonymobile/home/configuration/serializer/ShortcutJsonSerializer;->mJsonObject:Lorg/json/JSONObject;

    const-string v5, "image"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method
