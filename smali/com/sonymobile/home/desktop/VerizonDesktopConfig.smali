.class public Lcom/sonymobile/home/desktop/VerizonDesktopConfig;
.super Ljava/lang/Object;
.source "VerizonDesktopConfig.java"


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mNumberOfPages:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .param p2, "numberOfPages"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/desktop/VerizonDesktopConfig;->mItems:Ljava/util/List;

    .line 23
    iput p2, p0, Lcom/sonymobile/home/desktop/VerizonDesktopConfig;->mNumberOfPages:I

    .line 24
    return-void
.end method


# virtual methods
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
    .line 32
    iget-object v0, p0, Lcom/sonymobile/home/desktop/VerizonDesktopConfig;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getNumberOfPages()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/sonymobile/home/desktop/VerizonDesktopConfig;->mNumberOfPages:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DesktopConfig [numberOfPages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/desktop/VerizonDesktopConfig;->mNumberOfPages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/VerizonDesktopConfig;->mItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
