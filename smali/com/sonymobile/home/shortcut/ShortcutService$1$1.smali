.class Lcom/sonymobile/home/shortcut/ShortcutService$1$1;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/shortcut/ShortcutService$1;->onCustomizationDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/shortcut/ShortcutService$1;

.field final synthetic val$desktopModel:Lcom/sonymobile/home/desktop/DesktopModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/shortcut/ShortcutService$1;Lcom/sonymobile/home/desktop/DesktopModel;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sonymobile/home/shortcut/ShortcutService$1$1;->this$1:Lcom/sonymobile/home/shortcut/ShortcutService$1;

    iput-object p2, p0, Lcom/sonymobile/home/shortcut/ShortcutService$1$1;->val$desktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonymobile/home/shortcut/ShortcutService$1$1;->this$1:Lcom/sonymobile/home/shortcut/ShortcutService$1;

    iget-object v0, v0, Lcom/sonymobile/home/shortcut/ShortcutService$1;->this$0:Lcom/sonymobile/home/shortcut/ShortcutService;

    iget-object v1, p0, Lcom/sonymobile/home/shortcut/ShortcutService$1$1;->this$1:Lcom/sonymobile/home/shortcut/ShortcutService$1;

    iget-object v1, v1, Lcom/sonymobile/home/shortcut/ShortcutService$1;->val$extrasBundle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/sonymobile/home/shortcut/ShortcutService$1$1;->val$desktopModel:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v3, p0, Lcom/sonymobile/home/shortcut/ShortcutService$1$1;->this$1:Lcom/sonymobile/home/shortcut/ShortcutService$1;

    iget v3, v3, Lcom/sonymobile/home/shortcut/ShortcutService$1;->val$startId:I

    # invokes: Lcom/sonymobile/home/shortcut/ShortcutService;->onHandleIntent(Landroid/os/Bundle;Lcom/sonymobile/home/desktop/DesktopModel;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/home/shortcut/ShortcutService;->access$100(Lcom/sonymobile/home/shortcut/ShortcutService;Landroid/os/Bundle;Lcom/sonymobile/home/desktop/DesktopModel;I)V

    .line 81
    return-void
.end method
