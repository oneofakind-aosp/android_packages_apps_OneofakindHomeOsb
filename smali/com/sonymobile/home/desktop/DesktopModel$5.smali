.class Lcom/sonymobile/home/desktop/DesktopModel$5;
.super Ljava/lang/Object;
.source "DesktopModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopModel;->sortItemsBasedOnDistanceToHomePage(Ljava/util/ArrayList;)V
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
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopModel;

.field final synthetic val$currentHomePage:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopModel;I)V
    .locals 0

    .prologue
    .line 920
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopModel$5;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    iput p2, p0, Lcom/sonymobile/home/desktop/DesktopModel$5;->val$currentHomePage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)I
    .locals 4
    .param p1, "item1"    # Lcom/sonymobile/home/data/Item;
    .param p2, "item2"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 923
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    iget v2, v2, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopModel$5;->val$currentHomePage:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 924
    .local v0, "distanceToHomePageItem1":I
    invoke-virtual {p2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    iget v2, v2, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopModel$5;->val$currentHomePage:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 925
    .local v1, "distanceToHomePageItem2":I
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 920
    check-cast p1, Lcom/sonymobile/home/data/Item;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/home/data/Item;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/desktop/DesktopModel$5;->compare(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)I

    move-result v0

    return v0
.end method
