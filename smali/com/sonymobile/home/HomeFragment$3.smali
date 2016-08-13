.class Lcom/sonymobile/home/HomeFragment$3;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/HomeFragment;->onHomeButtonPressed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/HomeFragment;

.field final synthetic val$isHomeScreenInFront:Z


# direct methods
.method constructor <init>(Lcom/sonymobile/home/HomeFragment;Z)V
    .locals 0

    .prologue
    .line 810
    iput-object p1, p0, Lcom/sonymobile/home/HomeFragment$3;->this$0:Lcom/sonymobile/home/HomeFragment;

    iput-boolean p2, p0, Lcom/sonymobile/home/HomeFragment$3;->val$isHomeScreenInFront:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 814
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment$3;->this$0:Lcom/sonymobile/home/HomeFragment;

    # getter for: Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;
    invoke-static {v0}, Lcom/sonymobile/home/HomeFragment;->access$1100(Lcom/sonymobile/home/HomeFragment;)Lcom/sonymobile/home/MainView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 815
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment$3;->this$0:Lcom/sonymobile/home/HomeFragment;

    # getter for: Lcom/sonymobile/home/HomeFragment;->mCurrentDialogFragment:Lcom/sonymobile/home/HomeDialogFragment;
    invoke-static {v0}, Lcom/sonymobile/home/HomeFragment;->access$1200(Lcom/sonymobile/home/HomeFragment;)Lcom/sonymobile/home/HomeDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment$3;->this$0:Lcom/sonymobile/home/HomeFragment;

    # getter for: Lcom/sonymobile/home/HomeFragment;->mCurrentDialogFragment:Lcom/sonymobile/home/HomeDialogFragment;
    invoke-static {v0}, Lcom/sonymobile/home/HomeFragment;->access$1200(Lcom/sonymobile/home/HomeFragment;)Lcom/sonymobile/home/HomeDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/HomeDialogFragment;->cancelDialog()V

    .line 817
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment$3;->this$0:Lcom/sonymobile/home/HomeFragment;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/home/HomeFragment;->mCurrentDialogFragment:Lcom/sonymobile/home/HomeDialogFragment;
    invoke-static {v0, v1}, Lcom/sonymobile/home/HomeFragment;->access$1202(Lcom/sonymobile/home/HomeFragment;Lcom/sonymobile/home/HomeDialogFragment;)Lcom/sonymobile/home/HomeDialogFragment;

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment$3;->this$0:Lcom/sonymobile/home/HomeFragment;

    # getter for: Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;
    invoke-static {v0}, Lcom/sonymobile/home/HomeFragment;->access$1100(Lcom/sonymobile/home/HomeFragment;)Lcom/sonymobile/home/MainView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/home/HomeFragment$3;->val$isHomeScreenInFront:Z

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/MainView;->onHomeButtonPressed(Z)V

    .line 821
    :cond_1
    return-void
.end method
