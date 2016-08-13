.class Lcom/sonymobile/home/folder/OpenFolderView$2;
.super Ljava/lang/Object;
.source "OpenFolderView.java"

# interfaces
.implements Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/folder/OpenFolderView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/OpenFolderView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/folder/OpenFolderView;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderView$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteClicked()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderView;->mListener:Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderView;->access$100(Lcom/sonymobile/home/folder/OpenFolderView;)Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderView;->mListener:Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderView;->access$100(Lcom/sonymobile/home/folder/OpenFolderView;)Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;->onDeleteClicked()V

    .line 154
    :cond_0
    return-void
.end method

.method public onLabelClicked()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderView;->mListener:Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderView;->access$100(Lcom/sonymobile/home/folder/OpenFolderView;)Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderView;->mListener:Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderView;->access$100(Lcom/sonymobile/home/folder/OpenFolderView;)Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;->onLabelClicked()V

    .line 147
    :cond_0
    return-void
.end method
