.class final Lcom/sonymobile/home/model/AppComparators$1;
.super Ljava/lang/Object;
.source "AppComparators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/AppComparators;->getAlphabeticalComparator(Ljava/util/Map;)Ljava/util/Comparator;
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
        "Lcom/sonymobile/home/data/Item;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;

.field final synthetic val$resources:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sonymobile/home/model/AppComparators$1;->val$resources:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/model/AppComparators$1;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)I
    .locals 5
    .param p1, "lhs"    # Lcom/sonymobile/home/data/Item;
    .param p2, "rhs"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 40
    iget-object v4, p0, Lcom/sonymobile/home/model/AppComparators$1;->val$resources:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/model/ResourceItem;

    .line 41
    .local v1, "lhsResourceItem":Lcom/sonymobile/home/model/ResourceItem;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sonymobile/home/model/ResourceItem;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "lhsLabel":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/home/model/AppComparators$1;->val$resources:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/model/ResourceItem;

    .line 44
    .local v3, "rhsResourceItem":Lcom/sonymobile/home/model/ResourceItem;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/sonymobile/home/model/ResourceItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "rhsLabel":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/sonymobile/home/model/AppComparators$1;->collator:Ljava/text/Collator;

    invoke-virtual {v4, v0, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    return v4

    .line 41
    .end local v0    # "lhsLabel":Ljava/lang/String;
    .end local v2    # "rhsLabel":Ljava/lang/String;
    .end local v3    # "rhsResourceItem":Lcom/sonymobile/home/model/ResourceItem;
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 44
    .restart local v0    # "lhsLabel":Ljava/lang/String;
    .restart local v3    # "rhsResourceItem":Lcom/sonymobile/home/model/ResourceItem;
    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Lcom/sonymobile/home/data/Item;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/home/data/Item;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/model/AppComparators$1;->compare(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)I

    move-result v0

    return v0
.end method
