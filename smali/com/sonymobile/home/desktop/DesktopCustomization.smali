.class public abstract Lcom/sonymobile/home/desktop/DesktopCustomization;
.super Lcom/sonymobile/home/customization/PageViewCustomization;
.source "DesktopCustomization.java"


# static fields
.field private static final SUPPORTED_TAGS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mColSpan:I

.field private final mHomePage:I

.field private final mNumberOfPages:I

.field private final mPageViewName:Ljava/lang/String;

.field private final mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

.field private mRemoveOldWidgets:Z

.field private final mRowSpan:I

.field private final mStorage:Lcom/sonymobile/home/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const-class v0, Lcom/sonymobile/home/desktop/DesktopCustomization;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopCustomization;->TAG:Ljava/lang/String;

    .line 66
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "activities"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "remove-activities"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "widgets"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "remove-widgets"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "advanced-widgets"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "remove-advanced-widgets"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "shortcuts"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "remove-shortcuts"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "internal-functions"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "folders"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "remove-folders"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopCustomization;->SUPPORTED_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/resources/ResourceManager;IILjava/lang/String;Lcom/sonymobile/home/desktop/DesktopPreferenceManager;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p3, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p4, "storage"    # Lcom/sonymobile/home/storage/Storage;
    .param p5, "resourceManager"    # Lcom/sonymobile/home/resources/ResourceManager;
    .param p6, "numberOfPages"    # I
    .param p7, "homePage"    # I
    .param p8, "pageViewName"    # Ljava/lang/String;
    .param p9, "preferences"    # Lcom/sonymobile/home/desktop/DesktopPreferenceManager;
    .param p10, "removeOldWidgets"    # Z

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/customization/PageViewCustomization;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mRemoveOldWidgets:Z

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mCache:Ljava/util/ArrayList;

    .line 128
    iput-object p4, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mStorage:Lcom/sonymobile/home/storage/Storage;

    .line 129
    iput-object p8, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mPageViewName:Ljava/lang/String;

    .line 130
    iput-object p9, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    .line 131
    const v0, 0x7f0d0011

    invoke-virtual {p5, v0}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mRowSpan:I

    .line 132
    const v0, 0x7f0d0010

    invoke-virtual {p5, v0}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mColSpan:I

    .line 133
    iput p6, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mNumberOfPages:I

    .line 134
    iput p7, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mHomePage:I

    .line 135
    iput-boolean p10, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mRemoveOldWidgets:Z

    .line 136
    return-void
.end method

