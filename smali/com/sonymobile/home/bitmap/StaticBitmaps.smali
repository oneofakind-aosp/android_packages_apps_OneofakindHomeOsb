.class public Lcom/sonymobile/home/bitmap/StaticBitmaps;
.super Ljava/lang/Object;
.source "StaticBitmaps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/bitmap/StaticBitmaps$1;,
        Lcom/sonymobile/home/bitmap/StaticBitmaps$ImageData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sBitmapArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonymobile/home/bitmap/StaticBitmaps$ImageData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/sonymobile/home/bitmap/StaticBitmaps;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/bitmap/StaticBitmaps;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sonymobile/home/bitmap/StaticBitmaps;->sBitmapArray:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private static addToCache(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "resId"    # I
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 120
    new-instance v0, Lcom/sonymobile/home/bitmap/StaticBitmaps$ImageData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/sonymobile/home/bitmap/StaticBitmaps$ImageData;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lcom/sonymobile/home/bitmap/StaticBitmaps$1;)V

    .line 122
    .local v0, "data":Lcom/sonymobile/home/bitmap/StaticBitmaps$ImageData;
    sget-object v1, Lcom/sonymobile/home/bitmap/StaticBitmaps;->sBitmapArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    return-void
.end method

.method public static declared-synchronized clearAll()V
    .locals 2

    .prologue
    .line 94
    const-class v1, Lcom/sonymobile/home/bitmap/StaticBitmaps;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sonymobile/home/bitmap/StaticBitmaps;->sBitmapArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit v1

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getBitmapCopy(Lcom/sonymobile/home/resources/ResourceManager;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "rm"    # Lcom/sonymobile/home/resources/ResourceManager;
    .param p1, "resId"    # I

    .prologue
    .line 64
    const-class v2, Lcom/sonymobile/home/bitmap/StaticBitmaps;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/sonymobile/home/bitmap/StaticBitmaps;->getOrCreateBitmap(Lcom/sonymobile/home/resources/ResourceManager;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 66
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 68
    :cond_0
    monitor-exit v2

    return-object v0

    .line 64
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getFromCache(ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "resId"    # I
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 107
    sget-object v2, Lcom/sonymobile/home/bitmap/StaticBitmaps;->sBitmapArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/bitmap/StaticBitmaps$ImageData;

    .line 108
    .local v1, "data":Lcom/sonymobile/home/bitmap/StaticBitmaps$ImageData;
    const/4 v0, 0x0

    .line 110
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 111
    iget-object v0, v1, Lcom/sonymobile/home/bitmap/StaticBitmaps$ImageData;->bitmap:Landroid/graphics/Bitmap;

    .line 112
    iget-object v2, v1, Lcom/sonymobile/home/bitmap/StaticBitmaps$ImageData;->rect:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 113
    iget-object v2, v1, Lcom/sonymobile/home/bitmap/StaticBitmaps$ImageData;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 116
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getNinePatchBitmap(Lcom/sonymobile/home/resources/ResourceManager;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "rm"    # Lcom/sonymobile/home/resources/ResourceManager;
    .param p1, "resId"    # I
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 84
    const-class v1, Lcom/sonymobile/home/bitmap/StaticBitmaps;

    monitor-enter v1

    if-nez p2, :cond_0

    .line 85
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Rect must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 87
    :cond_0
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/sonymobile/home/bitmap/StaticBitmaps;->getOrCreateBitmap(Lcom/sonymobile/home/resources/ResourceManager;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method private static getOrCreateBitmap(Lcom/sonymobile/home/resources/ResourceManager;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "rm"    # Lcom/sonymobile/home/resources/ResourceManager;
    .param p1, "resId"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 126
    invoke-static {p1, p2}, Lcom/sonymobile/home/bitmap/StaticBitmaps;->getFromCache(ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 129
    if-eqz p2, :cond_1

    .line 130
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 132
    .local v2, "ninePatchRect":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v2}, Lcom/sonymobile/home/resources/ResourceManager;->getNinePatchBitmap(ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-static {p1, v0, v2}, Lcom/sonymobile/home/bitmap/StaticBitmaps;->addToCache(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 135
    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 146
    .end local v2    # "ninePatchRect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-object v0

    .line 139
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/resources/ResourceManager;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    const/4 v3, 0x0

    invoke-static {p1, v0, v3}, Lcom/sonymobile/home/bitmap/StaticBitmaps;->addToCache(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sonymobile/home/bitmap/StaticBitmaps;->TAG:Ljava/lang/String;

    const-string v4, "getBitmap: resource not found!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
