.class Lcom/sonymobile/home/HomeFragment$1;
.super Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/HomeFragment;->setupSettingsListeners()V
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
    .line 358
    iput-object p1, p0, Lcom/sonymobile/home/HomeFragment$1;->this$0:Lcom/sonymobile/home/HomeFragment;

    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllowRotateChanged(Z)V
    .locals 2
    .param p1, "allowRotate"    # Z

    .prologue
    .line 376
    iget-object v1, p0, Lcom/sonymobile/home/HomeFragment$1;->this$0:Lcom/sonymobile/home/HomeFragment;

    invoke-virtual {v1}, Lcom/sonymobile/home/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 377
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/sonymobile/home/HomeFragment$1;->this$0:Lcom/sonymobile/home/HomeFragment;

    # invokes: Lcom/sonymobile/home/HomeFragment;->updateDefaultOrientation(Landroid/app/Activity;)V
    invoke-static {v1, v0}, Lcom/sonymobile/home/HomeFragment;->access$300(Lcom/sonymobile/home/HomeFragment;Landroid/app/Activity;)V

    .line 378
    iget-object v1, p0, Lcom/sonymobile/home/HomeFragment$1;->this$0:Lcom/sonymobile/home/HomeFragment;

    # getter for: Lcom/sonymobile/home/HomeFragment;->mDefaultOrientation:I
    invoke-static {v1}, Lcom/sonymobile/home/HomeFragment;->access$600(Lcom/sonymobile/home/HomeFragment;)I

    move-result v1

    # invokes: Lcom/sonymobile/home/HomeFragment;->setRequestedOrientationIfChanged(Landroid/app/Activity;I)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/HomeFragment;->access$700(Landroid/app/Activity;I)V

    .line 379
    return-void
.end method

.method public onUserSettingsLoaded()V
    .locals 3

    .prologue
    .line 361
    iget-object v2, p0, Lcom/sonymobile/home/HomeFragment$1;->this$0:Lcom/sonymobile/home/HomeFragment;

    invoke-virtual {v2}, Lcom/sonymobile/home/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 362
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lcom/sonymobile/home/HomeFragment$1;->this$0:Lcom/sonymobile/home/HomeFragment;

    # invokes: Lcom/sonymobile/home/HomeFragment;->updateDefaultOrientation(Landroid/app/Activity;)V
    invoke-static {v2, v0}, Lcom/sonymobile/home/HomeFragment;->access$300(Lcom/sonymobile/home/HomeFragment;Landroid/app/Activity;)V

    .line 365
    iget-object v2, p0, Lcom/sonymobile/home/HomeFragment$1;->this$0:Lcom/sonymobile/home/HomeFragment;

    # getter for: Lcom/sonymobile/home/HomeFragment;->mOrientationRequestReceiver:Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;
    invoke-static {v2}, Lcom/sonymobile/home/HomeFragment;->access$400(Lcom/sonymobile/home/HomeFragment;)Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/HomeFragment$OrientationRequestReceiver;->getOrientation()I

    move-result v1

    .line 366
    .local v1, "receiverOrientation":I
    iget-object v2, p0, Lcom/sonymobile/home/HomeFragment$1;->this$0:Lcom/sonymobile/home/HomeFragment;

    # getter for: Lcom/sonymobile/home/HomeFragment;->mPortraitOnlyMode:Z
    invoke-static {v2}, Lcom/sonymobile/home/HomeFragment;->access$500(Lcom/sonymobile/home/HomeFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/home/HomeFragment$1;->this$0:Lcom/sonymobile/home/HomeFragment;

    # getter for: Lcom/sonymobile/home/HomeFragment;->mDefaultOrientation:I
    invoke-static {v2}, Lcom/sonymobile/home/HomeFragment;->access$600(Lcom/sonymobile/home/HomeFragment;)I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 368
    # invokes: Lcom/sonymobile/home/HomeFragment;->setRequestedOrientationIfChanged(Landroid/app/Activity;I)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/HomeFragment;->access$700(Landroid/app/Activity;I)V

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/HomeFragment$1;->this$0:Lcom/sonymobile/home/HomeFragment;

    # getter for: Lcom/sonymobile/home/HomeFragment;->mDefaultOrientation:I
    invoke-static {v2}, Lcom/sonymobile/home/HomeFragment;->access$600(Lcom/sonymobile/home/HomeFragment;)I

    move-result v2

    # invokes: Lcom/sonymobile/home/HomeFragment;->setRequestedOrientationIfChanged(Landroid/app/Activity;I)V
    invoke-static {v0, v2}, Lcom/sonymobile/home/HomeFragment;->access$700(Landroid/app/Activity;I)V

    goto :goto_0
.end method
