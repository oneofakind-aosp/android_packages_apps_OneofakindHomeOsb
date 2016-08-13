.class public Lcom/sonymobile/home/ui/pageview/PageLocation;
.super Ljava/lang/Object;
.source "PageLocation.java"


# static fields
.field private static final mRecycledLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/ui/pageview/PageLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public col:I

.field public colSpan:I

.field public page:I

.field public row:I

.field public rowSpan:I

.field public zOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonymobile/home/ui/pageview/PageLocation;->mRecycledLocations:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->zOrder:I

    .line 45
    iput v0, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->page:I

    .line 46
    iput v0, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->col:I

    .line 47
    iput v0, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->row:I

    .line 48
    iput v0, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->colSpan:I

    .line 49
    iput v0, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->rowSpan:I

    .line 50
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->zOrder:I

    .line 118
    iput v0, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->page:I

    .line 119
    iput v0, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->col:I

    .line 120
    iput v0, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->row:I

    .line 121
    iput v0, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->colSpan:I

    .line 122
    iput v0, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->rowSpan:I

    .line 123
    return-void
.end method

.method public static obtain()Lcom/sonymobile/home/ui/pageview/PageLocation;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/sonymobile/home/ui/pageview/PageLocation;->mRecycledLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Lcom/sonymobile/home/ui/pageview/PageLocation;

    invoke-direct {v0}, Lcom/sonymobile/home/ui/pageview/PageLocation;-><init>()V

    .line 56
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonymobile/home/ui/pageview/PageLocation;->mRecycledLocations:Ljava/util/ArrayList;

    sget-object v1, Lcom/sonymobile/home/ui/pageview/PageLocation;->mRecycledLocations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ui/pageview/PageLocation;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    if-ne p0, p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 89
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 90
    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 93
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 95
    check-cast v0, Lcom/sonymobile/home/ui/pageview/PageLocation;

    .line 96
    .local v0, "other":Lcom/sonymobile/home/ui/pageview/PageLocation;
    iget v3, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->zOrder:I

    iget v4, v0, Lcom/sonymobile/home/ui/pageview/PageLocation;->zOrder:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 97
    goto :goto_0

    .line 98
    :cond_4
    iget v3, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->page:I

    iget v4, v0, Lcom/sonymobile/home/ui/pageview/PageLocation;->page:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 99
    goto :goto_0

    .line 100
    :cond_5
    iget v3, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->col:I

    iget v4, v0, Lcom/sonymobile/home/ui/pageview/PageLocation;->col:I

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 101
    goto :goto_0

    .line 102
    :cond_6
    iget v3, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->colSpan:I

    iget v4, v0, Lcom/sonymobile/home/ui/pageview/PageLocation;->colSpan:I

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 103
    goto :goto_0

    .line 104
    :cond_7
    iget v3, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->row:I

    iget v4, v0, Lcom/sonymobile/home/ui/pageview/PageLocation;->row:I

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 105
    goto :goto_0

    .line 106
    :cond_8
    iget v3, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->rowSpan:I

    iget v4, v0, Lcom/sonymobile/home/ui/pageview/PageLocation;->rowSpan:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 107
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/sonymobile/home/ui/pageview/PageLocation;->init()V

    .line 76
    sget-object v0, Lcom/sonymobile/home/ui/pageview/PageLocation;->mRecycledLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->col:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->colSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/ui/pageview/PageLocation;->rowSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
