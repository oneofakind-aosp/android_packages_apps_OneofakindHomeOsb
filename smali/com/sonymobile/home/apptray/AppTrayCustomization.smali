.class public Lcom/sonymobile/home/apptray/AppTrayCustomization;
.super Lcom/sonymobile/home/customization/PageViewCustomization;
.source "AppTrayCustomization.java"


# static fields
.field private static final SUPPORTED_TAGS:[Ljava/lang/String;


# instance fields
.field private final mCache:Lcom/sonymobile/home/util/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/home/util/PagedList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mColSpan:I

.field private final mRowSpan:I

.field private mSortMode:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

.field private final mStorage:Lcom/sonymobile/home/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "activities"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "app-tray"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "folders"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "remove-folders"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->SUPPORTED_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/resources/ResourceManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p3, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p4, "store"    # Lcom/sonymobile/home/storage/Storage;
    .param p5, "resourceManager"    # Lcom/sonymobile/home/resources/ResourceManager;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/customization/PageViewCustomization;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;)V

    .line 85
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->OWN_ORDER:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mSortMode:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .line 100
    const/high16 v0, 0x7f0d0000

    invoke-virtual {p5, v0}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mColSpan:I

    .line 101
    const v0, 0x7f0d0001

    invoke-virtual {p5, v0}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mRowSpan:I

    .line 103
    iput-object p4, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mStorage:Lcom/sonymobile/home/storage/Storage;

    .line 104
    new-instance v0, Lcom/sonymobile/home/util/PagedList;

    iget v1, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mColSpan:I

    iget v2, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mRowSpan:I

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/sonymobile/home/util/PagedList;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mCache:Lcom/sonymobile/home/util/PagedList;

    .line 105
    return-void
.end method

.method private addNewItemsLast()Z
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method private convertSortMode(Ljava/lang/String;)Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;
    .locals 1
    .param p1, "sorting"    # Ljava/lang/String;

    .prologue
    .line 262
    const-string v0, "free"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->OWN_ORDER:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .line 273
    :goto_0
    return-object v0

    .line 264
    :cond_0
    const-string v0, "alpha"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->ALPHABETICAL:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    goto :goto_0

    .line 266
    :cond_1
    const-string v0, "most-used"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->MOST_USED:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    goto :goto_0

    .line 268
    :cond_2
    const-string v0, "recent-inst"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->RECENTLY_INSTALLED:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    goto :goto_0

    .line 270
    :cond_3
    const-string v0, "work"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 271
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->WORK:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    goto :goto_0

    .line 273
    :cond_4
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;->OWN_ORDER:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    goto :goto_0
.end method

.method private storeSortOrder(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->storeCustomizationSortOrderSync(Landroid/content/Context;Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)Z

    .line 253
    return-void
.end method


# virtual methods
.method protected addActivity(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "page"    # I
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "folderId"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "packageName"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-virtual {p0, p6, p7}, Lcom/sonymobile/home/apptray/AppTrayCustomization;->removeActivityItem(Ljava/lang/String;Ljava/lang/String;)Z

    .line 197
    invoke-super/range {p0 .. p7}, Lcom/sonymobile/home/customization/PageViewCustomization;->addActivity(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected addFolder(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "page"    # I
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "id"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "category"    # Ljava/lang/String;

    .prologue
    .line 203
    new-instance v0, Lcom/sonymobile/home/data/FolderItem;

    invoke-direct {v0, p6, p5}, Lcom/sonymobile/home/data/FolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .local v0, "folderItem":Lcom/sonymobile/home/data/FolderItem;
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayCustomization;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/data/FolderItem;->setPageViewName(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayCustomization;->removeItem(Lcom/sonymobile/home/data/Item;)Z

    .line 207
    invoke-super/range {p0 .. p7}, Lcom/sonymobile/home/customization/PageViewCustomization;->addFolder(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public clearData()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mStorage:Lcom/sonymobile/home/storage/Storage;

    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayCustomization;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonymobile/home/storage/Storage;->clear(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->clearPreferences(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method protected getCustomSettingsResource()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    .prologue
    .line 189
    const/high16 v0, 0x7f060000

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayCustomization;->getXmlResource(I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method public getCustomizationIdentifier()I
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected getDefaultResource()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    .prologue
    .line 184
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayCustomization;->getXmlResource(I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method protected getItems()Ljava/util/List;
    .locals 9
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
    const/4 v8, 0x0

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    iget-object v7, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mCache:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v7}, Lcom/sonymobile/home/util/PagedList;->getMaxPageSize()I

    move-result v5

    .line 215
    .local v5, "pageSize":I
    const/4 v3, 0x0

    .local v3, "pageIndex":I
    :goto_0
    iget-object v7, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mCache:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v7}, Lcom/sonymobile/home/util/PagedList;->getNumberOfPages()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 216
    iget-object v7, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mCache:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v7, v3}, Lcom/sonymobile/home/util/PagedList;->getPage(I)Ljava/util/List;

    move-result-object v4

    .line 218
    .local v4, "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-eqz v4, :cond_1

    .line 219
    const/4 v6, 0x0

    .local v6, "pos":I
    :goto_1
    if-ge v6, v5, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 220
    iget-object v7, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mCache:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v7, v3, v6}, Lcom/sonymobile/home/util/PagedList;->get(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/Item;

    .line 221
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    .line 224
    .local v2, "location":Lcom/sonymobile/home/data/ItemLocation;
    iput v3, v2, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 225
    iput v6, v2, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 226
    iget-object v7, v2, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput v8, v7, Lcom/sonymobile/grid/GridRect;->col:I

    .line 227
    iget-object v7, v2, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iput v8, v7, Lcom/sonymobile/grid/GridRect;->row:I

    .line 229
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v2    # "location":Lcom/sonymobile/home/data/ItemLocation;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 215
    .end local v0    # "item":Lcom/sonymobile/home/data/Item;
    .end local v6    # "pos":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    .end local v4    # "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_2
    return-object v1
.end method

.method protected getPageViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const-string v0, "apptray"

    return-object v0
.end method

.method protected handleKey(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 2
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
    .line 126
    .local p2, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "app-tray"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    const-string v1, "sorting-order"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    .local v0, "sorting":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayCustomization;->convertSortMode(Ljava/lang/String;)Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mSortMode:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    .line 133
    :cond_0
    const/4 v1, 0x1

    .line 136
    .end local v0    # "sorting":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isWithinBounds(Lcom/sonymobile/home/data/ItemLocation;)Z
    .locals 3
    .param p1, "location"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 146
    iget v0, p1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    iget v1, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mColSpan:I

    iget v2, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mRowSpan:I

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    :cond_0
    iget v0, p1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAddItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    .line 154
    .local v0, "location":Lcom/sonymobile/home/data/ItemLocation;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    iget v1, v1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 155
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mCache:Lcom/sonymobile/home/util/PagedList;

    iget v2, v0, Lcom/sonymobile/home/data/ItemLocation;->page:I

    iget v3, v0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/sonymobile/home/util/PagedList;->expandInsert(IILjava/lang/Object;)V

    .line 163
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayCustomization;->addNewItemsLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mCache:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/util/PagedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mCache:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/util/PagedList;->addInFirstAvailableLocation(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onRemoveItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "itemsRemoved":Z
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mCache:Lcom/sonymobile/home/util/PagedList;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/util/PagedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const/4 v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    return v0
.end method

.method protected removeOverlappingItems(Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 142
    return-void
.end method

.method protected store()V
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mStorage:Lcom/sonymobile/home/storage/Storage;

    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayCustomization;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayCustomization;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/home/storage/Storage;->insertPageViewItems(Ljava/lang/String;Ljava/util/List;)V

    .line 243
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->mSortMode:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;

    invoke-direct {p0, v0}, Lcom/sonymobile/home/apptray/AppTrayCustomization;->storeSortOrder(Lcom/sonymobile/home/apptray/AppTrayPreferenceManager$SortMode;)V

    .line 244
    return-void
.end method

.method protected supportsGroup(Ljava/lang/String;)Z
    .locals 1
    .param p1, "groupType"    # Ljava/lang/String;

    .prologue
    .line 121
    sget-object v0, Lcom/sonymobile/home/apptray/AppTrayCustomization;->SUPPORTED_TAGS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sonymobile/home/util/HomeUtils;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
