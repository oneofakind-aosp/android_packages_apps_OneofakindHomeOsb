.class Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetStepsAsyncParams;
.super Ljava/lang/Object;
.source "WallpaperWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/WallpaperWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OffsetStepsAsyncParams"
.end annotation


# instance fields
.field public final xStep:F

.field public final yStep:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "xStep"    # F
    .param p2, "yStep"    # F

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput p1, p0, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetStepsAsyncParams;->xStep:F

    .line 255
    iput p2, p0, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetStepsAsyncParams;->yStep:F

    .line 256
    return-void
.end method
