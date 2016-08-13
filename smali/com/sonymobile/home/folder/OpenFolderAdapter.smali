.class public Lcom/sonymobile/home/folder/OpenFolderAdapter;
.super Lcom/sonymobile/home/presenter/PageViewBaseAdapter;
.source "OpenFolderAdapter.java"

# interfaces
.implements Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/folder/OpenFolderAdapter$FolderDataObserver;
    }
.end annotation


# instance fields
.field private final mFolderDataObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/folder/OpenFolderAdapter$FolderDataObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mFolderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mHolePosition:I

.field private final mItemTextColor:I

.field private mMaxIconSize:I

.field private final mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

.field private mOpenFolderHintView:Lcom/sonymobile/home/ui/pageview/PageItemView;

.field private mOriginalPosition:I

.field private final mPageItemViewListener:Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

.field private final mScene:Lcom/sonymobile/flix/components/Scene;

.field private final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

.field private final mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

.field private final mViewFactory:Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/folder/OpenFolderModel;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;Landroid/content/res/Resources;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 8
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "model"    # Lcom/sonymobile/home/folder/OpenFolderModel;
    .param p3, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 77
    invoke-direct {p0}, Lcom/sonymobile/home/presenter/PageViewBaseAdapter;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderDataObservers:Ljava/util/ArrayList;

    .line 45
    iput v1, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mHolePosition:I

    .line 46
    iput v1, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mOriginalPosition:I

    .line 78
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 79
    iput-object p2, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    .line 80
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/sonymobile/home/folder/OpenFolderModel;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 81
    invoke-static {}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->getFactory()Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mViewFactory:Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    .line 82
    iput-object p3, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mPageItemViewListener:Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .line 83
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/folder/OpenFolderModel;->addModelObserver(Lcom/sonymobile/home/model/ModelObserver;)V

    .line 85
    sget-object v0, Lcom/sonymobile/home/settings/UserSettings$IconType;->DESKTOP_ICON:Lcom/sonymobile/home/settings/UserSettings$IconType;

    invoke-virtual {p5, v0}, Lcom/sonymobile/home/settings/UserSettings;->getIconSize(Lcom/sonymobile/home/settings/UserSettings$IconType;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mMaxIconSize:I

    .line 87
    iput-object p5, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 88
    new-instance v0, Lcom/sonymobile/home/folder/OpenFolderAdapter$1;

    invoke-direct {v0, p0, p5}, Lcom/sonymobile/home/folder/OpenFolderAdapter$1;-><init>(Lcom/sonymobile/home/folder/OpenFolderAdapter;Lcom/sonymobile/home/settings/UserSettings;)V

    iput-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 95
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {p5, v0}, Lcom/sonymobile/home/settings/UserSettings;->addUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 98
    invoke-static {p4}, Lcom/sonymobile/home/folder/FolderUtil;->hasAllFolderResourcesVersion1(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const v0, 0x7f0e0047

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mItemTextColor:I

    .line 106
    :goto_0
    new-instance v0, Lcom/sonymobile/home/presenter/view/IconLabelView;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mScene:Lcom/sonymobile/flix/components/Scene;

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mPageItemViewListener:Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    move-object v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/home/presenter/view/IconLabelView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;Landroid/graphics/Bitmap;Ljava/lang/String;ZILcom/sonymobile/home/ui/pageview/PageItemViewListener;)V

    iput-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mOpenFolderHintView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 109
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/sonymobile/home/folder/OpenFolderModel;->addFolderChangeListener(Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;Landroid/os/Handler;)V

    .line 110
    return-void

    .line 101
    :cond_0
    const v0, 0x7f0e0046

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mItemTextColor:I

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/sonymobile/home/folder/OpenFolderAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mMaxIconSize:I

    return p1
.end method

.method private updateOriginalHolePosition()V
    .locals 10

    .prologue
    .line 448
    iget-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    invoke-virtual {v8}, Lcom/sonymobile/home/folder/OpenFolderModel;->getItems()Ljava/util/List;

    move-result-object v2

    .line 449
    .local v2, "modelItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 450
    .local v3, "modelSize":I
    iget-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v3, :cond_2

    .line 452
    add-int/lit8 v4, v3, -0x1

    .line 453
    .local v4, "newOriginalPosition":I
    iget v8, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mOriginalPosition:I

    if-ge v8, v3, :cond_1

    .line 455
    iget-object v8, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    iget v9, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mOriginalPosition:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/home/data/Item;

    .line 456
    .local v5, "originalItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v5}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v6

    .line 457
    .local v6, "originalId":J
    iget v8, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mOriginalPosition:I

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/home/data/Item;

    invoke-virtual {v8}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-eqz v8, :cond_1

    .line 459
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 460
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 461
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-nez v8, :cond_0

    .line 462
    move v4, v0

    .line 459
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    .end local v5    # "originalItem":Lcom/sonymobile/home/data/Item;
    .end local v6    # "originalId":J
    :cond_1
    iput v4, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mOriginalPosition:I

    .line 469
    .end local v4    # "newOriginalPosition":I
    :cond_2
    return-void
.end method


# virtual methods
.method public clearPickup()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 358
    iput v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mHolePosition:I

    .line 359
    iput v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mOriginalPosition:I

    .line 361
    return-void
.end method

.method public dropItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 5
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v4, -0x1

    .line 375
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->getHolePosition()I

    move-result v1

    .line 377
    .local v1, "position":I
    if-ne v1, v4, :cond_0

    .line 378
    iget v1, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mOriginalPosition:I

    .line 381
    :cond_0
    iget v3, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mOriginalPosition:I

    if-eq v1, v3, :cond_2

    const/4 v0, 0x1

    .line 384
    .local v0, "moved":Z
    :goto_0
    if-eq v1, v4, :cond_1

    .line 385
    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 386
    .local v2, "size":I
    iget v3, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mOriginalPosition:I

    if-ge v3, v2, :cond_3

    .line 387
    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mOriginalPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 388
    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 396
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->clearPickup()V

    .line 399
    .end local v2    # "size":I
    :cond_1
    return v0

    .line 381
    .end local v0    # "moved":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 391
    .restart local v0    # "moved":Z
    .restart local v2    # "size":I
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 392
    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getDefaultPage()I
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method protected getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderModel;->getFolderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHolePosition()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mHolePosition:I

    return v0
.end method

.method public getHomePage()I
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public getIndex(J)I
    .locals 7
    .param p1, "uniqueId"    # J

    .prologue
    .line 268
    const/4 v1, -0x1

    .line 269
    .local v1, "index":I
    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 270
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 271
    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 275
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    return v1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 262
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/Item;

    .line 263
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v0}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v2

    return-wide v2
