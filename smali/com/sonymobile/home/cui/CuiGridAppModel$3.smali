.class Lcom/sonymobile/home/cui/CuiGridAppModel$3;
.super Lcom/sonymobile/flix/util/Worker$Task;
.source "CuiGridAppModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/cui/CuiGridAppModel;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;
    }
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

.field private final mCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/cui/CuiGridAppModel;)V
    .locals 1

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Worker$Task;-><init>()V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$3;->gridItems:Ljava/util/List;

    .line 135
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$3;->mCollator:Ljava/text/Collator;

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/home/cui/CuiGridAppModel$3;)Ljava/text/Collator;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridAppModel$3;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$3;->mCollator:Ljava/text/Collator;

    return-object v0
.end method

.method private getActivitiesSorted()Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v6, "sortedList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;>;"
    iget-object v7, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridAppModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;
    invoke-static {v7}, Lcom/sonymobile/home/cui/CuiGridAppModel;->access$400(Lcom/sonymobile/home/cui/CuiGridAppModel;)Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/home/model/PackageHandler;->getActivityResolveInfos()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/model/PackageHandler$AppInfo;

    .line 172
    .local v1, "appInfo":Lcom/sonymobile/home/model/PackageHandler$AppInfo;
    new-instance v0, Lcom/sonymobile/home/data/ActivityItem;

    invoke-direct {v0, v1}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Lcom/sonymobile/home/model/PackageHandler$AppInfo;)V

    .line 173
    .local v0, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    iget-object v7, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridAppModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;
    invoke-static {v7}, Lcom/sonymobile/home/cui/CuiGridAppModel;->access$600(Lcom/sonymobile/home/cui/CuiGridAppModel;)Lcom/sonymobile/home/model/ResourceHandler;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/sonymobile/home/model/ResourceHandler;->fetchResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v5

    .line 175
    .local v5, "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    if-eqz v5, :cond_0

    instance-of v7, v5, Lcom/sonymobile/home/presenter/resource/ActivityResource;

    if-eqz v7, :cond_0

    invoke-interface {v5}, Lcom/sonymobile/home/model/ResourceItem;->getLabel()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 177
    invoke-interface {v5}, Lcom/sonymobile/home/model/ResourceItem;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "label":Ljava/lang/String;
    check-cast v5, Lcom/sonymobile/home/presenter/resource/ActivityResource;

    .end local v5    # "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    invoke-virtual {v5}, Lcom/sonymobile/home/presenter/resource/ActivityResource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 180
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;

    invoke-direct {v7, p0, v0, v4, v2}, Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;-><init>(Lcom/sonymobile/home/cui/CuiGridAppModel$3;Lcom/sonymobile/home/data/ActivityItem;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    .end local v0    # "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    .end local v1    # "appInfo":Lcom/sonymobile/home/model/PackageHandler$AppInfo;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "label":Ljava/lang/String;
    :cond_1
    new-instance v7, Lcom/sonymobile/home/cui/CuiGridAppModel$3$1;

    invoke-direct {v7, p0}, Lcom/sonymobile/home/cui/CuiGridAppModel$3$1;-><init>(Lcom/sonymobile/home/cui/CuiGridAppModel$3;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 193
    return-object v6
.end method


# virtual methods
.method public onExecute()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 139
    invoke-direct {p0}, Lcom/sonymobile/home/cui/CuiGridAppModel$3;->getActivitiesSorted()Ljava/util/Collection;

    move-result-object v8

    .line 141
    .local v8, "sortedActivities":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;>;"
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;

    .line 142
    .local v7, "sortData":Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;
    new-instance v2, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;

    iget-object v1, v7, Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;->label:Ljava/lang/String;

    iget-object v3, v7, Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v9, v1, v3, v9}, Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 144
    .local v2, "cuiResource":Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;
    new-instance v0, Lcom/sonymobile/home/cui/CuiGridItem;

    sget-object v1, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_APP_LEAF:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    new-instance v3, Lcom/sonymobile/home/data/ActivityItem;

    iget-object v5, v7, Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;->item:Lcom/sonymobile/home/data/ActivityItem;

    invoke-direct {v3, v5}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Lcom/sonymobile/home/data/ActivityItem;)V

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/cui/CuiGridItem;-><init>(Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;Lcom/sonymobile/home/cui/CuiGridResource;Lcom/sonymobile/home/data/Item;II)V

    .line 147
    .local v0, "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$3;->gridItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    .end local v0    # "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    .end local v2    # "cuiResource":Lcom/sonymobile/home/cui/CuiGridLabelAndIconResource;
    .end local v7    # "sortData":Lcom/sonymobile/home/cui/CuiGridAppModel$3$EntryData;
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 4

    .prologue
    .line 154
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;

    iget-object v2, v2, Lcom/sonymobile/home/cui/CuiGridAppModel;->mGridItems:Ljava/util/List;

    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$3;->gridItems:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 157
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;

    iget-object v2, v2, Lcom/sonymobile/home/cui/CuiGridAppModel;->mGridItems:Ljava/util/List;

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

    .line 158
    .local v0, "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridAppModel;->mAsyncBitmapLoader:Lcom/sonymobile/home/cui/AsyncBitmapLoader;
    invoke-static {v2}, Lcom/sonymobile/home/cui/CuiGridAppModel;->access$500(Lcom/sonymobile/home/cui/CuiGridAppModel;)Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;

    invoke-virtual {v2, v0, v3}, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->load(Ljava/lang/Object;Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener;)Lcom/sonymobile/home/cui/BitmapLoaderItem;

    goto :goto_0

    .line 160
    .end local v0    # "gridItem":Lcom/sonymobile/home/cui/CuiGridItem;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$3;->this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;

    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridAppModel;->setLoaded()V

    .line 161
    return-void
.end method
