.class Lcom/sonymobile/home/HomeFragment$2;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/sonymobile/home/HomeApplication$CustomizationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/HomeFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/HomeFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/HomeFragment;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/sonymobile/home/HomeFragment$2;->this$0:Lcom/sonymobile/home/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomizationDone()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment$2;->this$0:Lcom/sonymobile/home/HomeFragment;

    # invokes: Lcom/sonymobile/home/HomeFragment;->isActiveInstance()Z
    invoke-static {v0}, Lcom/sonymobile/home/HomeFragment;->access$800(Lcom/sonymobile/home/HomeFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment$2;->this$0:Lcom/sonymobile/home/HomeFragment;

    # getter for: Lcom/sonymobile/home/HomeFragment;->mIsRemoved:Z
    invoke-static {v0}, Lcom/sonymobile/home/HomeFragment;->access$900(Lcom/sonymobile/home/HomeFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment$2;->this$0:Lcom/sonymobile/home/HomeFragment;

    invoke-virtual {v0}, Lcom/sonymobile/home/HomeFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment$2;->this$0:Lcom/sonymobile/home/HomeFragment;

    # invokes: Lcom/sonymobile/home/HomeFragment;->showMainView()V
    invoke-static {v0}, Lcom/sonymobile/home/HomeFragment;->access$1000(Lcom/sonymobile/home/HomeFragment;)V

    .line 460
    :cond_0
    return-void
.end method
