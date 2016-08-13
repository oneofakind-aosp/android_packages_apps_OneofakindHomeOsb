.class Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$2;
.super Ljava/lang/Object;
.source "KeyboardFocusManager.java"

# interfaces
.implements Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->enableAutoAddFocusables(Lcom/sonymobile/flix/components/Component;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$2;->this$0:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComponentAdded(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "addedTo"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$2;->this$0:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->addFocusables(Lcom/sonymobile/flix/components/Component;)V

    .line 244
    return-void
.end method

.method public onComponentRemoved(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "removedFrom"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$2;->this$0:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->removeFocusables(Lcom/sonymobile/flix/components/Component;)V

    .line 249
    return-void
.end method
