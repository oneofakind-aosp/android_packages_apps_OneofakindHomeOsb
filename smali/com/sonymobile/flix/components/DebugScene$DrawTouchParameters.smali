.class public Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;
.super Ljava/lang/Object;
.source "DebugScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/components/DebugScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawTouchParameters"
.end annotation


# instance fields
.field protected mRadiusDp:F

.field protected mReleasingAlpha:F

.field protected mReleasingDuration:J

.field protected mRgbColor:I

.field protected mTouchingAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const v0, 0xffff

    iput v0, p0, Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;->mRgbColor:I

    .line 217
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;->mRadiusDp:F

    .line 218
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;->mTouchingAlpha:F

    .line 219
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;->mReleasingAlpha:F

    .line 220
    const-wide/16 v0, 0x2ee

    iput-wide v0, p0, Lcom/sonymobile/flix/components/DebugScene$DrawTouchParameters;->mReleasingDuration:J

    .line 221
    return-void
.end method
