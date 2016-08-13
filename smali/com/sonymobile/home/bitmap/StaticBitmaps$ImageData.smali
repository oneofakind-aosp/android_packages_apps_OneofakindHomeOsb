.class final Lcom/sonymobile/home/bitmap/StaticBitmaps$ImageData;
.super Ljava/lang/Object;
.source "StaticBitmaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/bitmap/StaticBitmaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImageData"
.end annotation


# instance fields
.field final bitmap:Landroid/graphics/Bitmap;

.field final rect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sonymobile/home/bitmap/StaticBitmaps$ImageData;->bitmap:Landroid/graphics/Bitmap;

    .line 30
    iput-object p2, p0, Lcom/sonymobile/home/bitmap/StaticBitmaps$ImageData;->rect:Landroid/graphics/Rect;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lcom/sonymobile/home/bitmap/StaticBitmaps$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/Bitmap;
    .param p2, "x1"    # Landroid/graphics/Rect;
    .param p3, "x2"    # Lcom/sonymobile/home/bitmap/StaticBitmaps$1;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/bitmap/StaticBitmaps$ImageData;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-void
.end method
