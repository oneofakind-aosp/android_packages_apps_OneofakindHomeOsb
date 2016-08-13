.class Lcom/sonymobile/home/shortcut/ShortcutManager$2;
.super Ljava/lang/Object;
.source "ShortcutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/shortcut/ShortcutManager;->notifyShortcutCreated(Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;Lcom/sonymobile/home/data/ShortcutItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/shortcut/ShortcutManager;

.field final synthetic val$item:Lcom/sonymobile/home/data/ShortcutItem;

.field final synthetic val$listener:Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/shortcut/ShortcutManager;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;Lcom/sonymobile/home/data/ShortcutItem;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$2;->this$0:Lcom/sonymobile/home/shortcut/ShortcutManager;

    iput-object p2, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$2;->val$listener:Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;

    iput-object p3, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$2;->val$item:Lcom/sonymobile/home/data/ShortcutItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$2;->val$listener:Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;

    iget-object v1, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$2;->val$item:Lcom/sonymobile/home/data/ShortcutItem;

    invoke-interface {v0, v1}, Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;->onShortcutCreated(Lcom/sonymobile/home/data/ShortcutItem;)V

    .line 293
    return-void
.end method
