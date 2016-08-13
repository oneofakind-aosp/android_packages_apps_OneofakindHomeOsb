.class Lcom/sonymobile/home/statistics/StatisticsManager$2;
.super Landroid/os/AsyncTask;
.source "StatisticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/statistics/StatisticsManager;->removeStatisticsData(Lcom/sonymobile/home/statistics/StatisticsItem;)V
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

.field final synthetic val$statisticsItem:Lcom/sonymobile/home/statistics/StatisticsItem;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/statistics/StatisticsItem;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/sonymobile/home/statistics/StatisticsManager$2;->this$0:Lcom/sonymobile/home/statistics/StatisticsManager;

    iput-object p2, p0, Lcom/sonymobile/home/statistics/StatisticsManager$2;->val$statisticsItem:Lcom/sonymobile/home/statistics/StatisticsItem;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 307
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/statistics/StatisticsManager$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 311
    new-instance v0, Lcom/sonymobile/home/statistics/StatisticsItem;

    iget-object v1, p0, Lcom/sonymobile/home/statistics/StatisticsManager$2;->val$statisticsItem:Lcom/sonymobile/home/statistics/StatisticsItem;

    invoke-direct {v0, v1}, Lcom/sonymobile/home/statistics/StatisticsItem;-><init>(Lcom/sonymobile/home/statistics/StatisticsItem;)V

    .line 313
    .local v0, "item":Lcom/sonymobile/home/statistics/StatisticsItem;
    iget-object v1, p0, Lcom/sonymobile/home/statistics/StatisticsManager$2;->this$0:Lcom/sonymobile/home/statistics/StatisticsManager;

    # getter for: Lcom/sonymobile/home/statistics/StatisticsManager;->mStorage:Lcom/sonymobile/home/storage/Storage;
    invoke-static {v1}, Lcom/sonymobile/home/statistics/StatisticsManager;->access$400(Lcom/sonymobile/home/statistics/StatisticsManager;)Lcom/sonymobile/home/storage/Storage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonymobile/home/storage/Storage;->deleteStatisticsItem(Lcom/sonymobile/home/statistics/StatisticsItem;)V

    .line 315
    const/4 v1, 0x0

    return-object v1
.end method
