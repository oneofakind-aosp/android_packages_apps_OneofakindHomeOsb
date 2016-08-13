.class public final Lcom/sonymobile/home/search/SearchAdapterHelper;
.super Ljava/lang/Object;
.source "SearchAdapterHelper.java"


# static fields
.field private static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field private static final SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final sModelMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonymobile/home/search/entry/LocalSearchEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/search/SearchAdapterHelper;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    .line 47
    const-string v0, "[\\s\\p{javaSpaceChar}-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/search/SearchAdapterHelper;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sonymobile/home/search/SearchAdapterHelper;->sModelMap:Landroid/util/SparseArray;

    return-void
.end method

.method private static addItemToSearchEntriesIfPossible(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;ZZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "item"    # Lcom/sonymobile/home/data/Item;
    .param p1, "folder"    # Lcom/sonymobile/home/data/FolderItem;
    .param p2, "includeActivities"    # Z
    .param p3, "includeNonLauncherShortcuts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/Item;",
            "Lcom/sonymobile/home/data/FolderItem;",
            "ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/ShortcutItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/search/entry/LocalSearchEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p4, "outNonLauncherShortcutItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/ShortcutItem;>;"
    .local p5, "outSearchEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/LocalSearchEntry;>;"
    instance-of v1, p0, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 175
    new-instance v1, Lcom/sonymobile/home/search/entry/LocalSearchEntry;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget-object v3, Lcom/sonymobile/home/search/SearchAdapterHelper;->sModelMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2, p0, p1}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;-><init>(ILcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;)V

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    instance-of v1, p0, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 179
    check-cast v0, Lcom/sonymobile/home/data/ShortcutItem;

    .line 180
    .local v0, "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ShortcutItem;->isLauncherShortcut()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    new-instance v1, Lcom/sonymobile/home/search/entry/LocalSearchEntry;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget-object v3, Lcom/sonymobile/home/search/SearchAdapterHelper;->sModelMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2, p0, p1}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;-><init>(ILcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;)V

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static clearModel()V
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/sonymobile/home/search/SearchAdapterHelper;->sModelMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 194
    return-void
.end method

