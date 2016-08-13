.class public Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;
.super Landroid/preference/PreferenceFragment;
.source "IconPacksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/iconpacks/IconPacksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconPacksPreviewFragment"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 273
    const-class v0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;

    invoke-static {v0}, Lcom/sonymobile/home/util/HomeDebug;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;Lcom/sonymobile/home/iconpacks/IconPack;Landroid/content/res/Resources;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;
    .param p1, "x1"    # Lcom/sonymobile/home/iconpacks/IconPack;
    .param p2, "x2"    # Landroid/content/res/Resources;
    .param p3, "x3"    # I

    .prologue
    .line 271
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->generateDefaultPreviewIconDrawable(Lcom/sonymobile/home/iconpacks/IconPack;Landroid/content/res/Resources;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private generateDefaultPreviewIconDrawable(Lcom/sonymobile/home/iconpacks/IconPack;Landroid/content/res/Resources;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p1, "iconPack"    # Lcom/sonymobile/home/iconpacks/IconPack;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "iconSize"    # I

    .prologue
    .line 414
    invoke-virtual {p1}, Lcom/sonymobile/home/iconpacks/IconPack;->supportsCustomIcons()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 416
    .local v1, "emptyBitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-virtual {p1, v1, p3, v2}, Lcom/sonymobile/home/iconpacks/IconPack;->generateIcon(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 417
    .local v0, "defaultPreviewIconBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 419
    .end local v0    # "defaultPreviewIconBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "emptyBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private populateIconPackPreviewScreen(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string v2, "icon_packs_screen"

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 330
    .local v1, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 332
    new-instance v0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$2;

    invoke-direct {v0, p0, p1, v1}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$2;-><init>(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;Ljava/lang/String;Landroid/preference/PreferenceScreen;)V

    .line 408
    .local v0, "populatePreviewTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/List<Landroid/preference/Preference;>;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 409
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 280
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 281
    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->addPreferencesFromResource(I)V

    .line 283
    if-eqz p1, :cond_0

    .line 284
    const-string v1, "package_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->mPackageName:Ljava/lang/String;

    .line 291
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->populateIconPackPreviewScreen(Ljava/lang/String;)V

    .line 292
    return-void

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 287
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->mPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 302
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 303
    .local v2, "view":Landroid/widget/LinearLayout;
    if-eqz v2, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 305
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 306
    new-instance v1, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 307
    .local v1, "applyButton":Landroid/widget/Button;
    const v3, 0x7f0800d8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 308
    new-instance v3, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment$1;-><init>(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;Landroid/app/Activity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 319
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "applyButton":Landroid/widget/Button;
    :cond_0
    return-object v2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 325
    const-string v0, "SettingsIconPackPreview"

    invoke-static {v0}, Lcom/sonymobile/home/statistics/TrackingUtil;->setScreen(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 296
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 297
    const-string v0, "package_name"

    iget-object v1, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void
.end method
