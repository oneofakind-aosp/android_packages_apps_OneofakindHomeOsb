.class Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParamsPool;
.super Ljava/lang/Object;
.source "WallpaperWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/WallpaperWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OffsetAsyncParamsPool"
.end annotation


# instance fields
.field private final mOffsetAsyncParamsPool:Landroid/support/v4/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SynchronizedPool",
            "<",
            "Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParamsPool;->mOffsetAsyncParamsPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    .line 234
    return-void
.end method


# virtual methods
.method public obtain()Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;
    .locals 2

    .prologue
    .line 237
    iget-object v1, p0, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParamsPool;->mOffsetAsyncParamsPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;

    .line 238
    .local v0, "params":Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;
    if-nez v0, :cond_0

    new-instance v0, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;

    .end local v0    # "params":Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;-><init>(Lcom/sonymobile/home/desktop/WallpaperWorker$1;)V

    :cond_0
    return-object v0
.end method

.method public release(Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParamsPool;->mOffsetAsyncParamsPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 243
    return-void
.end method
