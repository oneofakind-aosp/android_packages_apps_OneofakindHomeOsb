.class Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$1;
.super Ljava/lang/Object;
.source "KeyboardFocusManager.java"

# interfaces
.implements Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$FocusHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;-><init>()V
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
    .line 137
    iput-object p1, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$1;->this$0:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardFocusEvent(Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;ILcom/sonymobile/flix/components/Component;I)V
    .locals 1
    .param p1, "source"    # Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;
    .param p2, "event"    # I
    .param p3, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p4, "direction"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager$1;->this$0:Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;

    invoke-virtual {v0, p2, p3, p4}, Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;->handleEventDefault(ILcom/sonymobile/flix/components/Component;I)V

    .line 142
    return-void
.end method
