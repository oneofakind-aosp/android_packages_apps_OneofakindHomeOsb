.class Lcom/sonymobile/home/HomeKeyboardFocusManager$3;
.super Ljava/lang/Object;
.source "HomeKeyboardFocusManager.java"

# interfaces
.implements Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/HomeKeyboardFocusManager;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/HomeKeyboardFocusManager$ViewInteractionConnector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/HomeKeyboardFocusManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/HomeKeyboardFocusManager;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager$3;->this$0:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardFocusEvent(Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;ILcom/sonymobile/flix/components/Component;I)V
    .locals 5
    .param p1, "source"    # Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
    .param p2, "event"    # I
    .param p3, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p4, "direction"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    .line 91
    if-ne p2, v2, :cond_1

    .line 95
    invoke-virtual {p3}, Lcom/sonymobile/flix/components/Component;->getParent()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 96
    .local v0, "listener":Lcom/sonymobile/flix/components/Component;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sonymobile/home/ComponentFocusListener;

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component;->getParent()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_0
    if-eqz v0, :cond_1

    .line 100
    check-cast v0, Lcom/sonymobile/home/ComponentFocusListener;

    .end local v0    # "listener":Lcom/sonymobile/flix/components/Component;
    invoke-interface {v0, p3}, Lcom/sonymobile/home/ComponentFocusListener;->onComponentFocused(Lcom/sonymobile/flix/components/Component;)V

    .line 107
    :cond_1
    if-ne p2, v2, :cond_4

    .line 110
    invoke-virtual {p3}, Lcom/sonymobile/flix/components/Component;->getListeners()Lcom/sonymobile/flix/components/ComponentListeners;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager$3;->this$0:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    # getter for: Lcom/sonymobile/home/HomeKeyboardFocusManager;->mBoundsChangeListener:Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;
    invoke-static {v2}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->access$200(Lcom/sonymobile/home/HomeKeyboardFocusManager;)Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/ComponentListeners;->addListener(Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;)V

    .line 114
    instance-of v1, p3, Lcom/sonymobile/home/presenter/view/HasViewWrapper;

    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {p3}, Lcom/sonymobile/flix/components/Component;->getListeners()Lcom/sonymobile/flix/components/ComponentListeners;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager$3;->this$0:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    # getter for: Lcom/sonymobile/home/HomeKeyboardFocusManager;->mHierarchyChangeListener:Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;
    invoke-static {v2}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->access$300(Lcom/sonymobile/home/HomeKeyboardFocusManager;)Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/ComponentListeners;->addListener(Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;)V

    .line 131
    :cond_2
    :goto_1
    instance-of v1, p3, Lcom/sonymobile/home/presenter/view/HasViewWrapper;

    if-eqz v1, :cond_5

    move-object v1, p3

    .line 135
    check-cast v1, Lcom/sonymobile/home/presenter/view/HasViewWrapper;

    invoke-interface {v1}, Lcom/sonymobile/home/presenter/view/HasViewWrapper;->getViewWrapper()Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 140
    packed-switch p2, :pswitch_data_0

    .line 185
    .end local p3    # "component":Lcom/sonymobile/flix/components/Component;
    :cond_3
    :goto_2
    return-void

    .line 119
    .restart local p3    # "component":Lcom/sonymobile/flix/components/Component;
    :cond_4
    if-ne p2, v4, :cond_2

    .line 120
    invoke-virtual {p3}, Lcom/sonymobile/flix/components/Component;->getListeners()Lcom/sonymobile/flix/components/ComponentListeners;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager$3;->this$0:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    # getter for: Lcom/sonymobile/home/HomeKeyboardFocusManager;->mBoundsChangeListener:Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;
    invoke-static {v2}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->access$200(Lcom/sonymobile/home/HomeKeyboardFocusManager;)Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/ComponentListeners;->removeListener(Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;)V

    .line 121
    instance-of v1, p3, Lcom/sonymobile/home/presenter/view/HasViewWrapper;

    if-eqz v1, :cond_2

    .line 122
    invoke-virtual {p3}, Lcom/sonymobile/flix/components/Component;->getListeners()Lcom/sonymobile/flix/components/ComponentListeners;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager$3;->this$0:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    # getter for: Lcom/sonymobile/home/HomeKeyboardFocusManager;->mHierarchyChangeListener:Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;
    invoke-static {v2}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->access$300(Lcom/sonymobile/home/HomeKeyboardFocusManager;)Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/ComponentListeners;->removeListener(Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;)V

    goto :goto_1

    .line 147
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager$3;->this$0:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    iput-boolean v4, v1, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mIsFocusingViewWrapper:Z

    .line 148
    iget-object v1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager$3;->this$0:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    # getter for: Lcom/sonymobile/home/HomeKeyboardFocusManager;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v1}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->access$100(Lcom/sonymobile/home/HomeKeyboardFocusManager;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getViewWrappersRoot()Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    move-result-object v1

    check-cast p3, Lcom/sonymobile/home/presenter/view/HasViewWrapper;

    .end local p3    # "component":Lcom/sonymobile/flix/components/Component;
    invoke-interface {p3}, Lcom/sonymobile/home/presenter/view/HasViewWrapper;->getViewWrapper()Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    move-result-object v2

    invoke-virtual {v1, v2, p4}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->focus(Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;I)Z

    .line 151
    iget-object v1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager$3;->this$0:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mIsFocusingViewWrapper:Z

    goto :goto_2

    .line 160
    .restart local p3    # "component":Lcom/sonymobile/flix/components/Component;
    :pswitch_1
    check-cast p3, Lcom/sonymobile/home/presenter/view/HasViewWrapper;

    .end local p3    # "component":Lcom/sonymobile/flix/components/Component;
    invoke-interface {p3}, Lcom/sonymobile/home/presenter/view/HasViewWrapper;->getViewWrapper()Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    goto :goto_2

    .line 170
    .restart local p3    # "component":Lcom/sonymobile/flix/components/Component;
    :cond_5
    packed-switch p2, :pswitch_data_1

    goto :goto_2

    .line 179
    :pswitch_2
    iget-object v1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager$3;->this$0:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    # getter for: Lcom/sonymobile/home/HomeKeyboardFocusManager;->mFocusHighlight:Lcom/sonymobile/flix/components/NinePatchImage;
    invoke-static {v1}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->access$000(Lcom/sonymobile/home/HomeKeyboardFocusManager;)Lcom/sonymobile/flix/components/NinePatchImage;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sonymobile/flix/components/Component;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    goto :goto_2

    .line 172
    :pswitch_3
    iget-object v1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager$3;->this$0:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    # getter for: Lcom/sonymobile/home/HomeKeyboardFocusManager;->mFocusHighlight:Lcom/sonymobile/flix/components/NinePatchImage;
    invoke-static {v1}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->access$000(Lcom/sonymobile/home/HomeKeyboardFocusManager;)Lcom/sonymobile/flix/components/NinePatchImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/NinePatchImage;->removeFromScene()Z

    .line 173
    iget-object v1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager$3;->this$0:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    # getter for: Lcom/sonymobile/home/HomeKeyboardFocusManager;->mFocusHighlight:Lcom/sonymobile/flix/components/NinePatchImage;
    invoke-static {v1}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->access$000(Lcom/sonymobile/home/HomeKeyboardFocusManager;)Lcom/sonymobile/flix/components/NinePatchImage;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sonymobile/flix/components/Component;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 174
    iget-object v1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager$3;->this$0:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    # getter for: Lcom/sonymobile/home/HomeKeyboardFocusManager;->mFocusHighlight:Lcom/sonymobile/flix/components/NinePatchImage;
    invoke-static {v1}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->access$000(Lcom/sonymobile/home/HomeKeyboardFocusManager;)Lcom/sonymobile/flix/components/NinePatchImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/NinePatchImage;->setSizeToParent()V

    .line 175
    iget-object v1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager$3;->this$0:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    # getter for: Lcom/sonymobile/home/HomeKeyboardFocusManager;->mFocusHighlight:Lcom/sonymobile/flix/components/NinePatchImage;
    invoke-static {v1}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->access$000(Lcom/sonymobile/home/HomeKeyboardFocusManager;)Lcom/sonymobile/flix/components/NinePatchImage;

    move-result-object v1

    invoke-static {v1, p3, v3, v3}, Lcom/sonymobile/flix/components/util/Layouter;->place(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;FF)V

    goto :goto_2

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 170
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
