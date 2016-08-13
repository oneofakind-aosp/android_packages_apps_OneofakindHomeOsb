.class Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$4;
.super Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1ResultBase;
.source "AppTrayPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->drop(Lcom/sonymobile/home/transfer/Transferable;ILcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

.field final synthetic val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

.field final synthetic val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/home/transfer/DropEvent;)V
    .locals 0

    .prologue
    .line 873
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$4;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    iput-object p2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$4;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    iput-object p3, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$4;->val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$1ResultBase;-><init>(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sonymobile/home/data/Item;)V
    .locals 3
    .param p1, "newItem"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 877
    const-string v0, "apptray"

    invoke-virtual {p1, v0}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$4;->this$1:Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->addItemInFreeSlot(Lcom/sonymobile/home/data/Item;)Z
    invoke-static {v0, p1}, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;->access$4000(Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget;Lcom/sonymobile/home/data/Item;)Z

    .line 881
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$4;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayDropTarget$4;->val$dropEvent:Lcom/sonymobile/home/transfer/DropEvent;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 882
    return-void
.end method
