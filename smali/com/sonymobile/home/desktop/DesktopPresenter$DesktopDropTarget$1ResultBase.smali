.class Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;
.super Ljava/lang/Object;
.source "DesktopPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/data/ItemCreator$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->drop(Lcom/sonymobile/home/transfer/Transferable;ILcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultBase"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

.field final synthetic val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 694
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iput-object p2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "errorTextResourceId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 701
    if-eqz p1, :cond_0

    .line 702
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$2600(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->cleanup(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->access$2700(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;ZZ)V

    .line 706
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$1ResultBase;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 707
    return-void
.end method

.method public onResult(Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p1, "newItem"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 697
    return-void
.end method
