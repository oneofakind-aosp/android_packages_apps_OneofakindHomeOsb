.class public Lcom/sonymobile/home/search/SearchSuggestionsAdapter;
.super Lcom/sonymobile/home/search/SearchAdapter;
.source "SearchSuggestionsAdapter.java"

# interfaces
.implements Lcom/sonymobile/home/model/ModelObserver;
.implements Lcom/sonymobile/home/search/NotifyContainerChanged;


# instance fields
.field private mOnlineSuggestions:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

.field private final mSuggestionsModel:Lcom/sonymobile/home/search/SearchSuggestionsModel;

.field private mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/search/SearchSuggestionsModel;ILcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p3, "model"    # Lcom/sonymobile/home/search/SearchSuggestionsModel;
    .param p4, "nbrOfColumns"    # I
    .param p5, "loadedListener"    # Lcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;

    .prologue
    .line 58
    invoke-direct {p0, p1, p4, p2}, Lcom/sonymobile/home/search/SearchAdapter;-><init>(Landroid/content/Context;ILcom/sonymobile/home/settings/UserSettings;)V

    .line 59
    iput-object p3, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mSuggestionsModel:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    .line 60
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mSuggestionsModel:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->addModelObserver(Lcom/sonymobile/home/model/ModelObserver;)V

    .line 62
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->addSuggestionsHeader(Landroid/content/Context;)V

    .line 67
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mSuggestionsModel:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->updateLocalItems()V

    .line 71
    :cond_0
    invoke-virtual {p2}, Lcom/sonymobile/home/settings/UserSettings;->isOnlineSuggestionsFeatureOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-direct {p0, p1, p5}, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->initOnlineSuggestions(Landroid/content/Context;Lcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;)V

    .line 74
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/search/SearchSuggestionsAdapter;)Lcom/sonymobile/home/search/SearchSuggestionsModel;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchSuggestionsAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mSuggestionsModel:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    return-object v0
.end method

.method private addSuggestionsHeader(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 146
    const v3, 0x7f0800c7

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "title":Ljava/lang/String;
    const v3, 0x7f0800c8

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "subtitle":Ljava/lang/String;
    new-instance v1, Lcom/sonymobile/home/search/entry/HeadingEntry;

    sget-object v3, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->LOCAL_HEADING:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/sonymobile/home/search/entry/HeadingEntry;-><init>(Lcom/sonymobile/home/search/entry/SearchEntry$Type;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 150
    .local v1, "suggestionsHeader":Lcom/sonymobile/home/search/entry/HeadingEntry;
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mSearchEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v3, v4, v1}, Lcom/sonymobile/home/search/SearchEntryContainer;->add(ILcom/sonymobile/home/search/entry/SearchEntry;)V

    .line 151
    invoke-virtual {p0, v4}, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->notifyItemInserted(I)V

    .line 152
    return-void
.end method

.method private getLocalSuggestionStartIndex()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method private initOnlineSuggestions(Landroid/content/Context;Lcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loadedListener"    # Lcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;

    .prologue
    .line 79
    new-instance v0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/search/SearchSuggestionsAdapter$1;-><init>(Lcom/sonymobile/home/search/SearchSuggestionsAdapter;)V

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 86
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v0}, Lcom/sonymobile/home/settings/UserSettings;->isOnlineSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    iget-object v2, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mViewBinderFactory:Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;

    iget-object v3, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mSearchEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    iget-object v5, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    move-object v1, p1

    move-object v4, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;-><init>(Landroid/content/Context;Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;Lcom/sonymobile/home/search/SearchEntryContainer;Lcom/sonymobile/home/search/NotifyContainerChanged;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;)V

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mOnlineSuggestions:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mOnlineSuggestions:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    goto :goto_0
.end method

.method private updateLocalItems()V
    .locals 8

    .prologue
    .line 127
    iget-object v4, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mSearchEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    const/4 v6, 0x0

    sget-object v7, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->LOCAL_SEARCH_RESULT:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/search/SearchEntryContainer;->removeTypes([Lcom/sonymobile/home/search/entry/SearchEntry$Type;)V

    .line 128
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->getLocalSuggestionStartIndex()I

    move-result v1

    .line 129
    .local v1, "index":I
    iget-object v4, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mSuggestionsModel:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    invoke-virtual {v4}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->getAvailableItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 130
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    invoke-static {v2}, Lcom/sonymobile/home/search/SearchAdapterHelper;->getSearchEntry(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/search/entry/SearchEntry;

    move-result-object v3

    .line 131
    .local v3, "searchItem":Lcom/sonymobile/home/search/entry/SearchEntry;
    if-eqz v3, :cond_0

    .line 132
    iget-object v4, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mSearchEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v4, v1, v3}, Lcom/sonymobile/home/search/SearchEntryContainer;->add(ILcom/sonymobile/home/search/entry/SearchEntry;)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    .end local v3    # "searchItem":Lcom/sonymobile/home/search/entry/SearchEntry;
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->notifyDataSetChanged()V

    .line 138
    return-void
.end method


# virtual methods
.method public dataSetChanged()V
    .locals 0

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->notifyDataSetChanged()V

    .line 221
    return-void
.end method

.method public itemRangeInserted(II)V
    .locals 0
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .prologue
    .line 200
    if-lez p2, :cond_0

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->notifyItemRangeInserted(II)V

    .line 203
    :cond_0
    return-void
.end method

.method public itemRangeRemoved(II)V
    .locals 0
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .prologue
    .line 210
    if-lez p2, :cond_0

    .line 211
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->notifyItemRangeRemoved(II)V

    .line 213
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Lcom/sonymobile/home/search/SearchAdapter;->onDestroy()V

    .line 117
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mSuggestionsModel:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->removeModelObserver(Lcom/sonymobile/home/model/ModelObserver;)V

    .line 118
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mOnlineSuggestions:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mOnlineSuggestions:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->cleanUp()V

    .line 121
    :cond_0
    return-void
.end method

.method public onModelChanged()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->updateLocalItems()V

    .line 111
    return-void
.end method

.method public onModelItemChanged(Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 226
    return-void
.end method

.method public onModelOrderChanged()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public registerForModelChanges()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/settings/UserSettings;->addUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 97
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mSuggestionsModel:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v1}, Lcom/sonymobile/home/settings/UserSettings;->isOnlineSuggestionsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->setOnlineSuggestionsEnabled(Z)V

    .line 100
    :cond_0
    return-void
.end method

.method public reloadPersonalizedRecommendations(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mOnlineSuggestions:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mOnlineSuggestions:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->reloadPersonalizedRecommendations(Landroid/content/Context;)V

    .line 242
    :cond_0
    return-void
.end method

.method public unregisterForModelChanges()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/settings/UserSettings;->removeUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 106
    :cond_0
    return-void
.end method

.method public updateRecommendations(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mOnlineSuggestions:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mOnlineSuggestions:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->update(Landroid/content/Context;)V

    .line 253
    :cond_0
    return-void
.end method
