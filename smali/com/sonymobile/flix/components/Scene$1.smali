.class Lcom/sonymobile/flix/components/Scene$1;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener$Recursive;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/flix/components/Scene;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/flix/components/Scene;


# direct methods
.method constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sonymobile/flix/components/Scene$1;->this$0:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComponentAdded(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "addedTo"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene$1;->this$0:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/components/Component;->onAddedToScene(Lcom/sonymobile/flix/components/Scene;)V

    .line 153
    return-void
.end method

.method public onComponentRemoved(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "removedFrom"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene$1;->this$0:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/components/Component;->onRemovedFromScene(Lcom/sonymobile/flix/components/Scene;)V

    .line 158
    return-void
.end method
