.class Lcom/sonymobile/home/statistics/StatisticsManager$4;
.super Landroid/os/AsyncTask;
.source "StatisticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/statistics/StatisticsManager;->removeStatisticsData(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/statistics/StatisticsManager;

.field final synthetic val$activityNames:Ljava/util/Set;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/statistics/StatisticsManager;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/sonymobile/home/statistics/StatisticsManager$4;->this$0:Lcom/sonymobile/home/statistics/StatisticsManager;

    iput-object p2, p0, Lcom/sonymobile/home/statistics/StatisticsManager$4;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonymobile/home/statistics/StatisticsManager$4;->val$user:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/sonymobile/home/statistics/StatisticsManager$4;->val$activityNames:Ljava/util/Set;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 358
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/statistics/StatisticsManager$4;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v3, "matchingKeys":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v4, "toBeRemoved":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;>;"
    iget-object v5, p0, Lcom/sonymobile/home/statistics/StatisticsManager$4;->this$0:Lcom/sonymobile/home/statistics/StatisticsManager;

    # getter for: Lcom/sonymobile/home/statistics/StatisticsManager;->mStatisticsItems:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v5}, Lcom/sonymobile/home/statistics/StatisticsManager;->access$500(Lcom/sonymobile/home/statistics/StatisticsManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;

    .line 367
    .local v2, "key":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/sonymobile/home/statistics/StatisticsManager$4;->val$packageName:Ljava/lang/String;

    # getter for: Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->access$100(Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    # getter for: Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mUser:Landroid/os/UserHandle;
    invoke-static {v2}, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->access$300(Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;)Landroid/os/UserHandle;

    move-result-object v5

    if-eqz v5, :cond_0

    # getter for: Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mUser:Landroid/os/UserHandle;
    invoke-static {v2}, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->access$300(Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;)Landroid/os/UserHandle;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/home/statistics/StatisticsManager$4;->val$user:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 369
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 374
    .end local v2    # "key":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;

    .line 375
    .restart local v2    # "key":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
    iget-object v5, p0, Lcom/sonymobile/home/statistics/StatisticsManager$4;->val$activityNames:Ljava/util/Set;

    # getter for: Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->access$200(Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 376
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 381
    .end local v2    # "key":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;

    .line 382
    .restart local v2    # "key":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
    iget-object v5, p0, Lcom/sonymobile/home/statistics/StatisticsManager$4;->this$0:Lcom/sonymobile/home/statistics/StatisticsManager;

    # getter for: Lcom/sonymobile/home/statistics/StatisticsManager;->mStatisticsItems:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v5}, Lcom/sonymobile/home/statistics/StatisticsManager;->access$500(Lcom/sonymobile/home/statistics/StatisticsManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/statistics/StatisticsItem;

    .line 384
    .local v1, "item":Lcom/sonymobile/home/statistics/StatisticsItem;
    if-eqz v1, :cond_4

    .line 385
    iget-object v5, p0, Lcom/sonymobile/home/statistics/StatisticsManager$4;->this$0:Lcom/sonymobile/home/statistics/StatisticsManager;

    # getter for: Lcom/sonymobile/home/statistics/StatisticsManager;->mStorage:Lcom/sonymobile/home/storage/Storage;
    invoke-static {v5}, Lcom/sonymobile/home/statistics/StatisticsManager;->access$400(Lcom/sonymobile/home/statistics/StatisticsManager;)Lcom/sonymobile/home/storage/Storage;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/sonymobile/home/storage/Storage;->deleteStatisticsItem(Lcom/sonymobile/home/statistics/StatisticsItem;)V

    goto :goto_2

    .line 388
    .end local v1    # "item":Lcom/sonymobile/home/statistics/StatisticsItem;
    .end local v2    # "key":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
    :cond_5
    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 358
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/statistics/StatisticsManager$4;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p1, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;

    .line 394
    .local v1, "key":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
    iget-object v2, p0, Lcom/sonymobile/home/statistics/StatisticsManager$4;->this$0:Lcom/sonymobile/home/statistics/StatisticsManager;

    # getter for: Lcom/sonymobile/home/statistics/StatisticsManager;->mStatisticsItems:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v2}, Lcom/sonymobile/home/statistics/StatisticsManager;->access$500(Lcom/sonymobile/home/statistics/StatisticsManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 396
    .end local v1    # "key":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
    :cond_0
    return-void
.end method
