.class public Lcom/sonymobile/home/configuration/serializer/FolderJsonSerializer;
.super Lcom/sonymobile/home/configuration/serializer/ItemSerializer;
.source "FolderJsonSerializer.java"


# instance fields
.field private final mContentProviderUri:Landroid/net/Uri;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;Landroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLocationSerializable"    # Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;
    .param p3, "contentProviderUri"    # Landroid/net/Uri;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/configuration/serializer/ItemSerializer;-><init>(Landroid/content/Context;Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;)V

    .line 27
    iput-object p3, p0, Lcom/sonymobile/home/configuration/serializer/FolderJsonSerializer;->mContentProviderUri:Landroid/net/Uri;

    .line 28
    return-void
.end method

.method private addIcon(Lcom/sonymobile/home/data/FolderItem;Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;Lorg/json/JSONArray;)V
    .locals 3
    .param p1, "folderItem"    # Lcom/sonymobile/home/data/FolderItem;
    .param p2, "layerJsonSerializer"    # Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;
    .param p3, "jsonIcons"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/sonymobile/home/data/FolderItem;->getTemporaryItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 52
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    instance-of v2, v1, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v2, :cond_1

    .line 53
    invoke-virtual {p2, p3, v1}, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->addActivity(Lorg/json/JSONArray;Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 54
    :cond_1
    instance-of v2, v1, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {p2, p3, v1}, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->addShortcut(Lorg/json/JSONArray;Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 58
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_2
    return-void
.end method

.method private addIconsArray(Lcom/sonymobile/home/data/FolderItem;)V
    .locals 4
    .param p1, "folderItem"    # Lcom/sonymobile/home/data/FolderItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 44
    .local v1, "jsonIcons":Lorg/json/JSONArray;
    new-instance v0, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;

    iget-object v2, p0, Lcom/sonymobile/home/configuration/serializer/FolderJsonSerializer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/home/configuration/serializer/FolderJsonSerializer;->mContentProviderUri:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 45
    .local v0, "desktopJsonSerializer":Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;
    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/home/configuration/serializer/FolderJsonSerializer;->addIcon(Lcom/sonymobile/home/data/FolderItem;Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;Lorg/json/JSONArray;)V

    .line 46
    iget-object v2, p0, Lcom/sonymobile/home/configuration/serializer/FolderJsonSerializer;->mJsonObject:Lorg/json/JSONObject;

    const-string v3, "icons"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
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
    .line 32
    instance-of v1, p1, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 33
    check-cast v0, Lcom/sonymobile/home/data/FolderItem;

    .line 34
    .local v0, "folderItem":Lcom/sonymobile/home/data/FolderItem;
    iget-object v1, p0, Lcom/sonymobile/home/configuration/serializer/FolderJsonSerializer;->mJsonObject:Lorg/json/JSONObject;

    const-string v2, "name"

    invoke-virtual {v0}, Lcom/sonymobile/home/data/FolderItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    invoke-direct {p0, v0}, Lcom/sonymobile/home/configuration/serializer/FolderJsonSerializer;->addIconsArray(Lcom/sonymobile/home/data/FolderItem;)V

    .line 38
    .end local v0    # "folderItem":Lcom/sonymobile/home/data/FolderItem;
    :cond_0
    return-void
.end method