.method public static containsItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p0, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 228
    invoke-static {p0}, Lcom/sonymobile/home/search/SearchAdapterHelper;->getSearchEntry(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/search/entry/SearchEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFolderInWhichItemIsLocated(I)Lcom/sonymobile/home/data/FolderItem;
    .locals 2
    .param p0, "searchSuggestionId"    # I

    .prologue
    .line 217
    sget-object v1, Lcom/sonymobile/home/search/SearchAdapterHelper;->sModelMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/search/entry/LocalSearchEntry;

    .line 218
    .local v0, "searchEntry":Lcom/sonymobile/home/search/entry/LocalSearchEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->getAssociatedFolderItem()Lcom/sonymobile/home/data/FolderItem;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getItem(I)Lcom/sonymobile/home/data/Item;
    .locals 2
    .param p0, "searchSuggestionId"    # I

    .prologue
    .line 204
    sget-object v1, Lcom/sonymobile/home/search/SearchAdapterHelper;->sModelMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/search/entry/LocalSearchEntry;

    .line 205
    .local v0, "searchEntry":Lcom/sonymobile/home/search/entry/LocalSearchEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->getModelItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSearchEntriesFromQuery(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/search/entry/LocalSearchEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 288
    :cond_0
    :goto_0
    return-object v2

    .line 261
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v2, "tokenMatchEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/LocalSearchEntry;>;"
    invoke-static {p0, v2}, Lcom/sonymobile/home/search/SearchAdapterHelper;->getSearchEntriesFromQueryFoundInLabelTokens(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 264
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 265
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 266
    .local v0, "collator":Ljava/text/Collator;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/text/Collator;->setStrength(I)V

    .line 268
    new-instance v1, Lcom/sonymobile/home/search/SearchAdapterHelper$1;

    invoke-direct {v1, v0}, Lcom/sonymobile/home/search/SearchAdapterHelper$1;-><init>(Ljava/text/Collator;)V

    .line 285
    .local v1, "sortComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sonymobile/home/search/entry/LocalSearchEntry;>;"
    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private static getSearchEntriesFromQueryFoundInLabelTokens(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 16
    .param p0, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/search/entry/LocalSearchEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, "outSearchEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/LocalSearchEntry;>;"
    sget-object v14, Lcom/sonymobile/home/search/SearchAdapterHelper;->sModelMap:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 302
    .local v6, "numberOfSearchEntries":I
    invoke-static/range {p0 .. p0}, Lcom/sonymobile/home/search/SearchAdapterHelper;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, "normalizedQuery":Ljava/lang/String;
    invoke-static {v4}, Lcom/sonymobile/home/search/SearchAdapterHelper;->removeDiacriticals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, "normalizedQueryNoDiacriticals":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "searchEntryIndex":I
    :goto_0
    if-ge v9, v6, :cond_8

    .line 308
    sget-object v14, Lcom/sonymobile/home/search/SearchAdapterHelper;->sModelMap:Landroid/util/SparseArray;

    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/home/search/entry/LocalSearchEntry;

    .line 309
    .local v8, "searchEntry":Lcom/sonymobile/home/search/entry/LocalSearchEntry;
    invoke-virtual {v8}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->getLabel()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sonymobile/home/search/SearchAdapterHelper;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "normalizedLabel":Ljava/lang/String;
    invoke-static {v2}, Lcom/sonymobile/home/search/SearchAdapterHelper;->removeDiacriticals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "normalizedLabelNoDiacriticals":Ljava/lang/String;
    const/4 v1, 0x0

    .line 315
    .local v1, "match":Z
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 317
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->setSearchPriority(I)V

    .line 318
    const/4 v1, 0x1

    .line 321
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 323
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->setSearchPriority(I)V

    .line 324
    const/4 v1, 0x1

    .line 331
    :cond_1
    if-nez v1, :cond_4

    .line 332
    sget-object v14, Lcom/sonymobile/home/search/SearchAdapterHelper;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v12

    .line 333
    .local v12, "tokens":[Ljava/lang/String;
    sget-object v14, Lcom/sonymobile/home/search/SearchAdapterHelper;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v13

    .line 334
    .local v13, "tokensNoDiacriticals":[Ljava/lang/String;
    array-length v14, v12

    array-length v15, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 335
    .local v7, "numberOfTokens":I
    const/4 v10, 0x2

    .line 337
    .local v10, "searchPriority":I
    const/4 v11, 0x1

    .local v11, "tokenIndex":I
    :goto_1
    if-ge v11, v7, :cond_4

    .line 339
    aget-object v14, v12, v11

    invoke-virtual {v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 340
    invoke-virtual {v8, v10}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->setSearchPriority(I)V

    .line 341
    const/4 v1, 0x1

    .line 343
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 345
    if-nez v1, :cond_3

    aget-object v14, v13, v11

    invoke-virtual {v14, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 346
    invoke-virtual {v8, v10}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->setSearchPriority(I)V

    .line 347
    const/4 v1, 0x1

    .line 349
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 351
    if-eqz v1, :cond_7

    .line 357
    .end local v7    # "numberOfTokens":I
    .end local v10    # "searchPriority":I
    .end local v11    # "tokenIndex":I
    .end local v12    # "tokens":[Ljava/lang/String;
    .end local v13    # "tokensNoDiacriticals":[Ljava/lang/String;
    :cond_4
    if-nez v1, :cond_5

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 359
    const v14, 0x7fffffff

    invoke-virtual {v8, v14}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->setSearchPriority(I)V

    .line 360
    const/4 v1, 0x1

    .line 363
    :cond_5
    if-eqz v1, :cond_6

    .line 364
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 337
    .restart local v7    # "numberOfTokens":I
    .restart local v10    # "searchPriority":I
    .restart local v11    # "tokenIndex":I
    .restart local v12    # "tokens":[Ljava/lang/String;
    .restart local v13    # "tokensNoDiacriticals":[Ljava/lang/String;
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 367
    .end local v1    # "match":Z
    .end local v2    # "normalizedLabel":Ljava/lang/String;
    .end local v3    # "normalizedLabelNoDiacriticals":Ljava/lang/String;
    .end local v7    # "numberOfTokens":I
    .end local v8    # "searchEntry":Lcom/sonymobile/home/search/entry/LocalSearchEntry;
    .end local v10    # "searchPriority":I
    .end local v11    # "tokenIndex":I
    .end local v12    # "tokens":[Ljava/lang/String;
    .end local v13    # "tokensNoDiacriticals":[Ljava/lang/String;
    :cond_8
    return-void
.end method

.method public static getSearchEntry(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/search/entry/SearchEntry;
    .locals 4
    .param p0, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 239
    sget-object v3, Lcom/sonymobile/home/search/SearchAdapterHelper;->sModelMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 240
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 241
    sget-object v3, Lcom/sonymobile/home/search/SearchAdapterHelper;->sModelMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/search/entry/LocalSearchEntry;

    .line 242
    .local v1, "searchItem":Lcom/sonymobile/home/search/entry/LocalSearchEntry;
    invoke-virtual {v1}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->getModelItem()Lcom/sonymobile/home/data/Item;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    .end local v1    # "searchItem":Lcom/sonymobile/home/search/entry/LocalSearchEntry;
    :goto_1
    return-object v1

    .line 240
    .restart local v1    # "searchItem":Lcom/sonymobile/home/search/entry/LocalSearchEntry;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "searchItem":Lcom/sonymobile/home/search/entry/LocalSearchEntry;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "inputStr"    # Ljava/lang/String;

    .prologue
    .line 377
    if-eqz p0, :cond_0

    move-object v1, p0

    .line 378
    .local v1, "notNormalizedStr":Ljava/lang/String;
    :goto_0
    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v1, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "normalizedStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 377
    .end local v0    # "normalizedStr":Ljava/lang/String;
    .end local v1    # "notNormalizedStr":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private static removeDiacriticals(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "inputStr"    # Ljava/lang/String;

    .prologue
    .line 389
    if-eqz p0, :cond_0

    move-object v0, p0

    .line 390
    .local v0, "strWithDiacriticals":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/sonymobile/home/search/SearchAdapterHelper;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 389
    .end local v0    # "strWithDiacriticals":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static storeModel(Landroid/content/res/Resources;Lcom/sonymobile/home/model/Model;ILjava/util/ArrayList;)V
    .locals 27
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "model"    # Lcom/sonymobile/home/model/Model;
    .param p2, "filterBitmask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/sonymobile/home/model/Model;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/ShortcutItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p3, "nonLauncherShortcutItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/ShortcutItem;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v7, "searchEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/LocalSearchEntry;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/home/model/Model;->getItems()Ljava/util/List;

    move-result-object v23

    .line 92
    .local v23, "modelItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    .line 93
    .local v4, "includeActivities":Z
    :goto_0
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_2

    const/4 v5, 0x1

    .line 94
    .local v5, "includeNonLauncherShortcuts":Z
    :goto_1
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_3

    const/16 v19, 0x1

    .line 97
    .local v19, "includeFolders":Z
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 99
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    instance-of v0, v2, Lcom/sonymobile/home/data/FolderItem;

    move/from16 v20, v0

    .line 101
    .local v20, "isFolder":Z
    if-nez v20, :cond_4

    .line 102
    const/4 v3, 0x0

    move-object/from16 v6, p3

    invoke-static/range {v2 .. v7}, Lcom/sonymobile/home/search/SearchAdapterHelper;->addItemToSearchEntriesIfPossible(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;ZZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 92
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    .end local v4    # "includeActivities":Z
    .end local v5    # "includeNonLauncherShortcuts":Z
    .end local v19    # "includeFolders":Z
    .end local v20    # "isFolder":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 93
    .restart local v4    # "includeActivities":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 94
    .restart local v5    # "includeNonLauncherShortcuts":Z
    :cond_3
    const/16 v19, 0x0

    goto :goto_2

    .restart local v2    # "item":Lcom/sonymobile/home/data/Item;
    .restart local v19    # "includeFolders":Z
    .restart local v20    # "isFolder":Z
    :cond_4
    move-object v9, v2

    .line 105
    check-cast v9, Lcom/sonymobile/home/data/FolderItem;

    .line 107
    .local v9, "folder":Lcom/sonymobile/home/data/FolderItem;
    if-eqz v19, :cond_5

    .line 109
    new-instance v3, Lcom/sonymobile/home/search/entry/LocalSearchEntry;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    sget-object v10, Lcom/sonymobile/home/search/SearchAdapterHelper;->sModelMap:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    add-int/2addr v6, v10

    const/4 v10, 0x0

    invoke-direct {v3, v6, v9, v10}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;-><init>(ILcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;)V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/sonymobile/home/model/Model;->getFolderItems(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;

    move-result-object v21

    .line 113
    .local v21, "itemsInFolder":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-eqz v21, :cond_0

    .line 117
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/home/data/Item;

    .local v8, "itemInFolder":Lcom/sonymobile/home/data/Item;
    move v10, v4

    move v11, v5

    move-object/from16 v12, p3

    move-object v13, v7

    .line 118
    invoke-static/range {v8 .. v13}, Lcom/sonymobile/home/search/SearchAdapterHelper;->addItemToSearchEntriesIfPossible(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;ZZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_4

    .line 125
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    .end local v8    # "itemInFolder":Lcom/sonymobile/home/data/Item;
    .end local v9    # "folder":Lcom/sonymobile/home/data/FolderItem;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "isFolder":Z
    .end local v21    # "itemsInFolder":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/sonymobile/home/search/entry/LocalSearchEntry;

    .line 126
    .local v25, "searchEntry":Lcom/sonymobile/home/search/entry/LocalSearchEntry;
    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->getModelItem()Lcom/sonymobile/home/data/Item;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sonymobile/home/model/Model;->hasResource(Lcom/sonymobile/home/data/Item;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 128
    const/16 v22, 0x0

    .line 129
    .local v22, "label":Ljava/lang/String;
    const/4 v15, 0x0

    .line 131
    .local v15, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->getModelItem()Lcom/sonymobile/home/data/Item;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sonymobile/home/model/Model;->getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v24

    .line 132
    .local v24, "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    move-object/from16 v0, v24

    instance-of v3, v0, Lcom/sonymobile/home/presenter/resource/ActivityResource;

    if-eqz v3, :cond_9

    move-object/from16 v14, v24

    .line 133
    check-cast v14, Lcom/sonymobile/home/presenter/resource/ActivityResource;

    .line 134
    .local v14, "activityResource":Lcom/sonymobile/home/presenter/resource/ActivityResource;
    invoke-virtual {v14}, Lcom/sonymobile/home/presenter/resource/ActivityResource;->getLabel()Ljava/lang/String;

    move-result-object v22

    .line 135
    invoke-virtual {v14}, Lcom/sonymobile/home/presenter/resource/ActivityResource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 146
    .end local v14    # "activityResource":Lcom/sonymobile/home/presenter/resource/ActivityResource;
    :cond_8
    :goto_6
    if-eqz v22, :cond_7

    if-eqz v15, :cond_7

    .line 147
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->setLabel(Ljava/lang/String;)V

    .line 148
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 150
    sget-object v3, Lcom/sonymobile/home/search/SearchAdapterHelper;->sModelMap:Landroid/util/SparseArray;

    invoke-virtual/range {v25 .. v25}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->getSuggestionId()I

    move-result v6

    move-object/from16 v0, v25

    invoke-virtual {v3, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    .line 136
    :cond_9
    move-object/from16 v0, v24

    instance-of v3, v0, Lcom/sonymobile/home/presenter/resource/FolderResource;

    if-eqz v3, :cond_a

    move-object/from16 v16, v24

    .line 137
    check-cast v16, Lcom/sonymobile/home/presenter/resource/FolderResource;

    .line 138
    .local v16, "folderResource":Lcom/sonymobile/home/presenter/resource/FolderResource;
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/home/presenter/resource/FolderResource;->getLabel()Ljava/lang/String;

    move-result-object v22

    .line 139
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/home/presenter/resource/FolderResource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 140
    goto :goto_6

    .end local v16    # "folderResource":Lcom/sonymobile/home/presenter/resource/FolderResource;
    :cond_a
    move-object/from16 v0, v24

    instance-of v3, v0, Lcom/sonymobile/home/presenter/resource/ShortcutResource;

    if-eqz v3, :cond_8

    move-object/from16 v26, v24

    .line 141
    check-cast v26, Lcom/sonymobile/home/presenter/resource/ShortcutResource;

    .line 142
    .local v26, "shortcutResource":Lcom/sonymobile/home/presenter/resource/ShortcutResource;
    invoke-virtual/range {v26 .. v26}, Lcom/sonymobile/home/presenter/resource/ShortcutResource;->getLabel()Ljava/lang/String;

    move-result-object v22

    .line 143
    invoke-virtual/range {v26 .. v26}, Lcom/sonymobile/home/presenter/resource/ShortcutResource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    goto :goto_6

    .line 154
    .end local v15    # "bitmap":Landroid/graphics/Bitmap;
    .end local v22    # "label":Ljava/lang/String;
    .end local v24    # "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    .end local v25    # "searchEntry":Lcom/sonymobile/home/search/entry/LocalSearchEntry;
    .end local v26    # "shortcutResource":Lcom/sonymobile/home/presenter/resource/ShortcutResource;
    :cond_b
    return-void
.end method

.method public static storeModels(Landroid/content/res/Resources;Ljava/util/Map;)V
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/model/Model;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "models":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/model/Model;Ljava/lang/Integer;>;"
    sget-object v6, Lcom/sonymobile/home/search/SearchAdapterHelper;->sModelMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 69
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v5, "nonLauncherShortcutItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/ShortcutItem;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 72
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/sonymobile/home/model/Model;Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 73
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/home/model/Model;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/model/Model;

    .line 74
    .local v4, "model":Lcom/sonymobile/home/model/Model;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 75
    .local v2, "filterBitmask":I
    invoke-static {p0, v4, v2, v5}, Lcom/sonymobile/home/search/SearchAdapterHelper;->storeModel(Landroid/content/res/Resources;Lcom/sonymobile/home/model/Model;ILjava/util/ArrayList;)V

    goto :goto_0

    .line 77
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/home/model/Model;Ljava/lang/Integer;>;"
    .end local v2    # "filterBitmask":I
    .end local v4    # "model":Lcom/sonymobile/home/model/Model;
    :cond_0
    return-void
.end method
