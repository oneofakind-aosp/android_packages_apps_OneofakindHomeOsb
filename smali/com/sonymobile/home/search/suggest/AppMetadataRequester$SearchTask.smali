.class Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;
.super Landroid/os/AsyncTask;
.source "AppMetadataRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/search/suggest/AppMetadataRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/sonymobile/home/search/entry/SuggestionEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;

.field private final mContext:Landroid/content/Context;

.field private final mIncludeGenres:Z

.field private final mIncludeLocation:Z

.field private final mMaxAmountOfRecommendations:I

.field private final mPage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZZLcom/sonymobile/home/search/suggest/SuggestionRequestCallback;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxAmountOfRecommendations"    # I
    .param p3, "includeLocation"    # Z
    .param p4, "includeGenres"    # Z
    .param p5, "callback"    # Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;
    .param p6, "page"    # I

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->mContext:Landroid/content/Context;

    .line 151
    iput-boolean p3, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->mIncludeLocation:Z

    .line 152
    iput-boolean p4, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->mIncludeGenres:Z

    .line 153
    iput-object p5, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->mCallback:Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;

    .line 154
    iput p6, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->mPage:I

    .line 155
    iput p2, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->mMaxAmountOfRecommendations:I

    .line 156
    return-void
.end method

.method private fetch(Lcom/sonymobile/home/search/suggest/AppMetadataQuery;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "query"    # Lcom/sonymobile/home/search/suggest/AppMetadataQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/search/suggest/AppMetadataQuery;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/search/entry/SuggestionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "connection":Ljavax/net/ssl/HttpsURLConnection;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/sonymobile/home/search/suggest/AppMetadataQuery;->build()Ljava/net/URL;

    move-result-object v3

    .line 191
    .local v3, "url":Ljava/net/URL;
    invoke-direct {p0, v3}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->setupConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 193
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 194
    invoke-direct {p0, v0}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->readData(Ljavax/net/ssl/HttpsURLConnection;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_0
    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 203
    .end local v3    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    return-object v2

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {v1}, Lcom/sonymobile/home/statistics/TrackingUtil;->trackException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_0

    .line 199
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 200
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_2
    throw v4
.end method

.method private getFetchCount()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->mMaxAmountOfRecommendations:I

    invoke-static {v0}, Lcom/sonymobile/home/search/suggest/ApiConstants;->getNumberOfRecommendationsToFetch(I)I

    move-result v0

    return v0
.end method

.method private getQuery(Landroid/content/Context;ZZ)Lcom/sonymobile/home/search/suggest/AppMetadataQuery;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "includeLocation"    # Z
    .param p3, "includeGenres"    # Z

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->getFetchCount()I

    move-result v0

    .line 275
    .local v0, "fetchCount":I
    new-instance v4, Lcom/sonymobile/home/search/suggest/AppMetadataQuery;

    const-string v5, "recommend"

    invoke-direct {v4, v5}, Lcom/sonymobile/home/search/suggest/AppMetadataQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/sonymobile/home/search/suggest/AppMetadataQuery;->maxHits(I)Lcom/sonymobile/home/search/suggest/AppMetadataQuery;

    move-result-object v3

    .line 278
    .local v3, "query":Lcom/sonymobile/home/search/suggest/AppMetadataQuery;
    if-eqz p3, :cond_0

    .line 279
    invoke-static {p1}, Lcom/sonymobile/home/storage/StorageManager;->getGenreManager(Landroid/content/Context;)Lcom/sonymobile/home/search/suggest/PopularGenreManager;

    move-result-object v1

    .line 280
    .local v1, "genreStorage":Lcom/sonymobile/home/search/suggest/PopularGenreManager;
    invoke-virtual {v1}, Lcom/sonymobile/home/search/suggest/PopularGenreManager;->get()Ljava/util/List;

    move-result-object v2

    .line 281
    .local v2, "genres":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 282
    invoke-virtual {v3, v2}, Lcom/sonymobile/home/search/suggest/AppMetadataQuery;->addGenres(Ljava/util/List;)Lcom/sonymobile/home/search/suggest/AppMetadataQuery;

    .line 286
    .end local v1    # "genreStorage":Lcom/sonymobile/home/search/suggest/PopularGenreManager;
    .end local v2    # "genres":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    if-eqz p2, :cond_1

    .line 287
    invoke-virtual {v3, p1}, Lcom/sonymobile/home/search/suggest/AppMetadataQuery;->addLocation(Landroid/content/Context;)Lcom/sonymobile/home/search/suggest/AppMetadataQuery;

    .line 290
    :cond_1
    return-object v3
.end method

.method private readData(Ljavax/net/ssl/HttpsURLConnection;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "connection"    # Ljavax/net/ssl/HttpsURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/HttpsURLConnection;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/search/entry/SuggestionEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .local v3, "stream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 212
    :try_start_0
    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 214
    invoke-static {v2}, Lcom/sonymobile/home/search/suggest/AppMetadataParser;->parse(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 215
    .local v1, "parsedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    iget-object v5, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->filterInstalledApps(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 217
    .end local v1    # "parsedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v6, :cond_2

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 218
    :cond_1
    :goto_0
    return-object v0

    .line 217
    :catch_0
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 210
    .end local v2    # "result":Ljava/lang/String;
    :catch_1
    move-exception v5

    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    :catchall_0
    move-exception v6

    move-object v7, v6

    move-object v6, v5

    move-object v5, v7

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v6, :cond_4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    throw v5

    :catch_2
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v5

    goto :goto_1
.end method

.method private setupConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 240
    .local v0, "connection":Ljavax/net/ssl/HttpsURLConnection;
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 241
    const-string v1, "Accept-Language"

    const-string v2, "en_US"

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "Api-Key"

    # getter for: Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->REQUEST_PROPERTY_API_KEY_VALUE:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    # getter for: Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->TIMEOUT:I
    invoke-static {}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->access$200()I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 246
    # getter for: Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->TIMEOUT:I
    invoke-static {}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->access$200()I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 248
    return-object v0
.end method

.method private updateQueryPage(Lcom/sonymobile/home/search/suggest/AppMetadataQuery;I)Lcom/sonymobile/home/search/suggest/AppMetadataQuery;
    .locals 1
    .param p1, "query"    # Lcom/sonymobile/home/search/suggest/AppMetadataQuery;
    .param p2, "page"    # I

    .prologue
    .line 259
    invoke-virtual {p1, p2}, Lcom/sonymobile/home/search/suggest/AppMetadataQuery;->setPage(I)Lcom/sonymobile/home/search/suggest/AppMetadataQuery;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 137
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/search/entry/SuggestionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    iget v1, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->mPage:I

    .line 163
    .local v1, "page":I
    iget-object v3, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->mIncludeLocation:Z

    iget-boolean v5, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->mIncludeGenres:Z

    invoke-direct {p0, v3, v4, v5}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->getQuery(Landroid/content/Context;ZZ)Lcom/sonymobile/home/search/suggest/AppMetadataQuery;

    move-result-object v2

    .line 166
    .local v2, "query":Lcom/sonymobile/home/search/suggest/AppMetadataQuery;
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->mMaxAmountOfRecommendations:I

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    .line 168
    invoke-direct {p0, v2, v1}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->updateQueryPage(Lcom/sonymobile/home/search/suggest/AppMetadataQuery;I)Lcom/sonymobile/home/search/suggest/AppMetadataQuery;

    .line 170
    invoke-direct {p0, v2}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->fetch(Lcom/sonymobile/home/search/suggest/AppMetadataQuery;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->mMaxAmountOfRecommendations:I

    if-le v3, v4, :cond_1

    .line 176
    iget v3, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->mMaxAmountOfRecommendations:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 179
    :cond_1
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 137
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/search/entry/SuggestionEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "searchEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    invoke-virtual {p0}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->mCallback:Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;

    invoke-interface {v0, p1}, Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;->onSuggestionRequestCompleted(Ljava/util/List;)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->mCallback:Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;->onSuggestionRequestCompleted(Ljava/util/List;)V

    goto :goto_0
.end method
