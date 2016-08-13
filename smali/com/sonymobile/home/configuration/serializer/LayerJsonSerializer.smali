.class public abstract Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;
.super Ljava/lang/Object;
.source "LayerJsonSerializer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContentProviderUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field protected mItemLocationSerializer:Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;

.field protected final mLayerJson:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentProviderUri"    # Landroid/net/Uri;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->mLayerJson:Lorg/json/JSONObject;

    .line 34
    iput-object p2, p0, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->mContentProviderUri:Landroid/net/Uri;

    .line 35
    return-void
.end method


# virtual methods
.method protected addActivity(Lorg/json/JSONArray;Lcom/sonymobile/home/data/Item;)V
    .locals 4
    .param p1, "jsonIcons"    # Lorg/json/JSONArray;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/sonymobile/home/configuration/serializer/ActivityJsonSerializer;

    iget-object v2, p0, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->mItemLocationSerializer:Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;

    invoke-direct {v0, v2, v3}, Lcom/sonymobile/home/configuration/serializer/ActivityJsonSerializer;-><init>(Landroid/content/Context;Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;)V

    .line 57
    .local v0, "activityJsonSerializer":Lcom/sonymobile/home/configuration/serializer/ActivityJsonSerializer;
    invoke-virtual {v0, p2}, Lcom/sonymobile/home/configuration/serializer/ActivityJsonSerializer;->createObject(Lcom/sonymobile/home/data/Item;)Lorg/json/JSONObject;

    move-result-object v1

    .line 58
    .local v1, "jsonIcon":Lorg/json/JSONObject;
    invoke-virtual {p0, p1, v1}, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->addJsonObjectToArray(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    .line 59
    return-void
.end method

.method protected addAdvWidget(Lorg/json/JSONArray;Lcom/sonymobile/home/data/Item;)V
    .locals 4
    .param p1, "jsonAdvWidgets"    # Lorg/json/JSONArray;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/sonymobile/home/configuration/serializer/AdvWidgetJsonSerializer;

    iget-object v2, p0, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->mItemLocationSerializer:Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;

    invoke-direct {v0, v2, v3}, Lcom/sonymobile/home/configuration/serializer/AdvWidgetJsonSerializer;-><init>(Landroid/content/Context;Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;)V

    .line 45
    .local v0, "advWidgetJsonSerializer":Lcom/sonymobile/home/configuration/serializer/AdvWidgetJsonSerializer;
    invoke-virtual {v0, p2}, Lcom/sonymobile/home/configuration/serializer/AdvWidgetJsonSerializer;->createObject(Lcom/sonymobile/home/data/Item;)Lorg/json/JSONObject;

    move-result-object v1

    .line 46
    .local v1, "jsonAdvWidget":Lorg/json/JSONObject;
    invoke-virtual {p0, p1, v1}, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->addJsonObjectToArray(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    .line 47
    return-void
.end method

.method protected varargs addArrays([Landroid/util/Pair;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair",
            "<",
            "Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;",
            "Lorg/json/JSONArray;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "pairs":[Landroid/util/Pair;, "[Landroid/util/Pair<Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;Lorg/json/JSONArray;>;"
    move-object v0, p1

    .local v0, "arr$":[Landroid/util/Pair;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 76
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;Lorg/json/JSONArray;>;"
    iget-object v5, p0, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->mLayerJson:Lorg/json/JSONObject;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    invoke-virtual {v4}, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->getGroup()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;Lorg/json/JSONArray;>;"
    :cond_0
    return-void
.end method

.method protected addFolder(Lorg/json/JSONArray;Lcom/sonymobile/home/data/Item;)V
    .locals 5
    .param p1, "jsonFolders"    # Lorg/json/JSONArray;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/sonymobile/home/configuration/serializer/FolderJsonSerializer;

    iget-object v2, p0, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->mItemLocationSerializer:Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;

    iget-object v4, p0, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->mContentProviderUri:Landroid/net/Uri;

    invoke-direct {v0, v2, v3, v4}, Lcom/sonymobile/home/configuration/serializer/FolderJsonSerializer;-><init>(Landroid/content/Context;Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;Landroid/net/Uri;)V

    .line 39
    .local v0, "folderJsonSerializer":Lcom/sonymobile/home/configuration/serializer/FolderJsonSerializer;
    invoke-virtual {v0, p2}, Lcom/sonymobile/home/configuration/serializer/FolderJsonSerializer;->createObject(Lcom/sonymobile/home/data/Item;)Lorg/json/JSONObject;

    move-result-object v1

    .line 40
    .local v1, "jsonFolder":Lorg/json/JSONObject;
    invoke-virtual {p0, p1, v1}, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->addJsonObjectToArray(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    .line 41
    return-void
.end method

.method protected addInternalFunction(Lorg/json/JSONArray;Lcom/sonymobile/home/data/Item;)V
    .locals 4
    .param p1, "jsonIcons"    # Lorg/json/JSONArray;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/sonymobile/home/configuration/serializer/InternalFunctionJsonSerializer;

    iget-object v2, p0, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->mItemLocationSerializer:Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;

    invoke-direct {v0, v2, v3}, Lcom/sonymobile/home/configuration/serializer/InternalFunctionJsonSerializer;-><init>(Landroid/content/Context;Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;)V

    .line 70
    .local v0, "internalFunctionJsonSerializer":Lcom/sonymobile/home/configuration/serializer/InternalFunctionJsonSerializer;
    invoke-virtual {v0, p2}, Lcom/sonymobile/home/configuration/serializer/InternalFunctionJsonSerializer;->createObject(Lcom/sonymobile/home/data/Item;)Lorg/json/JSONObject;

    move-result-object v1

    .line 71
    .local v1, "jsonIcon":Lorg/json/JSONObject;
    invoke-virtual {p0, p1, v1}, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->addJsonObjectToArray(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    .line 72
    return-void
.end method

.method protected addJsonObjectToArray(Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 81
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 82
    return-void
.end method

.method protected addShortcut(Lorg/json/JSONArray;Lcom/sonymobile/home/data/Item;)V
    .locals 5
    .param p1, "jsonIcons"    # Lorg/json/JSONArray;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v1, Lcom/sonymobile/home/configuration/serializer/ShortcutJsonSerializer;

    iget-object v2, p0, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->mItemLocationSerializer:Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;

    iget-object v4, p0, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->mContentProviderUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3, v4}, Lcom/sonymobile/home/configuration/serializer/ShortcutJsonSerializer;-><init>(Landroid/content/Context;Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;Landroid/net/Uri;)V

    .line 63
    .local v1, "shortcutJsonSerializer":Lcom/sonymobile/home/configuration/serializer/ShortcutJsonSerializer;
    invoke-virtual {v1, p2}, Lcom/sonymobile/home/configuration/serializer/ShortcutJsonSerializer;->createObject(Lcom/sonymobile/home/data/Item;)Lorg/json/JSONObject;

    move-result-object v0

    .line 64
    .local v0, "jsonIcon":Lorg/json/JSONObject;
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->addJsonObjectToArray(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    .line 65
    return-void
.end method

.method protected addWidget(Lorg/json/JSONArray;Lcom/sonymobile/home/data/Item;)V
    .locals 4
    .param p1, "jsonWidgets"    # Lorg/json/JSONArray;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v1, Lcom/sonymobile/home/configuration/serializer/AndroidWidgetJsonSerializer;

    iget-object v2, p0, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->mItemLocationSerializer:Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/home/configuration/serializer/AndroidWidgetJsonSerializer;-><init>(Landroid/content/Context;Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;)V

    .line 51
    .local v1, "widgetJsonSerializer":Lcom/sonymobile/home/configuration/serializer/AndroidWidgetJsonSerializer;
    invoke-virtual {v1, p2}, Lcom/sonymobile/home/configuration/serializer/AndroidWidgetJsonSerializer;->createObject(Lcom/sonymobile/home/data/Item;)Lorg/json/JSONObject;

    move-result-object v0

    .line 52
    .local v0, "jsonWidget":Lorg/json/JSONObject;
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/home/configuration/serializer/LayerJsonSerializer;->addJsonObjectToArray(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    .line 53
    return-void
.end method
