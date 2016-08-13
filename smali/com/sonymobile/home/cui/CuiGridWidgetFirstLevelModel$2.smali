.class Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$2;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$2;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$2;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 65
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$2;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    .line 70
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetFirstLevelModel$2;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 77
    :goto_0
    return v0

    .line 72
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 73
    const/4 v0, -0x1

    goto :goto_0

    .line 74
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    .line 77
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
