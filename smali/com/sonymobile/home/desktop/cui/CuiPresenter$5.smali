.class Lcom/sonymobile/home/desktop/cui/CuiPresenter$5;
.super Ljava/lang/Object;
.source "CuiPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addMenuAtTop(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Lcom/sonymobile/home/cui/CuiGridModel;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

.field final synthetic val$gridView:Lcom/sonymobile/home/cui/CuiGridView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/cui/CuiPresenter;Lcom/sonymobile/home/cui/CuiGridView;)V
    .locals 0

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$5;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    iput-object p2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$5;->val$gridView:Lcom/sonymobile/home/cui/CuiGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModelItemChanged(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1036
    return-void
.end method

.method public onModelLoaded()V
    .locals 3

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$5;->val$gridView:Lcom/sonymobile/home/cui/CuiGridView;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridView;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$5;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # getter for: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$700(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$5;->val$gridView:Lcom/sonymobile/home/cui/CuiGridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/cui/CuiGridView;->getItem(I)Lcom/sonymobile/home/cui/CuiGridItemView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->focus(Lcom/sonymobile/flix/components/Component;)Z

    .line 1026
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$5;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # getter for: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$300(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->invalidate()V

    .line 1028
    :cond_0
    return-void
.end method
