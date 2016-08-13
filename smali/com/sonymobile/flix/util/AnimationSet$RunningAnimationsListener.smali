.class public Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;
.super Ljava/lang/Object;
.source "AnimationSet.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Animation$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/util/AnimationSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RunningAnimationsListener"
.end annotation


# instance fields
.field mHasFinished:Z

.field mNbrFinished:I

.field mNbrStarted:I

.field final synthetic this$0:Lcom/sonymobile/flix/util/AnimationSet;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/flix/util/AnimationSet;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;->this$0:Lcom/sonymobile/flix/util/AnimationSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 491
    iget v0, p0, Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;->mNbrFinished:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;->mNbrFinished:I

    .line 492
    iget v0, p0, Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;->mNbrFinished:I

    iget-object v1, p0, Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;->this$0:Lcom/sonymobile/flix/util/AnimationSet;

    iget-object v1, v1, Lcom/sonymobile/flix/util/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;->mHasFinished:Z

    .line 497
    :cond_0
    return-void
.end method

.method public onStart(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    const/4 v1, 0x1

    .line 478
    iget v0, p0, Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;->mNbrStarted:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;->mNbrStarted:I

    .line 479
    iget v0, p0, Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;->mNbrStarted:I

    if-ne v0, v1, :cond_0

    .line 480
    iget-object v0, p0, Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;->this$0:Lcom/sonymobile/flix/util/AnimationSet;

    iput-boolean v1, v0, Lcom/sonymobile/flix/util/AnimationSet;->mStarted:Z

    .line 485
    iget-object v0, p0, Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;->this$0:Lcom/sonymobile/flix/util/AnimationSet;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/AnimationSet;->notifyStart()V

    .line 487
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 471
    iput-boolean v0, p0, Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;->mHasFinished:Z

    .line 472
    iput v0, p0, Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;->mNbrFinished:I

    .line 473
    iput v0, p0, Lcom/sonymobile/flix/util/AnimationSet$RunningAnimationsListener;->mNbrStarted:I

    .line 474
    return-void
.end method
