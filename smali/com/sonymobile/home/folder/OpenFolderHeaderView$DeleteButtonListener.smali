.class Lcom/sonymobile/home/folder/OpenFolderHeaderView$DeleteButtonListener;
.super Lcom/sonymobile/flix/components/ButtonListener$Adapter;
.source "OpenFolderHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/folder/OpenFolderHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/OpenFolderHeaderView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/folder/OpenFolderHeaderView;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView$DeleteButtonListener;->this$0:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    invoke-direct {p0}, Lcom/sonymobile/flix/components/ButtonListener$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/folder/OpenFolderHeaderView;Lcom/sonymobile/home/folder/OpenFolderHeaderView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/folder/OpenFolderHeaderView;
    .param p2, "x1"    # Lcom/sonymobile/home/folder/OpenFolderHeaderView$1;

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/OpenFolderHeaderView$DeleteButtonListener;-><init>(Lcom/sonymobile/home/folder/OpenFolderHeaderView;)V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 1
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 450
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView$DeleteButtonListener;->this$0:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mClickListener:Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->access$300(Lcom/sonymobile/home/folder/OpenFolderHeaderView;)Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView$DeleteButtonListener;->this$0:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mClickListener:Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->access$300(Lcom/sonymobile/home/folder/OpenFolderHeaderView;)Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;->onDeleteClicked()V

    .line 453
    :cond_0
    return-void
.end method

.method public onPress(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 2
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView$DeleteButtonListener;->this$0:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    const/4 v1, 0x1

    # invokes: Lcom/sonymobile/home/folder/OpenFolderHeaderView;->setDeletePressed(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->access$400(Lcom/sonymobile/home/folder/OpenFolderHeaderView;Z)V

    .line 441
    return-void
.end method

.method public onRelease(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 2
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView$DeleteButtonListener;->this$0:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    const/4 v1, 0x0

    # invokes: Lcom/sonymobile/home/folder/OpenFolderHeaderView;->setDeletePressed(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->access$400(Lcom/sonymobile/home/folder/OpenFolderHeaderView;Z)V

    .line 446
    return-void
.end method
