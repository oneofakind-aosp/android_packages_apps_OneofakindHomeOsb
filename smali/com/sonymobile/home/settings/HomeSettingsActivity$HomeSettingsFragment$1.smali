.class Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment$1;
.super Ljava/lang/Object;
.source "HomeSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment$1;->this$0:Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment$1;->this$0:Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;

    invoke-virtual {v1}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/sonymobile/home/iconpacks/IconPacksActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment$1;->this$0:Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 147
    const/4 v1, 0x1

    return v1
.end method
