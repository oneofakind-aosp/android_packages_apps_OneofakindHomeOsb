.class Lcom/sonymobile/home/statistics/StatisticsManager$3;
.super Landroid/os/AsyncTask;
.source "StatisticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/statistics/StatisticsManager;->removeStatisticsData(Ljava/lang/String;Landroid/os/UserHandle;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/statistics/StatisticsManager;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/statistics/StatisticsManager;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/sonymobile/home/statistics/StatisticsManager$3;->this$0:Lcom/sonymobile/home/statistics/StatisticsManager;

    iput-object p2, p0, Lcom/sonymobile/home/statistics/StatisticsManager$3;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonymobile/home/statistics/StatisticsManager$3;->val$user:Landroid/os/UserHandle;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 323
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/statistics/StatisticsManager$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sonymobile/home/statistics/StatisticsManager$3;->this$0:Lcom/sonymobile/home/statistics/StatisticsManager;

    # getter for: Lcom/sonymobile/home/statistics/StatisticsManager;->mStorage:Lcom/sonymobile/home/storage/Storage;
    invoke-static {v0}, Lcom/sonymobile/home/statistics/StatisticsManager;->access$400(Lcom/sonymobile/home/statistics/StatisticsManager;)Lcom/sonymobile/home/storage/Storage;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/statistics/StatisticsManager$3;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/home/statistics/StatisticsManager$3;->val$user:Landroid/os/UserHandle;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/home/storage/Storage;->deleteStatistics(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 328
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 323
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/statistics/StatisticsManager$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 333
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v2, "toBeRemoved":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;>;"
    iget-object v3, p0, Lcom/sonymobile/home/statistics/StatisticsManager$3;->this$0:Lcom/sonymobile/home/statistics/StatisticsManager;

    # getter for: Lcom/sonymobile/home/statistics/StatisticsManager;->mStatisticsItems:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v3}, Lcom/sonymobile/home/statistics/StatisticsManager;->access$500(Lcom/sonymobile/home/statistics/StatisticsManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;

    .line 336
    .local v1, "key":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
    if-eqz v1, :cond_0

    # getter for: Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->access$100(Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/home/statistics/StatisticsManager$3;->val$packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonymobile/home/statistics/StatisticsManager$3;->val$user:Landroid/os/UserHandle;

    # getter for: Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mUser:Landroid/os/UserHandle;
    invoke-static {v1}, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->access$300(Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 340
    .end local v1    # "key":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;

    .line 341
    .restart local v1    # "key":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
    iget-object v3, p0, Lcom/sonymobile/home/statistics/StatisticsManager$3;->this$0:Lcom/sonymobile/home/statistics/StatisticsManager;

    # getter for: Lcom/sonymobile/home/statistics/StatisticsManager;->mStatisticsItems:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v3}, Lcom/sonymobile/home/statistics/StatisticsManager;->access$500(Lcom/sonymobile/home/statistics/StatisticsManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 343
    .end local v1    # "key":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
    :cond_2
    return-void
.end method
