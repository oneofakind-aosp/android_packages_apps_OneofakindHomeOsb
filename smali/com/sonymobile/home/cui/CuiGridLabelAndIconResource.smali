.class public Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;
.super Ljava/lang/Object;
.source "CuiGridLabelAndIconResource.java"

# interfaces
.implements Lcom/sonymobile/home/cui/CuiGridResource;


# instance fields
.field private final mBitmap1:Landroid/graphics/Bitmap;

.field private mBitmap2:Landroid/graphics/Bitmap;

.field private final mLabel:Ljava/lang/String;

.field private final mLabelBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "labelBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "bitmap1"    # Landroid/graphics/Bitmap;
    .param p4, "bitmap2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;->mLabelBitmap:Landroid/graphics/Bitmap;

    .line 27
    iput-object p2, p0, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;->mLabel:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;->mBitmap1:Landroid/graphics/Bitmap;

    .line 29
    iput-object p4, p0, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;->mBitmap2:Landroid/graphics/Bitmap;

    .line 30
    return-void
.end method


# virtual methods
.method public getBitmap1()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;->mBitmap1:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmap2()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;->mBitmap2:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;->mLabelBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
