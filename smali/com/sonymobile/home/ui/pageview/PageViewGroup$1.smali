.class Lcom/sonymobile/home/ui/pageview/PageViewGroup$1;
.super Ljava/lang/Object;
.source "PageViewGroup.java"

# interfaces
.implements Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener$Recursive;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/ui/pageview/PageViewGroup;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/settings/UserSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/ui/pageview/PageViewGroup;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$1;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComponentAdded(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "addedTo"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$1;->setContainingPageView(Lcom/sonymobile/flix/components/Component;)V

    .line 211
    return-void
.end method

.method public onComponentRemoved(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "removedFrom"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 215
    instance-of v0, p1, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$Focusable;

    if-eqz v0, :cond_0

    .line 216
    const-string v0, "ContainingPageView"

    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/components/Component;->removeProperty(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_0
    return-void
.end method

.method protected setContainingPageView(Lcom/sonymobile/flix/components/Component;)V
    .locals 4
    .param p1, "root"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 221
    instance-of v3, p1, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$Focusable;

    if-eqz v3, :cond_1

    .line 222
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getParent()Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    .line 224
    .local v2, "pageView":Lcom/sonymobile/flix/components/Component;
    :goto_0
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/sonymobile/home/ui/pageview/PageView;

    if-nez v3, :cond_0

    .line 225
    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Component;->getParent()Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    goto :goto_0

    .line 228
    :cond_0
    if-eqz v2, :cond_1

    .line 229
    const-string v3, "ContainingPageView"

    invoke-virtual {p1, v3, v2}, Lcom/sonymobile/flix/components/Component;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 232
    .end local v2    # "pageView":Lcom/sonymobile/flix/components/Component;
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getNbrChildren()I

    move-result v1

    .line 233
    .local v1, "nbrChildren":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 234
    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$1;->setContainingPageView(Lcom/sonymobile/flix/components/Component;)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    :cond_2
    return-void
.end method
