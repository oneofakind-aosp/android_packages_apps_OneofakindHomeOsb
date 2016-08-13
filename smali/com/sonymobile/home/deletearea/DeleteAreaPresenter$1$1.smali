.class Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$1;
.super Ljava/lang/Object;
.source "DeleteAreaPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/folder/FolderDeleteDialogFragment$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->drop(Lcom/sonymobile/home/transfer/Transferable;ILcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;

.field final synthetic val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

.field final synthetic val$dropped:Lcom/sonymobile/flix/components/Component;

.field final synthetic val$transferImage:Lcom/sonymobile/flix/components/Image;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;Lcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/flix/components/Component;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$1;->this$1:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;

    iput-object p2, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$1;->val$transferImage:Lcom/sonymobile/flix/components/Image;

    iput-object p3, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$1;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    iput-object p4, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$1;->val$dropped:Lcom/sonymobile/flix/components/Component;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$1;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 80
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$1;->this$1:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;

    iget-object v0, v0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->this$0:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    # getter for: Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mDeleteAreaView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;
    invoke-static {v0}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->access$300(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;)Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->exit(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 81
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$1;->this$1:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;

    iget-object v0, v0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->this$0:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    # setter for: Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mFolderDeleteDialogFragment:Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;
    invoke-static {v0, v2}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->access$202(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;)Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;

    .line 82
    return-void
.end method

.method public onOk()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$1;->this$1:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;

    iget-object v1, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$1;->val$transferImage:Lcom/sonymobile/flix/components/Image;

    iget-object v2, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$1;->val$dropCallback:Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    iget-object v3, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$1;->val$dropped:Lcom/sonymobile/flix/components/Component;

    # invokes: Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->finishDeleteDrop(Lcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/flix/components/Component;)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->access$100(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;Lcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/flix/components/Component;)V

    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$1;->this$1:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;

    iget-object v0, v0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->this$0:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mFolderDeleteDialogFragment:Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;
    invoke-static {v0, v1}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->access$202(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;)Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;

    .line 75
    return-void
.end method
