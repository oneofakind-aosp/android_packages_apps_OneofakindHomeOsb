.class final Lcom/sonymobile/home/model/AppComparators$3;
.super Ljava/lang/Object;
.source "AppComparators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/AppComparators;->getMostUsedOrInstallTimeComparator(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Comparator;
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
.field final synthetic val$secondaryComparator:Ljava/util/Comparator;

.field final synthetic val$statisticsItems:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Comparator;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/sonymobile/home/model/AppComparators$3;->val$statisticsItems:Ljava/util/Map;

    iput-object p2, p0, Lcom/sonymobile/home/model/AppComparators$3;->val$secondaryComparator:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)I
    .locals 6
    .param p1, "lhs"    # Lcom/sonymobile/home/data/Item;
    .param p2, "rhs"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 161
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p1

    check-cast v2, Lcom/sonymobile/home/data/ActivityItem;

    invoke-virtual {v2}, Lcom/sonymobile/home/data/ActivityItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/home/model/AppComparators$3;->val$statisticsItems:Ljava/util/Map;

    invoke-static {v3, v2, v4, v5}, Lcom/sonymobile/home/statistics/StatisticsManager;->getStartCount(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/Map;)I

    move-result v0

    .line 163
    .local v0, "lhsCounter":I
    invoke-virtual {p2}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p2

    check-cast v2, Lcom/sonymobile/home/data/ActivityItem;

    invoke-virtual {v2}, Lcom/sonymobile/home/data/ActivityItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sonymobile/home/data/Item;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/home/model/AppComparators$3;->val$statisticsItems:Ljava/util/Map;

    invoke-static {v3, v2, v4, v5}, Lcom/sonymobile/home/statistics/StatisticsManager;->getStartCount(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/Map;)I

    move-result v1

    .line 166
    .local v1, "rhsCounter":I
    if-le v0, v1, :cond_0

    .line 167
    const/4 v2, -0x1

    .line 171
    :goto_0
    return v2

    .line 168
    :cond_0
    if-ge v0, v1, :cond_1

    .line 169
    const/4 v2, 0x1

    goto :goto_0

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/model/AppComparators$3;->val$secondaryComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonymobile/home/model/AppComparators$3;->val$secondaryComparator:Ljava/util/Comparator;

    invoke-interface {v2, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 158
    check-cast p1, Lcom/sonymobile/home/data/Item;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/home/data/Item;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/model/AppComparators$3;->compare(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)I

    move-result v0

    return v0
.end method
