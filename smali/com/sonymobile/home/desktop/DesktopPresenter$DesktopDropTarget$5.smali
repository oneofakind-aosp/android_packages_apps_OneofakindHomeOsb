.class Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$5;
.super Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;
.source "DesktopPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->drop(Lcom/sonymobile/home/transfer/Transferable;ILcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

.field final synthetic val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

.field final synthetic val$overlappedItem:Lcom/sonymobile/home/data/Item;

.field final synthetic val$resultCallback:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$5;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iput-object p2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$5;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    iput-object p3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$5;->val$overlappedItem:Lcom/sonymobile/home/data/Item;

    iput-object p4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$5;->val$resultCallback:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sonymobile/home/data/Item;)V
    .locals 4
    .param p1, "newItem"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 836
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$5;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3000(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/data/ItemCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$5;->val$overlappedItem:Lcom/sonymobile/home/data/Item;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$5;->val$resultCallback:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$5;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v3, v3, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3500(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/os/Handler;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/sonymobile/home/data/ItemCreator;->addItemToFolder(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z

    .line 838
    return-void
.end method
