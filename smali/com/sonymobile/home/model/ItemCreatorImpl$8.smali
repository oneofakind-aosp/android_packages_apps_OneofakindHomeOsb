.class Lcom/sonymobile/home/model/ItemCreatorImpl$8;
.super Ljava/lang/Object;
.source "ItemCreatorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/ItemCreatorImpl;->notifyListener(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

.field final synthetic val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

.field final synthetic val$newItem:Lcom/sonymobile/home/data/Item;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/ItemCreatorImpl;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$8;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    iput-object p2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$8;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    iput-object p3, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$8;->val$newItem:Lcom/sonymobile/home/data/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$8;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    iget-object v1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$8;->val$newItem:Lcom/sonymobile/home/data/Item;

    invoke-interface {v0, v1}, Lcom/sonymobile/home/data/ItemCreator$ResultListener;->onResult(Lcom/sonymobile/home/data/Item;)V

    .line 342
    return-void
.end method
