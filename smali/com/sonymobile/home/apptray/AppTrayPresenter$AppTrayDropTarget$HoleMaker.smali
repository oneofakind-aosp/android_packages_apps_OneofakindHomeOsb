.class final Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;
.super Ljava/lang/Object;
.source "AppTrayPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HoleMaker"
.end annotation


# instance fields
.field private mHolePage:I

.field private mHolePosition:I

.field final synthetic this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 357
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->mHolePage:I

    .line 365
    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->mHolePosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/home/apptray/AppTrayPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;
    .param p2, "x1"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$1;

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;-><init>(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;
    .param p1, "x1"    # Z

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->cancel(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 357
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->updateHole(II)Z

    move-result v0

    return v0
.end method

.method private cancel(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    const/4 v0, -0x1

    .line 410
    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->mHolePage:I

    .line 411
    iput v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->mHolePosition:I

    .line 412
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPostman:Landroid/view/View;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$900(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 413
    return-void
.end method

.method private updateHole(II)Z
    .locals 4
    .param p1, "page"    # I
    .param p2, "location"    # I

    .prologue
    .line 394
    iget v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->mHolePage:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->mHolePosition:I

    if-eq p2, v0, :cond_1

    .line 395
    :cond_0
    iput p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->mHolePage:I

    .line 396
    iput p2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->mHolePosition:I

    .line 397
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPostman:Landroid/view/View;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$900(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 398
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mPostman:Landroid/view/View;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$900(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)Landroid/view/View;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 399
    const/4 v0, 0x1

    .line 402
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 369
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSpillOverItem:Lcom/sonymobile/home/data/Item;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$1600(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 371
    .local v0, "oldSpillOverItem":Lcom/sonymobile/home/data/Item;
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v3, v3, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v3

    iget v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->mHolePage:I

    iget v5, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->mHolePosition:I

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->makeRoom(II)Lcom/sonymobile/home/data/Item;

    move-result-object v3

    # setter for: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSpillOverItem:Lcom/sonymobile/home/data/Item;
    invoke-static {v2, v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$1602(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/data/Item;

    .line 373
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSpillOverItem:Lcom/sonymobile/home/data/Item;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$1600(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)Lcom/sonymobile/home/data/Item;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 374
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    const/4 v3, 0x1

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->setItemVisibility(Lcom/sonymobile/home/data/Item;Z)V
    invoke-static {v2, v0, v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$1700(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/home/data/Item;Z)V

    .line 376
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSpillOverItem:Lcom/sonymobile/home/data/Item;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$1600(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)Lcom/sonymobile/home/data/Item;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 377
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->mHolePage:I

    iget-object v4, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mSpillOverItem:Lcom/sonymobile/home/data/Item;
    invoke-static {v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$1600(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)Lcom/sonymobile/home/data/Item;

    move-result-object v4

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->getPageItemView(ILcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-static {v2, v3, v4}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$1800(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;ILcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v1

    .line 379
    .local v1, "viewItem":Lcom/sonymobile/home/ui/pageview/PageItemView;
    if-eqz v1, :cond_1

    .line 380
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setVisible(Z)V

    .line 383
    .end local v1    # "viewItem":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget v3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$HoleMaker;->mHolePosition:I

    # setter for: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->mDragPosition:I
    invoke-static {v2, v3}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$1902(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;I)I

    .line 384
    return-void
.end method
