.class final Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$1;
.super Ljava/lang/Object;
.source "CuiGridWidgetSecondLevelModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;)I
    .locals 2
    .param p1, "widget1"    # Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
    .param p2, "widget2"    # Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;

    .prologue
    .line 34
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->getOrder()I

    move-result v0

    invoke-virtual {p2}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->getOrder()I

    move-result v1

    sub-int/2addr v0, v1

    .line 41
    :goto_0
    return v0

    .line 36
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 37
    const/4 v0, -0x1

    goto :goto_0

    .line 38
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 39
    const/4 v0, 0x1

    goto :goto_0

    .line 41
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$1;->compare(Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;)I

    move-result v0

    return v0
.end method
