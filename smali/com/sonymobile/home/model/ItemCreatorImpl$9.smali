.class Lcom/sonymobile/home/model/ItemCreatorImpl$9;
.super Ljava/lang/Object;
.source "ItemCreatorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/ItemCreatorImpl;->notifyFailure(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

.field final synthetic val$errorResourceId:I

.field final synthetic val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/ItemCreatorImpl;Lcom/sonymobile/home/data/ItemCreator$ResultListener;I)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$9;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    iput-object p2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$9;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    iput p3, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$9;->val$errorResourceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$9;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    iget v1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$9;->val$errorResourceId:I

    invoke-interface {v0, v1}, Lcom/sonymobile/home/data/ItemCreator$ResultListener;->onFailure(I)V

    .line 352
    return-void
.end method
