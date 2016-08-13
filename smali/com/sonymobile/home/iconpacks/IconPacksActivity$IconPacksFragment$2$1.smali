.class Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2$1;
.super Ljava/lang/Object;
.source "IconPacksActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;->doInBackground([Ljava/lang/Void;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2$1;->this$1:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2$1;->this$1:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;

    iget-object v0, v0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/iconpacks/IconPacksUtility;->setIconPackPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 228
    iget-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2$1;->this$1:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;

    iget-object v0, v0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;->val$activity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 229
    iget-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2$1;->this$1:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;

    iget-object v0, v0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 230
    const/4 v0, 0x1

    return v0
.end method
