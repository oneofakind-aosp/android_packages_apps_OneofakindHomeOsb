.class Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$3;
.super Lcom/sonymobile/flix/util/Worker$Task;
.source "CuiGridWidgetSecondLevelModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final gridItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/cui/CuiGridItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;)V
    .locals 1

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Worker$Task;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$3;->gridItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onExecute()V
    .locals 17

    .prologue
    .line 113
    new-instance v13, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;

    iget-object v1, v1, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;

    iget-object v2, v2, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;

    move-object/from16 v16, v0

    # getter for: Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->mWidgetSizeCalculator:Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;
    invoke-static/range {v16 .. v16}, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->access$200(Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;)Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v13, v1, v2, v0}, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/sonymobile/home/ui/widget/WidgetSizeCalculator;)V

    .line 116
    .local v13, "loadHelper":Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v11, "leafItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->mGroupItem:Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;
    invoke-static {v1}, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->access$300(Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;)Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/cui/CuiGridWidgetGroupItem;->getWidgetProviders()[Lcom/sonymobile/home/model/UserComponentName;

    move-result-object v15

    .line 119
    .local v15, "providers":[Lcom/sonymobile/home/model/UserComponentName;
    move-object v7, v15

    .local v7, "arr$":[Lcom/sonymobile/home/model/UserComponentName;
    array-length v12, v7

    .local v12, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v12, :cond_1

    aget-object v14, v7, v8

    .line 120
    .local v14, "provider":Lcom/sonymobile/home/model/UserComponentName;
    invoke-virtual {v14}, Lcom/sonymobile/home/model/UserComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v14}, Lcom/sonymobile/home/model/UserComponentName;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->loadWidget(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;

    move-result-object v4

    .line 122
    .local v4, "leafItem":Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
    if-eqz v4, :cond_0

    .line 123
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 127
    .end local v4    # "leafItem":Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
    .end local v14    # "provider":Lcom/sonymobile/home/model/UserComponentName;
    :cond_1
    # getter for: Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->sWidgetOrderComparator:Ljava/util/Comparator;
    invoke-static {}, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->access$400()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v11, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 129
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;

    .line 130
    .restart local v4    # "leafItem":Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
    invoke-virtual {v4}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->getLabel()Ljava/lang/String;

    move-result-object v9

    .line 132
    .local v9, "label":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 133
    invoke-virtual {v4}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->getSpanX()I

    move-result v6

    .line 134
    .local v6, "spanX":I
    invoke-virtual {v4}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->getSpanY()I

    move-result v5

    .line 136
    .local v5, "spanY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;

    const/4 v2, 0x1

    invoke-virtual {v1, v9, v2}, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->createBitmapFromLabel(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 137
    .local v10, "labelBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v3, v10, v9, v1, v2}, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 139
    .local v3, "cuiResource":Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$3;->gridItems:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v1, Lcom/sonymobile/home/cui/CuiGridItem;

    sget-object v2, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WIDGET_LEAF:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/home/cui/CuiGridItem;-><init>(Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;Lcom/sonymobile/home/cui/CuiGridResource;Lcom/sonymobile/home/data/Item;II)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 144
    .end local v3    # "cuiResource":Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;
    .end local v4    # "leafItem":Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;
    .end local v5    # "spanY":I
    .end local v6    # "spanX":I
    .end local v9    # "label":Ljava/lang/String;
    .end local v10    # "labelBitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {v13}, Lcom/sonymobile/home/cui/CuiWidgetLoadHelper;->onDestroy()V

    .line 145
    return-void
.end method

.method public onFinish()V
    .locals 4

    .prologue
    .line 149
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;

    iget-object v2, v2, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->mGridItems:Ljava/util/List;

    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$3;->gridItems:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;

    iget-object v2, v2, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->mGridItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/cui/CuiGridItem;

    .line 151
    .local v0, "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->mAsyncBitmapLoader:Lcom/sonymobile/home/cui/AsyncBitmapLoader;
    invoke-static {v2}, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->access$500(Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;)Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;

    invoke-virtual {v2, v0, v3}, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->load(Ljava/lang/Object;Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener;)Lcom/sonymobile/home/cui/BitmapLoaderItem;

    goto :goto_0

    .line 153
    .end local v0    # "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;

    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridWidgetSecondLevelModel;->setLoaded()V

    .line 154
    return-void
.end method
