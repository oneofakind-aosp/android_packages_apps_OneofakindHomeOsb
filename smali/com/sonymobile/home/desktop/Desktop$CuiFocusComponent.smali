.class Lcom/sonymobile/home/desktop/Desktop$CuiFocusComponent;
.super Lcom/sonymobile/flix/components/Component;
.source "Desktop.java"

# interfaces
.implements Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$Focusable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/Desktop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CuiFocusComponent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/Desktop;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/desktop/Desktop;Lcom/sonymobile/flix/components/Scene;)V
    .locals 0
    .param p2, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 818
    iput-object p1, p0, Lcom/sonymobile/home/desktop/Desktop$CuiFocusComponent;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    .line 819
    invoke-direct {p0, p2}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 820
    return-void
.end method


# virtual methods
.method public onKeyboardFocusEvent(Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;ILcom/sonymobile/flix/components/Component;I)Z
    .locals 2
    .param p1, "source"    # Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
    .param p2, "event"    # I
    .param p3, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p4, "direction"    # I

    .prologue
    .line 825
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$CuiFocusComponent;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/Desktop;->getPresenter()Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_MAIN_MENU:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->openCuiMenu(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;)V

    .line 828
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