.end method

.method public getItemView(I)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/4 v7, 0x0

    .line 129
    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 131
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    if-nez v1, :cond_0

    .line 132
    const/4 v2, 0x0

    .line 153
    :goto_0
    return-object v2

    .line 134
    :cond_0
    iget v4, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mOriginalPosition:I

    if-ne v4, p1, :cond_2

    .line 135
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mOpenFolderHintView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 143
    .local v2, "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :goto_1
    instance-of v4, v2, Lcom/sonymobile/home/presenter/view/IconLabelView;

    if-eqz v4, :cond_1

    move-object v0, v2

    .line 144
    check-cast v0, Lcom/sonymobile/home/presenter/view/IconLabelView;

    .line 145
    .local v0, "iconLabelView":Lcom/sonymobile/home/presenter/view/IconLabelView;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setCenterVertically(Z)V

    .line 147
    iget v4, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mMaxIconSize:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setMaxIconSize(F)V

    .line 148
    iget v4, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mItemTextColor:I

    invoke-virtual {v0, v4}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setTextColor(I)V

    .line 149
    const/4 v4, 0x0

    invoke-virtual {v0, v7, v7, v7, v4}, Lcom/sonymobile/home/presenter/view/IconLabelView;->setTextShadowLayer(FFFI)V

    .line 151
    .end local v0    # "iconLabelView":Lcom/sonymobile/home/presenter/view/IconLabelView;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->refreshItemViewOptions(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    goto :goto_0

    .line 137
    .end local v2    # "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    invoke-virtual {v4, v1}, Lcom/sonymobile/home/folder/OpenFolderModel;->getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v3

    .line 139
    .local v3, "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mViewFactory:Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    iget-object v5, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v6, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mPageItemViewListener:Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    invoke-virtual {v4, v1, v3, v5, v6}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->createPageItemView(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v2

    .restart local v2    # "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    goto :goto_1
