.class Lcom/sonymobile/home/HomeKeyboardFocusManager$1;
.super Ljava/lang/Object;
.source "HomeKeyboardFocusManager.java"

# interfaces
.implements Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;


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
    .line 48
    iput-object p1, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager$1;->this$0:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(Lcom/sonymobile/flix/components/Component;FF)V
    .locals 1
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "width"    # F
    .param p3, "height"    # F

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/home/HomeKeyboardFocusManager$1;->this$0:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    # getter for: Lcom/sonymobile/home/HomeKeyboardFocusManager;->mFocusHighlight:Lcom/sonymobile/flix/components/NinePatchImage;
    invoke-static {v0}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->access$000(Lcom/sonymobile/home/HomeKeyboardFocusManager;)Lcom/sonymobile/flix/components/NinePatchImage;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/sonymobile/flix/components/NinePatchImage;->setSize(FF)V

    .line 52
    return-void
.end method
