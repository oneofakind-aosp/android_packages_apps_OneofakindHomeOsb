.class final Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;
.super Ljava/lang/Object;
.source "OpenFolderPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HoleMaker"
.end annotation


# instance fields
.field private mHolePosition:I

.field final synthetic this$1:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;)V
    .locals 1

    .prologue
    .line 465
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->this$1:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->mHolePosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;Lcom/sonymobile/home/folder/OpenFolderPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;
    .param p2, "x1"    # Lcom/sonymobile/home/folder/OpenFolderPresenter$1;

    .prologue
    .line 465
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;-><init>(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->cancel()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;
    .param p1, "x1"    # I

    .prologue
    .line 465
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->updateHole(I)Z

    move-result v0

    return v0
.end method

.method private cancel()V
    .locals 1

    .prologue
    .line 502
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->mHolePosition:I

    .line 503
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->this$1:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mPostman:Landroid/view/View;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->access$900(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 504
    return-void
.end method

.method private updateHole(I)Z
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 486
    iget v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->mHolePosition:I

    if-eq p1, v0, :cond_0

    .line 487
    iput p1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->mHolePosition:I

    .line 488
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->this$1:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mPostman:Landroid/view/View;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->access$900(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 490
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->this$1:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mPostman:Landroid/view/View;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->access$900(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 491
    const/4 v0, 0x1

    .line 494
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->this$1:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;

    iget-object v0, v0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$600(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->this$1:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;

    iget-object v0, v0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mAdapter:Lcom/sonymobile/home/folder/OpenFolderAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$500(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/folder/OpenFolderAdapter;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->mHolePosition:I

    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->this$1:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;

    iget-object v2, v2, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderPresenter;->mDraggedView:Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v2}, Lcom/sonymobile/home/folder/OpenFolderPresenter;->access$600(Lcom/sonymobile/home/folder/OpenFolderPresenter;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/folder/OpenFolderAdapter;->makeRoom(ILcom/sonymobile/home/data/Item;)V

    .line 474
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->this$1:Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;

    iget v1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget$HoleMaker;->mHolePosition:I

    # setter for: Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->mDragPosition:I
    invoke-static {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;->access$802(Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderDropTarget;I)I

    .line 476
    :cond_0
    return-void
.end method
