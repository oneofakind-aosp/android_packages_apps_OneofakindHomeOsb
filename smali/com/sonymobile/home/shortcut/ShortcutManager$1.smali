.class Lcom/sonymobile/home/shortcut/ShortcutManager$1;
.super Ljava/lang/Object;
.source "ShortcutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/shortcut/ShortcutManager;->notifyShortcutFailed(Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/shortcut/ShortcutManager;

.field final synthetic val$listener:Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/shortcut/ShortcutManager;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$1;->this$0:Lcom/sonymobile/home/shortcut/ShortcutManager;

    iput-object p2, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$1;->val$listener:Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$1;->val$listener:Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;

    invoke-interface {v0}, Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;->onShortcutFailed()V

    .line 274
    return-void
.end method
