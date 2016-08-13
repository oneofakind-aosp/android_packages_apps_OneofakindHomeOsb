.class public Lcom/sonymobile/home/search/suggest/AppMetadataParser;
.super Ljava/lang/Object;
.source "AppMetadataParser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sonymobile/home/search/suggest/AppMetadataParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/search/suggest/AppMetadataParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSuggestionEntry(Lorg/json/JSONObject;)Lcom/sonymobile/home/search/entry/SuggestionEntry;
    .locals 12
    .param p0, "appEntry"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 74
    const-string v1, "links"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 76
    .local v9, "links":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .line 78
    .local v4, "iconUrl":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 79
    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 80
    .local v8, "link":Lorg/json/JSONObject;
    const-string v1, "rel"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 82
    .local v10, "relation":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :cond_0
    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 78
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :pswitch_0
    const-string v11, "iconUrl"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 84
    :pswitch_1
    const-string v1, "href"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    goto :goto_2

    .line 91
    .end local v8    # "link":Lorg/json/JSONObject;
    .end local v10    # "relation":Ljava/lang/String;
    :cond_1
    const-string v1, "genre"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "genre":Ljava/lang/String;
    const-string v1, "rating"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 93
    .local v6, "rating":D
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "title":Ljava/lang/String;
    const-string v1, "packageName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "packageName":Ljava/lang/String;
    new-instance v1, Lcom/sonymobile/home/search/entry/SuggestionEntry;

    invoke-direct/range {v1 .. v7}, Lcom/sonymobile/home/search/entry/SuggestionEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-object v1

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x61ad9236
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/search/entry/SuggestionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v4, "searchEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    .local v3, "responseObject":Lorg/json/JSONObject;
    const-string v6, "content"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 44
    .local v1, "contentArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 46
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 47
    .local v0, "appEntry":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/sonymobile/home/search/suggest/AppMetadataParser;->getSuggestionEntry(Lorg/json/JSONObject;)Lcom/sonymobile/home/search/entry/SuggestionEntry;

    move-result-object v5

    .line 49
    .local v5, "searchEntry":Lcom/sonymobile/home/search/entry/SuggestionEntry;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "appEntry":Lorg/json/JSONObject;
    .end local v1    # "contentArray":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "responseObject":Lorg/json/JSONObject;
    .end local v5    # "searchEntry":Lcom/sonymobile/home/search/entry/SuggestionEntry;
    :catch_0
    move-exception v6

    .line 56
    :cond_0
    return-object v4
.end method
