.class Lcom/sonymobile/home/cui/CuiGridAppModel$3$1;
.super Ljava/lang/Object;
.source "CuiGridAppModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/cui/CuiGridAppModel$3;->getActivitiesSorted()Ljava/util/Collection;
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
        "Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/cui/CuiGridAppModel$3;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/cui/CuiGridAppModel$3;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$3$1;->this$1:Lcom/sonymobile/home/cui/CuiGridAppModel$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;)I
    .locals 3
    .param p1, "entryDataLeft"    # Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;
    .param p2, "entryDataRight"    # Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$3$1;->this$1:Lcom/sonymobile/home/cui/CuiGridAppModel$3;

    # getter for: Lcom/sonymobile/home/cui/CuiGridAppModel$3;->mCollator:Ljava/text/Collator;
    invoke-static {v0}, Lcom/sonymobile/home/cui/CuiGridAppModel$3;->access$700(Lcom/sonymobile/home/cui/CuiGridAppModel$3;)Ljava/text/Collator;

    move-result-object v0

    iget-object v1, p1, Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;->label:Ljava/lang/String;

    iget-object v2, p2, Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 185
    check-cast p1, Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/cui/CuiGridAppModel$3$1;->compare(Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;)I

    move-result v0

    return v0
.end method
