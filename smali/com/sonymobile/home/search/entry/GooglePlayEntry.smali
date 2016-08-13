.class public Lcom/sonymobile/home/search/entry/GooglePlayEntry;
.super Lcom/sonymobile/home/search/entry/SearchEntry;
.source "GooglePlayEntry.java"


# instance fields
.field private mIsVisible:Z

.field private mSearchText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 27
    sget-object v0, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->SEARCH_ON_GOOGLE_PLAY_BUTTON:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/home/search/entry/SearchEntry;-><init>(Lcom/sonymobile/home/search/entry/SearchEntry$Type;Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/search/entry/GooglePlayEntry;->mIsVisible:Z

    .line 28
    return-void
.end method

.method public static formatQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "searchText"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "search?q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&c=apps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/home/search/entry/GooglePlayEntry;->mSearchText:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonymobile/home/search/entry/GooglePlayEntry;->formatQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/search/entry/GooglePlayEntry;->mSearchText:Ljava/lang/String;

    return-object v0
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/search/entry/GooglePlayEntry;->mSearchText:Ljava/lang/String;

    .line 46
    return-void
.end method
