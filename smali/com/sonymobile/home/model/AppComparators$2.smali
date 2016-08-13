.class final Lcom/sonymobile/home/model/AppComparators$2;
.super Ljava/lang/Object;
.source "AppComparators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/AppComparators;->getInstallTimeComparator(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Comparator;
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
.field final synthetic val$alphabeticalComparator:Ljava/util/Comparator;

.field final synthetic val$descending:Z

.field final synthetic val$installTimes:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;ZLjava/util/Comparator;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonymobile/home/model/AppComparators$2;->val$installTimes:Ljava/util/Map;

    iput-boolean p2, p0, Lcom/sonymobile/home/model/AppComparators$2;->val$descending:Z

    iput-object p3, p0, Lcom/sonymobile/home/model/AppComparators$2;->val$alphabeticalComparator:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)I
    .locals 8
    .param p1, "lhs"    # Lcom/sonymobile/home/data/Item;
    .param p2, "rhs"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v1, 0x1

    const/4 v6, -0x1

    .line 82
    const-wide/16 v2, 0x0

    .line 83
    .local v2, "lhsTime":J
    const-wide/16 v4, 0x0

    .line 85
    .local v4, "rhsTime":J
    instance-of v7, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v7, :cond_0

    .line 86
    iget-object v7, p0, Lcom/sonymobile/home/model/AppComparators$2;->val$installTimes:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 87
    .local v0, "installTime":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 92
    .end local v0    # "installTime":Ljava/lang/Long;
    :cond_0
    instance-of v7, p2, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v7, :cond_1

    .line 93
    iget-object v7, p0, Lcom/sonymobile/home/model/AppComparators$2;->val$installTimes:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 94
    .restart local v0    # "installTime":Ljava/lang/Long;
    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 99
    .end local v0    # "installTime":Ljava/lang/Long;
    :cond_1
    cmp-long v7, v2, v4

    if-lez v7, :cond_3

    .line 100
    iget-boolean v7, p0, Lcom/sonymobile/home/model/AppComparators$2;->val$descending:Z

    if-eqz v7, :cond_2

    .line 105
    :goto_0
    return v1

    :cond_2
    move v1, v6

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    cmp-long v7, v2, v4

    if-gez v7, :cond_5

    .line 102
    iget-boolean v7, p0, Lcom/sonymobile/home/model/AppComparators$2;->val$descending:Z

    if-eqz v7, :cond_4

    :goto_1
    move v1, v6

    goto :goto_0

    :cond_4
    move v6, v1

    goto :goto_1

    .line 105
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/home/model/AppComparators$2;->val$alphabeticalComparator:Ljava/util/Comparator;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sonymobile/home/model/AppComparators$2;->val$alphabeticalComparator:Ljava/util/Comparator;

    invoke-interface {v1, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 78
    check-cast p1, Lcom/sonymobile/home/data/Item;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/home/data/Item;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/model/AppComparators$2;->compare(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)I

    move-result v0

    return v0
.end method
