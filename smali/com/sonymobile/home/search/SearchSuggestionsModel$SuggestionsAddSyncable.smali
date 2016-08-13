.class Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;
.super Ljava/lang/Object;
.source "SearchSuggestionsModel.java"

# interfaces
.implements Lcom/sonymobile/home/model/AddSyncable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/search/SearchSuggestionsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionsAddSyncable"
.end annotation


# instance fields
.field private mCurrentTime:J

.field private mInstallTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/search/SearchSuggestionsModel;)V
    .locals 1

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;->mNewItems:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/search/SearchSuggestionsModel;Lcom/sonymobile/home/search/SearchSuggestionsModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/search/SearchSuggestionsModel;
    .param p2, "x1"    # Lcom/sonymobile/home/search/SearchSuggestionsModel$1;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;-><init>(Lcom/sonymobile/home/search/SearchSuggestionsModel;)V

    return-void
.end method

.method private wasInstalledSinceLastSync(Lcom/sonymobile/home/data/Item;)Z
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    # getter for: Lcom/sonymobile/home/search/SearchSuggestionsModel;->mLastSyncTime:J
    invoke-static {v2}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->access$000(Lcom/sonymobile/home/search/SearchSuggestionsModel;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    # getter for: Lcom/sonymobile/home/search/SearchSuggestionsModel;->mLastSyncTime:J
    invoke-static {v2}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->access$000(Lcom/sonymobile/home/search/SearchSuggestionsModel;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;->mCurrentTime:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    instance-of v2, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-nez v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v1

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;->mInstallTimes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 110
    .local v0, "installTime":Ljava/lang/Long;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    # getter for: Lcom/sonymobile/home/search/SearchSuggestionsModel;->mLastSyncTime:J
    invoke-static {v4}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->access$000(Lcom/sonymobile/home/search/SearchSuggestionsModel;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addDuringSync(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 87
    instance-of v0, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;->wasInstalledSinceLastSync(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;->mNewItems:Ljava/util/ArrayList;

    check-cast p1, Lcom/sonymobile/home/data/ActivityItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    .restart local p1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNewItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;->mNewItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;->mNewItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;->mInstallTimes:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonymobile/home/model/AppComparators;->getInstallTimeComparator(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;->mNewItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public prepareSync(JLjava/util/Map;)V
    .locals 1
    .param p1, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p3, "installTimes":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/ActivityItem;Ljava/lang/Long;>;"
    iput-wide p1, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;->mCurrentTime:J

    .line 81
    iput-object p3, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;->mInstallTimes:Ljava/util/Map;

    .line 82
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$SuggestionsAddSyncable;->mNewItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    return-void
.end method
