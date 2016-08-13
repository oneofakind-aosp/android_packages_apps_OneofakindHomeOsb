.class public abstract Lcom/sonymobile/home/desktop/search/PageIterator;
.super Ljava/lang/Object;
.source "PageIterator.java"


# instance fields
.field protected mCurrentIndex:I

.field protected mNumberOfPagesIterated:I

.field protected final mPageArray:[I

.field protected final mStartIndex:I


# direct methods
.method protected constructor <init>(I[I)V
    .locals 1
    .param p1, "startIndex"    # I
    .param p2, "pageArray"    # [I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/sonymobile/home/desktop/search/PageIterator;->mStartIndex:I

    .line 40
    iput-object p2, p0, Lcom/sonymobile/home/desktop/search/PageIterator;->mPageArray:[I

    .line 42
    iget v0, p0, Lcom/sonymobile/home/desktop/search/PageIterator;->mStartIndex:I

    iput v0, p0, Lcom/sonymobile/home/desktop/search/PageIterator;->mCurrentIndex:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/home/desktop/search/PageIterator;->mNumberOfPagesIterated:I

    .line 44
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lcom/sonymobile/home/desktop/search/PageIterator;->mNumberOfPagesIterated:I

    iget-object v1, p0, Lcom/sonymobile/home/desktop/search/PageIterator;->mPageArray:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isInValidRange(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 53
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/search/PageIterator;->mPageArray:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract next()I
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/sonymobile/home/desktop/search/PageIterator;->mStartIndex:I

    iput v0, p0, Lcom/sonymobile/home/desktop/search/PageIterator;->mCurrentIndex:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/home/desktop/search/PageIterator;->mNumberOfPagesIterated:I

    .line 62
    return-void
.end method

.method public searchPage(I)Z
    .locals 5
    .param p1, "page"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonymobile/home/desktop/search/PageIterator;->mPageArray:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .line 81
    .local v1, "arrayPage":I
    if-ne v1, p1, :cond_0

    .line 82
    const/4 v4, 0x1

    .line 85
    .end local v1    # "arrayPage":I
    :goto_1
    return v4

    .line 80
    .restart local v1    # "arrayPage":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "arrayPage":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
