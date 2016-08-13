.class Lcom/sonymobile/home/cui/CuiGridView$1;
.super Ljava/lang/Object;
.source "CuiGridView.java"

# interfaces
.implements Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener$Recursive;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/cui/CuiGridView;-><init>(Lcom/sonymobile/flix/components/Scene;ZZZZLcom/sonymobile/flix/components/Component;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/cui/CuiGridView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/cui/CuiGridView;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridView$1;->this$0:Lcom/sonymobile/home/cui/CuiGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComponentAdded(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V
    .locals 2
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "addedTo"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 140
    instance-of v0, p1, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$Focusable;

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "KeyboardFocusGroup"

    const-string v1, "CuiGridViewGroup"

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/flix/components/Component;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    :cond_0
    return-void
.end method

.method public onComponentRemoved(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "removedFrom"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 148
    instance-of v0, p1, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$Focusable;

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "KeyboardFocusGroup"

    invoke-virtual {p1, v0}, Lcom/sonymobile/flix/components/Component;->removeProperty(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    return-void
.end method
