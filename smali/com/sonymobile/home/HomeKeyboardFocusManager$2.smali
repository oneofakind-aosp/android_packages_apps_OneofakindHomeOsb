.class Lcom/sonymobile/home/HomeKeyboardFocusManager$2;
.super Ljava/lang/Object;
.source "HomeKeyboardFocusManager.java"

# interfaces
.implements Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener$Recursive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/HomeKeyboardFocusManager;
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
    .line 57
    iput-object p1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager$2;->this$0:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComponentAdded(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V
    .locals 4
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "addedTo"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    const/4 v3, 0x0

    .line 64
    instance-of v1, p1, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager$2;->this$0:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    # getter for: Lcom/sonymobile/home/HomeKeyboardFocusManager;->mFocusHighlight:Lcom/sonymobile/flix/components/NinePatchImage;
    invoke-static {v1}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->access$000(Lcom/sonymobile/home/HomeKeyboardFocusManager;)Lcom/sonymobile/flix/components/NinePatchImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/NinePatchImage;->removeFromScene()Z

    .line 66
    iget-object v1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager$2;->this$0:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mIsFocusingViewWrapper:Z

    .line 67
    iget-object v1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager$2;->this$0:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    # getter for: Lcom/sonymobile/home/HomeKeyboardFocusManager;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v1}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->access$100(Lcom/sonymobile/home/HomeKeyboardFocusManager;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getViewWrappersRoot()Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;

    move-result-object v0

    .line 68
    .local v0, "viewWrappersRoot":Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;
    if-eqz v0, :cond_0

    .line 69
    check-cast p1, Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;

    .end local p1    # "component":Lcom/sonymobile/flix/components/Component;
    invoke-virtual {v0, p1, v3}, Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;->focus(Lcom/sonymobile/flix/components/viewwrapper/ViewWrapper;I)Z

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager$2;->this$0:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    iput-boolean v3, v1, Lcom/sonymobile/home/HomeKeyboardFocusManager;->mIsFocusingViewWrapper:Z

    .line 74
    .end local v0    # "viewWrappersRoot":Lcom/sonymobile/flix/components/viewwrapper/ViewWrappersRoot;
    :cond_1
    return-void
.end method

.method public onComponentRemoved(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "removedFrom"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 60
    return-void
.end method
