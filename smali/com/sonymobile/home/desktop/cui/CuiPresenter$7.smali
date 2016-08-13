.class Lcom/sonymobile/home/desktop/cui/CuiPresenter$7;
.super Lcom/sonymobile/flix/util/Animation$Listener$Adapter;
.source "CuiPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/cui/CuiPresenter;->openCloseGridViewMenu(Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/home/cui/CuiGridView;Lcom/sonymobile/flix/util/Animation$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

.field final synthetic val$openGridView:Lcom/sonymobile/home/cui/CuiGridView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/cui/CuiPresenter;Lcom/sonymobile/home/cui/CuiGridView;)V
    .locals 0

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$7;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    iput-object p2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$7;->val$openGridView:Lcom/sonymobile/home/cui/CuiGridView;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation$Listener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 4
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 1173
    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$7;->val$openGridView:Lcom/sonymobile/home/cui/CuiGridView;

    invoke-virtual {v1}, Lcom/sonymobile/home/cui/CuiGridView;->hasItems()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1174
    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$7;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # getter for: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$700(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->getFocused()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 1175
    .local v0, "focusedComponent":Lcom/sonymobile/flix/components/Component;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$7;->val$openGridView:Lcom/sonymobile/home/cui/CuiGridView;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/cui/CuiGridView;->hasDescendant(Lcom/sonymobile/flix/components/Component;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1176
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$7;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # getter for: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mKeyboardFocusManager:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$700(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$7;->val$openGridView:Lcom/sonymobile/home/cui/CuiGridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/cui/CuiGridView;->getItem(I)Lcom/sonymobile/home/cui/CuiGridItemView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->focus(Lcom/sonymobile/flix/components/Component;)Z

    .line 1179
    .end local v0    # "focusedComponent":Lcom/sonymobile/flix/components/Component;
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$7;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # getter for: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$300(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->enableTouch()V

    .line 1180
    return-void
.end method
