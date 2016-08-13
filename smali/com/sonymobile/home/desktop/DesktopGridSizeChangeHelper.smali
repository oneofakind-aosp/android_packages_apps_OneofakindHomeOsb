.class public Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;
.super Ljava/lang/Object;
.source "DesktopGridSizeChangeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;,
        Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;
    }
.end annotation


# instance fields
.field private final mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

.field private final mGridSizeCalc:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;

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

.field private final mLeftToRightBottomToTopComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxColSize:[I

.field private mMaxRowSize:[I

.field private mMinColSize:[I

.field private mMinRowSize:[I

.field private mPreviousMaxCol:I

.field private mPreviousMaxRow:I

.field private final mRightToLeftTopToBottomComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/List;)V
    .locals 2
    .param p1, "desktopModel"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/desktop/DesktopModel;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMaxColSize:[I

    .line 33
    iput-object v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMinColSize:[I

    .line 35
    iput-object v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMaxRowSize:[I

    .line 37
    iput-object v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMinRowSize:[I

    .line 1043
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$1;-><init>(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mLeftToRightBottomToTopComparator:Ljava/util/Comparator;

    .line 1068
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$2;-><init>(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mRightToLeftTopToBottomComparator:Ljava/util/Comparator;

    .line 54
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    .line 55
    iput-object p2, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mItems:Ljava/util/List;

    .line 56
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;-><init>(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$1;)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mGridSizeCalc:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mGridSizeCalc:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMaxColSize:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMinColSize:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMaxRowSize:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMinRowSize:[I

    return-object v0
.end method

.method private calculateSpaceForAdvWidget(Lcom/sonymobile/home/data/AdvWidgetItem;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;Lcom/sonymobile/grid/GridRect;Ljava/util/List;Ljava/util/Iterator;Ljava/util/List;)Z
    .locals 7
    .param p1, "advWidgetItem"    # Lcom/sonymobile/home/data/AdvWidgetItem;
    .param p2, "advWidgetManager"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    .param p3, "grid"    # Lcom/sonymobile/grid/GridRect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/AdvWidgetItem;",
            "Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;",
            "Lcom/sonymobile/grid/GridRect;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p4, "outOfBoundsItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .local p5, "itemIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/data/Item;>;"
    .local p6, "resizableItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;>;"
    const/4 v4, 0x1

    .line 578
    const/4 v3, 0x0

    .line 581
    .local v3, "modelChanged":Z
    invoke-virtual {p1}, Lcom/sonymobile/home/data/AdvWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/home/data/AdvWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->loadAdvWidgetProviderInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;

    move-result-object v0

    .line 584
    .local v0, "advWidgetProviderInfo":Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;
    if-nez v0, :cond_0

    .line 586
    invoke-interface {p5}, Ljava/util/Iterator;->remove()V

    .line 587
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 648
    :goto_0
    return v4

    .line 591
    :cond_0
    iget v5, v0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v4, :cond_6

    .line 593
    iget v4, v0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->minResizeWidth:I

    if-lez v4, :cond_5

    .line 594
    iget v4, v0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->minWidth:I

    iget v5, v0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->minResizeWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 600
    .local v1, "minColSpan":I
    :goto_1
    iget v4, p3, Lcom/sonymobile/grid/GridRect;->colSpan:I

    if-le v1, v4, :cond_1

    .line 601
    iput v1, p3, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 602
    const/4 v3, 0x1

    .line 614
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getDesktopColSpan()I

    move-result v4

    if-le v1, v4, :cond_2

    .line 615
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getDesktopColSpan()I

    move-result v1

    .line 616
    const/4 v3, 0x1

    .line 618
    :cond_2
    iget v4, v0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    .line 620
    iget v4, v0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->minResizeHeight:I

    if-lez v4, :cond_7

    .line 621
    iget v4, v0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->minHeight:I

    iget v5, v0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->minResizeHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 627
    .local v2, "minRowSpan":I
    :goto_3
    iget v4, p3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    if-le v2, v4, :cond_3

    .line 628
    iput v2, p3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 629
    const/4 v3, 0x1

    .line 641
    :cond_3
    :goto_4
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getDesktopRowSpan()I

    move-result v4

    if-le v2, v4, :cond_4

    .line 642
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getDesktopRowSpan()I

    move-result v2

    .line 643
    const/4 v3, 0x1

    .line 646
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mGridSizeCalc:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;

    invoke-virtual {v4, p3, v1, v2}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->add(Lcom/sonymobile/grid/GridRect;II)V

    .line 647
    new-instance v4, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;-><init>(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;Lcom/sonymobile/home/data/Item;II)V

    invoke-interface {p6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v3

    .line 648
    goto :goto_0

    .line 598
    .end local v1    # "minColSpan":I
    .end local v2    # "minRowSpan":I
    :cond_5
    iget v1, v0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->minWidth:I

    .restart local v1    # "minColSpan":I
    goto :goto_1

    .line 605
    .end local v1    # "minColSpan":I
    :cond_6
    iget v1, v0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->minWidth:I

    .line 606
    .restart local v1    # "minColSpan":I
    iget v4, p3, Lcom/sonymobile/grid/GridRect;->colSpan:I

    if-eq v1, v4, :cond_1

    .line 608
    iput v1, p3, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 609
    const/4 v3, 0x1

    goto :goto_2

    .line 625
    :cond_7
    iget v2, v0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->minHeight:I

    .restart local v2    # "minRowSpan":I
    goto :goto_3

    .line 632
    .end local v2    # "minRowSpan":I
    :cond_8
    iget v2, v0, Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;->minHeight:I

    .line 633
    .restart local v2    # "minRowSpan":I
    iget v4, p3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    if-eq v2, v4, :cond_3

    .line 635
    iput v2, p3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 636
    const/4 v3, 0x1

    goto :goto_4
.end method

.method private calculateSpaceForAppWidget(Lcom/sonymobile/home/data/WidgetItem;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Lcom/sonymobile/grid/GridRect;Ljava/util/List;Ljava/util/Iterator;Ljava/util/List;)Z
    .locals 9
    .param p1, "widgetItem"    # Lcom/sonymobile/home/data/WidgetItem;
    .param p2, "appWidgetManager"    # Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    .param p3, "grid"    # Lcom/sonymobile/grid/GridRect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/WidgetItem;",
            "Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;",
            "Lcom/sonymobile/grid/GridRect;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 500
    .local p4, "outOfBoundsItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .local p5, "itemIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/data/Item;>;"
    .local p6, "resizableItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;>;"
    const/4 v6, 0x0

    .line 501
    .local v6, "modelChanged":Z
    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v0

    .line 507
    .local v0, "appWidgetId":I
    :try_start_0
    invoke-virtual {p2, v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->getMinimumSpanXY(I)[I

    move-result-object v5

    .line 508
    .local v5, "minSpanXY":[I
    invoke-virtual {p2, v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->getDefaultSpanXY(I)[I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 516
    .local v1, "defaultSpanXY":[I
    const/4 v7, 0x0

    aget v7, v1, v7

    const/4 v8, 0x0

    aget v8, v5, v8

    invoke-direct {p0, v7, v8}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getMinSpan(II)I

    move-result v3

    .line 517
    .local v3, "minColSpan":I
    iget v7, p3, Lcom/sonymobile/grid/GridRect;->colSpan:I

    if-le v3, v7, :cond_1

    .line 518
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getDesktopColSpan()I

    move-result v7

    if-le v3, v7, :cond_0

    .line 520
    invoke-direct {p0, p5, p4, p1}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->removeAppWidget(Ljava/util/Iterator;Ljava/util/List;Lcom/sonymobile/home/data/WidgetItem;)V

    .line 521
    const/4 v7, 0x1

    .line 543
    .end local v1    # "defaultSpanXY":[I
    .end local v3    # "minColSpan":I
    .end local v5    # "minSpanXY":[I
    :goto_0
    return v7

    .line 509
    :catch_0
    move-exception v2

    .line 511
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, p5, p4, p1}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->removeAppWidget(Ljava/util/Iterator;Ljava/util/List;Lcom/sonymobile/home/data/WidgetItem;)V

    .line 512
    const/4 v7, 0x1

    goto :goto_0

    .line 523
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "defaultSpanXY":[I
    .restart local v3    # "minColSpan":I
    .restart local v5    # "minSpanXY":[I
    :cond_0
    iput v3, p3, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 524
    const/4 v6, 0x1

    .line 529
    :cond_1
    const/4 v7, 0x1

    aget v7, v1, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    invoke-direct {p0, v7, v8}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getMinSpan(II)I

    move-result v4

    .line 530
    .local v4, "minRowSpan":I
    iget v7, p3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    if-le v4, v7, :cond_3

    .line 531
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getDesktopRowSpan()I

    move-result v7

    if-le v4, v7, :cond_2

    .line 533
    invoke-direct {p0, p5, p4, p1}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->removeAppWidget(Ljava/util/Iterator;Ljava/util/List;Lcom/sonymobile/home/data/WidgetItem;)V

    .line 534
    const/4 v7, 0x1

    goto :goto_0

    .line 536
    :cond_2
    iput v4, p3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 537
    const/4 v6, 0x1

    .line 541
    :cond_3
    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mGridSizeCalc:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;

    invoke-virtual {v7, p3, v3, v4}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->add(Lcom/sonymobile/grid/GridRect;II)V

    .line 542
    new-instance v7, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;

    invoke-direct {v7, p0, p1, v3, v4}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;-><init>(Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;Lcom/sonymobile/home/data/Item;II)V

    invoke-interface {p6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v6

    .line 543
    goto :goto_0
.end method

.method private compressColumns(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 719
    .local p1, "resizableItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;>;"
    const/4 v2, 0x0

    .line 720
    .local v2, "modelChanged":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMaxColSize:[I

    array-length v5, v5

    if-ge v0, v5, :cond_5

    .line 721
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMaxColSize:[I

    aget v5, v5, v0

    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getDesktopRowSpan()I

    move-result v6

    if-le v5, v6, :cond_4

    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMaxColSize:[I

    aget v5, v5, v0

    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMinColSize:[I

    aget v6, v6, v0

    if-eq v5, v6, :cond_4

    .line 722
    const/4 v2, 0x1

    .line 723
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMaxColSize:[I

    aget v5, v5, v0

    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getDesktopRowSpan()I

    move-result v6

    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMinColSize:[I

    aget v7, v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int v4, v5, v6

    .line 726
    .local v4, "wantedDecrease":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;

    .line 727
    .local v3, "resizableItem":Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;
    invoke-virtual {v3, v0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->occupiesCol(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 728
    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->decreaseSize(II)I

    move-result v5

    sub-int/2addr v4, v5

    .line 731
    if-gtz v4, :cond_0

    .line 738
    .end local v3    # "resizableItem":Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;
    :cond_1
    if-lez v4, :cond_4

    .line 739
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;

    .line 740
    .restart local v3    # "resizableItem":Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;
    invoke-virtual {v3, v0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->occupiesCol(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 741
    invoke-virtual {v3, v0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->fitLeftOfCol(I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 743
    :cond_3
    if-gtz v4, :cond_2

    .line 720
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "resizableItem":Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;
    .end local v4    # "wantedDecrease":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 750
    :cond_5
    return v2
.end method

.method private compressRows(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 761
    .local p1, "resizableItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;>;"
    const/4 v2, 0x0

    .line 762
    .local v2, "modelChanged":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMaxRowSize:[I

    array-length v5, v5

    if-ge v0, v5, :cond_5

    .line 763
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMaxRowSize:[I

    aget v5, v5, v0

    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getDesktopColSpan()I

    move-result v6

    if-le v5, v6, :cond_4

    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMaxRowSize:[I

    aget v5, v5, v0

    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMinRowSize:[I

    aget v6, v6, v0

    if-eq v5, v6, :cond_4

    .line 764
    const/4 v2, 0x1

    .line 765
    iget-object v5, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMaxRowSize:[I

    aget v5, v5, v0

    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getDesktopColSpan()I

    move-result v6

    iget-object v7, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMinRowSize:[I

    aget v7, v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int v4, v5, v6

    .line 768
    .local v4, "wantedDecrease":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;

    .line 769
    .local v3, "resizableItem":Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;
    invoke-virtual {v3, v0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->occupiesRow(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 770
    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->decreaseSize(II)I

    move-result v5

    sub-int/2addr v4, v5

    .line 773
    if-gtz v4, :cond_0

    .line 780
    .end local v3    # "resizableItem":Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;
    :cond_1
    if-lez v4, :cond_4

    .line 781
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;

    .line 782
    .restart local v3    # "resizableItem":Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;
    invoke-virtual {v3, v0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->occupiesRow(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 783
    invoke-virtual {v3, v0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->fitAboveRow(I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 785
    :cond_3
    if-gtz v4, :cond_2

    .line 762
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "resizableItem":Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;
    .end local v4    # "wantedDecrease":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 792
    :cond_5
    return v2
.end method

.method private getDesktopColSpan()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->getColumnSpan()I

    move-result v0

    return v0
.end method

.method private getDesktopRowSpan()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->getRowSpan()I

    move-result v0

    return v0
.end method

.method private getItems()Ljava/util/List;
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
    .line 83
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mItems:Ljava/util/List;

    return-object v0
.end method

.method private getMinSpan(II)I
    .locals 0
    .param p1, "defaultSpan"    # I
    .param p2, "minSpan"    # I

    .prologue
    .line 547
    if-lez p2, :cond_0

    .line 548
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 550
    .end local p1    # "defaultSpan":I
    :cond_0
    return p1
.end method

.method private getResizableItemForItem(Ljava/util/List;Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;
    .locals 3
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;",
            ">;",
            "Lcom/sonymobile/home/data/Item;",
            ")",
            "Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;"
        }
    .end annotation

    .prologue
    .line 1028
    .local p1, "resizableItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;>;"
    instance-of v2, p2, Lcom/sonymobile/home/data/WidgetItem;

    if-nez v2, :cond_0

    instance-of v2, p2, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-eqz v2, :cond_2

    .line 1029
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;

    .line 1030
    .local v1, "resizableItem":Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;
    invoke-virtual {v1, p2}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;->wrapsItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1035
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "resizableItem":Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private itemFitsOnCols(Lcom/sonymobile/grid/GridRect;)Z
    .locals 3
    .param p1, "grid"    # Lcom/sonymobile/grid/GridRect;

    .prologue
    .line 802
    iget v0, p1, Lcom/sonymobile/grid/GridRect;->col:I

    .local v0, "i":I
    :goto_0
    iget v1, p1, Lcom/sonymobile/grid/GridRect;->col:I

    iget v2, p1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 803
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMaxColSize:[I

    aget v1, v1, v0

    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getDesktopRowSpan()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 804
    const/4 v1, 0x0

    .line 807
    :goto_1
    return v1

    .line 802
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 807
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private itemFitsOnRows(Lcom/sonymobile/grid/GridRect;)Z
    .locals 3
    .param p1, "grid"    # Lcom/sonymobile/grid/GridRect;

    .prologue
    .line 905
    iget v0, p1, Lcom/sonymobile/grid/GridRect;->row:I

    .local v0, "i":I
    :goto_0
    iget v1, p1, Lcom/sonymobile/grid/GridRect;->row:I

    iget v2, p1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 906
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMaxRowSize:[I

    aget v1, v1, v0

    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getDesktopColSpan()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 907
    const/4 v1, 0x0

    .line 910
    :goto_1
    return v1

    .line 905
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 910
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private moveItemsLeft(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 926
    .local p1, "itemsOnPage":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .local p2, "outOfBoundsItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .local p3, "resizableItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;>;"
    const/4 v7, 0x0

    .line 927
    .local v7, "modelChanged":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mRightToLeftTopToBottomComparator:Ljava/util/Comparator;

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 928
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 930
    .local v5, "itemIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 931
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/data/Item;

    .line 932
    .local v4, "item":Lcom/sonymobile/home/data/Item;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getResizableItemForItem(Ljava/util/List;Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;

    move-result-object v11

    .line 933
    .local v11, "resizableItem":Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;
    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    .line 934
    .local v6, "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    iget-object v3, v6, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 938
    .local v3, "grid":Lcom/sonymobile/grid/GridRect;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->itemFitsOnRows(Lcom/sonymobile/grid/GridRect;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 939
    const/4 v7, 0x1

    .line 942
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mGridSizeCalc:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;

    invoke-virtual {v12, v3, v11}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->remove(Lcom/sonymobile/grid/GridRect;Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;)V

    .line 943
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 945
    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->removeItemWithUniqueId(J)V

    goto :goto_0

    .line 947
    :cond_1
    iget v12, v3, Lcom/sonymobile/grid/GridRect;->col:I

    iget v13, v3, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v12, v13

    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getDesktopColSpan()I

    move-result v13

    if-le v12, v13, :cond_2

    .line 948
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getDesktopColSpan()I

    move-result v12

    iget v13, v3, Lcom/sonymobile/grid/GridRect;->col:I

    iget v14, v3, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v13, v14

    sub-int v2, v12, v13

    .line 949
    .local v2, "deltaCol":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mGridSizeCalc:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v11, v2, v13}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->move(Lcom/sonymobile/grid/GridRect;Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;II)V

    .line 950
    iget v12, v3, Lcom/sonymobile/grid/GridRect;->col:I

    add-int/2addr v12, v2

    iput v12, v3, Lcom/sonymobile/grid/GridRect;->col:I

    .line 951
    const/4 v7, 0x1

    .line 955
    .end local v2    # "deltaCol":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mGridSizeCalc:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;

    invoke-virtual {v12, v3, v11}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->remove(Lcom/sonymobile/grid/GridRect;Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;)V

    .line 957
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 958
    .local v8, "overlapIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/data/Item;>;"
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 959
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonymobile/home/data/Item;

    .line 960
    .local v9, "overlapedItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v9}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v12

    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_4

    .line 962
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mGridSizeCalc:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;

    invoke-virtual {v12, v3, v11}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->remove(Lcom/sonymobile/grid/GridRect;Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;)V

    goto/16 :goto_0

    .line 965
    :cond_4
    invoke-virtual {v9}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v10

    .line 966
    .local v10, "overlapedLocation":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {v10, v6}, Lcom/sonymobile/home/data/ItemLocation;->overlaps(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 967
    const/4 v7, 0x1

    .line 969
    iget-object v12, v10, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v12, v12, Lcom/sonymobile/grid/GridRect;->col:I

    iget v13, v3, Lcom/sonymobile/grid/GridRect;->colSpan:I

    sub-int/2addr v12, v13

    iput v12, v3, Lcom/sonymobile/grid/GridRect;->col:I

    .line 970
    iget v12, v3, Lcom/sonymobile/grid/GridRect;->col:I

    if-gez v12, :cond_3

    .line 972
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 974
    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->removeItemWithUniqueId(J)V

    goto/16 :goto_0

    .line 982
    .end local v3    # "grid":Lcom/sonymobile/grid/GridRect;
    .end local v4    # "item":Lcom/sonymobile/home/data/Item;
    .end local v6    # "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    .end local v8    # "overlapIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/data/Item;>;"
    .end local v9    # "overlapedItem":Lcom/sonymobile/home/data/Item;
    .end local v10    # "overlapedLocation":Lcom/sonymobile/home/data/ItemLocation;
    .end local v11    # "resizableItem":Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;
    :cond_5
    return v7
.end method

.method private moveItemsUp(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 838
    .local p1, "itemsOnPage":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .local p2, "outOfBoundsItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .local p3, "resizableItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;>;"
    const/4 v7, 0x0

    .line 840
    .local v7, "modelChanged":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mLeftToRightBottomToTopComparator:Ljava/util/Comparator;

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 841
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 843
    .local v5, "itemIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 844
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/data/Item;

    .line 845
    .local v4, "item":Lcom/sonymobile/home/data/Item;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getResizableItemForItem(Ljava/util/List;Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;

    move-result-object v11

    .line 846
    .local v11, "resizableItem":Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;
    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    .line 847
    .local v6, "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    iget-object v3, v6, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 851
    .local v3, "grid":Lcom/sonymobile/grid/GridRect;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->itemFitsOnCols(Lcom/sonymobile/grid/GridRect;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 852
    const/4 v7, 0x1

    .line 855
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mGridSizeCalc:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;

    invoke-virtual {v12, v3, v11}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->remove(Lcom/sonymobile/grid/GridRect;Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;)V

    .line 856
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 858
    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->removeItemWithUniqueId(J)V

    goto :goto_0

    .line 860
    :cond_1
    iget v12, v3, Lcom/sonymobile/grid/GridRect;->row:I

    iget v13, v3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v12, v13

    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getDesktopRowSpan()I

    move-result v13

    if-le v12, v13, :cond_2

    .line 861
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getDesktopRowSpan()I

    move-result v12

    iget v13, v3, Lcom/sonymobile/grid/GridRect;->row:I

    iget v14, v3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v13, v14

    sub-int v2, v12, v13

    .line 862
    .local v2, "deltaRow":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mGridSizeCalc:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v11, v13, v2}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->move(Lcom/sonymobile/grid/GridRect;Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;II)V

    .line 863
    iget v12, v3, Lcom/sonymobile/grid/GridRect;->row:I

    add-int/2addr v12, v2

    iput v12, v3, Lcom/sonymobile/grid/GridRect;->row:I

    .line 864
    const/4 v7, 0x1

    .line 868
    .end local v2    # "deltaRow":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mGridSizeCalc:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;

    invoke-virtual {v12, v3, v11}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->remove(Lcom/sonymobile/grid/GridRect;Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;)V

    .line 870
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 871
    .local v8, "overlapIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/data/Item;>;"
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 872
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonymobile/home/data/Item;

    .line 873
    .local v9, "overlapedItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v9}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v12

    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_4

    .line 875
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mGridSizeCalc:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;

    invoke-virtual {v12, v3, v11}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->add(Lcom/sonymobile/grid/GridRect;Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;)V

    goto/16 :goto_0

    .line 878
    :cond_4
    invoke-virtual {v9}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v10

    .line 879
    .local v10, "overlapedLocation":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {v10, v6}, Lcom/sonymobile/home/data/ItemLocation;->overlaps(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 880
    const/4 v7, 0x1

    .line 882
    iget-object v12, v10, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v12, v12, Lcom/sonymobile/grid/GridRect;->row:I

    iget v13, v3, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    sub-int/2addr v12, v13

    iput v12, v3, Lcom/sonymobile/grid/GridRect;->row:I

    .line 883
    iget v12, v3, Lcom/sonymobile/grid/GridRect;->row:I

    if-gez v12, :cond_3

    .line 885
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 887
    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->removeItemWithUniqueId(J)V

    goto/16 :goto_0

    .line 895
    .end local v3    # "grid":Lcom/sonymobile/grid/GridRect;
    .end local v4    # "item":Lcom/sonymobile/home/data/Item;
    .end local v6    # "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    .end local v8    # "overlapIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/data/Item;>;"
    .end local v9    # "overlapedItem":Lcom/sonymobile/home/data/Item;
    .end local v10    # "overlapedLocation":Lcom/sonymobile/home/data/ItemLocation;
    .end local v11    # "resizableItem":Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;
    :cond_5
    return v7
.end method

.method private removeAppWidget(Ljava/util/Iterator;Ljava/util/List;Lcom/sonymobile/home/data/WidgetItem;)V
    .locals 2
    .param p3, "widgetItem"    # Lcom/sonymobile/home/data/WidgetItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/data/WidgetItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 555
    .local p1, "itemIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/data/Item;>;"
    .local p2, "outOfBoundsItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 556
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    invoke-virtual {p3}, Lcom/sonymobile/home/data/WidgetItem;->getUniqueId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->removeItemWithUniqueId(J)V

    .line 558
    return-void
.end method

.method private removeItemWithUniqueId(J)V
    .locals 5
    .param p1, "uniqueId"    # J

    .prologue
    .line 816
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 817
    .local v0, "itemIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 818
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 819
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 823
    :cond_1
    return-void
.end method


# virtual methods
.method public calculateNeededSpaceAndScaleFixedSizeWidgets(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 663
    .local p1, "itemsOnPage":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .local p2, "outOfBoundsItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .local p3, "resizableItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;>;"
    const/16 v16, 0x0

    .line 664
    .local v16, "modelChanged":Z
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v4

    .line 666
    .local v4, "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAdvWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    move-result-object v10

    .line 676
    .local v10, "advWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mPreviousMaxCol:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMaxColSize:[I

    .line 677
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mPreviousMaxCol:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMinColSize:[I

    .line 678
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mPreviousMaxRow:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMaxRowSize:[I

    .line 679
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mPreviousMaxRow:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mMinRowSize:[I

    .line 680
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 681
    .local v7, "itemIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/data/Item;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 682
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sonymobile/home/data/Item;

    .line 683
    .local v15, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v15}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    iget-object v5, v2, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 684
    .local v5, "grid":Lcom/sonymobile/grid/GridRect;
    iget v2, v5, Lcom/sonymobile/grid/GridRect;->col:I

    if-ltz v2, :cond_0

    iget v2, v5, Lcom/sonymobile/grid/GridRect;->row:I

    if-gez v2, :cond_1

    .line 685
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 686
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    invoke-virtual {v15}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->removeItemWithUniqueId(J)V

    .line 688
    const/16 v16, 0x1

    .line 689
    goto :goto_0

    .line 692
    :cond_1
    if-eqz v4, :cond_2

    instance-of v2, v15, Lcom/sonymobile/home/data/WidgetItem;

    if-eqz v2, :cond_2

    move-object v3, v15

    .line 694
    check-cast v3, Lcom/sonymobile/home/data/WidgetItem;

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->calculateSpaceForAppWidget(Lcom/sonymobile/home/data/WidgetItem;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Lcom/sonymobile/grid/GridRect;Ljava/util/List;Ljava/util/Iterator;Ljava/util/List;)Z

    move-result v2

    or-int v16, v16, v2

    goto :goto_0

    .line 697
    :cond_2
    if-eqz v10, :cond_3

    instance-of v2, v15, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-eqz v2, :cond_3

    move-object v9, v15

    .line 699
    check-cast v9, Lcom/sonymobile/home/data/AdvWidgetItem;

    move-object/from16 v8, p0

    move-object v11, v5

    move-object/from16 v12, p2

    move-object v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->calculateSpaceForAdvWidget(Lcom/sonymobile/home/data/AdvWidgetItem;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;Lcom/sonymobile/grid/GridRect;Ljava/util/List;Ljava/util/Iterator;Ljava/util/List;)Z

    move-result v2

    or-int v16, v16, v2

    goto :goto_0

    .line 704
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mGridSizeCalc:Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;

    iget v3, v5, Lcom/sonymobile/grid/GridRect;->colSpan:I

    iget v6, v5, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    invoke-virtual {v2, v5, v3, v6}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$GridSizeCalculator;->add(Lcom/sonymobile/grid/GridRect;II)V

    goto :goto_0

    .line 708
    .end local v5    # "grid":Lcom/sonymobile/grid/GridRect;
    .end local v15    # "item":Lcom/sonymobile/home/data/Item;
    :cond_4
    return v16
.end method

.method public compressAndResizeItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1002
    .local p1, "itemsOnPage":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .local p2, "outOfBoundsItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .local p3, "resizableItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper$ResizableItem;>;"
    invoke-direct {p0, p3}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->compressColumns(Ljava/util/List;)Z

    move-result v0

    .line 1005
    .local v0, "modelChanged":Z
    invoke-direct {p0, p3}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->compressRows(Ljava/util/List;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1009
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->moveItemsUp(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1013
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->moveItemsLeft(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1015
    return v0
.end method

.method public estimatePreviousGridSize()V
    .locals 5

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getDesktopColSpan()I

    move-result v3

    iput v3, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mPreviousMaxCol:I

    .line 99
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getDesktopRowSpan()I

    move-result v3

    iput v3, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mPreviousMaxRow:I

    .line 100
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 101
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iget-object v0, v3, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    .line 102
    .local v0, "grid":Lcom/sonymobile/grid/GridRect;
    iget v3, v0, Lcom/sonymobile/grid/GridRect;->col:I

    iget v4, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mPreviousMaxCol:I

    if-le v3, v4, :cond_1

    .line 103
    iget v3, v0, Lcom/sonymobile/grid/GridRect;->col:I

    iget v4, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mPreviousMaxCol:I

    .line 105
    :cond_1
    iget v3, v0, Lcom/sonymobile/grid/GridRect;->row:I

    iget v4, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mPreviousMaxRow:I

    if-le v3, v4, :cond_0

    .line 106
    iget v3, v0, Lcom/sonymobile/grid/GridRect;->row:I

    iget v4, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sonymobile/home/desktop/DesktopGridSizeChangeHelper;->mPreviousMaxRow:I

    goto :goto_0

    .line 109
    .end local v0    # "grid":Lcom/sonymobile/grid/GridRect;
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    :cond_2
    return-void
.end method
