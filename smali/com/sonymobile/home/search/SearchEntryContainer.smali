.class public Lcom/sonymobile/home/search/SearchEntryContainer;
.super Ljava/lang/Object;
.source "SearchEntryContainer.java"


# instance fields
.field private final mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/search/entry/SearchEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchEntryContainer;->mEntries:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchEntryContainer;->mPackageMap:Ljava/util/Map;

    .line 40
    return-void
.end method

.method private updatePackageMap(Lcom/sonymobile/home/search/entry/SearchEntry;)V
    .locals 4
    .param p1, "entry"    # Lcom/sonymobile/home/search/entry/SearchEntry;

    .prologue
    .line 126
    instance-of v1, p1, Lcom/sonymobile/home/search/entry/SuggestionEntry;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 127
    check-cast v0, Lcom/sonymobile/home/search/entry/SuggestionEntry;

    .line 128
    .local v0, "onlineEntry":Lcom/sonymobile/home/search/entry/SuggestionEntry;
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchEntryContainer;->mPackageMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/entry/SuggestionEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/search/SearchEntryContainer;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .end local v0    # "onlineEntry":Lcom/sonymobile/home/search/entry/SuggestionEntry;
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILcom/sonymobile/home/search/entry/SearchEntry;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "entry"    # Lcom/sonymobile/home/search/entry/SearchEntry;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchEntryContainer;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 159
    invoke-direct {p0, p2}, Lcom/sonymobile/home/search/SearchEntryContainer;->updatePackageMap(Lcom/sonymobile/home/search/entry/SearchEntry;)V

    .line 160
    return-void
.end method

.method public add(Lcom/sonymobile/home/search/entry/SearchEntry;)V
    .locals 1
    .param p1, "entry"    # Lcom/sonymobile/home/search/entry/SearchEntry;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchEntryContainer;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/SearchEntryContainer;->updatePackageMap(Lcom/sonymobile/home/search/entry/SearchEntry;)V

    .line 149
    return-void
.end method

.method public addAll(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sonymobile/home/search/entry/SearchEntry;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchEntryContainer;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/search/entry/SearchEntry;

    .line 121
    .local v0, "entry":Lcom/sonymobile/home/search/entry/SearchEntry;
    invoke-direct {p0, v0}, Lcom/sonymobile/home/search/SearchEntryContainer;->updatePackageMap(Lcom/sonymobile/home/search/entry/SearchEntry;)V

    goto :goto_0

    .line 123
    .end local v0    # "entry":Lcom/sonymobile/home/search/entry/SearchEntry;
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchEntryContainer;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 47
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchEntryContainer;->mPackageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 48
    return-void
.end method

.method public contains(Lcom/sonymobile/home/search/entry/SearchEntry$Type;)Z
    .locals 4
    .param p1, "type"    # Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 186
    .local v0, "contains":Z
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchEntryContainer;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/search/entry/SearchEntry;

    .line 187
    .local v1, "entry":Lcom/sonymobile/home/search/entry/SearchEntry;
    invoke-virtual {v1}, Lcom/sonymobile/home/search/entry/SearchEntry;->getType()Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 188
    const/4 v0, 0x1

    .line 193
    .end local v1    # "entry":Lcom/sonymobile/home/search/entry/SearchEntry;
    :cond_1
    return v0
.end method

.method public get(I)Lcom/sonymobile/home/search/entry/SearchEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchEntryContainer;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/search/entry/SearchEntry;

    return-object v0
.end method

.method public get(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sonymobile/home/search/entry/SearchEntry;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchEntryContainer;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/search/entry/SearchEntry;

    .line 105
    .local v1, "entry":Lcom/sonymobile/home/search/entry/SearchEntry;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .end local v1    # "entry":Lcom/sonymobile/home/search/entry/SearchEntry;
    :cond_1
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchEntryContainer;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFirstLocalSearchEntry()Lcom/sonymobile/home/search/entry/LocalSearchEntry;
    .locals 5

    .prologue
    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "localEntry":Lcom/sonymobile/home/search/entry/LocalSearchEntry;
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchEntryContainer;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/search/entry/SearchEntry;

    .line 59
    .local v0, "entry":Lcom/sonymobile/home/search/entry/SearchEntry;
    invoke-virtual {v0}, Lcom/sonymobile/home/search/entry/SearchEntry;->getType()Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->LOCAL_SEARCH_RESULT:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    if-ne v3, v4, :cond_0

    move-object v2, v0

    .line 60
    check-cast v2, Lcom/sonymobile/home/search/entry/LocalSearchEntry;

    .line 64
    .end local v0    # "entry":Lcom/sonymobile/home/search/entry/SearchEntry;
    :cond_1
    return-object v2
.end method

.method public getPosition(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchEntryContainer;->mPackageMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 171
    .local v0, "result":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 174
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public varargs removeTypes([Lcom/sonymobile/home/search/entry/SearchEntry$Type;)V
    .locals 4
    .param p1, "types"    # [Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    .prologue
    .line 202
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 203
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/search/entry/SearchEntry$Type;>;"
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchEntryContainer;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 204
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/search/entry/SearchEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/search/entry/SearchEntry;

    .line 206
    .local v0, "entry":Lcom/sonymobile/home/search/entry/SearchEntry;
    invoke-virtual {v0}, Lcom/sonymobile/home/search/entry/SearchEntry;->getType()Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 210
    .end local v0    # "entry":Lcom/sonymobile/home/search/entry/SearchEntry;
    :cond_1
    return-void
.end method
