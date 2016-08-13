.class Lcom/sonymobile/home/HomeActivity$1;
.super Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/HomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/HomeActivity;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sonymobile/home/HomeActivity$1;->this$0:Lcom/sonymobile/home/HomeActivity;

    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onHomeModeChanged(Z)V
    .locals 2
    .param p1, "automaticDesktopMode"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/home/HomeActivity$1;->this$0:Lcom/sonymobile/home/HomeActivity;

    # getter for: Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;
    invoke-static {v0}, Lcom/sonymobile/home/HomeActivity;->access$000(Lcom/sonymobile/home/HomeActivity;)Lcom/sonymobile/home/HomeFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sonymobile/home/HomeActivity$1;->this$0:Lcom/sonymobile/home/HomeActivity;

    # getter for: Lcom/sonymobile/home/HomeActivity;->mHomeFragment:Lcom/sonymobile/home/HomeFragment;
    invoke-static {v0}, Lcom/sonymobile/home/HomeActivity;->access$000(Lcom/sonymobile/home/HomeActivity;)Lcom/sonymobile/home/HomeFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/HomeFragment;->setShouldRecreateFragment(Z)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/HomeActivity$1;->this$0:Lcom/sonymobile/home/HomeActivity;

    invoke-virtual {v0}, Lcom/sonymobile/home/HomeActivity;->recreate()V

    .line 80
    return-void
.end method
