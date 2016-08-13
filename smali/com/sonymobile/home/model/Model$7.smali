.class Lcom/sonymobile/home/model/Model$7;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/Model;->createBadgeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/Model;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/Model;)V
    .locals 0

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/sonymobile/home/model/Model$7;->this$0:Lcom/sonymobile/home/model/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBadgeChanged(Lcom/sonymobile/home/data/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/sonymobile/home/model/Model$7;->this$0:Lcom/sonymobile/home/model/Model;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/model/Model;->contains(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/sonymobile/home/model/Model$7;->this$0:Lcom/sonymobile/home/model/Model;

    # invokes: Lcom/sonymobile/home/model/Model;->updateDynamicResource(Lcom/sonymobile/home/data/Item;)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/model/Model;->access$200(Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/data/Item;)V

    .line 1016
    iget-object v0, p0, Lcom/sonymobile/home/model/Model$7;->this$0:Lcom/sonymobile/home/model/Model;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/model/Model;->notifyOnModelItemChanged(Lcom/sonymobile/home/data/Item;)V

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/model/Model$7;->this$0:Lcom/sonymobile/home/model/Model;

    # invokes: Lcom/sonymobile/home/model/Model;->updateShortcutBadges(Lcom/sonymobile/home/data/Item;)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/model/Model;->access$300(Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/data/Item;)V

    .line 1020
    return-void
.end method
