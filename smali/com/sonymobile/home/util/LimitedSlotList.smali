.class public Lcom/sonymobile/home/util/LimitedSlotList;
.super Ljava/lang/Object;
.source "LimitedSlotList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final mMaxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxSize"    # I

    .prologue
    .line 33
    .local p0, "this":Lcom/sonymobile/home/util/LimitedSlotList;, "Lcom/sonymobile/home/util/LimitedSlotList<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/sonymobile/home/util/LimitedSlotList;->mMaxSize:I

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/sonymobile/home/util/LimitedSlotList;->mList:Ljava/util/ArrayList;

    .line 36
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/sonymobile/home/util/LimitedSlotList;->mList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/util/LimitedSlotList;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/util/LimitedSlotList;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sonymobile/home/util/LimitedSlotList;->get()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private get()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lcom/sonymobile/home/util/LimitedSlotList;, "Lcom/sonymobile/home/util/LimitedSlotList<TV;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget v3, p0, Lcom/sonymobile/home/util/LimitedSlotList;->mMaxSize:I

    if-ge v0, v3, :cond_1

    .line 165
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/util/LimitedSlotList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 167
    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    return-object v1
.end method

.method private getAvailableIndex()I
    .locals 2

    .prologue
    .line 180
    .local p0, "this":Lcom/sonymobile/home/util/LimitedSlotList;, "Lcom/sonymobile/home/util/LimitedSlotList<TV;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget v1, p0, Lcom/sonymobile/home/util/LimitedSlotList;->mMaxSize:I

    if-ge v0, v1, :cond_1

    .line 181
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/util/LimitedSlotList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 185
    .end local v0    # "index":I
    :goto_1
    return v0

    .line 180
    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getIndex(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lcom/sonymobile/home/util/LimitedSlotList;, "Lcom/sonymobile/home/util/LimitedSlotList<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/sonymobile/home/util/LimitedSlotList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/sonymobile/home/util/LimitedSlotList;, "Lcom/sonymobile/home/util/LimitedSlotList<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lcom/sonymobile/home/util/LimitedSlotList;->getAvailableIndex()I

    move-result v0

    .line 63
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 64
    const/4 v1, 0x0

    .line 67
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/home/util/LimitedSlotList;->set(ILjava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/sonymobile/home/util/LimitedSlotList;, "Lcom/sonymobile/home/util/LimitedSlotList<TV;>;"
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sonymobile/home/util/LimitedSlotList;->mMaxSize:I

    if-ge p1, v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/sonymobile/home/util/LimitedSlotList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lcom/sonymobile/home/util/LimitedSlotList;, "Lcom/sonymobile/home/util/LimitedSlotList<TV;>;"
    new-instance v0, Lcom/sonymobile/home/util/LimitedSlotList$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/util/LimitedSlotList$1;-><init>(Lcom/sonymobile/home/util/LimitedSlotList;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonymobile/home/util/LimitedSlotList;, "Lcom/sonymobile/home/util/LimitedSlotList<TV;>;"
    const/4 v0, 0x0

    .line 108
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/sonymobile/home/util/LimitedSlotList;->mMaxSize:I

    if-ge p1, v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/sonymobile/home/util/LimitedSlotList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    :cond_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/sonymobile/home/util/LimitedSlotList;, "Lcom/sonymobile/home/util/LimitedSlotList<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lcom/sonymobile/home/util/LimitedSlotList;->getIndex(Ljava/lang/Object;)I

    move-result v0

    .line 93
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/sonymobile/home/util/LimitedSlotList;->mList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 96
    const/4 v1, 0x1

    .line 98
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public set(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)Z"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/sonymobile/home/util/LimitedSlotList;, "Lcom/sonymobile/home/util/LimitedSlotList<TV;>;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sonymobile/home/util/LimitedSlotList;->mMaxSize:I

    if-ge p1, v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sonymobile/home/util/LimitedSlotList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 131
    .local p0, "this":Lcom/sonymobile/home/util/LimitedSlotList;, "Lcom/sonymobile/home/util/LimitedSlotList<TV;>;"
    iget v0, p0, Lcom/sonymobile/home/util/LimitedSlotList;->mMaxSize:I

    return v0
.end method
