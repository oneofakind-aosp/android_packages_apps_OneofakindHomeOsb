.class public abstract Lcom/sonymobile/flix/util/Worker$Task;
.super Ljava/lang/Object;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/util/Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Task"
.end annotation


# instance fields
.field mCanceled:Z

.field mId:Ljava/lang/Object;

.field mInterruptOnCancel:Z

.field final mName:Ljava/lang/String;

.field mOnMainThread:Z

.field mQueuePriority:I

.field mSequence:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/flix/util/Worker$Task;-><init>(Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput-object p1, p0, Lcom/sonymobile/flix/util/Worker$Task;->mName:Ljava/lang/String;

    .line 651
    iput-object p1, p0, Lcom/sonymobile/flix/util/Worker$Task;->mId:Ljava/lang/Object;

    .line 652
    return-void
.end method


# virtual methods
.method public isCanceled()Z
    .locals 1

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/sonymobile/flix/util/Worker$Task;->mCanceled:Z

    return v0
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 705
    return-void
.end method

.method public abstract onExecute()V
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 698
    return-void
.end method

.method public onSetup()V
    .locals 0

    .prologue
    .line 687
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/sonymobile/flix/util/Worker$Task;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/flix/util/Worker$Task;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
