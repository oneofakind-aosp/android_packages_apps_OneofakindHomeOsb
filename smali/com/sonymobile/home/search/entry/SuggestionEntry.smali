.class public Lcom/sonymobile/home/search/entry/SuggestionEntry;
.super Lcom/sonymobile/home/search/entry/SearchEntry;
.source "SuggestionEntry.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mGenre:Ljava/lang/String;

.field private mIcon:Landroid/graphics/Bitmap;

.field private final mIconUrl:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mRating:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/sonymobile/home/search/entry/SuggestionEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/search/entry/SuggestionEntry;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/sonymobile/home/search/entry/SearchEntry$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "entryType"    # Lcom/sonymobile/home/search/entry/SearchEntry$Type;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "iconUrl"    # Ljava/lang/String;

    .prologue
    .line 63
    const-string v3, ""

    const-string v5, ""

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/home/search/entry/SuggestionEntry;-><init>(Lcom/sonymobile/home/search/entry/SearchEntry$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 64
    return-void
.end method

.method private constructor <init>(Lcom/sonymobile/home/search/entry/SearchEntry$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0
    .param p1, "entryType"    # Lcom/sonymobile/home/search/entry/SearchEntry$Type;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "genre"    # Ljava/lang/String;
    .param p4, "iconUrl"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "rating"    # D

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/search/entry/SearchEntry;-><init>(Lcom/sonymobile/home/search/entry/SearchEntry$Type;Ljava/lang/String;)V

    .line 35
    iput-object p3, p0, Lcom/sonymobile/home/search/entry/SuggestionEntry;->mGenre:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/sonymobile/home/search/entry/SuggestionEntry;->mIconUrl:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/sonymobile/home/search/entry/SuggestionEntry;->mPackageName:Ljava/lang/String;

    .line 38
    iput-wide p6, p0, Lcom/sonymobile/home/search/entry/SuggestionEntry;->mRating:D

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 9
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "genre"    # Ljava/lang/String;
    .param p3, "iconUrl"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "rating"    # D

    .prologue
    .line 52
    sget-object v1, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->ONLINE_SEARCH_RESULT:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/home/search/entry/SuggestionEntry;-><init>(Lcom/sonymobile/home/search/entry/SearchEntry$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 53
    return-void
.end method

.method public static formatQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonymobile/home/search/entry/SuggestionEntry;->mGenre:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/home/search/entry/SuggestionEntry;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/home/search/entry/SuggestionEntry;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonymobile/home/search/entry/SuggestionEntry;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()D
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/sonymobile/home/search/entry/SuggestionEntry;->mRating:D

    return-wide v0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sonymobile/home/search/entry/SuggestionEntry;->mIcon:Landroid/graphics/Bitmap;

    .line 84
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 96
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 99
    .local v1, "entry":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "genre"

    iget-object v5, p0, Lcom/sonymobile/home/search/entry/SuggestionEntry;->mGenre:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v4, "rating"

    iget-wide v6, p0, Lcom/sonymobile/home/search/entry/SuggestionEntry;->mRating:D

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 101
    const-string v4, "packageName"

    iget-object v5, p0, Lcom/sonymobile/home/search/entry/SuggestionEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v4, "title"

    invoke-virtual {p0}, Lcom/sonymobile/home/search/entry/SuggestionEntry;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 106
    .local v3, "links":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 107
    .local v2, "iconUrl":Lorg/json/JSONObject;
    const-string v4, "rel"

    const-string v5, "iconUrl"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v4, "href"

    iget-object v5, p0, Lcom/sonymobile/home/search/entry/SuggestionEntry;->mIconUrl:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 111
    const-string v4, "links"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v2    # "iconUrl":Lorg/json/JSONObject;
    .end local v3    # "links":Lorg/json/JSONArray;
    :goto_0
    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/sonymobile/home/search/entry/SuggestionEntry;->TAG:Ljava/lang/String;

    const-string v5, "Couldn\'t parse search entry"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
