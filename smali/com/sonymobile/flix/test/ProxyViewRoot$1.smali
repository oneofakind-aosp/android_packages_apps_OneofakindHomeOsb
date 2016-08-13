.class Lcom/sonymobile/flix/test/ProxyViewRoot$1;
.super Ljava/lang/Object;
.source "ProxyViewRoot.java"

# interfaces
.implements Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/flix/test/ProxyViewRoot;-><init>(Landroid/content/Context;Lcom/sonymobile/flix/components/Scene;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/flix/test/ProxyViewRoot;


# direct methods
.method constructor <init>(Lcom/sonymobile/flix/test/ProxyViewRoot;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonymobile/flix/test/ProxyViewRoot$1;->this$0:Lcom/sonymobile/flix/test/ProxyViewRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComponentAdded(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "addedTo"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/flix/test/ProxyViewRoot$1;->this$0:Lcom/sonymobile/flix/test/ProxyViewRoot;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/test/ProxyViewRoot;->addProxyViewsForTree(Lcom/sonymobile/flix/components/Component;)V

    .line 72
    return-void
.end method

.method public onComponentRemoved(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "removedFrom"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/flix/test/ProxyViewRoot$1;->this$0:Lcom/sonymobile/flix/test/ProxyViewRoot;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/test/ProxyViewRoot;->removeProxyViewsForTree(Lcom/sonymobile/flix/components/Component;)V

    .line 77
    return-void
.end method
