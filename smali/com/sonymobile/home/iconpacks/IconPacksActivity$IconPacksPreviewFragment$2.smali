.class Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$2;
.super Landroid/os/AsyncTask;
.source "IconPacksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->populateIconPackPreviewScreen(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$screen:Landroid/preference/PreferenceScreen;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;Ljava/lang/String;Landroid/preference/PreferenceScreen;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$2;->this$0:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;

    iput-object p2, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$2;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$2;->val$screen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 333
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$2;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 29
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
    .line 336
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v20, "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$2;->this$0:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 338
    .local v6, "context":Landroid/content/Context;
    if-eqz v6, :cond_2

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$2;->this$0:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 340
    .local v18, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/sonymobile/home/HomeApplication;

    .line 341
    .local v11, "homeApplication":Lcom/sonymobile/home/HomeApplication;
    invoke-virtual {v11}, Lcom/sonymobile/home/HomeApplication;->getUserSettings()Lcom/sonymobile/home/settings/UserSettings;

    move-result-object v25

    .line 342
    .local v25, "userSettings":Lcom/sonymobile/home/settings/UserSettings;
    sget-object v26, Lcom/sonymobile/home/settings/UserSettings$IconType;->DESKTOP_ICON:Lcom/sonymobile/home/settings/UserSettings$IconType;

    invoke-virtual/range {v25 .. v26}, Lcom/sonymobile/home/settings/UserSettings;->getIconSize(Lcom/sonymobile/home/settings/UserSettings$IconType;)I

    move-result v16

    .line 343
    .local v16, "iconSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$2;->val$packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/sonymobile/home/iconpacks/IconPack;->load(Landroid/content/Context;Ljava/lang/String;I)Lcom/sonymobile/home/iconpacks/IconPack;

    move-result-object v14

    .line 344
    .local v14, "iconPack":Lcom/sonymobile/home/iconpacks/IconPack;
    if-eqz v14, :cond_2

    .line 345
    invoke-virtual {v14}, Lcom/sonymobile/home/iconpacks/IconPack;->getIconMap()Ljava/util/Map;

    move-result-object v13

    .line 346
    .local v13, "iconMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/lang/String;>;"
    if-eqz v13, :cond_2

    .line 347
    invoke-static/range {v16 .. v16}, Lcom/sonymobile/home/bitmap/IconUtilities;->getIconDpi(I)I

    move-result v8

    .line 349
    .local v8, "density":I
    const/16 v21, 0x0

    .line 351
    .local v21, "res":Landroid/content/res/Resources;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$2;->val$packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 356
    :goto_0
    if-eqz v21, :cond_2

    .line 357
    new-instance v17, Landroid/content/Intent;

    const-string v26, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v17, "launcherIntent":Landroid/content/Intent;
    const-string v26, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v24

    .line 361
    .local v24, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    .line 362
    .local v23, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 363
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 364
    .local v4, "activityPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$2;->val$packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 365
    new-instance v5, Landroid/content/ComponentName;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v5, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .local v5, "componentName":Landroid/content/ComponentName;
    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 368
    .local v15, "iconResName":Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 369
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 370
    .local v22, "resId":I
    if-eqz v22, :cond_0

    .line 371
    new-instance v19, Landroid/preference/Preference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 372
    .local v19, "pref":Landroid/preference/Preference;
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 373
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 374
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 352
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "activityPackageName":Ljava/lang/String;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "iconResName":Ljava/lang/String;
    .end local v17    # "launcherIntent":Landroid/content/Intent;
    .end local v19    # "pref":Landroid/preference/Preference;
    .end local v22    # "resId":I
    .end local v23    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v24    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v9

    .line 353
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    # getter for: Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->access$500()Ljava/lang/String;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Error loading icon pack: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$2;->val$packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 379
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v17    # "launcherIntent":Landroid/content/Intent;
    .restart local v24    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$2;->this$0:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move/from16 v2, v16

    # invokes: Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->generateDefaultPreviewIconDrawable(Lcom/sonymobile/home/iconpacks/IconPack;Landroid/content/res/Resources;I)Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v0, v14, v1, v2}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->access$600(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;Lcom/sonymobile/home/iconpacks/IconPack;Landroid/content/res/Resources;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    .line 385
    .local v7, "defaultPreviewIconDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v7, :cond_2

    .line 386
    new-instance v10, Landroid/preference/Preference;

    invoke-direct {v10, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 388
    .local v10, "genericIconPref":Landroid/preference/Preference;
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 389
    const v26, 0x7f0800d9

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 391
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 397
    .end local v7    # "defaultPreviewIconDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v8    # "density":I
    .end local v10    # "genericIconPref":Landroid/preference/Preference;
    .end local v11    # "homeApplication":Lcom/sonymobile/home/HomeApplication;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "iconMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/lang/String;>;"
    .end local v14    # "iconPack":Lcom/sonymobile/home/iconpacks/IconPack;
    .end local v16    # "iconSize":I
    .end local v17    # "launcherIntent":Landroid/content/Intent;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v21    # "res":Landroid/content/res/Resources;
    .end local v24    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v25    # "userSettings":Lcom/sonymobile/home/settings/UserSettings;
    :cond_2
    return-object v20
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 333
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$2;->onPostExecute(Ljava/util/List;)V

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
    .line 402
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

    .line 403
    .local v1, "preference":Landroid/preference/Preference;
    iget-object v2, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$2;->val$screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 405
    .end local v1    # "preference":Landroid/preference/Preference;
    :cond_0
    return-void
.end method
