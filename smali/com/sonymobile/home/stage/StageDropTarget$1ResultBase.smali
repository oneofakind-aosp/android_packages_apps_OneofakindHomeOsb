.class Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;
.super Ljava/lang/Object;
.source "StageDropTarget.java"

# interfaces
.implements Lcom/sonymobile/home/data/ItemCreator$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/stage/StageDropTarget;->drop(Lcom/sonymobile/home/transfer/Transferable;ILcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/stage/StageDropTarget;

.field final synthetic val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/stage/StageDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 247
    iput-object p1, p0, Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    iput-object p2, p0, Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "errorTextResourceId"    # I

    .prologue
    const/4 v2, 0x0

    .line 254
    if-eqz p1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    # getter for: Lcom/sonymobile/home/stage/StageDropTarget;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;
    invoke-static {v0}, Lcom/sonymobile/home/stage/StageDropTarget;->access$900(Lcom/sonymobile/home/stage/StageDropTarget;)Lcom/sonymobile/home/stage/StagePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/stage/StagePresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;->this$0:Lcom/sonymobile/home/stage/StageDropTarget;

    const/4 v1, 0x1

    # invokes: Lcom/sonymobile/home/stage/StageDropTarget;->cleanup(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/stage/StageDropTarget;->access$1100(Lcom/sonymobile/home/stage/StageDropTarget;Z)V

    .line 259
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDropTarget$1ResultBase;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 260
    return-void
.end method

.method public onResult(Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p1, "newItem"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 250
    return-void
.end method
