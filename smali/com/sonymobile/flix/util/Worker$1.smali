.class Lcom/sonymobile/flix/util/Worker$1;
.super Ljava/lang/Object;
.source "Worker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/flix/util/Worker;-><init>(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonymobile/flix/util/Worker$Task;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/flix/util/Worker;


# direct methods
.method constructor <init>(Lcom/sonymobile/flix/util/Worker;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/sonymobile/flix/util/Worker$1;->this$0:Lcom/sonymobile/flix/util/Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/flix/util/Worker$Task;Lcom/sonymobile/flix/util/Worker$Task;)I
    .locals 2
    .param p1, "task1"    # Lcom/sonymobile/flix/util/Worker$Task;
    .param p2, "task2"    # Lcom/sonymobile/flix/util/Worker$Task;

    .prologue
    .line 172
    iget v0, p1, Lcom/sonymobile/flix/util/Worker$Task;->mQueuePriority:I

    iget v1, p2, Lcom/sonymobile/flix/util/Worker$Task;->mQueuePriority:I

    if-eq v0, v1, :cond_0

    .line 174
    iget v0, p2, Lcom/sonymobile/flix/util/Worker$Task;->mQueuePriority:I

    iget v1, p1, Lcom/sonymobile/flix/util/Worker$Task;->mQueuePriority:I

    sub-int/2addr v0, v1

    .line 178
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/sonymobile/flix/util/Worker$Task;->mSequence:I

    iget v1, p2, Lcom/sonymobile/flix/util/Worker$Task;->mSequence:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 167
    check-cast p1, Lcom/sonymobile/flix/util/Worker$Task;

    check-cast p2, Lcom/sonymobile/flix/util/Worker$Task;

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/flix/util/Worker$1;->compare(Lcom/sonymobile/flix/util/Worker$Task;Lcom/sonymobile/flix/util/Worker$Task;)I

    move-result v0

    return v0
.end method
