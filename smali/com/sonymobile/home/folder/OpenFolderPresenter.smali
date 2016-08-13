.class public Lcom/sonymobile/home/folder/OpenFolderPresenter;
.super Ljava/lang/Object;
.source "OpenFolderPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;
.implements Lcom/sonymobile/home/folder/OpenFolderAdapter$FolderDataObserver;
.implements Lcom/sonymobile/home/ui/pageview/PageItemViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;,
        Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderTransferable;,
        Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

.field private mClickedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultLabel:Ljava/lang/String;

.field private final mDialogHandler:Lcom/sonymobile/home/DialogHandler;

.field private final mDragSource:Lcom/sonymobile/home/transfer/DragSource;

.field private mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

.field private final mDropTarget:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;

.field private mDropTargetView:Lcom/sonymobile/flix/components/Component;

.field private mIsOpen:Z

.field private mIsPersistentMode:Z

.field private mIsUninstallMode:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

.field private final mOpenFolderViewListener:Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;

.field private final mScene:Lcom/sonymobile/flix/components/Scene;

.field private final mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

.field private final mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

.field private mView:Lcom/sonymobile/home/folder/OpenFolderView;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/folder/OpenFolderModel;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/transfer/TransferHandler;)V
    .locals 4
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "model"    # Lcom/sonymobile/home/folder/OpenFolderModel;
    .param p3, "statisticsManager"    # Lcom/sonymobile/home/statistics/StatisticsManager;
    .param p4, "dialogHandler"    # Lcom/sonymobile/home/DialogHandler;
    .param p5, "transferHandler"    # Lcom/sonymobile/home/transfer/TransferHandler;

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mListeners:Ljava/util/List;

    .line 120
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 152
    new-instance v2, Lcom/sonymobile/home/folder/OpenFolderPresenter$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/folder/OpenFolderPresenter$1;-><init>(Lcom/sonymobile/home/folder/OpenFolderPresenter;)V

    iput-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mOpenFolderViewListener:Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;

    .line 402
    new-instance v2, Lcom/sonymobile/home/folder/OpenFolderPresenter$2;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/folder/OpenFolderPresenter$2;-><init>(Lcom/sonymobile/home/folder/OpenFolderPresenter;)V

    iput-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDragSource:Lcom/sonymobile/home/transfer/DragSource;

    .line 179
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mContext:Landroid/content/Context;

    .line 180
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 181
    iput-object p2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    .line 182
    iput-object p3, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

    .line 183
    iput-object p5, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    .line 184
    iput-object p4, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDialogHandler:Lcom/sonymobile/home/DialogHandler;

    .line 185
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDialogHandler:Lcom/sonymobile/home/DialogHandler;

    sget-object v3, Lcom/sonymobile/home/DialogFactory$Action;->FOLDER_NAME:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v3}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v3

    invoke-interface {v2, v3, p0}, Lcom/sonymobile/home/DialogHandler;->addDialogActionListener(ILcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;)V

    .line 188
    new-instance v2, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;

    invoke-direct {v2, p0, p1}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;-><init>(Lcom/sonymobile/home/folder/OpenFolderPresenter;Lcom/sonymobile/flix/components/Scene;)V

    iput-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDropTarget:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;

    .line 189
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDropTarget:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/folder/OpenFolderModel;->addModelObserver(Lcom/sonymobile/home/model/ModelObserver;)V

    .line 191
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 192
    .local v1, "res":Landroid/content/res/Resources;
    const/high16 v2, 0x7f090000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "folderNames":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDefaultLabel:Ljava/lang/String;

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderPresenter;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mIsPersistentMode:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/transfer/TransferHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderPresenter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/home/folder/OpenFolderPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mIsOpen:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderPresenter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/home/folder/OpenFolderPresenter;Lcom/sonymobile/home/data/Item;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;
    .param p2, "x2"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->notifyDrop(Lcom/sonymobile/home/data/Item;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/flix/components/Component;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderPresenter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDropTargetView:Lcom/sonymobile/flix/components/Component;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/folder/OpenFolderPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderPresenter;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->notifyClose()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderModel;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderPresenter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/folder/OpenFolderPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderPresenter;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->notifyDelete()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderPresenter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderPresenter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sonymobile/home/folder/OpenFolderPresenter;Lcom/sonymobile/home/ui/pageview/PageItemView;)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    return-object p1
.end method

