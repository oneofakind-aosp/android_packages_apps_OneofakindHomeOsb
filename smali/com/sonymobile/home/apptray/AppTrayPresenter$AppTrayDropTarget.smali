.class Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;
.super Ljava/lang/Object;
.source "AppTrayPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/model/ModelObserver;
.implements Lcom/sonymobile/home/transfer/DropTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/apptray/AppTrayPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppTrayDropTarget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;,
        Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;
    }
.end annotation


# instance fields
.field private mDragPosition:I

.field private final mFirstPageSwitchWaitDuration:I

.field private final mFolderHintManager:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;

.field private mHiddenItemId:J

.field private mHiddenView:Lcom/sonymobile/home/ui/pageview/PageItemView;

.field private mHintView:Lcom/sonymobile/flix/components/Image;

.field private final mHoleMaker:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;

.field private mIsItemDraggedOutsideOriginalPosition:Z

.field private final mMinPageSwitchDuration:I

.field private mMoveMargin:I

.field private mOverlappedFolderId:J

.field private final mPageSwitchMarginLeft:I

.field private final mPageSwitchMarginRight:I

.field private final mPageSwitchNudgeOffset:I

.field private final mPageSwitcher:Ljava/lang/Runnable;

.field private final mPostman:Landroid/view/View;

.field private mSpillOverItem:Lcom/sonymobile/home/data/Item;

.field private mSwitchToNextPage:Z

.field private mSwitchingPages:Z