.end method

.method public getLocation(ILcom/sonymobile/home/ui/pageview/PageLocation;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "location"    # Lcom/sonymobile/home/ui/pageview/PageLocation;

    .prologue
    .line 226
    return-void
.end method

.method public getMaximumNumberOfPages()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public getMinimumNumberOfPages()I
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public getPages()[I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 257
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    return-object v0
.end method

.method public getPosition(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 229
    const/4 v0, -0x1

    .line 230
    .local v0, "pos":I
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    iget v0, v1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 233
    iget v1, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mOriginalPosition:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mOriginalPosition:I

    if-le p1, v1, :cond_1

    .line 234
    add-int/lit8 v0, v0, -0x1

    .line 235
    iget v1, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mHolePosition:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mHolePosition:I

    if-le p1, v1, :cond_0

    .line 236
    add-int/lit8 v0, v0, 0x1

    .line 242
    :cond_0
    :goto_0
    return v0

    .line 238
    :cond_1
    iget v1, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mHolePosition:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mHolePosition:I

    if-lt p1, v1, :cond_0

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hasHole()Z
    .locals 2

    .prologue
    .line 339
    iget v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mHolePosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v1, -0x1

    .line 120
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 122
    iput v1, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mHolePosition:I

    .line 123
    iput v1, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mOriginalPosition:I

    .line 124
    return-void
.end method

.method public isItemPickedUp(Lcom/sonymobile/home/data/Item;)Z
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->hasHole()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    iget v0, v0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    iget v1, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mOriginalPosition:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPageEmpty(I)Z
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/folder/OpenFolderModel;->isPageEmpty(I)Z

    move-result v0

    return v0
.end method

.method public makeRoom(ILcom/sonymobile/home/data/Item;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->setHole(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->notifyPageItemOrderChanged()V

    .line 305
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/folder/OpenFolderModel;->removeModelObserver(Lcom/sonymobile/home/model/ModelObserver;)V

    .line 114
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/folder/OpenFolderModel;->removeFolderChangeListener(Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mOpenFolderHintView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 116
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/settings/UserSettings;->removeUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 117
    return-void
.end method

.method public onFolderAdded(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageViewName"    # Ljava/lang/String;

    .prologue
    .line 498
    return-void
.end method

.method public onFolderChanged(J)V
    .locals 0
    .param p1, "folderId"    # J

    .prologue
    .line 493
    return-void
.end method

.method public onFolderNameChanged(JLjava/lang/String;)V
    .locals 3
    .param p1, "folderId"    # J
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 485
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderDataObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/folder/OpenFolderAdapter$FolderDataObserver;

    .line 486
    .local v0, "folderDataObserver":Lcom/sonymobile/home/folder/OpenFolderAdapter$FolderDataObserver;
    invoke-interface {v0, p3}, Lcom/sonymobile/home/folder/OpenFolderAdapter$FolderDataObserver;->onFolderNameChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 488
    .end local v0    # "folderDataObserver":Lcom/sonymobile/home/folder/OpenFolderAdapter$FolderDataObserver;
    :cond_0
    return-void
.end method

.method public onModelChanged()V
    .locals 5

    .prologue
    .line 404
    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 406
    .local v2, "sizeBeforeChange":I
    iget v3, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mOriginalPosition:I

    if-lez v3, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->updateOriginalHolePosition()V

    .line 411
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 412
    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    invoke-virtual {v4}, Lcom/sonymobile/home/folder/OpenFolderModel;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 413
    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 414
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->removeHoles()Ljava/util/List;

    .line 416
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->notifyContentChanged()V

    .line 418
    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Lcom/sonymobile/home/model/Model;->isBelowMinimumNumberOfItemsInFolder(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 419
    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderDataObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/folder/OpenFolderAdapter$FolderDataObserver;

    .line 420
    .local v0, "folderDataObserver":Lcom/sonymobile/home/folder/OpenFolderAdapter$FolderDataObserver;
    invoke-interface {v0}, Lcom/sonymobile/home/folder/OpenFolderAdapter$FolderDataObserver;->onBelowMinimumNumberOfFolderItems()V

    goto :goto_0

    .line 423
    .end local v0    # "folderDataObserver":Lcom/sonymobile/home/folder/OpenFolderAdapter$FolderDataObserver;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public onModelItemChanged(Lcom/sonymobile/home/data/Item;)V
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 427
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 428
    .local v1, "itemInModel":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->notifyPageItemChanged(J)V

    goto :goto_0

    .line 432
    .end local v1    # "itemInModel":Lcom/sonymobile/home/data/Item;
    :cond_1
    return-void
.end method

.method public onModelOrderChanged()V
    .locals 2

    .prologue
    .line 436
    iget v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mOriginalPosition:I

    if-lez v0, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->updateOriginalHolePosition()V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 441
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    invoke-virtual {v1}, Lcom/sonymobile/home/folder/OpenFolderModel;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 442
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->removeHoles()Ljava/util/List;

    .line 444
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->notifyPageItemOrderChanged()V

    .line 445
    return-void
.end method

.method public pickup(Lcom/sonymobile/home/data/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 348
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    iget v0, v0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    iput v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mHolePosition:I

    .line 349
    iget v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mHolePosition:I

    iput v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mOriginalPosition:I

    .line 351
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->notifyContentChanged()V

    .line 352
    return-void
.end method

.method public registerFolderDataObserver(Lcom/sonymobile/home/folder/OpenFolderAdapter$FolderDataObserver;)V
    .locals 1
    .param p1, "folderDataObserver"    # Lcom/sonymobile/home/folder/OpenFolderAdapter$FolderDataObserver;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderDataObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    return-void
.end method

.method public releaseView(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 0
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 192
    return-void
.end method

.method public removeHoles()Ljava/util/List;
    .locals 5
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
    .line 285
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 287
    .local v0, "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    const/4 v2, 0x0

    .local v2, "itemIndex":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 288
    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 289
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    const/4 v4, 0x0

    iput v4, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 290
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    iput v2, v3, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    return-object v0
.end method

.method public setHole(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 314
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/sonymobile/home/util/MathUtil;->clamp(III)I

    move-result v0

    .line 316
    .local v0, "holePosition":I
    iget v2, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mHolePosition:I

    if-eq v0, v2, :cond_0

    .line 317
    iput v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mHolePosition:I

    .line 318
    const/4 v1, 0x1

    .line 321
    :cond_0
    return v1
.end method

.method public unregisterFolderDataObserver(Lcom/sonymobile/home/folder/OpenFolderAdapter$FolderDataObserver;)V
    .locals 1
    .param p1, "folderDataObserver"    # Lcom/sonymobile/home/folder/OpenFolderAdapter$FolderDataObserver;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderDataObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 481
    return-void
.end method

.method public updateItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;I)V
    .locals 3
    .param p1, "itemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "index"    # I

    .prologue
    .line 158
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/Item;

    .line 160
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    iget v2, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mOriginalPosition:I

    if-eq v2, p2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/folder/OpenFolderModel;->getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v1

    .line 163
    .local v1, "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderAdapter;->mViewFactory:Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    invoke-virtual {v2, p1, v0, v1}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->updatePageItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V

    .line 166
    .end local v1    # "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->isItemPickedUp(Lcom/sonymobile/home/data/Item;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setVisible(Z)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->refreshItemViewOptions(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 168
    return-void

    .line 166
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
