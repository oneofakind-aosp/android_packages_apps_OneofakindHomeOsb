.class public Lcom/sonymobile/home/desktop/cui/CuiTransferable;
.super Ljava/lang/Object;
.source "CuiTransferable.java"

# interfaces
.implements Lcom/sonymobile/home/transfer/Transferable;


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mCancellable:Z

.field private final mColSpan:I

.field private final mComponent:Lcom/sonymobile/flix/components/Component;

.field private mDropHintBitmap:Landroid/graphics/Bitmap;

.field private final mGridItem:Lcom/sonymobile/home/cui/CuiGridItem;

.field private final mItem:Lcom/sonymobile/home/data/Item;

.field private final mRowSpan:I

.field private final mSupportsHinting:Z

.field private final mZ:F


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/data/Item;Landroid/graphics/Bitmap;ZIILcom/sonymobile/home/cui/CuiGridItem;F)V
    .locals 1
    .param p1, "comp"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "supportsHinting"    # Z
    .param p5, "rowSpan"    # I
    .param p6, "colSpan"    # I
    .param p7, "gridItem"    # Lcom/sonymobile/home/cui/CuiGridItem;
    .param p8, "z"    # F

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->mCancellable:Z

    .line 36
    iput-object p1, p0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->mComponent:Lcom/sonymobile/flix/components/Component;

    .line 37
    iput-object p2, p0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->mItem:Lcom/sonymobile/home/data/Item;

    .line 38
    iput-object p3, p0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->mBitmap:Landroid/graphics/Bitmap;

    .line 39
    iput-boolean p4, p0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->mSupportsHinting:Z

    .line 40
    iput p5, p0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->mRowSpan:I

    .line 41
    iput p6, p0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->mColSpan:I

    .line 42
    iput-object p7, p0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->mGridItem:Lcom/sonymobile/home/cui/CuiGridItem;

    .line 43
    iput p8, p0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->mZ:F

    .line 44
    return-void
.end method


# virtual methods
.method public bitmapContainsIconOnly()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->mComponent:Lcom/sonymobile/flix/components/Component;

    instance-of v0, v0, Lcom/sonymobile/home/cui/AppShortcutGridItemView;

    return v0
.end method

.method public bitmapHasPadding()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getColSpan()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->mColSpan:I

    return v0
.end method

.method public getComponent()Lcom/sonymobile/flix/components/Component;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->mComponent:Lcom/sonymobile/flix/components/Component;

    return-object v0
.end method

.method public getCuiItem()Lcom/sonymobile/home/cui/CuiGridItem;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->mGridItem:Lcom/sonymobile/home/cui/CuiGridItem;

    return-object v0
.end method

.method public getDropHintBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->mDropHintBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getItem()Lcom/sonymobile/home/data/Item;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->mItem:Lcom/sonymobile/home/data/Item;

    return-object v0
.end method

.method public getRowSpan()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->mRowSpan:I

    return v0
.end method

.method public getWorldZ()F
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->mZ:F

    return v0
.end method

.method public isCancellable()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->mCancellable:Z

    return v0
.end method

.method public setDropHintBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->mDropHintBitmap:Landroid/graphics/Bitmap;

    .line 98
    return-void
.end method

.method public setIsCancellable(Z)V
    .locals 0
    .param p1, "cancellable"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->mCancellable:Z

    .line 118
    return-void
.end method

.method public supportsHinting()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/cui/CuiTransferable;->mSupportsHinting:Z

    return v0
.end method
