.class Lcom/sonymobile/home/stage/dynamic/DynamicStageModel$1;
.super Ljava/lang/Object;
.source "DynamicStageModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/stage/dynamic/DynamicStageModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonymobile/home/data/Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/stage/dynamic/DynamicStageModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/stage/dynamic/DynamicStageModel;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageModel$1;->this$0:Lcom/sonymobile/home/stage/dynamic/DynamicStageModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)I
    .locals 2
    .param p1, "lhs"    # Lcom/sonymobile/home/data/Item;
    .param p2, "rhs"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 33
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    if-nez v0, :cond_1

    .line 34
    :cond_0
    const/4 v0, -0x1

    .line 38
    :goto_0
    return v0

    .line 35
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    if-nez v0, :cond_3

    .line 36
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    iget v0, v0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    invoke-virtual {p2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    iget v1, v1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lcom/sonymobile/home/data/Item;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/home/data/Item;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/stage/dynamic/DynamicStageModel$1;->compare(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)I

    move-result v0

    return v0
.end method
