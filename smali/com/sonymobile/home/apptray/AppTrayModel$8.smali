.class Lcom/sonymobile/home/apptray/AppTrayModel$8;
.super Ljava/lang/Object;
.source "AppTrayModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/apptray/AppTrayModel;->updateItemLocations()Z
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
.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTrayModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTrayModel;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayModel$8;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)I
    .locals 4
    .param p1, "lhs"    # Lcom/sonymobile/home/data/Item;
    .param p2, "rhs"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 520
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    .line 521
    .local v0, "lhsLocation":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {p2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    .line 523
    .local v1, "rhsLocation":Lcom/sonymobile/home/data/ItemLocation;
    iget v2, v0, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iget v3, v1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    if-lt v2, v3, :cond_0

    iget v2, v0, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iget v3, v1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    if-ne v2, v3, :cond_1

    iget v2, v0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    iget v3, v1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    if-ge v2, v3, :cond_1

    .line 526
    :cond_0
    const/4 v2, -0x1

    .line 531
    :goto_0
    return v2

    .line 527
    :cond_1
    iget v2, v0, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iget v3, v1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    iget v3, v1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    if-ne v2, v3, :cond_2

    .line 529
    const/4 v2, 0x0

    goto :goto_0

    .line 531
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 517
    check-cast p1, Lcom/sonymobile/home/data/Item;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/home/data/Item;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/apptray/AppTrayModel$8;->compare(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)I

    move-result v0

    return v0
.end method
