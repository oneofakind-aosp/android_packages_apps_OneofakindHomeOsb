.class Lcom/sonymobile/home/folder/OpenFolderHeaderView$LabelButtonListener;
.super Ljava/lang/Object;
.source "OpenFolderHeaderView.java"

# interfaces
.implements Lcom/sonymobile/flix/components/ButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/folder/OpenFolderHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/OpenFolderHeaderView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/folder/OpenFolderHeaderView;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView$LabelButtonListener;->this$0:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/folder/OpenFolderHeaderView;Lcom/sonymobile/home/folder/OpenFolderHeaderView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/folder/OpenFolderHeaderView;
    .param p2, "x1"    # Lcom/sonymobile/home/folder/OpenFolderHeaderView$1;

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/OpenFolderHeaderView$LabelButtonListener;-><init>(Lcom/sonymobile/home/folder/OpenFolderHeaderView;)V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 1
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView$LabelButtonListener;->this$0:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mClickListener:Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->access$300(Lcom/sonymobile/home/folder/OpenFolderHeaderView;)Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView$LabelButtonListener;->this$0:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mClickListener:Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->access$300(Lcom/sonymobile/home/folder/OpenFolderHeaderView;)Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;->onLabelClicked()V

    .line 411
    :cond_0
    return-void
.end method

.method public onDrag(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 0
    .param p1, "components"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 424
    return-void
.end method

.method public onHoverEnter(Lcom/sonymobile/flix/components/Button;)V
    .locals 0
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;

    .prologue
    .line 428
    return-void
.end method

.method public onHoverExit(Lcom/sonymobile/flix/components/Button;)V
    .locals 0
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;

    .prologue
    .line 432
    return-void
.end method

.method public onLongPress(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 1
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 416
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView$LabelButtonListener;->this$0:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mClickListener:Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->access$300(Lcom/sonymobile/home/folder/OpenFolderHeaderView;)Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView$LabelButtonListener;->this$0:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderHeaderView;->mClickListener:Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->access$300(Lcom/sonymobile/home/folder/OpenFolderHeaderView;)Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/home/folder/OpenFolderHeaderView$OpenFolderHeaderListener;->onLabelClicked()V

    .line 419
    :cond_0
    return-void
.end method

.method public onPress(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 2
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 398
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView$LabelButtonListener;->this$0:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    const/4 v1, 0x1

    # invokes: Lcom/sonymobile/home/folder/OpenFolderHeaderView;->setLabelPressed(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->access$200(Lcom/sonymobile/home/folder/OpenFolderHeaderView;Z)V

    .line 399
    return-void
.end method

.method public onRelease(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 2
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderHeaderView$LabelButtonListener;->this$0:Lcom/sonymobile/home/folder/OpenFolderHeaderView;

    const/4 v1, 0x0

    # invokes: Lcom/sonymobile/home/folder/OpenFolderHeaderView;->setLabelPressed(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderHeaderView;->access$200(Lcom/sonymobile/home/folder/OpenFolderHeaderView;Z)V

    .line 404
    return-void
.end method
