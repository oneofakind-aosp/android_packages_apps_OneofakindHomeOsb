.class Lcom/sonymobile/home/shortcut/ShortcutManager$ActivityResultHandler;
.super Ljava/lang/Object;
.source "ShortcutManager.java"

# interfaces
.implements Lcom/sonymobile/home/ActivityResultHandler$ActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/shortcut/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityResultHandler"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;

.field final synthetic this$0:Lcom/sonymobile/home/shortcut/ShortcutManager;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/shortcut/ShortcutManager;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;Landroid/os/Handler;)V
    .locals 0
    .param p2, "listener"    # Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$ActivityResultHandler;->this$0:Lcom/sonymobile/home/shortcut/ShortcutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$ActivityResultHandler;->mListener:Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;

    .line 100
    iput-object p3, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$ActivityResultHandler;->mHandler:Landroid/os/Handler;

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/shortcut/ShortcutManager;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/shortcut/ShortcutManager;
    .param p2, "x1"    # Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;
    .param p3, "x2"    # Landroid/os/Handler;
    .param p4, "x3"    # Lcom/sonymobile/home/shortcut/ShortcutManager$1;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/shortcut/ShortcutManager$ActivityResultHandler;-><init>(Lcom/sonymobile/home/shortcut/ShortcutManager;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    if-eqz p3, :cond_0

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$ActivityResultHandler;->this$0:Lcom/sonymobile/home/shortcut/ShortcutManager;

    iget-object v3, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$ActivityResultHandler;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$ActivityResultHandler;->mListener:Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;

    # invokes: Lcom/sonymobile/home/shortcut/ShortcutManager;->notifyShortcutFailed(Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;)V
    invoke-static {v2, v3, v4}, Lcom/sonymobile/home/shortcut/ShortcutManager;->access$000(Lcom/sonymobile/home/shortcut/ShortcutManager;Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;)V

    .line 124
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 112
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 113
    iget-object v2, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$ActivityResultHandler;->this$0:Lcom/sonymobile/home/shortcut/ShortcutManager;

    iget-object v3, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$ActivityResultHandler;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$ActivityResultHandler;->mListener:Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;

    # invokes: Lcom/sonymobile/home/shortcut/ShortcutManager;->notifyShortcutFailed(Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;)V
    invoke-static {v2, v3, v4}, Lcom/sonymobile/home/shortcut/ShortcutManager;->access$000(Lcom/sonymobile/home/shortcut/ShortcutManager;Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;)V

    goto :goto_0

    .line 117
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$ActivityResultHandler;->this$0:Lcom/sonymobile/home/shortcut/ShortcutManager;

    # invokes: Lcom/sonymobile/home/shortcut/ShortcutManager;->createShortcutItemFromIntentExtras(Landroid/os/Bundle;)Lcom/sonymobile/home/data/ShortcutItem;
    invoke-static {v2, v0}, Lcom/sonymobile/home/shortcut/ShortcutManager;->access$100(Lcom/sonymobile/home/shortcut/ShortcutManager;Landroid/os/Bundle;)Lcom/sonymobile/home/data/ShortcutItem;

    move-result-object v1

    .line 119
    .local v1, "item":Lcom/sonymobile/home/data/ShortcutItem;
    if-eqz v1, :cond_3

    .line 120
    iget-object v2, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$ActivityResultHandler;->this$0:Lcom/sonymobile/home/shortcut/ShortcutManager;

    iget-object v3, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$ActivityResultHandler;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$ActivityResultHandler;->mListener:Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;

    # invokes: Lcom/sonymobile/home/shortcut/ShortcutManager;->notifyShortcutCreated(Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;Lcom/sonymobile/home/data/ShortcutItem;)V
    invoke-static {v2, v3, v4, v1}, Lcom/sonymobile/home/shortcut/ShortcutManager;->access$200(Lcom/sonymobile/home/shortcut/ShortcutManager;Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;Lcom/sonymobile/home/data/ShortcutItem;)V

    goto :goto_0

    .line 122
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$ActivityResultHandler;->this$0:Lcom/sonymobile/home/shortcut/ShortcutManager;

    iget-object v3, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$ActivityResultHandler;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sonymobile/home/shortcut/ShortcutManager$ActivityResultHandler;->mListener:Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;

    # invokes: Lcom/sonymobile/home/shortcut/ShortcutManager;->notifyShortcutFailed(Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;)V
    invoke-static {v2, v3, v4}, Lcom/sonymobile/home/shortcut/ShortcutManager;->access$000(Lcom/sonymobile/home/shortcut/ShortcutManager;Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;)V

    goto :goto_0
.end method
