.class public Lcom/sonymobile/home/permissions/ConfirmationDialog;
.super Lcom/sonymobile/home/HomeDialogFragment;
.source "ConfirmationDialog.java"


# instance fields
.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sonymobile/home/HomeDialogFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/sonymobile/home/permissions/ConfirmationDialog$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/permissions/ConfirmationDialog$1;-><init>(Lcom/sonymobile/home/permissions/ConfirmationDialog;)V

    iput-object v0, p0, Lcom/sonymobile/home/permissions/ConfirmationDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/permissions/ConfirmationDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/permissions/ConfirmationDialog;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sonymobile/home/permissions/ConfirmationDialog;->finishDialog(I)V

    return-void
.end method

.method private finishDialog(I)V
    .locals 3
    .param p1, "whichButton"    # I

    .prologue
    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "button"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    invoke-virtual {p0}, Lcom/sonymobile/home/permissions/ConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "actionId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/home/permissions/ConfirmationDialog;->notifyDialogButtonClicked(ILandroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method public static newInstance(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/home/permissions/ConfirmationDialog;
    .locals 3
    .param p0, "actionId"    # I
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "positiveButtonText"    # Ljava/lang/String;
    .param p4, "negativeButtonText"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v1, Lcom/sonymobile/home/permissions/ConfirmationDialog;

    invoke-direct {v1}, Lcom/sonymobile/home/permissions/ConfirmationDialog;-><init>()V

    .line 43
    .local v1, "dialog":Lcom/sonymobile/home/permissions/ConfirmationDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v2, "actionId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v2, "message"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 47
    const-string v2, "positive"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v2, "negative"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, v0}, Lcom/sonymobile/home/permissions/ConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/sonymobile/home/HomeDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 75
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/sonymobile/home/permissions/ConfirmationDialog;->finishDialog(I)V

    .line 76
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/sonymobile/home/permissions/ConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, "arguments":Landroid/os/Bundle;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/home/permissions/ConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "positive"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/permissions/ConfirmationDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "negative"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/permissions/ConfirmationDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Lcom/sonymobile/home/HomeDialogFragment;->onStart()V

    .line 81
    invoke-virtual {p0}, Lcom/sonymobile/home/permissions/ConfirmationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 83
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 85
    :cond_0
    return-void
.end method
