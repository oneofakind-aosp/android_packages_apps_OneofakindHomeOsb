.class public Lcom/sonymobile/home/configuration/DesktopConfig;
.super Lcom/sonymobile/home/configuration/Config;
.source "DesktopConfig.java"


# instance fields
.field private final mColSpan:I

.field private final mDefaultPage:I

.field private final mLeftmostPage:I

.field private final mNumberOfPages:I

.field private final mPageViewName:Ljava/lang/String;

.field private final mRowSpan:I


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 0
    .param p1, "numberOfPages"    # I
    .param p2, "defaultPage"    # I
    .param p3, "colSpan"    # I
    .param p4, "rowSpan"    # I
    .param p5, "leftmostPage"    # I
    .param p6, "pageViewName"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sonymobile/home/configuration/Config;-><init>()V

    .line 23
    iput p1, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mNumberOfPages:I

    .line 24
    iput p2, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mDefaultPage:I

    .line 25
    iput p5, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mLeftmostPage:I

    .line 26
    iput p3, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mColSpan:I

    .line 27
    iput p4, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mRowSpan:I

    .line 28
    iput-object p6, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mPageViewName:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    if-ne p0, p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    .line 70
    :cond_3
    invoke-super {p0, p1}, Lcom/sonymobile/home/configuration/Config;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 72
    check-cast v0, Lcom/sonymobile/home/configuration/DesktopConfig;

    .line 74
    .local v0, "that":Lcom/sonymobile/home/configuration/DesktopConfig;
    iget v3, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mColSpan:I

    iget v4, v0, Lcom/sonymobile/home/configuration/DesktopConfig;->mColSpan:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 75
    :cond_5
    iget v3, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mDefaultPage:I

    iget v4, v0, Lcom/sonymobile/home/configuration/DesktopConfig;->mDefaultPage:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 76
    :cond_6
    iget v3, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mNumberOfPages:I

    iget v4, v0, Lcom/sonymobile/home/configuration/DesktopConfig;->mNumberOfPages:I

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    .line 77
    :cond_7
    iget v3, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mRowSpan:I

    iget v4, v0, Lcom/sonymobile/home/configuration/DesktopConfig;->mRowSpan:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getColSpan()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mColSpan:I

    return v0
.end method

.method public getDefaultPage()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mDefaultPage:I

    return v0
.end method

.method public getLeftmostPage()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mLeftmostPage:I

    return v0
.end method

.method public getNumberOfPages()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mNumberOfPages:I

    return v0
.end method

.method public getPageViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mPageViewName:Ljava/lang/String;

    return-object v0
.end method

.method public getRowSpan()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mRowSpan:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Lcom/sonymobile/home/configuration/Config;->hashCode()I

    move-result v0

    .line 85
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mNumberOfPages:I

    add-int v0, v1, v2

    .line 86
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mDefaultPage:I

    add-int v0, v1, v2

    .line 87
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mColSpan:I

    add-int v0, v1, v2

    .line 88
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mRowSpan:I

    add-int v0, v1, v2

    .line 89
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DesktopConfig{mNumberOfPages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mNumberOfPages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mDefaultPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mColSpan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mColSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRowSpan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mRowSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/configuration/DesktopConfig;->mItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
