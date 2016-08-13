.class public Lcom/sonymobile/home/search/SearchResultAdapter;
.super Lcom/sonymobile/home/search/SearchAdapter;
.source "SearchResultAdapter.java"


# instance fields
.field private final mGooglePlayButtonLabel:Ljava/lang/String;

.field private mGooglePlayEntry:Lcom/sonymobile/home/search/entry/GooglePlayEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/sonymobile/home/settings/UserSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nbrOfColumns"    # I
    .param p3, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/search/SearchAdapter;-><init>(Landroid/content/Context;ILcom/sonymobile/home/settings/UserSettings;)V

    .line 36
    const v0, 0x7f080048

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchResultAdapter;->mGooglePlayButtonLabel:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private updateGooglePlayEntry(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchResultAdapter;->mGooglePlayButtonLabel:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchResultAdapter;->mGooglePlayEntry:Lcom/sonymobile/home/search/entry/GooglePlayEntry;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/sonymobile/home/search/entry/GooglePlayEntry;

    iget-object v2, p0, Lcom/sonymobile/home/search/SearchResultAdapter;->mGooglePlayButtonLabel:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/sonymobile/home/search/entry/GooglePlayEntry;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sonymobile/home/search/SearchResultAdapter;->mGooglePlayEntry:Lcom/sonymobile/home/search/entry/GooglePlayEntry;

    .line 69
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 70
    .local v0, "hasQuery":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 71
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchResultAdapter;->mGooglePlayEntry:Lcom/sonymobile/home/search/entry/GooglePlayEntry;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/search/entry/GooglePlayEntry;->setSearchText(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchResultAdapter;->mSearchEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    iget-object v2, p0, Lcom/sonymobile/home/search/SearchResultAdapter;->mGooglePlayEntry:Lcom/sonymobile/home/search/entry/GooglePlayEntry;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/search/SearchEntryContainer;->add(Lcom/sonymobile/home/search/entry/SearchEntry;)V

    .line 75
    .end local v0    # "hasQuery":Z
    :cond_1
    return-void

    .line 69
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getGooglePlayQuery()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, "query":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchResultAdapter;->mGooglePlayEntry:Lcom/sonymobile/home/search/entry/GooglePlayEntry;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchResultAdapter;->mGooglePlayEntry:Lcom/sonymobile/home/search/entry/GooglePlayEntry;

    invoke-virtual {v1}, Lcom/sonymobile/home/search/entry/GooglePlayEntry;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_0
    return-object v0
.end method

.method public update(Ljava/lang/String;)V
    .locals 3
    .param p1, "queryText"    # Ljava/lang/String;

    .prologue
    .line 45
    move-object v0, p1

    .line 46
    .local v0, "query":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchResultAdapter;->mSearchEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v2}, Lcom/sonymobile/home/search/SearchEntryContainer;->clear()V

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 53
    invoke-static {v0}, Lcom/sonymobile/home/search/SearchAdapterHelper;->getSearchEntriesFromQuery(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 55
    .local v1, "querySearchEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/LocalSearchEntry;>;"
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchResultAdapter;->mSearchEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v2, v1}, Lcom/sonymobile/home/search/SearchEntryContainer;->addAll(Ljava/util/List;)V

    .line 58
    .end local v1    # "querySearchEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/LocalSearchEntry;>;"
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonymobile/home/search/SearchResultAdapter;->updateGooglePlayEntry(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchResultAdapter;->notifyDataSetChanged()V

    .line 61
    return-void
.end method
