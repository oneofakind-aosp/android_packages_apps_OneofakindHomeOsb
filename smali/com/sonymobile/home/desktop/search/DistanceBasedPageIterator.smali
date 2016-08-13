.class public final Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;
.super Lcom/sonymobile/home/desktop/search/PageIterator;
.source "DistanceBasedPageIterator.java"


# instance fields
.field private mIndexDelta:I

.field private final mInitSign:I

.field private mSign:I


# direct methods
.method public constructor <init>(I[II)V
    .locals 1
    .param p1, "startIndex"    # I
    .param p2, "pageArray"    # [I
    .param p3, "initSign"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/desktop/search/PageIterator;-><init>(I[I)V

    .line 42
    iput p3, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mInitSign:I

    .line 44
    iput p3, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mSign:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mIndexDelta:I

    .line 46
    return-void
.end method


# virtual methods
.method public next()I
    .locals 3

    .prologue
    .line 50
    iget v0, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mIndexDelta:I

    if-lez v0, :cond_0

    .line 51
    iget v0, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mCurrentIndex:I

    iget v1, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mSign:I

    iget v2, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mIndexDelta:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mCurrentIndex:I

    .line 52
    iget v0, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mSign:I

    neg-int v0, v0

    iput v0, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mSign:I

    .line 54
    iget v0, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->isInValidRange(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget v0, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mIndexDelta:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mIndexDelta:I

    .line 56
    iget v0, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mCurrentIndex:I

    iget v1, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mSign:I

    iget v2, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mIndexDelta:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mCurrentIndex:I

    .line 57
    iget v0, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mSign:I

    neg-int v0, v0

    iput v0, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mSign:I

    .line 61
    :cond_0
    iget v0, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mNumberOfPagesIterated:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mNumberOfPagesIterated:I

    .line 62
    iget v0, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mIndexDelta:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mIndexDelta:I

    .line 64
    iget-object v0, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mPageArray:[I

    iget v1, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mCurrentIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/sonymobile/home/desktop/search/PageIterator;->reset()V

    .line 70
    iget v0, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mInitSign:I

    iput v0, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mSign:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/home/desktop/search/DistanceBasedPageIterator;->mIndexDelta:I

    .line 72
    return-void
.end method
