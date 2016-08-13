.class public Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;
.super Ljava/lang/Object;
.source "PageItemViewTransferable.java"

# interfaces
.implements Lcom/sonymobile/home/transfer/Transferable;


# instance fields
.field protected mCancellable:Z

.field protected mDropHintBitmap:Landroid/graphics/Bitmap;

.field protected final mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 1
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;->mCancellable:Z

    .line 22
    iput-object p1, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 23
    return-void
.end method


# virtual methods
.method public bitmapContainsIconOnly()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    instance-of v0, v0, Lcom/sonymobile/home/presenter/view/IconLabelView;

    return v0
.end method

.method public bitmapHasPadding()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    instance-of v0, v0, Lcom/sonymobile/home/presenter/view/IconLabelView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    instance-of v0, v0, Lcom/sonymobile/home/presenter/view/IconLabelView;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    check-cast v0, Lcom/sonymobile/home/presenter/view/IconLabelView;

    invoke-virtual {v0}, Lcom/sonymobile/home/presenter/view/IconLabelView;->getImage()Lcom/sonymobile/flix/components/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColSpan()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    return v0
.end method

.method public getComponent()Lcom/sonymobile/flix/components/Component;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    return-object v0
.end method

.method public getDropHintBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;->mDropHintBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getItem()Lcom/sonymobile/home/data/Item;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v0

    return-object v0
.end method

.method public getRowSpan()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    return v0
.end method

.method public getWorldZ()F
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getWorldZ()F

    move-result v0

    return v0
.end method

.method public isCancellable()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;->mCancellable:Z

    return v0
.end method

.method public setDropHintBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;->mDropHintBitmap:Landroid/graphics/Bitmap;

    .line 74
    return-void
.end method

.method public setIsCancellable(Z)V
    .locals 0
    .param p1, "cancellable"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;->mCancellable:Z

    .line 99
    return-void
.end method

.method public supportsHinting()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method