.method private addTipItem()V
    .locals 20

    .prologue
    .line 608
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sonymobile/home/HomeApplication;->getResourceManager(Landroid/content/Context;)Lcom/sonymobile/home/resources/ResourceManager;

    move-result-object v17

    .line 609
    .local v17, "rm":Lcom/sonymobile/home/resources/ResourceManager;
    invoke-static/range {v17 .. v17}, Lcom/sonymobile/home/desktop/DesktopPresenter;->createDesktopGrid(Lcom/sonymobile/home/resources/ResourceManager;)Lcom/sonymobile/grid/Grid;

    move-result-object v8

    .line 610
    .local v8, "grid":Lcom/sonymobile/grid/Grid;
    invoke-virtual {v8}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v15

    .line 611
    .local v15, "gridColSpan":I
    invoke-virtual {v8}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v16

    .line 612
    .local v16, "gridRowSpan":I
    rem-int/lit8 v9, v15, 0x2

    add-int/lit8 v9, v9, 0x4

    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 613
    .local v2, "tipColSpan":I
    const/4 v9, 0x2

    move/from16 v0, v16

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 616
    .local v3, "tipRowSpan":I
    new-instance v7, Lcom/sonymobile/grid/GridRect;

    invoke-direct {v7}, Lcom/sonymobile/grid/GridRect;-><init>()V

    .line 617
    .local v7, "searchArea":Lcom/sonymobile/grid/GridRect;
    sub-int v9, v15, v2

    div-int/lit8 v9, v9, 0x2

    iput v9, v7, Lcom/sonymobile/grid/GridRect;->col:I

    .line 618
    iput v2, v7, Lcom/sonymobile/grid/GridRect;->colSpan:I

    .line 619
    const/4 v9, 0x0

    iput v9, v7, Lcom/sonymobile/grid/GridRect;->row:I

    .line 620
    move/from16 v0, v16

    iput v0, v7, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    .line 622
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v9}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->read()V

    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/desktop/DesktopCustomization;->getItems()Ljava/util/List;

    move-result-object v4

    .line 624
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v9}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getHomePageId()I

    move-result v5

    .line 625
    .local v5, "startPage":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-static {v9}, Lcom/sonymobile/home/desktop/DesktopModel;->getPages(Lcom/sonymobile/home/desktop/DesktopPreferenceManager;)[I

    move-result-object v6

    .line 629
    .local v6, "pageArray":[I
    invoke-static/range {v2 .. v8}, Lcom/sonymobile/home/desktop/search/SearchUtil;->getFirstVacantLocation(IILjava/util/List;I[ILcom/sonymobile/grid/GridRect;Lcom/sonymobile/grid/Grid;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v19

    .line 632
    .local v19, "vacantLocation":Lcom/sonymobile/home/data/ItemLocation;
    if-nez v19, :cond_0

    move v9, v2

    move v10, v3

    move-object v11, v4

    move v12, v5

    move-object v13, v6

    move-object v14, v8

    .line 634
    invoke-static/range {v9 .. v14}, Lcom/sonymobile/home/desktop/search/SearchUtil;->getFirstVacantLocation(IILjava/util/List;I[ILcom/sonymobile/grid/Grid;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v19

    .line 639
    :cond_0
    if-eqz v19, :cond_1

    .line 640
    new-instance v18, Lcom/sonymobile/home/data/TipItem;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v9}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->getDesktopEnterTipId()I

    move-result v9

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Lcom/sonymobile/home/data/TipItem;-><init>(I)V

    .line 641
    .local v18, "tipItem":Lcom/sonymobile/home/data/Item;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mPageViewName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 643
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopCustomization;->addItem(Lcom/sonymobile/home/data/Item;)Z

    .line 645
    .end local v18    # "tipItem":Lcom/sonymobile/home/data/Item;
    :cond_1
    return-void
.end method

.method private findAdvWidgets(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/AdvWidgetItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    .local p1, "model":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v1, "foundItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/AdvWidgetItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/data/Item;

    .line 552
    .local v3, "item":Lcom/sonymobile/home/data/Item;
    instance-of v4, v3, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 553
    check-cast v0, Lcom/sonymobile/home/data/AdvWidgetItem;

    .line 555
    .local v0, "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    if-nez p3, :cond_1

    .line 559
    invoke-virtual {v0}, Lcom/sonymobile/home/data/AdvWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 560
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 564
    :cond_1
    invoke-virtual {v0}, Lcom/sonymobile/home/data/AdvWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/home/data/AdvWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 566
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 572
    .end local v0    # "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    .end local v3    # "item":Lcom/sonymobile/home/data/Item;
    :cond_2
    return-object v1
.end method

.method private findWidgets(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/WidgetItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    .local p1, "model":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v0, "foundItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/WidgetItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 527
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    instance-of v4, v2, Lcom/sonymobile/home/data/WidgetItem;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 528
    check-cast v3, Lcom/sonymobile/home/data/WidgetItem;

    .line 530
    .local v3, "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    invoke-virtual {v3}, Lcom/sonymobile/home/data/WidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/sonymobile/home/data/WidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 532
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 537
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    .end local v3    # "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    :cond_1
    return-object v0
.end method

.method private isTipItemEnabled()Z
    .locals 2

    .prologue
    .line 161
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 162
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method private registerAppWidgets()V
    .locals 9

    .prologue
    .line 166
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v0

    .line 167
    .local v0, "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    if-eqz v0, :cond_2

    .line 168
    iget-object v6, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 169
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 170
    .local v1, "desktopItem":Lcom/sonymobile/home/data/Item;
    instance-of v6, v1, Lcom/sonymobile/home/data/WidgetItem;

    if-eqz v6, :cond_0

    move-object v5, v1

    .line 171
    check-cast v5, Lcom/sonymobile/home/data/WidgetItem;

    .line 173
    .local v5, "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    invoke-virtual {v5}, Lcom/sonymobile/home/data/WidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sonymobile/home/data/WidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sonymobile/home/data/WidgetItem;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v0, v6, v7, v8}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->registerAppWidgetIdSync(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v4

    .line 175
    .local v4, "widgetId":I
    if-eqz v4, :cond_1

    .line 176
    new-instance v3, Lcom/sonymobile/home/data/WidgetItem;

    invoke-virtual {v5}, Lcom/sonymobile/home/data/WidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sonymobile/home/data/WidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sonymobile/home/data/WidgetItem;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-direct {v3, v4, v6, v7, v8}, Lcom/sonymobile/home/data/WidgetItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 179
    .local v3, "registeredWidget":Lcom/sonymobile/home/data/WidgetItem;
    invoke-virtual {v5}, Lcom/sonymobile/home/data/WidgetItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sonymobile/home/data/WidgetItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 180
    invoke-virtual {v5}, Lcom/sonymobile/home/data/WidgetItem;->getPageViewName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sonymobile/home/data/WidgetItem;->setPageViewName(Ljava/lang/String;)V

    .line 182
    invoke-interface {v2, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 185
    .end local v3    # "registeredWidget":Lcom/sonymobile/home/data/WidgetItem;
    :cond_1
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 190
    .end local v1    # "desktopItem":Lcom/sonymobile/home/data/Item;
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sonymobile/home/data/Item;>;"
    .end local v4    # "widgetId":I
    .end local v5    # "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    :cond_2
    return-void
.end method

.method private removeOverlappingItems(Ljava/util/ArrayList;Lcom/sonymobile/home/data/Item;)V
    .locals 6
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/data/Item;",
            ")V"
        }
    .end annotation

    .prologue
    .line 582
    .local p1, "model":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 584
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/data/Item;>;"
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v0

    .line 587
    .local v0, "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 588
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 590
    .local v2, "modelItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/home/data/ItemLocation;->overlaps(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 591
    instance-of v4, v2, Lcom/sonymobile/home/data/WidgetItem;

    if-eqz v4, :cond_1

    move-object v3, v2

    .line 593
    check-cast v3, Lcom/sonymobile/home/data/WidgetItem;

    .line 594
    .local v3, "widget":Lcom/sonymobile/home/data/WidgetItem;
    if-eqz v0, :cond_1

    .line 595
    invoke-virtual {v3}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->removeAppWidget(I)V

    .line 598
    .end local v3    # "widget":Lcom/sonymobile/home/data/WidgetItem;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 601
    .end local v2    # "modelItem":Lcom/sonymobile/home/data/Item;
    :cond_2
    return-void
.end method

.method private updatePreferences()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mNumberOfPages:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setNumberOfPages(I)V

    .line 207
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setLeftPageId(I)V

    .line 208
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mHomePage:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->setHomePageId(I)V

    .line 209
    return-void
.end method


# virtual methods
.method protected addAdvWidget(Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/HashMap;)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "pane"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 451
    .local p8, "custMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAdvWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    move-result-object v9

    .line 454
    .local v9, "advWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    if-eqz v9, :cond_0

    .line 455
    new-instance v10, Landroid/content/ComponentName;

    invoke-direct {v10, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .local v10, "widgetComponent":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v2}, Lcom/sonymobile/home/model/PackageHandler;->getAdvancedWidgets()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 458
    new-instance v1, Lcom/sonymobile/home/data/ItemLocation;

    const/4 v3, -0x1

    move v2, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIIII)V

    .line 459
    .local v1, "location":Lcom/sonymobile/home/data/ItemLocation;
    new-instance v8, Lcom/sonymobile/home/data/AdvWidgetItem;

    invoke-virtual {v9}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->generateId()Ljava/util/UUID;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-direct {v8, p1, p2, v2, v0}, Lcom/sonymobile/home/data/AdvWidgetItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/util/HashMap;)V

    .line 461
    .local v8, "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    invoke-virtual {v8, v1}, Lcom/sonymobile/home/data/AdvWidgetItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 462
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopCustomization;->getPageViewName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/sonymobile/home/data/AdvWidgetItem;->setPageViewName(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0, v8}, Lcom/sonymobile/home/desktop/DesktopCustomization;->addItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v2

    .line 468
    .end local v1    # "location":Lcom/sonymobile/home/data/ItemLocation;
    .end local v8    # "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    .end local v10    # "widgetComponent":Landroid/content/ComponentName;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected addAppWidget(Ljava/lang/String;Ljava/lang/String;IIIII)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "page"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 419
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v1}, Lcom/sonymobile/home/model/PackageHandler;->getMainUser()Landroid/os/UserHandle;

    move-result-object v7

    .line 420
    .local v7, "user":Landroid/os/UserHandle;
    new-instance v8, Lcom/sonymobile/home/model/UserComponentName;

    invoke-direct {v8, p1, p2, v7}, Lcom/sonymobile/home/model/UserComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 422
    .local v8, "widgetComponent":Lcom/sonymobile/home/model/UserComponentName;
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v1, v8}, Lcom/sonymobile/home/model/PackageHandler;->isWidgetInstalled(Lcom/sonymobile/home/model/UserComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    new-instance v6, Lcom/sonymobile/home/data/WidgetItem;

    const/4 v1, 0x0

    invoke-direct {v6, v1, p1, p2, v7}, Lcom/sonymobile/home/data/WidgetItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 425
    .local v6, "item":Lcom/sonymobile/home/data/WidgetItem;
    new-instance v0, Lcom/sonymobile/home/data/ItemLocation;

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIII)V

    .line 426
    .local v0, "location":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {v6, v0}, Lcom/sonymobile/home/data/WidgetItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 427
    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopCustomization;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/sonymobile/home/data/WidgetItem;->setPageViewName(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0, v6}, Lcom/sonymobile/home/desktop/DesktopCustomization;->addItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v1

    .line 433
    .end local v0    # "location":Lcom/sonymobile/home/data/ItemLocation;
    .end local v6    # "item":Lcom/sonymobile/home/data/WidgetItem;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public applyCustomization()Z
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopCustomization;->updatePreferences()V

    .line 152
    invoke-super {p0}, Lcom/sonymobile/home/customization/PageViewCustomization;->applyCustomization()Z

    move-result v0

    .line 153
    .local v0, "success":Z
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopCustomization;->registerAppWidgets()V

    .line 154
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopCustomization;->isTipItemEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopCustomization;->addTipItem()V

    .line 157
    :cond_0
    return v0
.end method

.method public clearData()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mStorage:Lcom/sonymobile/home/storage/Storage;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mPageViewName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sonymobile/home/storage/Storage;->clear(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->clearAll()V

    .line 255
    return-void
.end method

.method public finalizeCustomization()V
    .locals 10

    .prologue
    .line 260
    invoke-super {p0}, Lcom/sonymobile/home/customization/PageViewCustomization;->finalizeCustomization()V

    .line 262
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAdvWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    move-result-object v1

    .line 264
    .local v1, "advWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    if-eqz v1, :cond_2

    .line 265
    iget-object v8, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/data/Item;

    .line 266
    .local v4, "desktopItem":Lcom/sonymobile/home/data/Item;
    instance-of v8, v4, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-eqz v8, :cond_0

    move-object v0, v4

    .line 269
    check-cast v0, Lcom/sonymobile/home/data/AdvWidgetItem;

    .line 271
    .local v0, "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    invoke-virtual {v0}, Lcom/sonymobile/home/data/AdvWidgetItem;->getCustomization()Ljava/util/HashMap;

    move-result-object v3

    .line 272
    .local v3, "custMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 273
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 274
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 275
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 277
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v1, v0, v2}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->customizeAdvWidget(Lcom/sonymobile/home/data/AdvWidgetItem;Landroid/os/Bundle;)V

    goto :goto_0

    .line 282
    .end local v0    # "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "custMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "desktopItem":Lcom/sonymobile/home/data/Item;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method protected getItems()Ljava/util/List;
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
    .line 309
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPageViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mPageViewName:Ljava/lang/String;

    return-object v0
.end method

.method protected handleKey(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 15
    .param p1, "groupType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 314
    .local p2, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "widgets"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    const-string v1, "package-name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 316
    .local v2, "packageName":Ljava/lang/String;
    const-string v1, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sonymobile/home/customization/CustomizationUtils;->getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "className":Ljava/lang/String;
    const-string v1, "pane"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v1, v14}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 319
    .local v4, "pane":I
    const-string v1, "x"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v1, v14}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 320
    .local v5, "x":I
    const-string v1, "y"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v1, v14}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 321
    .local v6, "y":I
    const-string v1, "width"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v1, v14}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 322
    .local v7, "width":I
    const-string v1, "height"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v1, v14}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .local v8, "height":I
    move-object v1, p0

    .line 324
    invoke-virtual/range {v1 .. v8}, Lcom/sonymobile/home/desktop/DesktopCustomization;->addAppWidget(Ljava/lang/String;Ljava/lang/String;IIIII)Z

    .line 325
    const/4 v1, 0x1

    .line 391
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "pane":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v7    # "width":I
    .end local v8    # "height":I
    :goto_0
    return v1

    .line 326
    :cond_0
    const-string v1, "remove-widgets"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    const-string v1, "package-name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 328
    .restart local v2    # "packageName":Ljava/lang/String;
    const-string v1, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sonymobile/home/customization/CustomizationUtils;->getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 331
    .restart local v3    # "className":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/home/desktop/DesktopCustomization;->removeAppWidget(Ljava/lang/String;Ljava/lang/String;)Z

    .line 332
    const/4 v1, 0x1

    goto :goto_0

    .line 333
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "className":Ljava/lang/String;
    :cond_1
    const-string v1, "advanced-widgets"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 334
    const-string v1, "package-name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 335
    .restart local v2    # "packageName":Ljava/lang/String;
    const-string v1, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sonymobile/home/customization/CustomizationUtils;->getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 337
    .restart local v3    # "className":Ljava/lang/String;
    const/4 v4, 0x0

    .line 338
    .restart local v4    # "pane":I
    const/4 v5, 0x0

    .line 339
    .restart local v5    # "x":I
    const/4 v6, 0x0

    .line 340
    .restart local v6    # "y":I
    const/4 v7, 0x0

    .line 341
    .restart local v7    # "width":I
    const/4 v8, 0x0

    .line 342
    .restart local v8    # "height":I
    const/4 v9, 0x0

    .line 344
    .local v9, "custMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 345
    .local v12, "setting":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 346
    .local v11, "key":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 348
    .local v13, "value":Ljava/lang/String;
    const-string v1, "package-name"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 350
    const-string v1, "name"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 352
    const-string v1, "pane"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 353
    const/4 v1, 0x0

    invoke-static {v13, v1}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    .line 354
    :cond_3
    const-string v1, "x"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 355
    const/4 v1, 0x0

    invoke-static {v13, v1}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_1

    .line 356
    :cond_4
    const-string v1, "y"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 357
    const/4 v1, 0x0

    invoke-static {v13, v1}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_1

    .line 358
    :cond_5
    const-string v1, "width"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 359
    const/4 v1, 0x0

    invoke-static {v13, v1}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_1

    .line 360
    :cond_6
    const-string v1, "height"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 361
    const/4 v1, 0x0

    invoke-static {v13, v1}, Lcom/sonymobile/home/customization/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v8

    goto :goto_1

    .line 365
    :cond_7
    if-nez v9, :cond_8

    .line 366
    new-instance v9, Ljava/util/HashMap;

    .end local v9    # "custMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 368
    .restart local v9    # "custMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    invoke-virtual {v9, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 373
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "setting":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "value":Ljava/lang/String;
    :cond_9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, ".SemcWidget"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_a
    move-object v1, p0

    .line 377
    invoke-virtual/range {v1 .. v9}, Lcom/sonymobile/home/desktop/DesktopCustomization;->addAdvWidget(Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/HashMap;)Z

    .line 378
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 379
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "pane":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "custMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_b
    const-string v1, "remove-advanced-widgets"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 380
    const-string v1, "package-name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 381
    .restart local v2    # "packageName":Ljava/lang/String;
    const-string v1, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sonymobile/home/customization/CustomizationUtils;->getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 384
    .restart local v3    # "className":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, ".SemcWidget"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    :cond_c
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/home/desktop/DesktopCustomization;->removeAdvWidget(Ljava/lang/String;Ljava/lang/String;)Z

    .line 389
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 391
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "className":Ljava/lang/String;
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method protected isWithinBounds(Lcom/sonymobile/home/data/ItemLocation;)Z
    .locals 3
    .param p1, "location"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    const/4 v0, 0x1

    .line 197
    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->row:I

    if-ltz v1, :cond_0

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->col:I

    if-ltz v1, :cond_0

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    if-lt v1, v0, :cond_0

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->colSpan:I

    if-lt v1, v0, :cond_0

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->row:I

    iget-object v2, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mRowSpan:I

    if-gt v1, v2, :cond_0

    iget-object v1, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v1, v1, Lcom/sonymobile/grid/GridRect;->col:I

    iget-object v2, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/grid/GridRect;->colSpan:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mColSpan:I

    if-gt v1, v2, :cond_0

    iget v1, p1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    if-ltz v1, :cond_0

    iget v1, p1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mNumberOfPages:I

    if-ge v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAddItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method protected onRemoveItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public postCustomization()V
    .locals 11

    .prologue
    .line 213
    invoke-super {p0}, Lcom/sonymobile/home/customization/PageViewCustomization;->postCustomization()V

    .line 215
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAdvWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    move-result-object v7

    .line 217
    .local v7, "advWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    if-eqz v7, :cond_1

    .line 218
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/home/data/Item;

    .line 219
    .local v8, "desktopItem":Lcom/sonymobile/home/data/Item;
    instance-of v0, v8, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-eqz v0, :cond_0

    move-object v6, v8

    .line 221
    check-cast v6, Lcom/sonymobile/home/data/AdvWidgetItem;

    .line 222
    .local v6, "advWidget":Lcom/sonymobile/home/data/AdvWidgetItem;
    invoke-virtual {v6}, Lcom/sonymobile/home/data/AdvWidgetItem;->getCustomization()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v10, 0x0

    .line 228
    .local v10, "widget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    invoke-virtual {v6}, Lcom/sonymobile/home/data/AdvWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/sonymobile/home/data/AdvWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "className":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v6}, Lcom/sonymobile/home/data/AdvWidgetItem;->getId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v7, v2, v3, v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->loadWidgetSync(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 240
    :goto_1
    if-nez v10, :cond_0

    .line 241
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopCustomization;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed loading advanced widget "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " / "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    :catch_0
    move-exception v5

    .line 235
    .local v5, "e":Ljava/lang/Exception;
    const-string v0, "AdvWidget"

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mContext:Landroid/content/Context;

    const-string v4, "Error loading advanced widget due to "

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->logTrackAndPushExceptionToGA(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 248
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "className":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "advWidget":Lcom/sonymobile/home/data/AdvWidgetItem;
    .end local v8    # "desktopItem":Lcom/sonymobile/home/data/Item;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "widget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    :cond_1
    return-void
.end method

.method public preCustomization(I)V
    .locals 2
    .param p1, "customizationsCompletedMask"    # I

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/sonymobile/home/customization/PageViewCustomization;->preCustomization(I)V

    .line 141
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v0

    .line 143
    .local v0, "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mRemoveOldWidgets:Z

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->deleteAllWidgets()V

    .line 147
    :cond_0
    return-void
.end method

.method protected removeAdvWidget(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 506
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mCache:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p1, p2}, Lcom/sonymobile/home/desktop/DesktopCustomization;->findAdvWidgets(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 508
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/AdvWidgetItem;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/AdvWidgetItem;

    .line 509
    .local v2, "widgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    invoke-virtual {p0, v2}, Lcom/sonymobile/home/desktop/DesktopCustomization;->removeItem(Lcom/sonymobile/home/data/Item;)Z

    goto :goto_0

    .line 512
    .end local v2    # "widgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method protected removeAppWidget(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 479
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v0

    .line 482
    .local v0, "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    if-eqz v0, :cond_1

    .line 483
    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->removeAppWidget(Ljava/lang/String;Ljava/lang/String;)Z

    .line 485
    iget-object v4, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mCache:Ljava/util/ArrayList;

    invoke-direct {p0, v4, p1, p2}, Lcom/sonymobile/home/desktop/DesktopCustomization;->findWidgets(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 487
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/WidgetItem;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/data/WidgetItem;

    .line 488
    .local v3, "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    invoke-virtual {p0, v3}, Lcom/sonymobile/home/desktop/DesktopCustomization;->removeItem(Lcom/sonymobile/home/data/Item;)Z

    goto :goto_0

    .line 490
    .end local v3    # "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    :cond_0
    const/4 v4, 0x1

    .line 492
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/WidgetItem;>;"
    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected removeOverlappingItems(Lcom/sonymobile/home/data/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mCache:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/home/desktop/DesktopCustomization;->removeOverlappingItems(Ljava/util/ArrayList;Lcom/sonymobile/home/data/Item;)V

    .line 294
    return-void
.end method

.method protected store()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mStorage:Lcom/sonymobile/home/storage/Storage;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mPageViewName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mCache:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/home/storage/Storage;->insertPageViewItems(Ljava/lang/String;Ljava/util/List;)V

    .line 288
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopCustomization;->mPreferences:Lcom/sonymobile/home/desktop/DesktopPreferenceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPreferenceManager;->store(Z)V

    .line 289
    return-void
.end method

.method protected supportsGroup(Ljava/lang/String;)Z
    .locals 1
    .param p1, "groupType"    # Ljava/lang/String;

    .prologue
    .line 401
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopCustomization;->SUPPORTED_TAGS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sonymobile/home/util/HomeUtils;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
