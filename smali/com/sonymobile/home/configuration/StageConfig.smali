.class public Lcom/sonymobile/home/configuration/StageConfig;
.super Lcom/sonymobile/home/configuration/Config;
.source "StageConfig.java"


# instance fields
.field private final mMaxNumberOfItems:I

.field private final mPageViewName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "maxNumberOfItems"    # I
    .param p2, "pageViewName"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sonymobile/home/configuration/Config;-><init>()V

    .line 18
    iput p1, p0, Lcom/sonymobile/home/configuration/StageConfig;->mMaxNumberOfItems:I

    .line 19
    iput-object p2, p0, Lcom/sonymobile/home/configuration/StageConfig;->mPageViewName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    if-ne p0, p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v1

    .line 38
    :cond_1
    instance-of v3, p1, Lcom/sonymobile/home/configuration/StageConfig;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 39
    :cond_2
    invoke-super {p0, p1}, Lcom/sonymobile/home/configuration/Config;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 41
    check-cast v0, Lcom/sonymobile/home/configuration/StageConfig;

    .line 43
    .local v0, "that":Lcom/sonymobile/home/configuration/StageConfig;
    iget v3, p0, Lcom/sonymobile/home/configuration/StageConfig;->mMaxNumberOfItems:I

    iget v4, v0, Lcom/sonymobile/home/configuration/StageConfig;->mMaxNumberOfItems:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getMaxNumberOfItems()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/sonymobile/home/configuration/StageConfig;->mMaxNumberOfItems:I

    return v0
.end method

.method public getPageViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sonymobile/home/configuration/StageConfig;->mPageViewName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Lcom/sonymobile/home/configuration/Config;->hashCode()I

    move-result v0

    .line 51
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/sonymobile/home/configuration/StageConfig;->mMaxNumberOfItems:I

    add-int v0, v1, v2

    .line 52
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StageConfig [NumberOfItems = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/configuration/StageConfig;->mMaxNumberOfItems:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", items = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/configuration/StageConfig;->mItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
