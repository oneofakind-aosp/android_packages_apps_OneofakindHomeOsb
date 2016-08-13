.class Lcom/sonymobile/home/shortcut/ShortcutService$1;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Lcom/sonymobile/home/HomeApplication$CustomizationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/shortcut/ShortcutService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/shortcut/ShortcutService;

.field final synthetic val$extrasBundle:Landroid/os/Bundle;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/shortcut/ShortcutService;Landroid/os/Bundle;I)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonymobile/home/shortcut/ShortcutService$1;->this$0:Lcom/sonymobile/home/shortcut/ShortcutService;

    iput-object p2, p0, Lcom/sonymobile/home/shortcut/ShortcutService$1;->val$extrasBundle:Landroid/os/Bundle;

    iput p3, p0, Lcom/sonymobile/home/shortcut/ShortcutService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomizationDone()V
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lcom/sonymobile/home/shortcut/ShortcutService$1;->this$0:Lcom/sonymobile/home/shortcut/ShortcutService;

    # getter for: Lcom/sonymobile/home/shortcut/ShortcutService;->mHomeApplication:Lcom/sonymobile/home/HomeApplication;
    invoke-static {v1}, Lcom/sonymobile/home/shortcut/ShortcutService;->access$000(Lcom/sonymobile/home/shortcut/ShortcutService;)Lcom/sonymobile/home/HomeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/HomeApplication;->getDesktopModel()Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v0

    .line 77
    .local v0, "desktopModel":Lcom/sonymobile/home/desktop/DesktopModel;
    new-instance v1, Lcom/sonymobile/home/shortcut/ShortcutService$1$1;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/home/shortcut/ShortcutService$1$1;-><init>(Lcom/sonymobile/home/shortcut/ShortcutService$1;Lcom/sonymobile/home/desktop/DesktopModel;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopModel;->addOnLoadedRunnable(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method
