.class public Lcom/sonymobile/flix/components/DebugScene;
.super Lcom/sonymobile/flix/components/Scene;
.source "DebugScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/components/DebugScene$Benchmark;,
        Lcom/sonymobile/flix/components/DebugScene$Benchmarks;,
        Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;,
        Lcom/sonymobile/flix/components/DebugScene$DrawTouchPointer;
    }
.end annotation


# instance fields
.field protected mBenchmark:Z

.field protected mBenchmarks:Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

.field protected mDebugPaint:Landroid/graphics/Paint;

.field protected mDrawTouch:Z

.field protected mDrawTouchParams:Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;

.field protected mDrawTouchPointers:[Lcom/sonymobile/flix/components/DebugScene$DrawTouchPointer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sonymobile/flix/components/Scene;-><init>()V

    .line 30
    new-instance v0, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

    invoke-direct {v0}, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmarks:Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

    .line 31
    new-instance v0, Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/DebugScene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/flix/components/DebugScene;->mDrawTouchParams:Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;

    .line 32
    return-void
.end method

.method private debugDrawTouch(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 145
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 146
    .local v6, "now":J
    iget-boolean v8, p0, Lcom/sonymobile/flix/components/DebugScene;->mTouching:Z

    if-eqz v8, :cond_0

    .line 147
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v8, p0, Lcom/sonymobile/flix/components/DebugScene;->mDrawTouchPointers:[Lcom/sonymobile/flix/components/DebugScene$DrawTouchPointer;

    array-length v8, v8

    if-ge v4, v8, :cond_0

    .line 148
    iget-object v8, p0, Lcom/sonymobile/flix/components/DebugScene;->mDrawTouchPointers:[Lcom/sonymobile/flix/components/DebugScene$DrawTouchPointer;

    aget-object v8, v8, v4

    iput-wide v6, v8, Lcom/sonymobile/flix/components/DebugScene$DrawTouchPointer;->mReleaseTime:J

    .line 147
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    .end local v4    # "i":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget-object v8, p0, Lcom/sonymobile/flix/components/DebugScene;->mDrawTouchPointers:[Lcom/sonymobile/flix/components/DebugScene$DrawTouchPointer;

    array-length v8, v8

    if-ge v4, v8, :cond_4

    .line 152
    iget-object v8, p0, Lcom/sonymobile/flix/components/DebugScene;->mDrawTouchPointers:[Lcom/sonymobile/flix/components/DebugScene$DrawTouchPointer;

    aget-object v1, v8, v4

    .line 154
    .local v1, "drawTouchPointer":Lcom/sonymobile/flix/components/DebugScene$DrawTouchPointer;
    iget-wide v8, v1, Lcom/sonymobile/flix/components/DebugScene$DrawTouchPointer;->mReleaseTime:J

    sub-long v2, v6, v8

    .line 155
    .local v2, "elapsed":J
    iget-object v8, p0, Lcom/sonymobile/flix/components/DebugScene;->mDrawTouchParams:Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;

    iget-wide v8, v8, Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;->mReleasingDuration:J

    cmp-long v8, v2, v8

    if-gez v8, :cond_2

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-ltz v8, :cond_2

    .line 156
    iget-object v8, p0, Lcom/sonymobile/flix/components/DebugScene;->mDebugPaint:Landroid/graphics/Paint;

    if-nez v8, :cond_1

    .line 157
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/sonymobile/flix/components/DebugScene;->mDebugPaint:Landroid/graphics/Paint;

    .line 158
    iget-object v8, p0, Lcom/sonymobile/flix/components/DebugScene;->mDebugPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/sonymobile/flix/components/DebugScene;->mDrawTouchParams:Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;

    iget v9, v9, Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;->mRgbColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-nez v8, :cond_3

    .line 162
    iget-object v8, p0, Lcom/sonymobile/flix/components/DebugScene;->mDebugPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/sonymobile/flix/components/DebugScene;->mDrawTouchParams:Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;

    iget v9, v9, Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;->mTouchingAlpha:F

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 171
    :goto_2
    iget-object v8, p0, Lcom/sonymobile/flix/components/DebugScene;->mDrawTouchParams:Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;

    iget v8, v8, Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;->mRadiusDp:F

    invoke-virtual {p0}, Lcom/sonymobile/flix/components/DebugScene;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    add-float v5, v8, v9

    .line 173
    .local v5, "radius":F
    iget v8, v1, Lcom/sonymobile/flix/components/DebugScene$DrawTouchPointer;->mLastX:F

    iget v9, v1, Lcom/sonymobile/flix/components/DebugScene$DrawTouchPointer;->mLastY:F

    iget-object v10, p0, Lcom/sonymobile/flix/components/DebugScene;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v5, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 175
    .end local v5    # "radius":F
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/DebugScene;->invalidate()V

    .line 151
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 166
    :cond_3
    iget-object v8, p0, Lcom/sonymobile/flix/components/DebugScene;->mDrawTouchParams:Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;

    iget v0, v8, Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;->mReleasingAlpha:F

    .line 167
    .local v0, "alpha":F
    iget-object v8, p0, Lcom/sonymobile/flix/components/DebugScene;->mDebugPaint:Landroid/graphics/Paint;

    long-to-float v9, v2

    mul-float/2addr v9, v0

    iget-object v10, p0, Lcom/sonymobile/flix/components/DebugScene;->mDrawTouchParams:Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;

    iget-wide v10, v10, Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;->mReleasingDuration:J

    long-to-float v10, v10

    div-float/2addr v9, v10

    sub-float v9, v0, v9

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    .line 177
    .end local v0    # "alpha":F
    .end local v1    # "drawTouchPointer":Lcom/sonymobile/flix/components/DebugScene$DrawTouchPointer;
    .end local v2    # "elapsed":J
    :cond_4
    return-void
.end method

.method private debugPrintBenchmark()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 180
    iget-boolean v0, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmark:Z

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BENCHMARKS: Draw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmarks:Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

    iget-object v1, v1, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mDraw:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    iget-wide v2, v1, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmarks:Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

    iget-object v1, v1, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mDraw:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    iget-wide v2, v1, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mThreadDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms], Update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmarks:Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

    iget-object v1, v1, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mUpdate:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    iget-wide v2, v1, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmarks:Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

    iget-object v1, v1, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mUpdate:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    iget-wide v2, v1, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mThreadDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms], Input: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmarks:Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

    iget-object v1, v1, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mInput:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    iget-wide v2, v1, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmarks:Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

    iget-object v1, v1, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mInput:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    iget-wide v2, v1, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mThreadDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/flix/debug/Logx$Short;->d(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmarks:Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

    iget-object v0, v0, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mDraw:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    iput-wide v4, v0, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mDuration:J

    .line 188
    iget-object v0, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmarks:Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

    iget-object v0, v0, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mDraw:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    iput-wide v4, v0, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mThreadDuration:J

    .line 189
    iget-object v0, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmarks:Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

    iget-object v0, v0, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mUpdate:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    iput-wide v4, v0, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mDuration:J

    .line 190
    iget-object v0, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmarks:Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

    iget-object v0, v0, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mUpdate:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    iput-wide v4, v0, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mThreadDuration:J

    .line 191
    iget-object v0, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmarks:Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

    iget-object v0, v0, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mInput:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    iput-wide v4, v0, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mDuration:J

    .line 192
    iget-object v0, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmarks:Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

    iget-object v0, v0, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mInput:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    iput-wide v4, v0, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mThreadDuration:J

    .line 194
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 88
    const-wide/16 v2, 0x0

    .line 89
    .local v2, "rI":J
    const-wide/16 v4, 0x0

    .line 90
    .local v4, "tI":J
    iget-boolean v1, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmark:Z

    if-eqz v1, :cond_0

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    .line 95
    :cond_0
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Scene;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 97
    .local v0, "consumed":Z
    iget-boolean v1, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmark:Z

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmarks:Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

    iget-object v1, v1, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mInput:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    iget-wide v6, v1, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mThreadDuration:J

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mThreadDuration:J

    .line 99
    iget-object v1, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmarks:Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

    iget-object v1, v1, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mInput:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    iget-wide v6, v1, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mDuration:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v2

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mDuration:J

    .line 102
    :cond_1
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 49
    const-wide/16 v6, 0x0

    .line 50
    .local v6, "rI":J
    const-wide/16 v8, 0x0

    .line 51
    .local v8, "tI":J
    iget-boolean v5, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmark:Z

    if-eqz v5, :cond_0

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    .line 56
    :cond_0
    iget-boolean v5, p0, Lcom/sonymobile/flix/components/DebugScene;->mDrawTouch:Z

    if-eqz v5, :cond_5

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 58
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const v10, 0xff00

    and-int/2addr v5, v10

    shr-int/lit8 v4, v5, 0x8

    .line 59
    .local v4, "pointerIndex":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 60
    .local v3, "pointerId":I
    iget-object v5, p0, Lcom/sonymobile/flix/components/DebugScene;->mDrawTouchPointers:[Lcom/sonymobile/flix/components/DebugScene$DrawTouchPointer;

    aget-object v2, v5, v3

    .line 61
    .local v2, "drawTouchPointer":Lcom/sonymobile/flix/components/DebugScene$DrawTouchPointer;
    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    .line 69
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Scene;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 71
    .local v1, "consumed":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v2, Lcom/sonymobile/flix/components/DebugScene$DrawTouchPointer;->mLastX:F

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v2, Lcom/sonymobile/flix/components/DebugScene$DrawTouchPointer;->mLastY:F

    .line 73
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/DebugScene;->invalidate()V

    .line 78
    .end local v0    # "action":I
    .end local v2    # "drawTouchPointer":Lcom/sonymobile/flix/components/DebugScene$DrawTouchPointer;
    .end local v3    # "pointerId":I
    .end local v4    # "pointerIndex":I
    :goto_1
    iget-boolean v5, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmark:Z

    if-eqz v5, :cond_2

    .line 79
    iget-object v5, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmarks:Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

    iget-object v5, v5, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mInput:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    iget-wide v10, v5, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mThreadDuration:J

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    add-long/2addr v10, v12

    iput-wide v10, v5, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mThreadDuration:J

    .line 80
    iget-object v5, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmarks:Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

    iget-object v5, v5, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mInput:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    iget-wide v10, v5, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mDuration:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v6

    add-long/2addr v10, v12

    iput-wide v10, v5, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mDuration:J

    .line 83
    :cond_2
    return v1

    .line 63
    .end local v1    # "consumed":Z
    .restart local v0    # "action":I
    .restart local v2    # "drawTouchPointer":Lcom/sonymobile/flix/components/DebugScene$DrawTouchPointer;
    .restart local v3    # "pointerId":I
    .restart local v4    # "pointerIndex":I
    :cond_3
    const/4 v5, 0x1

    if-eq v0, v5, :cond_4

    const/4 v5, 0x6

    if-eq v0, v5, :cond_4

    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    const/4 v5, 0x4

    if-ne v0, v5, :cond_1

    .line 66
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/sonymobile/flix/components/DebugScene$DrawTouchPointer;->mReleaseTime:J

    goto :goto_0

    .line 75
    .end local v0    # "action":I
    .end local v2    # "drawTouchPointer":Lcom/sonymobile/flix/components/DebugScene$DrawTouchPointer;
    .end local v3    # "pointerId":I
    .end local v4    # "pointerIndex":I
    :cond_5
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Scene;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .restart local v1    # "consumed":Z
    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;FFLcom/sonymobile/flix/components/Component$DrawingState;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "drawingState"    # Lcom/sonymobile/flix/components/Component$DrawingState;

    .prologue
    .line 124
    const-wide/16 v0, 0x0

    .line 125
    .local v0, "rD":J
    const-wide/16 v2, 0x0

    .line 126
    .local v2, "tD":J
    iget-boolean v4, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmark:Z

    if-eqz v4, :cond_0

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    .line 131
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonymobile/flix/components/Scene;->draw(Landroid/graphics/Canvas;FFLcom/sonymobile/flix/components/Component$DrawingState;)V

    .line 133
    iget-boolean v4, p0, Lcom/sonymobile/flix/components/DebugScene;->mDrawTouch:Z

    if-eqz v4, :cond_1

    .line 134
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/DebugScene;->debugDrawTouch(Landroid/graphics/Canvas;)V

    .line 137
    :cond_1
    iget-boolean v4, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmark:Z

    if-eqz v4, :cond_2

    .line 138
    iget-object v4, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmarks:Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

    iget-object v4, v4, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mDraw:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    iget-wide v6, v4, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mThreadDuration:J

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    add-long/2addr v6, v8

    iput-wide v6, v4, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mThreadDuration:J

    .line 139
    iget-object v4, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmarks:Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

    iget-object v4, v4, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mDraw:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    iget-wide v6, v4, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mDuration:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v0

    add-long/2addr v6, v8

    iput-wide v6, v4, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mDuration:J

    .line 140
    invoke-direct {p0}, Lcom/sonymobile/flix/components/DebugScene;->debugPrintBenchmark()V

    .line 142
    :cond_2
    return-void
.end method

.method protected update()V
    .locals 10

    .prologue
    .line 107
    const-wide/16 v0, 0x0

    .line 108
    .local v0, "rU":J
    const-wide/16 v2, 0x0

    .line 109
    .local v2, "tU":J
    iget-boolean v4, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmark:Z

    if-eqz v4, :cond_0

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    .line 114
    :cond_0
    invoke-super {p0}, Lcom/sonymobile/flix/components/Scene;->update()V

    .line 116
    iget-boolean v4, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmark:Z

    if-eqz v4, :cond_1

    .line 117
    iget-object v4, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmarks:Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

    iget-object v4, v4, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mUpdate:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    iget-wide v6, v4, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mThreadDuration:J

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    add-long/2addr v6, v8

    iput-wide v6, v4, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mThreadDuration:J

    .line 118
    iget-object v4, p0, Lcom/sonymobile/flix/components/DebugScene;->mBenchmarks:Lcom/sonymobile/flix/components/DebugScene$Benchmarks;

    iget-object v4, v4, Lcom/sonymobile/flix/components/DebugScene$Benchmarks;->mUpdate:Lcom/sonymobile/flix/components/DebugScene$Benchmark;

    iget-wide v6, v4, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mDuration:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v0

    add-long/2addr v6, v8

    iput-wide v6, v4, Lcom/sonymobile/flix/components/DebugScene$Benchmark;->mDuration:J

    .line 120
    :cond_1
    return-void
.end method