.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/flix/components/Scene;Landroid/content/res/Resources;)V
    .locals 4
    .param p2, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 536
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-boolean v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSwitchingPages:Z

    .line 257
    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mDragPosition:I

    .line 266
    iput-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSpillOverItem:Lcom/sonymobile/home/data/Item;

    .line 273
    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mMoveMargin:I

    .line 279
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mOverlappedFolderId:J

    .line 284
    iput-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHintView:Lcom/sonymobile/flix/components/Image;

    .line 289
    iput-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHiddenView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 297
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHiddenItemId:J

    .line 472
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;-><init>(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/home/apptray/AppTrayPresenter$1;)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHoleMaker:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;

    .line 475
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1;-><init>(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPageSwitcher:Ljava/lang/Runnable;

    .line 537
    const v0, 0x7f0b0047

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPageSwitchMarginLeft:I

    .line 539
    const v0, 0x7f0b0048

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPageSwitchMarginRight:I

    .line 541
    const v0, 0x7f0b0049

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPageSwitchNudgeOffset:I

    .line 543
    const v0, 0x7f0d0022

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mMinPageSwitchDuration:I

    .line 544
    const v0, 0x7f0d0021

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mFirstPageSwitchWaitDuration:I

    .line 547
    iput-boolean v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSwitchingPages:Z

    .line 549
    invoke-virtual {p2}, Lcom/sonymobile/flix/components/Scene;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPostman:Landroid/view/View;

    .line 551
    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;

    invoke-direct {v0, p0, p2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;-><init>(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mFolderHintManager:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;

    .line 552
    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->resetFolderHint()V

    return-void
.end method

.method static synthetic access$1102(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/flix/components/Image;)Lcom/sonymobile/flix/components/Image;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;
    .param p1, "x1"    # Lcom/sonymobile/flix/components/Image;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHintView:Lcom/sonymobile/flix/components/Image;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/home/ui/pageview/PageItemView;)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;
    .param p1, "x1"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHiddenView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    .prologue
    .line 228
    iget-wide v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHiddenItemId:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;J)J
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;
    .param p1, "x1"    # J

    .prologue
    .line 228
    iput-wide p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHiddenItemId:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;J)J
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;
    .param p1, "x1"    # J

    .prologue
    .line 228
    iput-wide p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mOverlappedFolderId:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->moveHintViewToCurrentPage()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)Lcom/sonymobile/home/data/Item;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSpillOverItem:Lcom/sonymobile/home/data/Item;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/data/Item;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSpillOverItem:Lcom/sonymobile/home/data/Item;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/home/data/Item;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;
    .param p2, "x2"    # Z

    .prologue
    .line 228
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->setItemVisibility(Lcom/sonymobile/home/data/Item;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;ILcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 228
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->getPageItemView(ILcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;
    .param p1, "x1"    # I

    .prologue
    .line 228
    iput p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mDragPosition:I

    return p1
.end method

.method static synthetic access$2200(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->inTransferMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSwitchToNextPage:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHoleMaker:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    .prologue
    .line 228
    iget v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mMinPageSwitchDuration:I

    return v0
.end method

.method static synthetic access$3400(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->cleanup()V

    return-void
.end method

.method static synthetic access$4000(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->addItemInFreeSlot(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mFolderHintManager:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPostman:Landroid/view/View;

    return-object v0
.end method

.method private addItemInFreeSlot(Lcom/sonymobile/home/data/Item;)Z
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 946
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->dropItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v1

    .line 947
    .local v1, "moved":Z
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->removeEmptyPages()V

    .line 948
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->removeHoles()Ljava/util/List;

    move-result-object v0

    .line 950
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->cleanup()V

    .line 952
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$600(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayModel;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0, v3}, Lcom/sonymobile/home/apptray/AppTrayModel;->updateModelAndItems(Ljava/util/List;Ljava/util/List;)V

    .line 954
    return v1
.end method

.method private cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1106
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSpillOverItem:Lcom/sonymobile/home/data/Item;

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSpillOverItem:Lcom/sonymobile/home/data/Item;

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->setItemVisibility(Lcom/sonymobile/home/data/Item;Z)V

    .line 1109
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSpillOverItem:Lcom/sonymobile/home/data/Item;

    .line 1112
    invoke-virtual {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->stopPageSwitching()V

    .line 1114
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->resetFolderHint()V

    .line 1117
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHoleMaker:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->cancel(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->access$2600(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;Z)V

    .line 1120
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->clearPickup()V

    .line 1122
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$600(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/apptray/AppTrayModel;->removeModelObserver(Lcom/sonymobile/home/model/ModelObserver;)V

    .line 1124
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mOverlappedFolderId:J

    .line 1125
    return-void
.end method

.method private getCol(F)F
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$2900(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/grid/Grid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    return v0
.end method

.method private getItemAtLocation(II)Lcom/sonymobile/home/data/Item;
    .locals 3
    .param p1, "col"    # I
    .param p2, "row"    # I

    .prologue
    .line 1021
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$2900(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/grid/Grid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v1

    mul-int/2addr v1, p2

    add-int v0, v1, p1

    .line 1023
    .local v0, "pos":I
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getItemAtLocation(II)Lcom/sonymobile/home/data/Item;

    move-result-object v1

    return-object v1
.end method

.method private getPageItemView(ILcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 2
    .param p1, "page"    # I
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 438
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/apptray/AppTrayView;->findPage(I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v0

    .line 439
    .local v0, "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/sonymobile/home/ui/pageview/PageView;->getItem(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPageItemView(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 449
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayView;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 450
    invoke-direct {p0, v0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->getPageItemView(ILcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v1

    .line 452
    .local v1, "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    if-eqz v1, :cond_0

    .line 456
    .end local v1    # "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :goto_1
    return-object v1

    .line 449
    .restart local v1    # "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    .end local v1    # "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getRow(F)F
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$2900(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/grid/Grid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/grid/Grid;->getCellHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    return v0
.end method

.method private handleMoveLeftZone(II)V
    .locals 2
    .param p1, "page"    # I
    .param p2, "position"    # I

    .prologue
    .line 997
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->resetFolderHint()V

    .line 999
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getHolePage()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getHolePosition()I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getHolePosition()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHoleMaker:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;

    const/4 v1, 0x0

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->cancel(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->access$2600(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;Z)V

    .line 1011
    :goto_0
    return-void

    .line 1005
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getHolePage()I

    move-result v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getHolePosition()I

    move-result v0

    if-ge v0, p2, :cond_2

    .line 1006
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHoleMaker:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;

    add-int/lit8 v1, p2, -0x1

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->updateHole(II)Z
    invoke-static {v0, p1, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->access$4200(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;II)Z

    goto :goto_0

    .line 1008
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHoleMaker:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->updateHole(II)Z
    invoke-static {v0, p1, p2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->access$4200(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;II)Z

    goto :goto_0
.end method

.method private handleMoveRightZone(II)V
    .locals 2
    .param p1, "page"    # I
    .param p2, "position"    # I

    .prologue
    .line 975
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->resetFolderHint()V

    .line 976
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getHolePage()I

    move-result v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getHolePosition()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getHolePosition()I

    move-result v0

    if-ne v0, p2, :cond_2

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHoleMaker:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;

    const/4 v1, 0x0

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->cancel(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->access$2600(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;Z)V

    .line 987
    :cond_1
    :goto_0
    return-void

    .line 981
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getHolePage()I

    move-result v0

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getHolePosition()I

    move-result v0

    if-ge v0, p2, :cond_3

    .line 982
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHoleMaker:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->updateHole(II)Z
    invoke-static {v0, p1, p2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->access$4200(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;II)Z

    goto :goto_0

    .line 983
    :cond_3
    invoke-direct {p0, p2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->isRightEdge(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 984
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHoleMaker:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;

    add-int/lit8 v1, p2, 0x1

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->updateHole(II)Z
    invoke-static {v0, p1, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->access$4200(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;II)Z

    goto :goto_0
.end method

.method private inTransferMode()Z
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$2000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/transfer/TransferHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$2000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/transfer/TransferHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/home/transfer/TransferHandler;->isInTransfer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$2000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/transfer/TransferHandler;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sonymobile/home/transfer/TransferHandler;->isOurTransfer(Lcom/sonymobile/home/transfer/DropTarget;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCloseToNextPage(F)Z
    .locals 7
    .param p1, "x"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1087
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/apptray/AppTrayView;->getCurrentPage()I

    move-result v0

    .line 1088
    .local v0, "currentPage":I
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getPageCount()I

    move-result v1

    .line 1091
    .local v1, "pageCount":I
    iget v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPageSwitchMarginLeft:I

    iget v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPageSwitchNudgeOffset:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_2

    .line 1093
    if-lez v0, :cond_1

    .line 1099
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 1093
    goto :goto_0

    .line 1094
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/apptray/AppTrayView;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPageSwitchMarginRight:I

    iget v6, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPageSwitchNudgeOffset:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v4, v5

    cmpl-float v4, p1, v4

    if-lez v4, :cond_3

    .line 1097
    if-lt v0, v1, :cond_0

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v3

    .line 1099
    goto :goto_0
.end method

.method private isRightEdge(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 964
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$2900(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/grid/Grid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v0

    rem-int v0, p1, v0

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$2900(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/grid/Grid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveHintViewToCurrentPage()V
    .locals 4

    .prologue
    .line 1128
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/apptray/AppTrayView;->getCurrentPage()I

    move-result v0

    .line 1129
    .local v0, "currentPageIndex":I
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sonymobile/home/apptray/AppTrayView;->findPage(I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v1

    .line 1131
    .local v1, "currentPageView":Lcom/sonymobile/home/ui/pageview/PageView;
    if-nez v1, :cond_0

    .line 1132
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 1135
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHintView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Image;->getParent()Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    .line 1137
    .local v2, "hintViewParent":Lcom/sonymobile/flix/components/Component;
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHiddenView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v3}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getParent()Lcom/sonymobile/flix/components/Component;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 1138
    if-eqz v2, :cond_1

    .line 1139
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHintView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v2, v3}, Lcom/sonymobile/flix/components/Component;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 1141
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHintView:Lcom/sonymobile/flix/components/Image;

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/ui/pageview/PageView;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 1143
    :cond_2
    return-void
.end method

.method private resetFolderHint()V
    .locals 4

    .prologue
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 1150
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mFolderHintManager:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;->cancel()V

    .line 1151
    iget-wide v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHiddenItemId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1152
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHintView:Lcom/sonymobile/flix/components/Image;

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHintView:Lcom/sonymobile/flix/components/Image;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Image;->setVisible(Z)V

    .line 1154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHintView:Lcom/sonymobile/flix/components/Image;

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHiddenView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    if-eqz v0, :cond_1

    .line 1157
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHiddenView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setVisible(Z)V

    .line 1159
    :cond_1
    iput-wide v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHiddenItemId:J

    .line 1161
    :cond_2
    return-void
.end method

.method private setItemVisibility(Lcom/sonymobile/home/data/Item;Z)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "visible"    # Z

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->getPageItemView(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v0

    .line 425
    .local v0, "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0, p2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setVisible(Z)V

    .line 428
    :cond_0
    return-void
.end method

.method private switchPageIfNeeded(F)Z
    .locals 8
    .param p1, "x"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1055
    const/4 v0, 0x0

    .line 1056
    .local v0, "switchPage":Z
    iget v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPageSwitchMarginLeft:I

    .line 1057
    .local v1, "switchThresholdLeft":I
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v5}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/home/apptray/AppTrayView;->getWidth()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPageSwitchMarginRight:I

    sub-int v2, v5, v6

    .line 1059
    .local v2, "switchThresholdRight":I
    int-to-float v5, v1

    cmpg-float v5, p1, v5

    if-gez v5, :cond_1

    .line 1060
    iput-boolean v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSwitchToNextPage:Z

    .line 1061
    const/4 v0, 0x1

    .line 1067
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSwitchingPages:Z

    if-eq v0, v5, :cond_2

    .line 1068
    iput-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSwitchingPages:Z

    .line 1070
    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPostman:Landroid/view/View;

    iget-object v6, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPageSwitcher:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1071
    if-eqz v0, :cond_2

    .line 1072
    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPostman:Landroid/view/View;

    iget-object v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPageSwitcher:Ljava/lang/Runnable;

    iget v6, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mFirstPageSwitchWaitDuration:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1077
    :goto_1
    return v3

    .line 1062
    :cond_1
    int-to-float v5, v2

    cmpl-float v5, p1, v5

    if-lez v5, :cond_0

    .line 1063
    iput-boolean v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSwitchToNextPage:Z

    .line 1064
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1077
    goto :goto_1
.end method


# virtual methods
.method public drop(Lcom/sonymobile/home/transfer/Transferable;ILcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V
    .locals 20
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "actionSet"    # I
    .param p3, "transferImage"    # Lcom/sonymobile/flix/components/Image;
    .param p4, "dropCallback"    # Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    .prologue
    .line 693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/apptray/AppTrayView;->getCurrentPage()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mDragPosition:I

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getItemAtLocation(II)Lcom/sonymobile/home/data/Item;

    move-result-object v5

    .line 695
    .local v5, "overlappedItem":Lcom/sonymobile/home/data/Item;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter;->isOwnOrder()Z
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$2400(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 696
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v2

    invoke-interface/range {p1 .. p1}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v18

    cmp-long v2, v2, v18

    if-eqz v2, :cond_3

    .line 698
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter;->showCannotCustomizeDialog()V
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$3100(Lcom/sonymobile/home/apptray/AppTrayPresenter;)V

    .line 702
    :cond_1
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v3}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 703
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->cleanup()V

    .line 894
    :cond_2
    :goto_1
    return-void

    .line 699
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->isInNormalState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    sget-object v3, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->APPTRAY_STATE_EDIT:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter;->setState(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;)V
    invoke-static {v2, v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$3200(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;)V

    goto :goto_0

    .line 709
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/apptray/AppTrayView;->enableItemAnimations(Z)V

    .line 711
    invoke-interface/range {p1 .. p1}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v7

    .line 712
    .local v7, "item":Lcom/sonymobile/home/data/Item;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHiddenItemId:J

    move-wide/from16 v18, v0

    cmp-long v2, v2, v18

    if-nez v2, :cond_5

    const/4 v11, 0x1

    .line 714
    .local v11, "hasVisibleHint":Z
    :goto_2
    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$600(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayModel;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Lcom/sonymobile/home/apptray/AppTrayModel;->canCreateContainer(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v10, 0x1

    .line 715
    .local v10, "createContainer":Z
    :goto_3
    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$600(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayModel;

    move-result-object v2

    invoke-virtual {v2, v5, v7}, Lcom/sonymobile/home/apptray/AppTrayModel;->acceptItem(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v12, 0x1

    .line 717
    .local v12, "intoContainer":Z
    :goto_4
    if-nez v5, :cond_8

    const/4 v13, 0x1

    .line 718
    .local v13, "intoFreeSlot":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$100(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v2

    if-eqz v2, :cond_9

    const/4 v6, 0x1

    .line 741
    .local v6, "isLocal":Z
    :goto_6
    if-eqz v10, :cond_a

    .line 743
    new-instance v14, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 744
    .local v14, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    new-instance v8, Lcom/sonymobile/home/transfer/DropEvent;

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-direct {v8, v2, v3, v6}, Lcom/sonymobile/home/transfer/DropEvent;-><init>(ZIZ)V

    .line 746
    .local v8, "dropEvent":Lcom/sonymobile/home/transfer/DropEvent;
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mCreator:Lcom/sonymobile/home/data/ItemCreator;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$3600(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/data/ItemCreator;

    move-result-object v17

    new-instance v2, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    invoke-direct/range {v2 .. v8}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$2;-><init>(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/home/data/Item;ZLcom/sonymobile/home/data/Item;Lcom/sonymobile/home/transfer/DropEvent;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$3500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v14, v2, v3}, Lcom/sonymobile/home/data/ItemCreator;->createFolder(Ljava/util/List;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$3700(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v9

    .line 793
    .local v9, "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    invoke-virtual {v9}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 795
    const/16 v2, 0x4000

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$3800(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080062

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->sendEvent(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 712
    .end local v6    # "isLocal":Z
    .end local v8    # "dropEvent":Lcom/sonymobile/home/transfer/DropEvent;
    .end local v9    # "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    .end local v10    # "createContainer":Z
    .end local v11    # "hasVisibleHint":Z
    .end local v12    # "intoContainer":Z
    .end local v13    # "intoFreeSlot":Z
    .end local v14    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 714
    .restart local v11    # "hasVisibleHint":Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .line 715
    .restart local v10    # "createContainer":Z
    :cond_7
    const/4 v12, 0x0

    goto :goto_4

    .line 717
    .restart local v12    # "intoContainer":Z
    :cond_8
    const/4 v13, 0x0

    goto :goto_5

    .line 718
    .restart local v13    # "intoFreeSlot":Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_6

    .line 798
    .restart local v6    # "isLocal":Z
    :cond_a
    if-eqz v12, :cond_b

    .line 799
    new-instance v8, Lcom/sonymobile/home/transfer/DropEvent;

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-direct {v8, v2, v3, v6}, Lcom/sonymobile/home/transfer/DropEvent;-><init>(ZIZ)V

    .line 801
    .restart local v8    # "dropEvent":Lcom/sonymobile/home/transfer/DropEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mCreator:Lcom/sonymobile/home/data/ItemCreator;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$3600(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/data/ItemCreator;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v3, v0, v1, v7, v8}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$3;-><init>(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/transfer/DropEvent;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$3900(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Landroid/os/Handler;

    move-result-object v4

    invoke-interface {v2, v5, v7, v3, v4}, Lcom/sonymobile/home/data/ItemCreator;->addItemToFolder(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z

    goto/16 :goto_1

    .line 851
    .end local v8    # "dropEvent":Lcom/sonymobile/home/transfer/DropEvent;
    :cond_b
    if-eqz v13, :cond_e

    .line 852
    const/16 v16, 0x4

    .line 853
    .local v16, "response":I
    new-instance v8, Lcom/sonymobile/home/transfer/DropEvent;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v8, v2, v3, v6}, Lcom/sonymobile/home/transfer/DropEvent;-><init>(ZIZ)V

    .line 855
    .restart local v8    # "dropEvent":Lcom/sonymobile/home/transfer/DropEvent;
    if-eqz v6, :cond_d

    .line 856
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->addItemInFreeSlot(Lcom/sonymobile/home/data/Item;)Z

    move-result v15

    .line 858
    .local v15, "moved":Z
    if-nez v15, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mIsItemDraggedOutsideOriginalPosition:Z

    if-nez v2, :cond_c

    .line 861
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->isInNormalState()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    sget-object v3, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;->APPTRAY_STATE_EDIT:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter;->setState(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;)V
    invoke-static {v2, v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$3200(Lcom/sonymobile/home/apptray/AppTrayPresenter;Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayState;)V

    .line 866
    :cond_c
    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v8}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 868
    if-eqz v15, :cond_2

    if-eqz v7, :cond_2

    .line 869
    const-string v2, "Apptray"

    const-string v3, "ItemMoved"

    const-string v4, ""

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-static {v2, v3, v4, v0, v1}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 873
    .end local v15    # "moved":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mCreator:Lcom/sonymobile/home/data/ItemCreator;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$3600(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/data/ItemCreator;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v3, v0, v1, v8}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$4;-><init>(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/home/transfer/DropEvent;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$4100(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Landroid/os/Handler;

    move-result-object v4

    invoke-interface {v2, v7, v3, v4}, Lcom/sonymobile/home/data/ItemCreator;->copy(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z

    goto/16 :goto_1

    .line 886
    .end local v8    # "dropEvent":Lcom/sonymobile/home/transfer/DropEvent;
    .end local v16    # "response":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->removeEmptyPages()V

    .line 888
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->cleanup()V

    .line 890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->notifyContentChanged()V

    .line 892
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v3}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    goto/16 :goto_1
.end method

.method public enter(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;)Z
    .locals 7
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "transferImage"    # Lcom/sonymobile/flix/components/Image;
    .param p3, "event"    # Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    .prologue
    const/4 v6, -0x1

    .line 556
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter;->isOwnOrder()Z
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$2400(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Z

    move-result v2

    .line 558
    .local v2, "isEditable":Z
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$600(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayModel;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/sonymobile/home/apptray/AppTrayModel;->addModelObserver(Lcom/sonymobile/home/model/ModelObserver;)V

    .line 559
    if-eqz v2, :cond_0

    .line 560
    iget v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mMoveMargin:I

    if-ne v3, v6, :cond_0

    .line 561
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$2800(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/settings/UserSettings;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/home/settings/UserSettings$IconType;->APPTRAY_ICON:Lcom/sonymobile/home/settings/UserSettings$IconType;

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/settings/UserSettings;->getIconSize(Lcom/sonymobile/home/settings/UserSettings$IconType;)I

    move-result v1

    .line 562
    .local v1, "iconWidth":I
    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$2900(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/grid/Grid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/grid/Grid;->getCellWidth()I

    move-result v0

    .line 573
    .local v0, "cellWidth":I
    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x4

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mMoveMargin:I

    .line 577
    .end local v0    # "cellWidth":I
    .end local v1    # "iconWidth":I
    :cond_0
    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mOverlappedFolderId:J

    .line 578
    iput v6, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mDragPosition:I

    .line 579
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mIsItemDraggedOutsideOriginalPosition:Z

    .line 584
    return v2
.end method

.method public exit(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/flix/components/Image;)V
    .locals 1
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "transferImage"    # Lcom/sonymobile/flix/components/Image;

    .prologue
    .line 899
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->cleanup()V

    .line 902
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$100(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->notifyContentChanged()V

    .line 905
    :cond_0
    return-void
.end method

.method public onModelChanged()V
    .locals 2

    .prologue
    .line 910
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->inTransferMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$100(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 911
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$600(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/apptray/AppTrayModel;->getItems()Ljava/util/List;

    move-result-object v0

    .line 913
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$100(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 914
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mTransferHandler:Lcom/sonymobile/home/transfer/TransferHandler;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$2000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/transfer/TransferHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/home/transfer/TransferHandler;->cancelTransfer()V

    .line 917
    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    return-void
.end method

.method public onModelItemChanged(Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 922
    return-void
.end method

.method public onModelOrderChanged()V
    .locals 0

    .prologue
    .line 927
    return-void
.end method

.method public over(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/home/transfer/TransferView;Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;)V
    .locals 22
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "transferView"    # Lcom/sonymobile/home/transfer/TransferView;
    .param p3, "event"    # Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    .prologue
    .line 592
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->xScreenTouchPosition:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->isCloseToNextPage(F)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 593
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->xScreenTouchPosition:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->switchPageIfNeeded(F)Z

    .line 598
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    move-object/from16 v18, v0

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/home/apptray/AppTrayView;->getCurrentPage()I

    move-result v9

    .line 599
    .local v9, "currentPage":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    move-object/from16 v18, v0

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mView:Lcom/sonymobile/home/apptray/AppTrayView;
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$500(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/sonymobile/home/apptray/AppTrayView;->findPage(I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v15

    .line 601
    .local v15, "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    if-nez v15, :cond_2

    .line 688
    :cond_0
    :goto_1
    return-void

    .line 595
    .end local v9    # "currentPage":I
    .end local v15    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->stopPageSwitching()V

    goto :goto_0

    .line 605
    .restart local v9    # "currentPage":I
    .restart local v15    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_2
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v7, v0, [F

    .line 606
    .local v7, "coordsOver":[F
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->xScreenItemPosition:F

    move/from16 v18, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;->yScreenItemPosition:F

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1, v7}, Lcom/sonymobile/flix/components/ComponentTransform;->projectScreenPointOnComponent(Lcom/sonymobile/flix/components/Component;FF[F)Z

    .line 612
    const/16 v18, 0x0

    aget v18, v7, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->getCol(F)F

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    move-object/from16 v20, v0

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static/range {v20 .. v20}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$2900(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/grid/Grid;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x38d1b717    # 1.0E-4f

    sub-float v20, v20, v21

    invoke-static/range {v18 .. v20}, Lcom/sonymobile/home/util/MathUtil;->clamp(FFF)F

    move-result v6

    .line 613
    .local v6, "col":F
    const/16 v18, 0x1

    aget v18, v7, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->getRow(F)F

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    move-object/from16 v20, v0

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static/range {v20 .. v20}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$2900(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/grid/Grid;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sonymobile/grid/Grid;->getNumRows()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x38d1b717    # 1.0E-4f

    sub-float v20, v20, v21

    invoke-static/range {v18 .. v20}, Lcom/sonymobile/home/util/MathUtil;->clamp(FFF)F

    move-result v16

    .line 614
    .local v16, "row":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mDragPosition:I

    .line 615
    .local v12, "oldDragPosition":I
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    move-object/from16 v19, v0

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mGrid:Lcom/sonymobile/grid/Grid;
    invoke-static/range {v19 .. v19}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$2900(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/grid/Grid;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/grid/Grid;->getNumCols()I

    move-result v19

    mul-int v18, v18, v19

    float-to-int v0, v6

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mDragPosition:I

    .line 617
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mIsItemDraggedOutsideOriginalPosition:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mDragPosition:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v12, v0, :cond_3

    .line 619
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mIsItemDraggedOutsideOriginalPosition:Z

    .line 622
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    move-object/from16 v18, v0

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter;->isOwnOrder()Z
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$2400(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 626
    float-to-int v0, v6

    move/from16 v18, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->getItemAtLocation(II)Lcom/sonymobile/home/data/Item;

    move-result-object v11

    .line 627
    .local v11, "intersectedItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v15, v11}, Lcom/sonymobile/home/ui/pageview/PageView;->getItem(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v14

    .line 629
    .local v14, "pageItemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    if-eqz v11, :cond_b

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Lcom/sonymobile/home/ui/pageview/PageItemView;->isVisible()Z

    move-result v18

    if-nez v18, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHintView:Lcom/sonymobile/flix/components/Image;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHintView:Lcom/sonymobile/flix/components/Image;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/flix/components/Image;->isVisible()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 631
    :cond_5
    float-to-int v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v10, v6, v18

    .line 634
    .local v10, "fraction":F
    const v18, 0x3e99999a    # 0.3f

    cmpg-float v18, v10, v18

    if-gez v18, :cond_6

    .line 635
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mDragPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->handleMoveLeftZone(II)V

    goto/16 :goto_1

    .line 636
    :cond_6
    const v18, 0x3f333333    # 0.7f

    cmpl-float v18, v10, v18

    if-lez v18, :cond_7

    .line 637
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mDragPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->handleMoveRightZone(II)V

    goto/16 :goto_1

    .line 639
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHoleMaker:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->cancel(Z)V
    invoke-static/range {v18 .. v19}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->access$2600(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;Z)V

    .line 641
    invoke-interface/range {p1 .. p1}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v17

    .line 643
    .local v17, "transferItem":Lcom/sonymobile/home/data/Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    move-object/from16 v18, v0

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$600(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayModel;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Lcom/sonymobile/home/apptray/AppTrayModel;->canCreateContainer(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)Z

    move-result v8

    .line 644
    .local v8, "createContainer":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    move-object/from16 v18, v0

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAppTrayModel:Lcom/sonymobile/home/apptray/AppTrayModel;
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$600(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayModel;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lcom/sonymobile/home/apptray/AppTrayModel;->acceptItem(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;)Z

    move-result v5

    .line 646
    .local v5, "addToContainer":Z
    if-eqz v8, :cond_8

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mFolderHintManager:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;->createHint(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/transfer/TransferView;)V

    goto/16 :goto_1

    .line 648
    :cond_8
    if-eqz v5, :cond_0

    .line 649
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mOverlappedFolderId:J

    move-wide/from16 v18, v0

    invoke-virtual {v11}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-eqz v18, :cond_0

    .line 650
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->resetFolderHint()V

    .line 651
    if-eqz v14, :cond_a

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    move-object/from16 v18, v0

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$3000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v4

    .line 653
    .local v4, "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    invoke-virtual {v4}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 654
    const/16 v18, 0x4000

    invoke-virtual {v14}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getButton()Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->getDescription()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->sendEvent(ILjava/lang/String;)V

    .line 657
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mFolderHintManager:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$AppTrayFolderHintManager;->animateFolder(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/transfer/TransferView;)V

    .line 659
    .end local v4    # "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    :cond_a
    invoke-virtual {v11}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mOverlappedFolderId:J

    goto/16 :goto_1

    .line 665
    .end local v5    # "addToContainer":Z
    .end local v8    # "createContainer":Z
    .end local v10    # "fraction":F
    .end local v17    # "transferItem":Lcom/sonymobile/home/data/Item;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->resetFolderHint()V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mHoleMaker:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->cancel(Z)V
    invoke-static/range {v18 .. v19}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->access$2600(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;Z)V

    .line 667
    const-wide/high16 v18, -0x8000000000000000L

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mOverlappedFolderId:J

    .line 674
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mDragPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    move-object/from16 v19, v0

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static/range {v19 .. v19}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->getItemsOnPage(I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    move-object/from16 v18, v0

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mDragPosition:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->setHole(II)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 676
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSpillOverItem:Lcom/sonymobile/home/data/Item;

    .line 678
    .local v13, "oldSpillOverItem":Lcom/sonymobile/home/data/Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    move-object/from16 v18, v0

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mDragPosition:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->makeRoom(II)Lcom/sonymobile/home/data/Item;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSpillOverItem:Lcom/sonymobile/home/data/Item;

    .line 679
    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSpillOverItem:Lcom/sonymobile/home/data/Item;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-eq v13, v0, :cond_c

    .line 680
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v13, v1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->setItemVisibility(Lcom/sonymobile/home/data/Item;Z)V

    .line 682
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSpillOverItem:Lcom/sonymobile/home/data/Item;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSpillOverItem:Lcom/sonymobile/home/data/Item;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->setItemVisibility(Lcom/sonymobile/home/data/Item;Z)V

    .line 685
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    move-object/from16 v18, v0

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->notifyContentChanged()V

    goto/16 :goto_1
.end method

.method public stopPageSwitching()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPostman:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPostman:Landroid/view/View;

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPageSwitcher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 936
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSwitchingPages:Z

    .line 937
    return-void
.end method
