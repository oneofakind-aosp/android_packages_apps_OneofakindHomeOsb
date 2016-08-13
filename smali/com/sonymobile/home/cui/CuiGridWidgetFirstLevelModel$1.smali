.class Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$1;
.super Ljava/lang/Object;
.source "CuiGridWidgetFirstLevelModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;
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
        "Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;)I
    .locals 3
    .param p1, "widget1"    # Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;
    .param p2, "widget2"    # Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;

    .prologue
    .line 53
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->mLabelComparator:Ljava/util/Comparator;
    invoke-static {v0}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;->access$000(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 60
    :goto_0
    return v0

    .line 55
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 56
    const/4 v0, -0x1

    goto :goto_0

    .line 57
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 58
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$1;->compare(Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;Lcom/sonymobile/home/cui/CuiGridWidgetBaseItem;)I

    move-result v0

    return v0
.end method
