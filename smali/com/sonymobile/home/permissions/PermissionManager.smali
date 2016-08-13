.class public Lcom/sonymobile/home/permissions/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/sonymobile/home/permissions/PermissionManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mRequestIntent:Landroid/content/Intent;

.field private mRequestOptions:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/sonymobile/home/permissions/PermissionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/permissions/PermissionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/sonymobile/home/permissions/PermissionManager;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method public static generatePermissionDeniedMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "permissionGroup"    # Ljava/lang/String;
    .param p3, "rationale"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/sonymobile/home/permissions/PermissionManager;->getPermissionGroupLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "permissionGroupLabel":Ljava/lang/String;
    const v5, 0x7f0800aa

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    aput-object v1, v6, v9

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "message":Ljava/lang/String;
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 222
    .local v2, "span":Landroid/text/style/StyleSpan;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 223
    .local v3, "spannable":Landroid/text/Spannable;
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 225
    .local v4, "startIndex":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-interface {v3, v2, v4, v5, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 226
    return-object v3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sonymobile/home/permissions/PermissionManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const-class v1, Lcom/sonymobile/home/permissions/PermissionManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sonymobile/home/permissions/PermissionManager;->sInstance:Lcom/sonymobile/home/permissions/PermissionManager;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/sonymobile/home/permissions/PermissionManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sonymobile/home/permissions/PermissionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonymobile/home/permissions/PermissionManager;->sInstance:Lcom/sonymobile/home/permissions/PermissionManager;

    .line 83
    :cond_0
    sget-object v0, Lcom/sonymobile/home/permissions/PermissionManager;->sInstance:Lcom/sonymobile/home/permissions/PermissionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPermissionGroupLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "permissionGroup"    # Ljava/lang/String;

    .prologue
    .line 264
    const-string v3, ""

    .line 266
    .local v3, "permissionGroupLabel":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v1

    .line 267
    .local v1, "groupInfo":Landroid/content/pm/PermissionGroupInfo;
    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {v1, p0}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 269
    .local v2, "label":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 274
    .end local v1    # "groupInfo":Landroid/content/pm/PermissionGroupInfo;
    .end local v2    # "label":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v3

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/sonymobile/home/permissions/PermissionManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid permission group: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getPermissionIndex([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "permissions"    # [Ljava/lang/String;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 249
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 248
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getPermissionStatusFromResult([Ljava/lang/String;[ILjava/lang/String;)I
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I
    .param p3, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 232
    array-length v2, p1

    if-lez v2, :cond_0

    .line 233
    invoke-static {p1, p3}, Lcom/sonymobile/home/permissions/PermissionManager;->getPermissionIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 234
    .local v0, "index":I
    if-eq v0, v1, :cond_0

    array-length v2, p2

    if-le v2, v0, :cond_0

    .line 235
    aget v2, p2, v0

    packed-switch v2, :pswitch_data_0

    .line 244
    .end local v0    # "index":I
    :goto_0
    return v1

    .line 237
    .restart local v0    # "index":I
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 244
    .end local v0    # "index":I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private handlePhoneCallPermissionStatus(I)V
    .locals 7
    .param p1, "status"    # I

    .prologue
    const/4 v6, 0x0

    .line 142
    packed-switch p1, :pswitch_data_0

    .line 172
    :cond_0
    :goto_0
    iput-object v6, p0, Lcom/sonymobile/home/permissions/PermissionManager;->mRequestIntent:Landroid/content/Intent;

    .line 173
    iput-object v6, p0, Lcom/sonymobile/home/permissions/PermissionManager;->mRequestOptions:Landroid/os/Bundle;

    .line 174
    return-void

    .line 144
    :pswitch_0
    iget-object v3, p0, Lcom/sonymobile/home/permissions/PermissionManager;->mRequestIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 147
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/home/permissions/PermissionManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonymobile/home/permissions/PermissionManager;->mRequestIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/sonymobile/home/permissions/PermissionManager;->mRequestOptions:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sonymobile/home/permissions/PermissionManager;->mContext:Landroid/content/Context;

    const v4, 0x7f080097

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 155
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    invoke-static {}, Lcom/sonymobile/home/HomeFragment;->getActiveInstance()Lcom/sonymobile/home/HomeFragment;

    move-result-object v2

    .line 156
    .local v2, "homeFragment":Lcom/sonymobile/home/HomeFragment;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sonymobile/home/HomeFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    invoke-virtual {v2}, Lcom/sonymobile/home/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 158
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    const-string v3, "android.permission.CALL_PHONE"

    invoke-static {v0, v3}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 160
    invoke-direct {p0, v2}, Lcom/sonymobile/home/permissions/PermissionManager;->showCallDeniedDialog(Lcom/sonymobile/home/HomeFragment;)V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showCallDeniedDialog(Lcom/sonymobile/home/HomeFragment;)V
    .locals 14
    .param p1, "homeFragment"    # Lcom/sonymobile/home/HomeFragment;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 180
    sget-object v0, Lcom/sonymobile/home/DialogFactory$Action;->CONFIRMATION_DIALOG:Lcom/sonymobile/home/DialogFactory$Action;

    .line 181
    .local v0, "action":Lcom/sonymobile/home/DialogFactory$Action;
    invoke-virtual {p1}, Lcom/sonymobile/home/HomeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 182
    .local v4, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Lcom/sonymobile/home/DialogFactory$Action;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v10

    if-nez v10, :cond_0

    .line 183
    iget-object v10, p0, Lcom/sonymobile/home/permissions/PermissionManager;->mContext:Landroid/content/Context;

    const v11, 0x7f08007e

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "appName":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonymobile/home/permissions/PermissionManager;->mContext:Landroid/content/Context;

    const v11, 0x7f0800ad

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 186
    .local v9, "title":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonymobile/home/permissions/PermissionManager;->mContext:Landroid/content/Context;

    const v11, 0x7f0800ab

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 188
    .local v8, "rationale":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonymobile/home/permissions/PermissionManager;->mContext:Landroid/content/Context;

    const-string v11, "android.permission-group.PHONE"

    invoke-static {v10, v1, v11, v8}, Lcom/sonymobile/home/permissions/PermissionManager;->generatePermissionDeniedMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v5

    .line 190
    .local v5, "message":Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/sonymobile/home/permissions/PermissionManager;->mContext:Landroid/content/Context;

    const v11, 0x7f0800ac

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, "positiveButton":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonymobile/home/permissions/PermissionManager;->mContext:Landroid/content/Context;

    const v11, 0x7f08004a

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, "negativeButton":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v10

    invoke-static {v10, v9, v5, v7, v6}, Lcom/sonymobile/home/permissions/ConfirmationDialog;->newInstance(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/home/permissions/ConfirmationDialog;

    move-result-object v2

    .line 197
    .local v2, "dialog":Lcom/sonymobile/home/permissions/ConfirmationDialog;
    invoke-virtual {p1}, Lcom/sonymobile/home/HomeFragment;->getDialogHandler()Lcom/sonymobile/home/DialogHandler;

    move-result-object v3

    .line 198
    .local v3, "dialogHandler":Lcom/sonymobile/home/DialogHandler;
    invoke-virtual {v0}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v10

    invoke-interface {v3, v10, p0}, Lcom/sonymobile/home/DialogHandler;->addDialogActionListener(ILcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;)V

    .line 199
    invoke-virtual {v0}, Lcom/sonymobile/home/DialogFactory$Action;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/sonymobile/home/DialogFactory;->showDialog(Ljava/lang/String;Landroid/app/DialogFragment;)V

    .line 201
    .end local v1    # "appName":Ljava/lang/String;
    .end local v2    # "dialog":Lcom/sonymobile/home/permissions/ConfirmationDialog;
    .end local v3    # "dialogHandler":Lcom/sonymobile/home/DialogHandler;
    .end local v5    # "message":Ljava/lang/CharSequence;
    .end local v6    # "negativeButton":Ljava/lang/String;
    .end local v7    # "positiveButton":Ljava/lang/String;
    .end local v8    # "rationale":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public checkCallPhonePermissionAndStartActivityIfAble(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 106
    iget-object v2, p0, Lcom/sonymobile/home/permissions/PermissionManager;->mRequestIntent:Landroid/content/Intent;

    if-nez v2, :cond_0

    .line 107
    iput-object p1, p0, Lcom/sonymobile/home/permissions/PermissionManager;->mRequestIntent:Landroid/content/Intent;

    .line 108
    iput-object p2, p0, Lcom/sonymobile/home/permissions/PermissionManager;->mRequestOptions:Landroid/os/Bundle;

    .line 109
    iget-object v2, p0, Lcom/sonymobile/home/permissions/PermissionManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CALL_PHONE"

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    invoke-static {}, Lcom/sonymobile/home/HomeFragment;->getActiveActivity()Landroid/app/Activity;

    move-result-object v0

    .line 112
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 113
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "android.permission.CALL_PHONE"

    aput-object v2, v1, v4

    .line 114
    .local v1, "permissionsToRequest":[Ljava/lang/String;
    const v2, 0xca11

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 124
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "permissionsToRequest":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 118
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_1
    invoke-direct {p0, v5}, Lcom/sonymobile/home/permissions/PermissionManager;->handlePhoneCallPermissionStatus(I)V

    goto :goto_0

    .line 121
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    invoke-direct {p0, v4}, Lcom/sonymobile/home/permissions/PermissionManager;->handlePhoneCallPermissionStatus(I)V

    goto :goto_0
.end method

.method public handleRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 135
    const v0, 0xca11

    if-ne p1, v0, :cond_0

    .line 136
    const-string v0, "android.permission.CALL_PHONE"

    invoke-direct {p0, p2, p3, v0}, Lcom/sonymobile/home/permissions/PermissionManager;->getPermissionStatusFromResult([Ljava/lang/String;[ILjava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/home/permissions/PermissionManager;->handlePhoneCallPermissionStatus(I)V

    .line 139
    :cond_0
    return-void
.end method

.method public onDialogActionPerformed(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "actionCode"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 279
    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->CONFIRMATION_DIALOG:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v2}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 280
    const-string v2, "button"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 281
    .local v1, "whichButton":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 282
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/home/permissions/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 284
    .local v0, "intent":Landroid/content/Intent;
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 285
    iget-object v2, p0, Lcom/sonymobile/home/permissions/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 288
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "whichButton":I
    :cond_0
    return-void
.end method
