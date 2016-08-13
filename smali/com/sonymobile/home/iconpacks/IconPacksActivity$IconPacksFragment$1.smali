.class Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$1;
.super Ljava/lang/Object;
.source "IconPacksActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$1;->this$0:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 159
    iget-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$1;->this$0:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;

    new-instance v3, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;

    invoke-direct {v3}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;-><init>()V

    # setter for: Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->mCurrentPreviewFragment:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;
    invoke-static {v2, v3}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->access$002(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;)Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;

    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 161
    .local v0, "arguments":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$1;->this$0:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;

    # getter for: Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->mCurrentPreviewFragment:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;
    invoke-static {v2}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->access$000(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;)Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 164
    iget-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$1;->this$0:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;

    invoke-virtual {v2}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x1020002

    iget-object v4, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$1;->this$0:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;

    # getter for: Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->mCurrentPreviewFragment:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;
    invoke-static {v4}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->access$000(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;)Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 166
    const/4 v2, 0x1

    return v2
.end method
