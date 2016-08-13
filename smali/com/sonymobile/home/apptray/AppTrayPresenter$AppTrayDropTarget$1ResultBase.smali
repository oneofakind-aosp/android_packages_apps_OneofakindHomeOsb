.class Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1ResultBase;
.super Ljava/lang/Object;
.source "AppTrayPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/data/ItemCreator$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->drop(Lcom/sonymobile/home/transfer/Transferable;ILcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultBase"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

.field final synthetic val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 720
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1ResultBase;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iput-object p2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1ResultBase;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "errorTextResourceId"    # I

    .prologue
    const/4 v2, 0x0

    .line 727
    if-eqz p1, :cond_0

    .line 728
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1ResultBase;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$3300(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1ResultBase;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->removeEmptyPages()V

    .line 733
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1ResultBase;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->cleanup()V
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$3400(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;)V

    .line 735
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1ResultBase;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iget-object v0, v0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayPresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayPresenter;->mAdapter:Lcom/sonymobile/home/apptray/AppTrayAdapter;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayPresenter;->access$000(Lcom/sonymobile/home/apptray/AppTrayPresenter;)Lcom/sonymobile/home/apptray/AppTrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayAdapter;->notifyContentChanged()V

    .line 737
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1ResultBase;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 738
    return-void
.end method

.method public onResult(Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p1, "newItem"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 723
    return-void
.end method
