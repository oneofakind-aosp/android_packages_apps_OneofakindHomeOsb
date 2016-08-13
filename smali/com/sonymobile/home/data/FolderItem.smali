.class public Lcom/sonymobile/home/data/FolderItem;
.super Lcom/sonymobile/home/data/Item;
.source "FolderItem.java"


# instance fields
.field private mCustomId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mTemporaryItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/data/FolderItem;)V
    .locals 1
    .param p1, "other"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonymobile/home/data/Item;-><init>(Lcom/sonymobile/home/data/Item;)V

    .line 52
    iget-object v0, p1, Lcom/sonymobile/home/data/FolderItem;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/home/data/FolderItem;->mName:Ljava/lang/String;

    .line 53
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/data/FolderItem;->mCustomId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "customId"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sonymobile/home/data/Item;-><init>()V

    .line 37
    if-eqz p1, :cond_0

    .line 38
    iput-object p1, p0, Lcom/sonymobile/home/data/FolderItem;->mName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/sonymobile/home/data/FolderItem;->mCustomId:Ljava/lang/String;

    .line 43
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public addTemporaryItems(Ljava/util/List;)V
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
    .line 99
    .local p1, "temporaryItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v0, p0, Lcom/sonymobile/home/data/FolderItem;->mTemporaryItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/data/FolderItem;->mTemporaryItems:Ljava/util/ArrayList;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/data/FolderItem;->mTemporaryItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    if-ne p0, p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v1

    .line 130
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 131
    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 133
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 134
    check-cast v0, Lcom/sonymobile/home/data/FolderItem;

    .line 135
    .local v0, "other":Lcom/sonymobile/home/data/FolderItem;
    iget-object v3, p0, Lcom/sonymobile/home/data/FolderItem;->mCustomId:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 136
    iget-object v3, v0, Lcom/sonymobile/home/data/FolderItem;->mCustomId:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 137
    goto :goto_0

    .line 138
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/home/data/FolderItem;->mCustomId:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/data/FolderItem;->mCustomId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 139
    goto :goto_0

    .line 140
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/home/data/FolderItem;->mName:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 141
    iget-object v3, v0, Lcom/sonymobile/home/data/FolderItem;->mName:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 142
    goto :goto_0

    .line 143
    :cond_6
    iget-object v3, p0, Lcom/sonymobile/home/data/FolderItem;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/data/FolderItem;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 144
    goto :goto_0

    .line 145
    :cond_7
    iget-object v3, p0, Lcom/sonymobile/home/data/FolderItem;->mPageViewName:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 146
    iget-object v3, v0, Lcom/sonymobile/home/data/FolderItem;->mPageViewName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 147
    goto :goto_0

    .line 148
    :cond_8
    iget-object v3, p0, Lcom/sonymobile/home/data/FolderItem;->mPageViewName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/data/FolderItem;->mPageViewName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 149
    goto :goto_0
.end method

.method public getCustId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/home/data/FolderItem;->mCustomId:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/home/data/FolderItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, ""

    return-object v0
.end method

.method public getTemporaryItems()Ljava/util/List;
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
    .line 106
    iget-object v0, p0, Lcom/sonymobile/home/data/FolderItem;->mTemporaryItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 111
    const/16 v0, 0x1f

    .line 112
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 113
    .local v1, "result":I
    iget-object v2, p0, Lcom/sonymobile/home/data/FolderItem;->mCustomId:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 114
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/sonymobile/home/data/FolderItem;->mName:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 115
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/sonymobile/home/data/FolderItem;->mPageViewName:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 116
    return v1

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/data/FolderItem;->mCustomId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/data/FolderItem;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 115
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/home/data/FolderItem;->mPageViewName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sonymobile/home/data/FolderItem;->mName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/data/FolderItem;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/data/FolderItem;->mCustomId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/home/data/FolderItem;->getPageViewLocationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 159
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
