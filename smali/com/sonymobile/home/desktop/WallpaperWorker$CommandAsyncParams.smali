.class Lcom/sonymobile/home/desktop/WallpaperWorker$CommandAsyncParams;
.super Ljava/lang/Object;
.source "WallpaperWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/WallpaperWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommandAsyncParams"
.end annotation


# instance fields
.field public final action:Ljava/lang/String;

.field public final extras:Landroid/os/Bundle;

.field public final winToken:Landroid/os/IBinder;

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .locals 0
    .param p1, "winToken"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Lcom/sonymobile/home/desktop/WallpaperWorker$CommandAsyncParams;->winToken:Landroid/os/IBinder;

    .line 273
    iput-object p2, p0, Lcom/sonymobile/home/desktop/WallpaperWorker$CommandAsyncParams;->action:Ljava/lang/String;

    .line 274
    iput p3, p0, Lcom/sonymobile/home/desktop/WallpaperWorker$CommandAsyncParams;->x:I

    .line 275
    iput p4, p0, Lcom/sonymobile/home/desktop/WallpaperWorker$CommandAsyncParams;->y:I

    .line 276
    iput p5, p0, Lcom/sonymobile/home/desktop/WallpaperWorker$CommandAsyncParams;->z:I

    .line 277
    iput-object p6, p0, Lcom/sonymobile/home/desktop/WallpaperWorker$CommandAsyncParams;->extras:Landroid/os/Bundle;

    .line 278
    return-void
.end method
