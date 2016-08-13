.class public Lcom/sonymobile/home/folder/FolderOpener;
.super Ljava/lang/Object;
.source "FolderOpener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

.field private mBgView:Lcom/sonymobile/home/folder/OpenFolderBackgroundView;

.field private mFolderItemView:Lcom/sonymobile/home/presenter/view/FolderItemView;

.field private mIsOpen:Z

.field private final mListener:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

.field private mPresenter:Lcom/sonymobile/home/folder/OpenFolderPresenter;

.field private final mScene:Lcom/sonymobile/flix/components/Scene;

.field private mView:Lcom/sonymobile/home/folder/OpenFolderView;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;Landroid/content/res/Resources;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 8
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "storage"    # Lcom/sonymobile/home/storage/Storage;
    .param p3, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p4, "badgeManager"    # Lcom/sonymobile/home/badge/BadgeManager;
    .param p5, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p6, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p7, "statisticsManager"    # Lcom/sonymobile/home/statistics/StatisticsManager;
    .param p8, "dialogHandler"    # Lcom/sonymobile/home/DialogHandler;
    .param p9, "transferHandler"    # Lcom/sonymobile/home/transfer/TransferHandler;
    .param p10, "keyboardFocusManager"    # Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
    .param p11, "res"    # Landroid/content/res/Resources;
    .param p12, "itemCreator"    # Lcom/sonymobile/home/data/ItemCreator;
    .param p13, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mIsOpen:Z

    .line 88
    iput-object p1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mListeners:Ljava/util/List;

    .line 91
    new-instance v1, Lcom/sonymobile/home/folder/OpenFolderModel;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p12

    invoke-direct/range {v1 .. v7}, Lcom/sonymobile/home/folder/OpenFolderModel;-><init>(Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/ItemCreator;)V

    iput-object v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    .line 95
    new-instance v1, Lcom/sonymobile/home/folder/OpenFolderPresenter;

    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderOpener;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderOpener;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    move-object v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/home/folder/OpenFolderPresenter;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/folder/OpenFolderModel;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/transfer/TransferHandler;)V

    iput-object v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mPresenter:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    .line 98
    new-instance v1, Lcom/sonymobile/home/folder/OpenFolderAdapter;

    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderOpener;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderOpener;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    iget-object v4, p0, Lcom/sonymobile/home/folder/FolderOpener;->mPresenter:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    move-object/from16 v5, p11

    move-object/from16 v6, p13

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/home/folder/OpenFolderAdapter;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/folder/OpenFolderModel;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;Landroid/content/res/Resources;Lcom/sonymobile/home/settings/UserSettings;)V

    iput-object v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    .line 100
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mPresenter:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderOpener;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->setAdapter(Lcom/sonymobile/home/folder/OpenFolderAdapter;)V

    .line 102
    new-instance v1, Lcom/sonymobile/home/folder/FolderOpener$1;

    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderOpener;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/home/folder/FolderOpener$1;-><init>(Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/flix/components/Scene;)V

    iput-object v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mBgView:Lcom/sonymobile/home/folder/OpenFolderBackgroundView;

    .line 111
    new-instance v1, Lcom/sonymobile/home/folder/OpenFolderView;

    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderOpener;->mScene:Lcom/sonymobile/flix/components/Scene;

    move-object/from16 v0, p10

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/home/folder/OpenFolderView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;)V

    iput-object v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    .line 112
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mPresenter:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderOpener;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->setView(Lcom/sonymobile/home/folder/OpenFolderView;)V

    .line 114
    new-instance v1, Lcom/sonymobile/home/folder/FolderOpener$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/folder/FolderOpener$2;-><init>(Lcom/sonymobile/home/folder/FolderOpener;)V

    iput-object v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mListener:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;

    .line 154
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mPresenter:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderOpener;->mListener:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->addOpenFolderPresenterListener(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;)V

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/folder/FolderOpener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderOpener;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mIsOpen:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sonymobile/home/folder/FolderOpener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderOpener;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mIsOpen:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonymobile/home/folder/FolderOpener;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderOpener;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/FolderOpener;->notifyOnClosed(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderOpener;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/FolderOpener;->notifyOnLongPressed(Lcom/sonymobile/home/data/Item;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/home/data/Item;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderOpener;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;
    .param p2, "x2"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/folder/FolderOpener;->notifyOnFolderItemDropped(Lcom/sonymobile/home/data/Item;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/home/folder/FolderOpener;)Lcom/sonymobile/home/folder/OpenFolderView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderOpener;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/folder/FolderOpener;)Lcom/sonymobile/home/folder/OpenFolderBackgroundView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderOpener;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mBgView:Lcom/sonymobile/home/folder/OpenFolderBackgroundView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/folder/FolderOpener;)Lcom/sonymobile/home/folder/OpenFolderModel;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderOpener;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/home/presenter/view/FolderItemView;)Lcom/sonymobile/home/presenter/view/FolderItemView;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderOpener;
    .param p1, "x1"    # Lcom/sonymobile/home/presenter/view/FolderItemView;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mFolderItemView:Lcom/sonymobile/home/presenter/view/FolderItemView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sonymobile/home/folder/FolderOpener;)Lcom/sonymobile/flix/components/Scene;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderOpener;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mScene:Lcom/sonymobile/flix/components/Scene;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/home/folder/FolderOpener;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderOpener;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sonymobile/home/folder/FolderOpener;->notifyOnDeletePressed()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderOpener;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/FolderOpener;->notifyOnUninstall(Lcom/sonymobile/home/data/Item;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/FolderOpener;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/FolderOpener;->notifyOnCannotUninstall(Lcom/sonymobile/home/data/Item;)V

    return-void
