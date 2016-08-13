.class Lcom/sonymobile/home/desktop/DesktopPresenter$7;
.super Lcom/sonymobile/flix/util/Animation$Listener$Adapter;
.source "DesktopPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter;->addItemToDesktop(Lcom/sonymobile/home/data/Item;IIZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

.field final synthetic val$allowResize:Z

.field final synthetic val$item:Lcom/sonymobile/home/data/Item;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/data/Item;Z)V
    .locals 0

    .prologue
    .line 1814
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$7;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    iput-object p2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$7;->val$item:Lcom/sonymobile/home/data/Item;

    iput-boolean p3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$7;->val$allowResize:Z

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation$Listener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 4
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 1817
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$7;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$7;->val$item:Lcom/sonymobile/home/data/Item;

    iget-boolean v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$7;->val$allowResize:Z

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->addItemToDesktop(Lcom/sonymobile/home/data/Item;Z)V
    invoke-static {v1, v2, v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$3800(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/data/Item;Z)V

    .line 1818
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$7;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->removeExpandBoundsPagesIfNeeded()V
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1700(Lcom/sonymobile/home/desktop/DesktopPresenter;)V

    .line 1819
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$7;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$6400(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->enableTouch()V

    .line 1821
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$7;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$6500(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v0

    .line 1822
    .local v0, "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1824
    const/16 v1, 0x4000

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$7;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$6600(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080052

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->sendEvent(ILjava/lang/String;)V

    .line 1827
    :cond_0
    return-void
.end method
