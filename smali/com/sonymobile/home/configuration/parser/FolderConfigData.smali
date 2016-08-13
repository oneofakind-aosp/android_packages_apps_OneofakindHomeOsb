.class public Lcom/sonymobile/home/configuration/parser/FolderConfigData;
.super Lcom/sonymobile/home/configuration/parser/ItemConfigData;
.source "FolderConfigData.java"


# instance fields
.field private final mCategory:Ljava/lang/String;

.field private final mFolderItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsCategorySet:Z

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/data/ItemLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 1
    .param p1, "itemLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "layer"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "category"    # Ljava/lang/String;
    .param p5, "isCategorySet"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/ItemLocation;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;-><init>(Lcom/sonymobile/home/data/ItemLocation;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Intent;)V

    .line 41
    iput-object p3, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mName:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mCategory:Ljava/lang/String;

    .line 43
    iput-boolean p5, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mIsCategorySet:Z

    .line 44
    iput-object p6, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mFolderItems:Ljava/util/List;

    .line 45
    return-void
.end method

.method private isFolderDataValid()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    const/4 v0, 0x1

    .line 54
    .local v0, "isFolderDataValid":Z
    iget-boolean v3, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mIsCategorySet:Z

    if-eqz v3, :cond_1

    .line 55
    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mCategory:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v0, v1

    .line 59
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 55
    goto :goto_0

    .line 57
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mName:Ljava/lang/String;

    if-eqz v3, :cond_2

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    if-ne p0, p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    instance-of v3, p1, Lcom/sonymobile/home/configuration/parser/FolderConfigData;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 78
    :cond_2
    invoke-super {p0, p1}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 80
    check-cast v0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;

    .line 82
    .local v0, "that":Lcom/sonymobile/home/configuration/parser/FolderConfigData;
    iget-boolean v3, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mIsCategorySet:Z

    iget-boolean v4, v0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mIsCategorySet:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 83
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mCategory:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mCategory:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mCategory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    move v1, v2

    .line 84
    goto :goto_0

    .line 83
    :cond_6
    iget-object v3, v0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mCategory:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 85
    :cond_7
    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mFolderItems:Ljava/util/List;

    iget-object v4, v0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mFolderItems:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    goto :goto_0

    .line 86
    :cond_8
    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderItems()Ljava/util/List;
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
    .line 71
    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mFolderItems:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-super {p0}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->hashCode()I

    move-result v0

    .line 94
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 95
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mCategory:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mCategory:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 96
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v3, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mIsCategorySet:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int v0, v1, v2

    .line 97
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mFolderItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 98
    return v0

    :cond_1
    move v1, v2

    .line 95
    goto :goto_0
.end method

.method public isCategorySet()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mIsCategorySet:Z

    return v0
.end method

.method public isItemConfigDataValid()Z
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->getItemLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->isFolderDataValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolderConfigData{mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCategory=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsCategorySet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mIsCategorySet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFolderItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->mFolderItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
