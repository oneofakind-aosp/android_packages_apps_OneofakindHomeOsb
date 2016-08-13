.class Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;
.super Ljava/lang/Object;
.source "WallpaperWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/WallpaperWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OffsetAsyncParams"
.end annotation


# instance fields
.field public winToken:Landroid/os/IBinder;

.field public xOffset:F

.field public yOffset:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/desktop/WallpaperWorker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/desktop/WallpaperWorker$1;

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;-><init>()V

    return-void
.end method


# virtual methods
.method public setValues(Landroid/os/IBinder;FF)V
    .locals 0
    .param p1, "winToken"    # Landroid/os/IBinder;
    .param p2, "xOffset"    # F
    .param p3, "yOffset"    # F

    .prologue
    .line 219
    iput-object p1, p0, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;->winToken:Landroid/os/IBinder;

    .line 220
    iput p2, p0, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;->xOffset:F

    .line 221
    iput p3, p0, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;->yOffset:F

    .line 222
    return-void
.end method
