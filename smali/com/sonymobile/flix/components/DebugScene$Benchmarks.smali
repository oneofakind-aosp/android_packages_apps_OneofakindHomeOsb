.class Lcom/sonymobile/flix/components/DebugScene$Benchmarks;
.super Ljava/lang/Object;
.source "DebugScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/components/DebugScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Benchmarks"
.end annotation


# instance fields
.field public mDraw:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

.field public mInput:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

.field public mUpdate:Lcom/sonymobile/flix/components/DebugScene$Benchmark;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    new-instance v0, Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    invoke-direct {v0}, Lcom/sonymobile/flix/components/DebugScene$Benchmark;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mDraw:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    .line 247
    new-instance v0, Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    invoke-direct {v0}, Lcom/sonymobile/flix/components/DebugScene$Benchmark;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mUpdate:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    .line 249
    new-instance v0, Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    invoke-direct {v0}, Lcom/sonymobile/flix/components/DebugScene$Benchmark;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mInput:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    .line 252
    return-void
.end method
