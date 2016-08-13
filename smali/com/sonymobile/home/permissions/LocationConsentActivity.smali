.class public Lcom/sonymobile/home/permissions/LocationConsentActivity;
.super Landroid/app/Activity;
.source "LocationConsentActivity.java"

# interfaces
.implements Lcom/sonymobile/home/HomeDialogFragment$HomeDialogFragmentEventListener;


# static fields
.field private static final PERMISSIONS:[Ljava/lang/String;


# instance fields
.field private mShowPermissionDeniedForever:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/home/permissions/LocationConsentActivity;->PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private checkLocationServices()V
    .locals 1

    .prologue
    .line 83
    invoke-static {p0}, Lcom/sonymobile/home/search/suggest/LocationUtil;->isPositioningServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->doFinish(Z)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->showLocationSettingsDialog()V

    goto :goto_0
.end method

.method private checkLocationStatus()V
    .locals 1

    .prologue
    .line 70
    invoke-static {p0}, Lcom/sonymobile/home/search/suggest/LocationUtil;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    iget-boolean v0, p0, Lcom/sonymobile/home/permissions/LocationConsentActivity;->mShowPermissionDeniedForever:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->permissionDeniedForeverAndEver()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/permissions/LocationConsentActivity;->mShowPermissionDeniedForever:Z

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->doPermissionRequest()V

    .line 80
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-static {p0}, Lcom/sonymobile/home/search/suggest/LocationUtil;->isPositioningServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    invoke-direct {p0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->showLocationSettingsDialog()V

    goto :goto_0

    .line 78
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->doFinish(Z)V

    goto :goto_0
.end method

.method private doFinish(Z)V
    .locals 1
    .param p1, "locationAccepted"    # Z

    .prologue
    .line 273
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 274
    .local v0, "result":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->setResult(I)V

    .line 275
    invoke-virtual {p0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->finish()V

    .line 276
    return-void

    .line 273
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doPermissionRequest()V
    .locals 2

    .prologue
    .line 188
    sget-object v0, Lcom/sonymobile/home/permissions/LocationConsentActivity;->PERMISSIONS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 189
    return-void
.end method

.method private initOrientation()V
    .locals 4

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_requested_orientation"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 64
    .local v0, "orientation":I
    invoke-virtual {p0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->getRequestedOrientation()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 65
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->setRequestedOrientation(I)V

    .line 67
    :cond_0
    return-void
.end method

.method private initPermissionDeniedFlag()V
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_show_permission_denied"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/permissions/LocationConsentActivity;->mShowPermissionDeniedForever:Z

    .line 57
    return-void
.end method

.method private onDialogConfirmed(I)V
    .locals 4
    .param p1, "requestCode"    # I

    .prologue
    .line 221
    packed-switch p1, :pswitch_data_0

    .line 242
    :goto_0
    return-void

    .line 224
    :pswitch_0
    const-string v1, "EnableLocationSettingsEntered"

    invoke-static {v1}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->trackEnableLocationAction(Ljava/lang/String;)V

    .line 226
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 232
    :pswitch_1
    const-string v1, "EnableLocationPermissionSettingsEntered"

    invoke-static {v1}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->trackEnableLocationAction(Ljava/lang/String;)V

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 237
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onDialogDenied(I)V
    .locals 2
    .param p1, "requestCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 250
    packed-switch p1, :pswitch_data_0

    .line 265
    :goto_0
    return-void

    .line 253
    :pswitch_0
    const-string v0, "EnableLocationSettingsDenied"

    invoke-static {v0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->trackEnableLocationAction(Ljava/lang/String;)V

    .line 254
    invoke-direct {p0, v1}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->doFinish(Z)V

    goto :goto_0

    .line 258
    :pswitch_1
    const-string v0, "EnableLocationPermissionSettingsDenied"

    invoke-static {v0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->trackEnableLocationAction(Ljava/lang/String;)V

    .line 260
    invoke-direct {p0, v1}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->doFinish(Z)V

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private permissionDeniedForeverAndEver()Z
    .locals 1

    .prologue
    .line 181
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showLocationSettingsDialog()V
    .locals 7

    .prologue
    .line 94
    const v5, 0x7f080045

    invoke-virtual {p0, v5}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "title":Ljava/lang/String;
    const v5, 0x7f080044

    invoke-virtual {p0, v5}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "message":Ljava/lang/String;
    const v5, 0x7f0800ac

    invoke-virtual {p0, v5}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "positiveText":Ljava/lang/String;
    const v5, 0x7f0800cb

    invoke-virtual {p0, v5}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "negativeText":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-static {v5, v4, v1, v3, v2}, Lcom/sonymobile/home/permissions/ConfirmationDialog;->newInstance(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/home/permissions/ConfirmationDialog;

    move-result-object v0

    .line 101
    .local v0, "dialog":Lcom/sonymobile/home/permissions/ConfirmationDialog;
    invoke-virtual {p0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/sonymobile/home/permissions/ConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private showPermissionDeniedDialog()V
    .locals 10

    .prologue
    .line 109
    const v7, 0x7f08007e

    invoke-virtual {p0, v7}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "appName":Ljava/lang/String;
    const v7, 0x7f080046

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, "title":Ljava/lang/String;
    const v7, 0x7f080047

    invoke-virtual {p0, v7}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "rationale":Ljava/lang/String;
    const-string v7, "android.permission-group.LOCATION"

    invoke-static {p0, v0, v7, v5}, Lcom/sonymobile/home/permissions/PermissionManager;->generatePermissionDeniedMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v2

    .line 114
    .local v2, "message":Landroid/text/Spannable;
    const v7, 0x7f0800ac

    invoke-virtual {p0, v7}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "positiveButton":Ljava/lang/String;
    const v7, 0x7f0800cb

    invoke-virtual {p0, v7}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "negativeButton":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-static {v7, v6, v2, v4, v3}, Lcom/sonymobile/home/permissions/ConfirmationDialog;->newInstance(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/home/permissions/ConfirmationDialog;

    move-result-object v1

    .line 120
    .local v1, "dialog":Lcom/sonymobile/home/permissions/ConfirmationDialog;
    invoke-virtual {p0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/sonymobile/home/permissions/ConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method private static trackEnableLocationAction(Ljava/lang/String;)V
    .locals 4
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 192
    const-string v0, "OnlineSearchEnableLocation"

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v0, p0, v1, v2, v3}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 193
    return-void
.end method

.method private trackPermissionDenied()V
    .locals 1

    .prologue
    .line 168
    const-string v0, "EnableLocationPermissionDenied"

    invoke-static {v0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->trackEnableLocationAction(Ljava/lang/String;)V

    .line 169
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 126
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 127
    invoke-static {p0}, Lcom/sonymobile/home/search/suggest/LocationUtil;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->checkLocationServices()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->doFinish(Z)V

    goto :goto_0

    .line 132
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 133
    invoke-static {p0}, Lcom/sonymobile/home/search/suggest/LocationUtil;->isPositioningServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 134
    .local v0, "success":Z
    invoke-direct {p0, v0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->doFinish(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-direct {p0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->initPermissionDeniedFlag()V

    .line 50
    invoke-direct {p0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->initOrientation()V

    .line 51
    invoke-direct {p0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->checkLocationStatus()V

    .line 52
    return-void
.end method

.method public onDialogButtonClicked(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 197
    const-string v1, "button"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 198
    .local v0, "whichButton":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 199
    invoke-direct {p0, p1}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->onDialogConfirmed(I)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->onDialogDenied(I)V

    goto :goto_0
.end method

.method public onDialogFragmentCreated(Lcom/sonymobile/home/HomeDialogFragment;)V
    .locals 0
    .param p1, "dialogFragment"    # Lcom/sonymobile/home/HomeDialogFragment;

    .prologue
    .line 208
    return-void
.end method

.method public onDialogFragmentDestroyed(Lcom/sonymobile/home/HomeDialogFragment;)V
    .locals 0
    .param p1, "dialogFragment"    # Lcom/sonymobile/home/HomeDialogFragment;

    .prologue
    .line 213
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 148
    if-ne p1, v2, :cond_0

    .line 150
    array-length v0, p3

    if-ne v0, v2, :cond_1

    aget v0, p3, v1

    if-nez v0, :cond_1

    .line 153
    const-string v0, "EnableLocationPermissionAllow"

    invoke-static {v0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->trackEnableLocationAction(Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->checkLocationServices()V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-boolean v0, p0, Lcom/sonymobile/home/permissions/LocationConsentActivity;->mShowPermissionDeniedForever:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->permissionDeniedForeverAndEver()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    invoke-direct {p0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->showPermissionDeniedDialog()V

    .line 157
    invoke-direct {p0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->trackPermissionDenied()V

    goto :goto_0

    .line 159
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->trackPermissionDenied()V

    .line 161
    invoke-direct {p0, v1}, Lcom/sonymobile/home/permissions/LocationConsentActivity;->doFinish(Z)V

    goto :goto_0
.end method
