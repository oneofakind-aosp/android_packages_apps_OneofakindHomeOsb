.class final Lcom/sonymobile/home/search/SearchAdapterHelper$1;
.super Ljava/lang/Object;
.source "SearchAdapterHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/SearchAdapterHelper;->getSearchEntriesFromQuery(Ljava/lang/String;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonymobile/home/search/entry/LocalSearchEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Ljava/text/Collator;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/sonymobile/home/search/SearchAdapterHelper$1;->val$collator:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/home/search/entry/LocalSearchEntry;Lcom/sonymobile/home/search/entry/LocalSearchEntry;)I
    .locals 5
    .param p1, "searchEntry1"    # Lcom/sonymobile/home/search/entry/LocalSearchEntry;
    .param p2, "searchEntry2"    # Lcom/sonymobile/home/search/entry/LocalSearchEntry;

    .prologue
    .line 272
    invoke-virtual {p1}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->getSearchPriority()I

    move-result v0

    .line 273
    .local v0, "priority1":I
    invoke-virtual {p2}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->getSearchPriority()I

    move-result v1

    .line 274
    .local v1, "priority2":I
    if-le v0, v1, :cond_0

    .line 275
    const/4 v2, 0x1

    .line 280
    :goto_0
    return v2

    .line 276
    :cond_0
    if-le v1, v0, :cond_1

    .line 277
    const/4 v2, -0x1

    goto :goto_0

    .line 280
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchAdapterHelper$1;->val$collator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 268
    check-cast p1, Lcom/sonymobile/home/search/entry/LocalSearchEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/home/search/entry/LocalSearchEntry;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/search/SearchAdapterHelper$1;->compare(Lcom/sonymobile/home/search/entry/LocalSearchEntry;Lcom/sonymobile/home/search/entry/LocalSearchEntry;)I

    move-result v0

    return v0
.end method
