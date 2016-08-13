.class public Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;
.super Lcom/sonymobile/home/HomeDialogFragment;
.source "HomeModeDialogSettingsFragment.java"


# instance fields
.field private final mOnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sonymobile/home/HomeDialogFragment;-><init>()V

    .line 25
    new-instance v0, Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment$1;-><init>(Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;)V

    iput-object v0, p0, Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;Landroid/app/Dialog;)Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;->getToggleView(Landroid/app/Dialog;)Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;->forwardUserChoice(Z)V

    return-void
.end method

.method private forwardUserChoice(Z)V
    .locals 3
    .param p1, "choice"    # Z

    .prologue
    .line 73
    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->SET_HOME_STYLE:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v2}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v0

    .line 74
    .local v0, "actionId":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "selectedValue"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;->notifyDialogButtonClicked(ILandroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method private getToggleView(Landroid/app/Dialog;)Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 68
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0f00ab

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/settings/HomeModeSettingsToggleView;

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080049

    iget-object v2, p0, Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08004a

    iget-object v2, p0, Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f030028

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0}, Lcom/sonymobile/home/HomeDialogFragment;->onResume()V

    .line 49
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/HomeModeDialogSettingsFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const v2, 0x7f0f00ad

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    .local v0, "infoText":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 54
    :cond_0
    return-void
.end method
