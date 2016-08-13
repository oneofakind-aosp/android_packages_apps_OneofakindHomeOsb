.class Lcom/sonymobile/home/shortcut/ShortcutService$3;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Lcom/sonymobile/home/storage/OnWriteCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/shortcut/ShortcutService;->onHandleIntent(Landroid/os/Bundle;Lcom/sonymobile/home/desktop/DesktopModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/shortcut/ShortcutService;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/shortcut/ShortcutService;I)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sonymobile/home/shortcut/ShortcutService$3;->this$0:Lcom/sonymobile/home/shortcut/ShortcutService;

    iput p2, p0, Lcom/sonymobile/home/shortcut/ShortcutService$3;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteCompleted()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonymobile/home/shortcut/ShortcutService$3;->this$0:Lcom/sonymobile/home/shortcut/ShortcutService;

    # getter for: Lcom/sonymobile/home/shortcut/ShortcutService;->mCommandTracker:Lcom/sonymobile/home/util/ServiceCommandTracker;
    invoke-static {v0}, Lcom/sonymobile/home/shortcut/ShortcutService;->access$200(Lcom/sonymobile/home/shortcut/ShortcutService;)Lcom/sonymobile/home/util/ServiceCommandTracker;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/shortcut/ShortcutService$3;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/util/ServiceCommandTracker;->finishCommand(I)V

    .line 103
    return-void
.end method
