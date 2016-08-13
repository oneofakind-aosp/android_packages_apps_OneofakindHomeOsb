.class public Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;
.super Landroid/preference/PreferenceFragment;
.source "IconPacksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/iconpacks/IconPacksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconPacksFragment"
.end annotation


# static fields
.field private static final LAUNCHER_INTENT_DATA:[[Ljava/lang/String;


# instance fields
.field private mCurrentLauncherIndex:I

.field private mCurrentPreviewFragment:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;

.field private mPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    new-array v0, v6, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Oneofakind Home"

    aput-object v2, v1, v3

    const-string v2, "com.sonymobile.home.ICON_PACK"

    aput-object v2, v1, v4

    const-string v2, "android.intent.category.DEFAULT"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Apex"

    aput-object v2, v1, v3

    const-string v2, "android.intent.action.MAIN"

    aput-object v2, v1, v4

    const-string v2, "com.anddoes.launcher.THEME"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Adw"

    aput-object v2, v1, v3

    const-string v2, "org.adw.launcher.THEMES"

    aput-object v2, v1, v4

    const-string v2, "android.intent.category.DEFAULT"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->LAUNCHER_INTENT_DATA:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->mCurrentLauncherIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;)Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->mCurrentPreviewFragment:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;)Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;
    .param p1, "x1"    # Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->mCurrentPreviewFragment:Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksPreviewFragment;

    return-object p1
.end method

.method static synthetic access$100()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->LAUNCHER_INTENT_DATA:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;

    .prologue
    .line 137
    iget v0, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->mCurrentLauncherIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;)Landroid/preference/Preference$OnPreferenceClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->mPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method private populateIconPackScreen()V
    .locals 4

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 181
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string v3, "icon_packs_screen"

    invoke-virtual {p0, v3}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 185
    .local v2, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v2}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 187
    new-instance v1, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;

    invoke-direct {v1, p0, v0, v2}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$2;-><init>(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V

    .line 267
    .local v1, "populatePreviewTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/List<Landroid/preference/Preference;>;>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->addPreferencesFromResource(I)V

    .line 156
    new-instance v0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment$1;-><init>(Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;)V

    iput-object v0, p0, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->mPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 170
    invoke-direct {p0}, Lcom/sonymobile/home/iconpacks/IconPacksActivity$IconPacksFragment;->populateIconPackScreen()V

    .line 171
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 176
    const-string v0, "SettingsIconPackSelect"

    invoke-static {v0}, Lcom/sonymobile/home/statistics/TrackingUtil;->setScreen(Ljava/lang/String;)V

    .line 177
    return-void
.end method
