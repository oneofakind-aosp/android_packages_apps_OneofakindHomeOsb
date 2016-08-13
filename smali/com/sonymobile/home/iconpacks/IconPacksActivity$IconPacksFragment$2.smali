.class Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;
.super Landroid/os/AsyncTask;
.source "IconPacksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->populateIconPackScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Landroid/preference/Preference;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$screen:Landroid/preference/PreferenceScreen;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;->this$0:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;

    iput-object p2, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;->val$screen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 188
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 14
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v5, Landroid/content/Intent;

    # getter for: Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->LAUNCHER_INTENT_DATA:[[Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->access$100()[[Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;->this$0:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;

    # getter for: Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->mCurrentLauncherIndex:I
    invoke-static {v12}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->access$200(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;)I

    move-result v12

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v5, "intent":Landroid/content/Intent;
    # getter for: Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->LAUNCHER_INTENT_DATA:[[Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->access$100()[[Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;->this$0:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;

    # getter for: Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->mCurrentLauncherIndex:I
    invoke-static {v12}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->access$200(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;)I

    move-result v12

    aget-object v11, v11, v12

    const/4 v12, 0x2

    aget-object v11, v11, v12

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    iget-object v11, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 197
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    invoke-virtual {v6, v5, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 198
    .local v3, "iconPacks":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v11, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 200
    .local v9, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v11, "current_icon_pack"

    const/4 v12, 0x0

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "activeIconPackPackageName":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v8, "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 205
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v4, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 206
    .local v10, "title":Ljava/lang/CharSequence;
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 207
    .local v0, "activeIconPack":Z
    new-instance v7, Landroid/preference/Preference;

    iget-object v11, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v7, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 208
    .local v7, "preference":Landroid/preference/Preference;
    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 211
    if-eqz v0, :cond_0

    .line 212
    const v11, 0x7f0800d7

    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setSummary(I)V

    .line 214
    :cond_0
    invoke-virtual {v4, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object v11, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;->this$0:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;

    # getter for: Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->mPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;
    invoke-static {v11}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->access$300(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 216
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    .end local v0    # "activeIconPack":Z
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    .end local v7    # "preference":Landroid/preference/Preference;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 221
    new-instance v7, Landroid/preference/Preference;

    iget-object v11, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v7, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 222
    .restart local v7    # "preference":Landroid/preference/Preference;
    const v11, 0x7f0800db

    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 223
    const v11, 0x7f0800da

    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setSummary(I)V

    .line 224
    new-instance v11, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2$1;

    invoke-direct {v11, p0}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2$1;-><init>(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;)V

    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 234
    const/4 v11, 0x0

    invoke-virtual {v8, v11, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 256
    return-object v8
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 188
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 262
    .local v1, "preference":Landroid/preference/Preference;
    iget-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;->val$screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 264
    .end local v1    # "preference":Landroid/preference/Preference;
    :cond_0
    return-void
.end method
