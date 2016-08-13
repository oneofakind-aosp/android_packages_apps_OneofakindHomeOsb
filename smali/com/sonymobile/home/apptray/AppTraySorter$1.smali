.class Lcom/sonymobile/home/apptray/AppTraySorter$1;
.super Ljava/lang/Object;
.source "AppTraySorter.java"

# interfaces
.implements Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/apptray/AppTraySorter;->createStatisticsManagerCallbacks()Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTraySorter;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTraySorter;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTraySorter$1;->this$0:Lcom/sonymobile/home/apptray/AppTraySorter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatisticsItemChanged(Lcom/sonymobile/home/statistics/StatisticsItem;)V
    .locals 2
    .param p1, "statisticsItem"    # Lcom/sonymobile/home/statistics/StatisticsItem;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTraySorter$1;->this$0:Lcom/sonymobile/home/apptray/AppTraySorter;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTraySorter;->getSortMode()Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->MOST_USED:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTraySorter$1;->this$0:Lcom/sonymobile/home/apptray/AppTraySorter;

    # getter for: Lcom/sonymobile/home/apptray/AppTraySorter;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTraySorter;->access$200(Lcom/sonymobile/home/apptray/AppTraySorter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/home/apptray/AppTraySorter$1$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/apptray/AppTraySorter$1$1;-><init>(Lcom/sonymobile/home/apptray/AppTraySorter$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    :cond_0
    return-void
.end method
