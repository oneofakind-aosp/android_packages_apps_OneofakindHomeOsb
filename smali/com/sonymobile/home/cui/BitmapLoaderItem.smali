.class public Lcom/sonymobile/home/cui/BitmapLoaderItem;
.super Ljava/lang/Object;
.source "BitmapLoaderItem.java"


# instance fields
.field private final mIconBitmap:Landroid/graphics/Bitmap;

.field private final mLabelBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "iconBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "labelBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sonymobile/home/cui/BitmapLoaderItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 21
    iput-object p2, p0, Lcom/sonymobile/home/cui/BitmapLoaderItem;->mLabelBitmap:Landroid/graphics/Bitmap;

    .line 22
    return-void
.end method


# virtual methods
.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/home/cui/BitmapLoaderItem;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLabelBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonymobile/home/cui/BitmapLoaderItem;->mLabelBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
