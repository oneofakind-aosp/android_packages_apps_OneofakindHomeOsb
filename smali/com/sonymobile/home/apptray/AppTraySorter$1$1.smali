.class Lcom/sonymobile/home/apptray/AppTraySorter$1$1;
.super Ljava/lang/Object;
.source "AppTraySorter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/apptray/AppTraySorter$1;->onStatisticsItemChanged(Lcom/sonymobile/home/statistics/StatisticsItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/apptray/AppTraySorter$1;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTraySorter$1;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTraySorter$1$1;->this$1:Lcom/sonymobile/home/apptray/AppTraySorter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTraySorter$1$1;->this$1:Lcom/sonymobile/home/apptray/AppTraySorter$1;

    iget-object v1, v1, Lcom/sonymobile/home/apptray/AppTraySorter$1;->this$0:Lcom/sonymobile/home/apptray/AppTraySorter;

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTraySorter$1$1;->this$1:Lcom/sonymobile/home/apptray/AppTraySorter$1;

    iget-object v2, v2, Lcom/sonymobile/home/apptray/AppTraySorter$1;->this$0:Lcom/sonymobile/home/apptray/AppTraySorter;

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTraySorter;->getSortMode()Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    move-result-object v2

    # invokes: Lcom/sonymobile/home/apptray/AppTraySorter;->sort(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)Z
    invoke-static {v1, v2}, Lcom/sonymobile/home/apptray/AppTraySorter;->access$000(Lcom/sonymobile/home/apptray/AppTraySorter;Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)Z

    move-result v0

    .line 112
    .local v0, "change":Z
    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTraySorter$1$1;->this$1:Lcom/sonymobile/home/apptray/AppTraySorter$1;

    iget-object v1, v1, Lcom/sonymobile/home/apptray/AppTraySorter$1;->this$0:Lcom/sonymobile/home/apptray/AppTraySorter;

    # getter for: Lcom/sonymobile/home/apptray/AppTraySorter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTraySorter;->access$100(Lcom/sonymobile/home/apptray/AppTraySorter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->onModelChanged()V

    .line 115
    :cond_0
    return-void
.end method
