.class Lcom/sonymobile/home/statistics/StatisticsManager$5;
.super Landroid/os/AsyncTask;
.source "StatisticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/statistics/StatisticsManager;->writeItemToStorage(Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;Lcom/sonymobile/home/statistics/StatisticsItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sonymobile/home/statistics/StatisticsItem;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/statistics/StatisticsManager;

.field final synthetic val$item:Lcom/sonymobile/home/statistics/StatisticsItem;

.field final synthetic val$key:Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/statistics/StatisticsItem;Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/sonymobile/home/statistics/StatisticsManager$5;->this$0:Lcom/sonymobile/home/statistics/StatisticsManager;

    iput-object p2, p0, Lcom/sonymobile/home/statistics/StatisticsManager$5;->val$item:Lcom/sonymobile/home/statistics/StatisticsItem;

    iput-object p3, p0, Lcom/sonymobile/home/statistics/StatisticsManager$5;->val$key:Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sonymobile/home/statistics/StatisticsItem;)Ljava/lang/Long;
    .locals 4
    .param p1, "params"    # [Lcom/sonymobile/home/statistics/StatisticsItem;

    .prologue
    .line 414
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 415
    .local v0, "statisticsItemItem":Lcom/sonymobile/home/statistics/StatisticsItem;
    iget-object v1, p0, Lcom/sonymobile/home/statistics/StatisticsManager$5;->this$0:Lcom/sonymobile/home/statistics/StatisticsManager;

    # getter for: Lcom/sonymobile/home/statistics/StatisticsManager;->mStorage:Lcom/sonymobile/home/storage/Storage;
    invoke-static {v1}, Lcom/sonymobile/home/statistics/StatisticsManager;->access$400(Lcom/sonymobile/home/statistics/StatisticsManager;)Lcom/sonymobile/home/storage/Storage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonymobile/home/storage/Storage;->insertStatisticsItem(Lcom/sonymobile/home/statistics/StatisticsItem;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 410
    check-cast p1, [Lcom/sonymobile/home/statistics/StatisticsItem;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/statistics/StatisticsManager$5;->doInBackground([Lcom/sonymobile/home/statistics/StatisticsItem;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    .line 419
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/sonymobile/home/statistics/StatisticsManager$5;->this$0:Lcom/sonymobile/home/statistics/StatisticsManager;

    iget-object v1, p0, Lcom/sonymobile/home/statistics/StatisticsManager$5;->val$item:Lcom/sonymobile/home/statistics/StatisticsItem;

    # invokes: Lcom/sonymobile/home/statistics/StatisticsManager;->notifyStatisticsItemChanged(Lcom/sonymobile/home/statistics/StatisticsItem;)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/statistics/StatisticsManager;->access$600(Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/statistics/StatisticsItem;)V

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/statistics/StatisticsManager$5;->this$0:Lcom/sonymobile/home/statistics/StatisticsManager;

    # getter for: Lcom/sonymobile/home/statistics/StatisticsManager;->mStatisticsItems:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lcom/sonymobile/home/statistics/StatisticsManager;->access$500(Lcom/sonymobile/home/statistics/StatisticsManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/statistics/StatisticsManager$5;->val$key:Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;

    iget-object v2, p0, Lcom/sonymobile/home/statistics/StatisticsManager$5;->val$item:Lcom/sonymobile/home/statistics/StatisticsItem;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 410
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/statistics/StatisticsManager$5;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
