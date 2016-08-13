.class public abstract Lcom/sonymobile/home/configuration/Config;
.super Ljava/lang/Object;
.source "Config.java"


# instance fields
.field protected mIsConfigDone:Z

.field protected final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/configuration/Config;->mItems:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public addItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v0, p0, Lcom/sonymobile/home/configuration/Config;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    if-ne p0, p1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v1

    .line 43
    :cond_1
    instance-of v3, p1, Lcom/sonymobile/home/configuration/Config;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 45
    check-cast v0, Lcom/sonymobile/home/configuration/Config;

    .line 47
    .local v0, "config":Lcom/sonymobile/home/configuration/Config;
    iget-boolean v3, p0, Lcom/sonymobile/home/configuration/Config;->mIsConfigDone:Z

    iget-boolean v4, v0, Lcom/sonymobile/home/configuration/Config;->mIsConfigDone:Z

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    .line 48
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/home/configuration/Config;->mItems:Ljava/util/List;

    iget-object v4, v0, Lcom/sonymobile/home/configuration/Config;->mItems:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonymobile/home/configuration/Config;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 55
    iget-object v1, p0, Lcom/sonymobile/home/configuration/Config;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 56
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/sonymobile/home/configuration/Config;->mIsConfigDone:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 57
    return v0

    .line 56
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isConfigDone()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/sonymobile/home/configuration/Config;->mIsConfigDone:Z

    return v0
.end method

.method public setConfigDone(Z)V
    .locals 0
    .param p1, "done"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/sonymobile/home/configuration/Config;->mIsConfigDone:Z

    .line 34
    return-void
.end method
