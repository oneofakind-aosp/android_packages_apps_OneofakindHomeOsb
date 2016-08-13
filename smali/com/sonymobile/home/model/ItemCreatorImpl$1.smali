.class Lcom/sonymobile/home/model/ItemCreatorImpl$1;
.super Ljava/lang/Object;
.source "ItemCreatorImpl.java"

# interfaces
.implements Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/ItemCreatorImpl;->create(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/ItemCreatorImpl;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$1;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    iput-object p2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$1;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShortcutCreated(Lcom/sonymobile/home/data/ShortcutItem;)V
    .locals 4
    .param p1, "newItem"    # Lcom/sonymobile/home/data/ShortcutItem;

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$1;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    iget-object v1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$1;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$1;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    # invokes: Lcom/sonymobile/home/model/ItemCreatorImpl;->notifyListener(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V
    invoke-static {v0, v1, v2, p1}, Lcom/sonymobile/home/model/ItemCreatorImpl;->access$000(Lcom/sonymobile/home/model/ItemCreatorImpl;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$1;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    iget-object v1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$1;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$1;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    const/4 v3, 0x0

    # invokes: Lcom/sonymobile/home/model/ItemCreatorImpl;->notifyFailure(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/home/model/ItemCreatorImpl;->access$100(Lcom/sonymobile/home/model/ItemCreatorImpl;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;I)V

    goto :goto_0
.end method

.method public onShortcutFailed()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$1;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    iget-object v1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$1;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$1;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    const/4 v3, 0x0

    # invokes: Lcom/sonymobile/home/model/ItemCreatorImpl;->notifyFailure(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/home/model/ItemCreatorImpl;->access$100(Lcom/sonymobile/home/model/ItemCreatorImpl;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;I)V

    .line 101
    return-void
.end method
