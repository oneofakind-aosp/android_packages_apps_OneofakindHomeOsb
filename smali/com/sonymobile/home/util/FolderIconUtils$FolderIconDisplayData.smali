.class final Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;
.super Ljava/lang/Object;
.source "FolderIconUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/util/FolderIconUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FolderIconDisplayData"
.end annotation


# instance fields
.field public final backgroundIconSize:I

.field public final displayDensityDpi:I

.field public final gridIconRect:Landroid/graphics/RectF;

.field public final miniatureIconSize:I

.field public final miniaturePaddingBetween:I

.field public final miniaturePaddingSide:I

.field public final miniaturePaddingTop:I

.field public final stackIconBackRect:Landroid/graphics/RectF;

.field public final stackIconFrontRect:Landroid/graphics/RectF;

.field public final stackIconMiddleRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 12
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "background"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 64
    .local v5, "width":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 66
    .local v2, "height":I
    if-eq v5, v2, :cond_0

    .line 67
    # getter for: Lcom/sonymobile/home/util/FolderIconUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/home/util/FolderIconUtils;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "The folder bg icon is not square!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->backgroundIconSize:I

    .line 72
    const v6, 0x7f0b00cd

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->miniaturePaddingSide:I

    .line 73
    const v6, 0x7f0b00ce

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->miniaturePaddingTop:I

    .line 74
    const v6, 0x7f0b00cc

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 75
    .local v4, "paddingBetween":I
    iget v6, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->backgroundIconSize:I

    iget v7, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->miniaturePaddingSide:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->miniatureIconSize:I

    .line 77
    iget v6, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->backgroundIconSize:I

    iget v7, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->miniatureIconSize:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->miniaturePaddingSide:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->miniaturePaddingBetween:I

    .line 78
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v6, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->displayDensityDpi:I

    .line 79
    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->miniatureIconSize:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->miniatureIconSize:I

    int-to-float v8, v8

    invoke-direct {v6, v10, v10, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->gridIconRect:Landroid/graphics/RectF;

    .line 82
    const/high16 v6, 0x3f000000    # 0.5f

    iget v7, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->backgroundIconSize:I

    int-to-float v7, v7

    mul-float v0, v6, v7

    .line 83
    .local v0, "backIconSize":F
    const v6, 0x3f266666    # 0.65f

    iget v7, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->backgroundIconSize:I

    int-to-float v7, v7

    mul-float v3, v6, v7

    .line 84
    .local v3, "middleIconSize":F
    const v6, 0x3f4ccccd    # 0.8f

    iget v7, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->backgroundIconSize:I

    int-to-float v7, v7

    mul-float v1, v6, v7

    .line 85
    .local v1, "frontIconSize":F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v10, v10, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->stackIconBackRect:Landroid/graphics/RectF;

    .line 86
    iget-object v6, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->stackIconBackRect:Landroid/graphics/RectF;

    iget v7, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->backgroundIconSize:I

    int-to-float v7, v7

    sub-float/2addr v7, v0

    div-float/2addr v7, v11

    const v8, 0x3d99999a    # 0.075f

    iget v9, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->backgroundIconSize:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 87
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v10, v10, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->stackIconMiddleRect:Landroid/graphics/RectF;

    .line 88
    iget-object v6, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->stackIconMiddleRect:Landroid/graphics/RectF;

    iget v7, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->backgroundIconSize:I

    int-to-float v7, v7

    sub-float/2addr v7, v3

    div-float/2addr v7, v11

    const/high16 v8, 0x3e000000    # 0.125f

    iget v9, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->backgroundIconSize:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 89
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v10, v10, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->stackIconFrontRect:Landroid/graphics/RectF;

    .line 90
    iget-object v6, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->stackIconFrontRect:Landroid/graphics/RectF;

    iget v7, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->backgroundIconSize:I

    int-to-float v7, v7

    sub-float/2addr v7, v1

    div-float/2addr v7, v11

    const v8, 0x3e4ccccd    # 0.2f

    iget v9, p0, Lcom/sonymobile/home/util/FolderIconUtils$FolderIconDisplayData;->backgroundIconSize:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 91
    return-void
.end method
