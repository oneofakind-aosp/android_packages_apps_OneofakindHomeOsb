.class Lcom/sonymobile/home/model/ItemCreatorImpl$6;
.super Ljava/lang/Object;
.source "ItemCreatorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/ItemCreatorImpl;->copy(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$item:Lcom/sonymobile/home/data/Item;

.field final synthetic val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/ItemCreatorImpl;Lcom/sonymobile/home/data/Item;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$6;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    iput-object p2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$6;->val$item:Lcom/sonymobile/home/data/Item;

    iput-object p3, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$6;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$6;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 287
    new-instance v0, Lcom/sonymobile/home/data/ShortcutItem;

    iget-object v1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$6;->val$item:Lcom/sonymobile/home/data/Item;

    check-cast v1, Lcom/sonymobile/home/data/ShortcutItem;

    invoke-direct {v0, v1}, Lcom/sonymobile/home/data/ShortcutItem;-><init>(Lcom/sonymobile/home/data/ShortcutItem;)V

    .line 289
    .local v0, "newItem":Lcom/sonymobile/home/data/ShortcutItem;
    iget-object v1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$6;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    iget-object v2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$6;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$6;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    # invokes: Lcom/sonymobile/home/model/ItemCreatorImpl;->notifyListener(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V
    invoke-static {v1, v2, v3, v0}, Lcom/sonymobile/home/model/ItemCreatorImpl;->access$000(Lcom/sonymobile/home/model/ItemCreatorImpl;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V

    .line 290
    return-void
.end method