.method private handleOnLongPressEvent(Lcom/sonymobile/home/ui/pageview/PageItemView;FF)V
    .locals 7
    .param p1, "pressedView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    invoke-interface {v0}, Lcom/sonymobile/home/transfer/TransferHandler;->isInTransfer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    invoke-virtual {v0}, Lcom/sonymobile/home/folder/OpenFolderView;->cancelItemPressed()V

    .line 372
    const/4 v6, 0x6

    .line 375
    .local v6, "request":I
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 378
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDragSource:Lcom/sonymobile/home/transfer/DragSource;

    const/4 v2, 0x6

    new-instance v3, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderTransferable;

    invoke-direct {v3, p0, p1}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderTransferable;-><init>(Lcom/sonymobile/home/folder/OpenFolderPresenter;Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/home/transfer/TransferHandler;->startTransfer(Lcom/sonymobile/home/transfer/DragSource;ILcom/sonymobile/home/transfer/Transferable;FF)V

    .line 382
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->pickup(Lcom/sonymobile/home/data/Item;)V

    .line 383
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setVisible(Z)V

    .line 385
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->notifyLongPress(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0
.end method

.method private notifyCannotUninstall(Lcom/sonymobile/home/data/Item;)V
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 325
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;

    .line 326
    .local v1, "listener":Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;->onCannotUninstall(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 328
    .end local v1    # "listener":Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;
    :cond_0
    return-void
.end method

.method private notifyClose()V
    .locals 4

    .prologue
    .line 305
    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;

    .line 306
    .local v2, "listener":Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;
    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 308
    .local v1, "isDragging":Z
    :goto_1
    invoke-interface {v2, v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;->onClose(Z)V

    goto :goto_0

    .line 306
    .end local v1    # "isDragging":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 310
    .end local v2    # "listener":Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;
    :cond_1
    return-void
.end method

.method private notifyDelete()V
    .locals 3

    .prologue
    .line 313
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;

    .line 314
    .local v1, "listener":Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;
    invoke-interface {v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;->onDelete()V

    goto :goto_0

    .line 316
    .end local v1    # "listener":Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;
    :cond_0
    return-void
.end method

.method private notifyDrop(Lcom/sonymobile/home/data/Item;Z)V
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "moved"    # Z

    .prologue
    .line 337
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;

    .line 338
    .local v1, "listener":Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;
    invoke-interface {v1, p1, p2}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;->onFolderItemDropped(Lcom/sonymobile/home/data/Item;Z)V

    goto :goto_0

    .line 340
    .end local v1    # "listener":Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;
    :cond_0
    return-void
.end method

.method private notifyLongPress(Lcom/sonymobile/home/data/Item;)V
    .locals 3
    .param p1, "pressedItem"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 331
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;

    .line 332
    .local v1, "listener":Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;->onFolderItemLongPressed(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 334
    .end local v1    # "listener":Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;
    :cond_0
    return-void
.end method

.method private notifyUninstall(Lcom/sonymobile/home/data/Item;)V
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 319
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;

    .line 320
    .local v1, "listener":Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;->onUninstall(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 322
    .end local v1    # "listener":Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;
    :cond_0
    return-void
.end method

.method private updateEditIconVisibility(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 695
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDefaultLabel:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderView;->setShowEditIcon(Z)V

    .line 700
    :goto_0
    return-void

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderView;->setShowEditIcon(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addOpenFolderPresenterListener(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method public close(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 224
    iget-boolean v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mIsOpen:Z

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/folder/OpenFolderView;->close(Z)V

    .line 226
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mIsOpen:Z

    .line 228
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v0

    .line 229
    .local v0, "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    const/16 v1, 0x4000

    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f080061

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->sendEvent(ILjava/lang/String;)V

    .line 234
    .end local v0    # "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    :cond_0
    return-void
.end method

.method public isInTransfer()Z
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    invoke-interface {v0}, Lcom/sonymobile/home/transfer/TransferHandler;->isInTransfer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDragSource:Lcom/sonymobile/home/transfer/DragSource;

    invoke-interface {v0, v1}, Lcom/sonymobile/home/transfer/TransferHandler;->isOurTransfer(Lcom/sonymobile/home/transfer/DragSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInUninstallMode()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mIsUninstallMode:Z

    return v0
.end method

.method public locateItem(Lcom/sonymobile/home/data/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 682
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/folder/OpenFolderView;->locateItem(Lcom/sonymobile/home/data/Item;)V

    .line 683
    return-void
.end method

.method public onBelowMinimumNumberOfFolderItems()V
    .locals 0

    .prologue
    .line 687
    return-void
.end method

.method public onClicked(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 2
    .param p1, "clickedView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 238
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 240
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->isInUninstallMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->handleClick(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mClickedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 243
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/statistics/StatisticsManager;->incrementStartCount(Lcom/sonymobile/home/data/Item;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->hasUninstallOption()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    invoke-direct {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->notifyUninstall(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 249
    :cond_2
    invoke-direct {p0, v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->notifyCannotUninstall(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderView;->setListener(Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDropTarget:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderModel;->removeModelObserver(Lcom/sonymobile/home/model/ModelObserver;)V

    .line 295
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDialogHandler:Lcom/sonymobile/home/DialogHandler;

    sget-object v1, Lcom/sonymobile/home/DialogFactory$Action;->FOLDER_NAME:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v1}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonymobile/home/DialogHandler;->removeDialogActionListener(I)V

    .line 296
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 297
    return-void
.end method

.method public onDialogActionPerformed(ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "actionCode"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 344
    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->FOLDER_NAME:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v2}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 345
    if-eqz p2, :cond_0

    .line 346
    const-string v2, "message"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "folderName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 348
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mModel:Lcom/sonymobile/home/folder/OpenFolderModel;

    invoke-virtual {v2, v1}, Lcom/sonymobile/home/folder/OpenFolderModel;->setFolderName(Ljava/lang/String;)V

    .line 350
    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v0

    .line 351
    .local v0, "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    const/16 v2, 0x4000

    iget-object v3, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080064

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->sendEvent(ILjava/lang/String;)V

    .line 360
    .end local v0    # "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    .end local v1    # "folderName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onFolderNameChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 691
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->updateEditIconVisibility(Ljava/lang/String;)V

    .line 692
    return-void
.end method

.method public onLongPress(Lcom/sonymobile/home/ui/pageview/PageItemView;FF)V
    .locals 0
    .param p1, "pressedView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 256
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->handleOnLongPressEvent(Lcom/sonymobile/home/ui/pageview/PageItemView;FF)V

    .line 257
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mClickedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mClickedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setStayPressed(Z)V

    .line 705
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mClickedView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 707
    :cond_0
    return-void
.end method

.method public open(Lcom/sonymobile/flix/components/Component;I)V
    .locals 6
    .param p1, "closedFolderView"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "mode"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 197
    iget-boolean v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mIsOpen:Z

    if-nez v1, :cond_1

    .line 198
    and-int/lit8 v1, p2, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mIsPersistentMode:Z

    .line 199
    and-int/lit8 v1, p2, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mIsUninstallMode:Z

    .line 200
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    and-int/lit8 v4, p2, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v1, v3}, Lcom/sonymobile/home/folder/OpenFolderView;->setShowDeleteButton(Z)V

    .line 202
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    invoke-virtual {v1}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->getFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->updateEditIconVisibility(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/folder/OpenFolderView;->open(Lcom/sonymobile/flix/components/Component;)V

    .line 205
    iput-boolean v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mIsOpen:Z

    .line 207
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v0

    .line 208
    .local v0, "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    const/16 v1, 0x4000

    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f080063

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->sendEvent(ILjava/lang/String;)V

    .line 213
    .end local v0    # "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 198
    goto :goto_0

    :cond_3
    move v1, v3

    .line 199
    goto :goto_1
.end method

.method public removeOpenFolderPresenterListener(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderPresenterListener;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method public setAdapter(Lcom/sonymobile/home/folder/OpenFolderAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/sonymobile/home/folder/OpenFolderAdapter;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->unregisterFolderDataObserver(Lcom/sonymobile/home/folder/OpenFolderAdapter$FolderDataObserver;)V

    .line 394
    :cond_0
    if-eqz p1, :cond_1

    .line 395
    invoke-virtual {p1, p0}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->registerFolderDataObserver(Lcom/sonymobile/home/folder/OpenFolderAdapter$FolderDataObserver;)V

    .line 398
    :cond_1
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;

    .line 399
    return-void
.end method

.method public setMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 216
    and-int/lit8 v1, p1, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mIsPersistentMode:Z

    .line 217
    and-int/lit8 v1, p1, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mIsUninstallMode:Z

    .line 218
    iget-object v4, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    and-int/lit8 v1, p1, 0x10

    const/16 v5, 0x10

    if-ne v1, v5, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/sonymobile/home/folder/OpenFolderView;->setShowDeleteButton(Z)V

    .line 219
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v2, :cond_3

    move v0, v2

    .line 220
    .local v0, "resetScrollPosition":Z
    :goto_3
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/folder/OpenFolderView;->layout(Z)V

    .line 221
    return-void

    .end local v0    # "resetScrollPosition":Z
    :cond_0
    move v1, v3

    .line 216
    goto :goto_0

    :cond_1
    move v1, v3

    .line 217
    goto :goto_1

    :cond_2
    move v1, v3

    .line 218
    goto :goto_2

    :cond_3
    move v0, v3

    .line 219
    goto :goto_3
.end method

.method public setView(Lcom/sonymobile/home/folder/OpenFolderView;)V
    .locals 3
    .param p1, "view"    # Lcom/sonymobile/home/folder/OpenFolderView;

    .prologue
    .line 278
    if-eqz p1, :cond_0

    .line 279
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    .line 280
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mOpenFolderViewListener:Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/folder/OpenFolderView;->setListener(Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;)V

    .line 281
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mView:Lcom/sonymobile/home/folder/OpenFolderView;

    const v1, 0x7f0f0032

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderView;->findById(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDropTargetView:Lcom/sonymobile/flix/components/Component;

    .line 282
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDropTargetView:Lcom/sonymobile/flix/components/Component;

    const-string v1, "DropTarget.DropTarget"

    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDropTarget:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/Component;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 284
    :cond_0
    return-void
.end method
