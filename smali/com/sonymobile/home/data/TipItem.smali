.class public Lcom/sonymobile/home/data/TipItem;
.super Lcom/sonymobile/home/data/Item;
.source "TipItem.java"


# instance fields
.field private final mTipId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sonymobile/home/data/Item;-><init>()V

    .line 27
    iput p1, p0, Lcom/sonymobile/home/data/TipItem;->mTipId:I

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    if-ne p0, p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 60
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 63
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 65
    check-cast v0, Lcom/sonymobile/home/data/TipItem;

    .line 66
    .local v0, "other":Lcom/sonymobile/home/data/TipItem;
    iget v3, p0, Lcom/sonymobile/home/data/TipItem;->mTipId:I

    iget v4, v0, Lcom/sonymobile/home/data/TipItem;->mTipId:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 67
    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, ""

    return-object v0
.end method

.method public getTipId()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/sonymobile/home/data/TipItem;->mTipId:I

    return v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 74
    const/16 v0, 0x1f

    .line 75
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 76
    .local v1, "result":I
    iget v2, p0, Lcom/sonymobile/home/data/TipItem;->mTipId:I

    add-int/lit8 v1, v2, 0x1f

    .line 77
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TipItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/data/TipItem;->mTipId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/home/data/TipItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/home/data/TipItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ItemLocation;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, " no position"

    goto :goto_0
.end method
