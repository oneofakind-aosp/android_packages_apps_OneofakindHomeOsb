.class Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$6;
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

.field final synthetic val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

.field final synthetic val$item:Lcom/sonymobile/home/data/Item;

.field final synthetic val$newLocation:Lcom/sonymobile/home/data/ItemLocation;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/transfer/DropEvent;)V
    .locals 0

    .prologue
    .line 880
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$6;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iput-object p2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$6;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    iput-object p3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$6;->val$newLocation:Lcom/sonymobile/home/data/ItemLocation;

    iput-object p4, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$6;->val$item:Lcom/sonymobile/home/data/Item;

    iput-object p5, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$6;->val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sonymobile/home/data/Item;)V
    .locals 7
    .param p1, "newItem"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v6, 0x1

    .line 884
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$6;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->getPageViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 885
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$6;->val$newLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 886
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$6;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->addItemToDesktop(Lcom/sonymobile/home/data/Item;Z)V
    invoke-static {v0, p1, v6}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3800(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/data/Item;Z)V

    .line 887
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$6;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mAutoMoveManager:Lcom/sonymobile/home/itemorganizer/ItemMoveManager;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3900(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/itemorganizer/ItemMoveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/itemorganizer/ItemMoveManager;->handleItemOverflow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$6;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->onContentChanged()V

    .line 892
    :cond_0
    instance-of v0, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/sonymobile/home/data/ShortcutItem;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v0, :cond_2

    .line 894
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$6;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->getTrackingCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ItemAdded"

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$6;->val$item:Lcom/sonymobile/home/data/Item;

    invoke-static {v2}, Lcom/sonymobile/home/statistics/TrackingUtil;->getTrackingName(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$6;->val$newLocation:Lcom/sonymobile/home/data/ItemLocation;

    iget v3, v3, Lcom/sonymobile/home/data/ItemLocation;->page:I

    int-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 900
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$6;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    const/4 v1, 0x0

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->cleanup(ZZ)V
    invoke-static {v0, v1, v6}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->access$2700(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;ZZ)V

    .line 903
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$6;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$6;->val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

    invoke-interface {v0, v6, v1}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 904
    return-void
.end method