.end method

.method public static getOpenFolderNormalMode(Ljava/lang/String;)I
    .locals 3
    .param p0, "pageViewName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 339
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 339
    :sswitch_0
    const-string v2, "apptray"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "stage_dynamic"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_2
    const-string v2, "stage"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "desktop_automatic"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "desktop"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    .line 341
    :pswitch_0
    const/4 v0, 0x5

    .line 350
    :pswitch_1
    return v0

    .line 339
    :sswitch_data_0
    .sparse-switch
        -0x2f440b29 -> :sswitch_0
        -0x215db638 -> :sswitch_3
        -0x203c1402 -> :sswitch_1
        0x68ac2fe -> :sswitch_2
        0x5ccf901c -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getOpenFolderUninstallMode(Ljava/lang/String;)I
    .locals 3
    .param p0, "pageViewName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x2

    .line 320
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 320
    :sswitch_0
    const-string v2, "apptray"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "stage_dynamic"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "stage"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_3
    const-string v2, "desktop_automatic"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "desktop"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    .line 322
    :pswitch_0
    const/16 v0, 0x16

    .line 331
    :pswitch_1
    return v0

    .line 320
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2f440b29 -> :sswitch_0
        -0x215db638 -> :sswitch_3
        -0x203c1402 -> :sswitch_1
        0x68ac2fe -> :sswitch_2
        0x5ccf901c -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private notifyOnCannotUninstall(Lcom/sonymobile/home/data/Item;)V
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 282
    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderOpener;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;

    .line 283
    .local v1, "listener":Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;->onCannotUninstall(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 285
    .end local v1    # "listener":Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;
    :cond_0
    return-void
.end method

.method private notifyOnClosed(Z)V
    .locals 4
    .param p1, "isDraggingItem"    # Z

    .prologue
    .line 263
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderOpener;->mListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 264
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;

    .line 265
    .local v1, "listener":Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;->onFolderClosed(Z)V

    goto :goto_0

    .line 267
    .end local v1    # "listener":Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;
    :cond_0
    return-void
.end method

.method private notifyOnDeletePressed()V
    .locals 3

    .prologue
    .line 270
    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderOpener;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;

    .line 271
    .local v1, "listener":Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;
    invoke-interface {v1}, Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;->onFolderDeletePressed()V

    goto :goto_0

    .line 273
    .end local v1    # "listener":Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;
    :cond_0
    return-void
.end method

.method private notifyOnFolderItemDropped(Lcom/sonymobile/home/data/Item;Z)V
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "moved"    # Z

    .prologue
    .line 294
    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderOpener;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;

    .line 295
    .local v1, "listener":Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;
    invoke-interface {v1, p1, p2}, Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;->onFolderItemDropped(Lcom/sonymobile/home/data/Item;Z)V

    goto :goto_0

    .line 297
    .end local v1    # "listener":Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;
    :cond_0
    return-void
.end method

.method private notifyOnLongPressed(Lcom/sonymobile/home/data/Item;)V
    .locals 3
    .param p1, "longPressedItem"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 288
    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderOpener;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;

    .line 289
    .local v1, "listener":Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;->onFolderItemLongPressed(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 291
    .end local v1    # "listener":Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;
    :cond_0
    return-void
.end method

.method private notifyOnUninstall(Lcom/sonymobile/home/data/Item;)V
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 276
    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderOpener;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;

    .line 277
    .local v1, "listener":Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;->onUninstall(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 279
    .end local v1    # "listener":Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addOpenFolderListener(Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_0
    return-void
.end method

.method public close(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mIsOpen:Z

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mPresenter:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->close(Z)V

    .line 210
    :cond_0
    return-void
.end method

.method public getFolderItem()Lcom/sonymobile/home/data/FolderItem;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderModel;->getClosedFolderItem()Lcom/sonymobile/home/data/FolderItem;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpenFolderView()Lcom/sonymobile/home/folder/OpenFolderView;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    return-object v0
.end method

.method public hasFolderOpen()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mIsOpen:Z

    return v0
.end method

.method public isInUninstallmode()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mPresenter:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->isInUninstallMode()Z

    move-result v0

    return v0
.end method

.method public onBackButtonPressed()Z
    .locals 2

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mIsOpen:Z

    .line 247
    .local v0, "result":Z
    iget-boolean v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mIsOpen:Z

    if-eqz v1, :cond_0

    .line 248
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/folder/FolderOpener;->close(Z)V

    .line 250
    :cond_0
    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 229
    iget-boolean v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mIsOpen:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0, v3}, Lcom/sonymobile/home/folder/FolderOpener;->close(Z)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 233
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mPresenter:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mListener:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->removeOpenFolderPresenterListener(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;)V

    .line 234
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mPresenter:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->onDestroy()V

    .line 235
    iput-object v2, p0, Lcom/sonymobile/home/folder/FolderOpener;->mPresenter:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    .line 236
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    invoke-virtual {v0, v3}, Lcom/sonymobile/home/folder/OpenFolderView;->close(Z)V

    .line 237
    iput-object v2, p0, Lcom/sonymobile/home/folder/FolderOpener;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    .line 238
    iput-object v2, p0, Lcom/sonymobile/home/folder/FolderOpener;->mBgView:Lcom/sonymobile/home/folder/OpenFolderBackgroundView;

    .line 239
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->onDestroy()V

    .line 240
    iput-object v2, p0, Lcom/sonymobile/home/folder/FolderOpener;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    .line 241
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderModel;->onDestroy()V

    .line 242
    iput-object v2, p0, Lcom/sonymobile/home/folder/FolderOpener;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    .line 243
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mPresenter:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->onResume()V

    .line 226
    return-void
.end method

.method public open(Lcom/sonymobile/home/presenter/view/FolderItemView;IF)V
    .locals 5
    .param p1, "folderItemView"    # Lcom/sonymobile/home/presenter/view/FolderItemView;
    .param p2, "folderMode"    # I
    .param p3, "zLocation"    # F

    .prologue
    const/4 v2, 0x1

    .line 158
    iget-boolean v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mIsOpen:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mPresenter:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    invoke-virtual {v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->isInTransfer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    iput-object p1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mFolderItemView:Lcom/sonymobile/home/presenter/view/FolderItemView;

    .line 168
    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderOpener;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    invoke-virtual {p1}, Lcom/sonymobile/home/presenter/view/FolderItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/FolderItem;

    invoke-virtual {v3, v1}, Lcom/sonymobile/home/folder/OpenFolderModel;->load(Lcom/sonymobile/home/data/FolderItem;)V

    .line 170
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderOpener;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    invoke-virtual {v3}, Lcom/sonymobile/home/folder/OpenFolderModel;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->initialize(Ljava/util/List;)V

    .line 172
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mScene:Lcom/sonymobile/flix/components/Scene;

    const v3, 0x7f0f0034

    invoke-virtual {v1, v3}, Lcom/sonymobile/flix/components/Scene;->findById(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 173
    .local v0, "parentView":Lcom/sonymobile/flix/components/Component;
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mBgView:Lcom/sonymobile/home/folder/OpenFolderBackgroundView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 174
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mBgView:Lcom/sonymobile/home/folder/OpenFolderBackgroundView;

    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderOpener;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/folder/OpenFolderBackgroundView;->setSizeTo(Lcom/sonymobile/flix/components/Component;)V

    .line 175
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mBgView:Lcom/sonymobile/home/folder/OpenFolderBackgroundView;

    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderOpener;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/folder/OpenFolderBackgroundView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 176
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    invoke-virtual {v1, p3}, Lcom/sonymobile/home/folder/OpenFolderView;->setZ(F)V

    .line 178
    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderOpener;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    and-int/lit8 v1, p2, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->showItemOptions(Z)V

    .line 180
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderOpener;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/folder/OpenFolderView;->setAdapter(Lcom/sonymobile/home/folder/OpenFolderAdapter;)V

    .line 182
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mPresenter:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderOpener;->mFolderItemView:Lcom/sonymobile/home/presenter/view/FolderItemView;

    invoke-virtual {v1, v3, p2}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->open(Lcom/sonymobile/flix/components/Component;I)V

    .line 184
    iput-boolean v2, p0, Lcom/sonymobile/home/folder/FolderOpener;->mIsOpen:Z

    goto :goto_0

    .line 178
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public openAndLocate(Lcom/sonymobile/home/presenter/view/FolderItemView;ILcom/sonymobile/home/data/Item;F)V
    .locals 1
    .param p1, "folderItemView"    # Lcom/sonymobile/home/presenter/view/FolderItemView;
    .param p2, "mode"    # I
    .param p3, "itemToLocate"    # Lcom/sonymobile/home/data/Item;
    .param p4, "zLocation"    # F

    .prologue
    .line 202
    invoke-virtual {p0, p1, p2, p4}, Lcom/sonymobile/home/folder/FolderOpener;->open(Lcom/sonymobile/home/presenter/view/FolderItemView;IF)V

    .line 203
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mPresenter:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    invoke-virtual {v0, p3}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->locateItem(Lcom/sonymobile/home/data/Item;)V

    .line 204
    return-void
.end method

.method public refreshViewContent()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderView;->reloadViewContent()V

    .line 311
    :cond_0
    return-void
.end method

.method public removeOpenFolderListener(Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/folder/FolderOpener$OpenFolderListener;

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 222
    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 3
    .param p1, "folderMode"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener;->mPresenter:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->setMode(I)V

    .line 189
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderOpener;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    and-int/lit8 v0, p1, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->showItemOptions(Z)V

    .line 190
    return-void

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
